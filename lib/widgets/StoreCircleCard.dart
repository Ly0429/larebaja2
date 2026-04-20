import 'package:flutter/material.dart';

class StoreCircleCard extends StatelessWidget {
  final String logoUrl;

  const StoreCircleCard({super.key, required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140, // Puedes ajustar el tamaño
      height: 140,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300, // El borde gris clarito de la imagen
          width: 1,
        ),
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Espacio para que el logo no toque los bordes
          child: Image.network(
            logoUrl,
            //fit: BoxImageBreak.contain,
          ),
        ),
      ),
    );
  }
}