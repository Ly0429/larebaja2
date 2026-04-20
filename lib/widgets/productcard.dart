import 'package:flutter/material.dart';
import 'suma.dart'; // Importa el contador que creamos arriba

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Etiqueta de ahorro e Imagen
          Stack(
            children: [
              Image.network(
                'https://ecofarma.co/wp-content/uploads/2024/11/MINOXIDIL-5-SOL-TOPICA-FX60MLLAPROFF-1-1.jpg',
                height: 140,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.medication, size: 100),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFD10000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Ahorra 30%",
                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text("GENFAR", style: TextStyle(color: Colors.grey, fontSize: 12)),
          const Text(
            "MINOXIDIL FORTE...",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Text(
            "Antes \$ 66.300",
            style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough, fontSize: 12),
          ),
          const Text(
            "\$ 46.410",
            style: TextStyle(color: Color(0xFFD10000), fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text("Frasco x 60 ml", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          
          const Suma(), // Aquí metemos el contador
          
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD10000),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text("Comprar", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}