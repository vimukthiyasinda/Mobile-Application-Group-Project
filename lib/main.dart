import 'package:flutter/material.dart';
import 'signup.dart';
import 'homepage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main()async {  
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://qbdbdyxsnswacernhktj.supabase.co',
    anonKey: 'sb_publishable_x-Cn9XYsKKJkdufkcRdjpw_WCX0Pr1A',
  );
  runApp(MaterialApp(
    home: MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        centerTitle: true,
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/dww.png'),
              const SizedBox(width: 10),
              const Text(
                "McDonald's",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
      body: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController UsernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
final supabase = Supabase.instance.client;

  Future<void> login() async {
    final username = UsernameController.text.trim();
    final password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    try {
      
      final response = await supabase
          .from('user')
          .select()
          .eq('name', username)
          .eq('password', password)
          .maybeSingle();

      if (response != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const homepage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("User Name or Password is wrong please try again.")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log into",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Your account",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Card(
                  shadowColor: const Color.fromARGB(255, 195, 192, 185),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "UserName:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          controller: UsernameController,
                          decoration: InputDecoration(
                            labelText: "Enter User Name.",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Password:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: "Enter Password.",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),

                        Container(
                          child: Center(
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: login,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                  ),
                                  child: Text(
                                    "LogIn",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    Text("Don't have an accont?"),
                                    TextButton(
                                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage(),),);},
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
