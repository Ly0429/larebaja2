import 'package:flutter/material.dart';

class Suma extends StatefulWidget {
  const Suma({super.key});

  @override
  State<Suma> createState() => _SumaState();
}

class _SumaState extends State<Suma> {
  int cantidad = 1;

  void sumar() {
    setState(() => cantidad++);
  }

  void restar() {
    if (cantidad > 1) {
      setState(() => cantidad--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: restar,
            icon: const Icon(Icons.remove, color: Color(0xFFD10000)),
          ),
          Text(
            "$cantidad",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: sumar,
            icon: const Icon(Icons.add, color: Color(0xFFD10000)),
          ),
        ],
      ),
    );
  }
}