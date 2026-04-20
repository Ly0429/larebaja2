import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String imageUrl;

  const PromoCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Mismo redondeo que tu Customcard
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      // ClipRRect es necesario para que la imagen no tape las esquinas redondeadas del Card
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          imageUrl,
          width: double.infinity, // Ocupa todo el ancho
          fit: BoxFit.cover,      // Ajusta la imagen al contenedor
          // Por si el link falla o no hay internet
          errorBuilder: (context, error, stackTrace) {
            return const SizedBox(
              height: 150,
              child: Center(
                child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }
}