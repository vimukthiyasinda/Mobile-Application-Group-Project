import 'package:flutter/material.dart';
import 'cart_provider.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: const Color.fromARGB(255, 213, 21, 3),
      ),
      body: Column(
        children: [
          Expanded(
            child: globalCartItems.isEmpty
                ? const Center(child: Text("Cart is empty!"))
                : ListView.builder(
                    itemCount: globalCartItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.fastfood, color: Colors.red),
                        title: Text(globalCartItems[index]['name']),
                        trailing: Text(
                          "Rs. ${globalCartItems[index]['price']}",
                        ),
                      );
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Bill:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rs. ${calculateTotal()}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
