import 'package:flutter/material.dart';

// Cart එකේ දත්ත ගබඩා වන Global List එක
List<Map<String, dynamic>> globalCartItems = [];

// මුළු එකතුව (Total) ගණනය කරන Function එක
double calculateTotal() {
  double total = 0;
  for (var item in globalCartItems) {
    total += item['price'];
  }
  return total;
}
