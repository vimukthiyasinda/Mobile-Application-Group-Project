import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        //centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/dww.png'),
              const SizedBox(width: 10),
              const Text(
                "McDonald's",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),

              SizedBox(width: 20),
              Column(
                children: [
                  SizedBox(
                    height: 40, // set your desired height
                    child: SearchBar(
                      hintText: "Search foods",
                      leading: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: const FoodPage(),
    );
  }
}

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Text(
                "What's New",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.amber,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SizedBox(
                    width: 400,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset("assets/ad.png", fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom:0),
                    child: Text(
                      "For You",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.amber,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    width: 180,
                    height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/cheese.jpg', height: 100, width: 100),
                        const Text("Cheese Burger",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        const Text("Delicious Cheese burger"),
                        const Text("\Rs: 450.00",
                          style: TextStyle(color: Colors.orange),
                        ),
                        const Icon(
                          Icons.fastfood_rounded,
                          size: 35,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 5),
                        FilledButton(
                          onPressed: () {},
                          child: const Text("Click to Order!"),
                        ),
                      ],
                    ),
                  ),
                  ),
                ),

                Card(
                  shadowColor: Colors.amber,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: SizedBox(
                    width: 180, 
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset('assets/cheese.jpg',height: 100,width: 100,),
                          const Text("Cheese Burger",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
                          ),
                          const Text("Delicious Cheese burger"),
                          const Text("\Rs: 450.00",
                            style: TextStyle(color: Colors.orange),
                          ),
                          const Icon(
                            Icons.fastfood_rounded,
                            size: 35,
                            color: Colors.orange,
                          ),
                          SizedBox(height: 5),
                          FilledButton(
                            onPressed: () {},
                            child: const Text("Click to Order!"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.amber,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                  child: SizedBox(
                    width: 180, // increase width
                    height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/images.jpeg',height: 100,width: 100,),
                        const Text("Beef Burger",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
                        ),
                        const Text("Delicious Beef burger"),
                        const Text("\Rs: 450.00",
                          style: TextStyle(color: Colors.orange),
                        ),
                        const Icon(
                          Icons.fastfood_rounded,
                          size: 35,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 5),
                        FilledButton(
                          onPressed: () {},
                          child: const Text("Click to Order!"),
                        ),
                      ],
                    ),
                  ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset('assets/chicken.jpeg', height: 100, width: 100),
                      const Text("Chicken Bucket", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const Text("Crispy chicken Bucket"),
                      const Text("\Rs: 1000.00", style: TextStyle(color: Colors.orange)),
                      const Icon(Icons.fastfood_rounded, size: 35, color: Colors.orange),
                      SizedBox(height: 5,),
                      FilledButton(
                        onPressed: () {},
                        child: const Text("Click to Order!"),
                      ),
                    ],
                  ),
                ),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
