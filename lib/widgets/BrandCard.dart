import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String logoUrl;

  const BrandCard({
    super.key,
    required this.logoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Ajustamos la altura para que se vea rectangular como en tu foto
      height: 100, 
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2), // Gris clarito
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.network(
          logoUrl,
          fit: BoxFit.contain, // Para que el logo no se deforme
        ),
      ),
    );
  }
}