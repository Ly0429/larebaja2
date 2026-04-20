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
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.medication, size: 100),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFD10000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "Ahorra 30%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "GENFAR",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const Text(
            "MINOXIDIL FORTE...",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Text(
            "Antes \$ 66.300",
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
              fontSize: 12,
            ),
          ),
          const Text(
            "\$ 46.410",
            style: TextStyle(
              color: Color(0xFFD10000),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          const Text(
            "Frasco x 60 ml",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          const Suma(), // Aquí metemos el contador

          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              // Dentro del ElevatedButton en productcard.dart
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const ProductDetailSheet(),
                );
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFFD10000,
                ), 
                foregroundColor:
                    Colors.white, 
                elevation: 4, 
                shape:
                    const StadiumBorder(), 
                minimumSize: const Size(double.infinity, 45), 
              ),
              child: const Text(
                "Comprar",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailSheet extends StatelessWidget {
  const ProductDetailSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9, // 90% de la pantalla
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Column(
        children: [
          // Barra superior con botón cerrar y título
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                    size: 20,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                const Text(
                  "X RAY DOL",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const Text(
                  "X Ray Dol",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                // Etiqueta de descuento
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "Ahorra 20%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // Imagen del producto
                Center(
                  child: Image.network(
                    'https://images.catalogium.com/co/ctg/201786/3.webp', // Cambia por la URL de X Ray Dol
                    height: 250,
                  ),
                ),

                const Divider(),

                // Información técnica
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Presentación:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("CAJA X 12 TAB", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Referencia:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("116813", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),

          // Botón final de compra
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  "Comprar",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 209, 28, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
