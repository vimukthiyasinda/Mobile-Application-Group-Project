import 'package:flutter/material.dart';
import 'cart_provider.dart'; // 👈 මෙය අනිවාර්යයෙන්ම අවශ්‍යයි
import 'cart.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  void addToCart(String name, double price) {
    setState(() {
      globalCartItems.add({'name': name, 'price': price});
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$name added to cart!"),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        title: Row(
          children: [
            const Text(
              "McDonald's",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: SizedBox(
                height: 40,
                child: SearchBar(
                  hintText: "Search foods",
                  leading: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(child: FoodPage(onOrder: addToCart)),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const cartpage()),
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

class FoodPage extends StatelessWidget {
  final Function(String, double) onOrder;
  const FoodPage({super.key, required this.onOrder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What's New",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildBannerCard("assets/ad.png"),
                _buildBannerCard("assets/delevery.jpeg"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "For You",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _buildFoodCard(context, "Big Mac", 850.00, "assets/BidMac.jpg"),
              _buildFoodCard(
                context,
                "Mc Chicken",
                800.00,
                "assets/McChickenSandwich.jpg",
              ),
              _buildFoodCard(
                context,
                "Double Cheese",
                899.00,
                "assets/DoubleCheeseburger.jpg",
              ),
              _buildFoodCard(
                context,
                "Burger McDo",
                750.00,
                "assets/BurgerMcDo.jpg",
              ),
              _buildFoodCard(context, "Coke", 250.00, "assets/COKE.jpg"),
              _buildFoodCard(
                context,
                "McFlurry",
                300.00,
                "assets/McFlurryOreoMondelez.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBannerCard(String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imagePath,
          width: 300,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFoodCard(
    BuildContext context,
    String name,
    double price,
    String imagePath,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.44,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(imagePath, height: 100),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text("Rs: $price", style: const TextStyle(color: Colors.orange)),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () => onOrder(name, price),
              child: const Text("Order Now"),
            ),
          ],
        ),
      ),
    );
  }
}
