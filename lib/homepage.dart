import 'package:flutter/material.dart';
import 'cart.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(child: Row(
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
              Expanded(
                child: Column(
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
              ),
            ],
          ),
        ),
      ),
      ),
      body: const FoodPage(),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
        currentIndex: 0, // Home selected
        onTap: (index) {
          if (index == 0) {
            // Home → stay on same page
          } else if (index == 1) {
            // Cart → navigate to CartPage
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

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded( child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 400,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/ad.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 400,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/delevery.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
            ),

            SizedBox(height: 5),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/BidMac.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Big Mac",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Big Mac Burger"),
                          const Text(
                            "\Rs: 850.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/McChickenSandwich.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Mc Chicken Sandwich",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Mc Chicken Sandwich burger"),
                          const Text(
                            "\Rs: 800.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/DoubleCheeseburger.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Double Cheese Burger",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Double Cheese Burger"),
                          const Text(
                            "\Rs: 899.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/BurgerMcDo.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Burger McDo",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Burger McDo"),
                          const Text(
                            "\Rs: 750.00",
                            style: TextStyle(color: Colors.orange),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.amber,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                  child: SizedBox(
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/COKE.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Coke",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("ICE Coke"),
                          const Text(
                            "\Rs: 250.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/McFlurryOreoMondelez.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "McFlurry with Oreo Cookies",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious McFlurry with Oreo Cookies"),
                          const Text(
                            "\Rs: 300.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/McFloatCoke.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Coke McFloat",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Coke McFloat"),
                          const Text(
                            "\Rs: 450.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/VanillaSundaeCone.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Vanilla Sundae Cone",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Vanilla Sundae Cone"),
                          const Text(
                            "\Rs: 350.00",
                            style: TextStyle(color: Colors.orange),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.amber,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                  child: SizedBox(
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/FriesMedium.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Fries",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text("Delicious Fries Medium"),
                          const Text(
                            "\Rs: 550.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/1pcChickenMcDo_Plus_Spaghetti.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "1pc. Chicken McDo with McSpaghetti",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Delicious 1pc. Chicken McDo with McSpaghetti",
                          ),
                          const Text(
                            "\Rs: 950.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/6pcChickenNuggets_Plus_Fries.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "6pc. Chicken McNuggets with Fries",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Delicious 6pc. Chicken McNuggets with Fries",
                          ),
                          const Text(
                            "\Rs: 2500.00",
                            style: TextStyle(color: Colors.orange),
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
                    width: 200,
                    height: 265,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/1pcChickenFillet_Plus_Rice.jpg',
                            height: 100,
                            width: 100,
                          ),
                          const Text(
                            "Crispy Chicken Fillet with Rice",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Delicious Crispy Chicken Fillet with Rice",
                          ),
                          const Text(
                            "\Rs: 1650.00",
                            style: TextStyle(color: Colors.orange),
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
          ],
        ),
      ),
    );
  }
}
