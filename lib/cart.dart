import 'package:flutter/material.dart';
import 'package:macdonalds/homepage.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
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
                    height: 40,
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
      body: const CartBody(),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        currentIndex: 1, // Home selected
        onTap: (index) {
          if (index == 1) {
            // Home → stay on same page
          } else if (index == 0) {
            // Cart → navigate to CartPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const homepage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("empty cart"),
          ]
        )
      );
  }
}
