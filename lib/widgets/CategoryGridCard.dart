import 'package:flutter/material.dart';

class CategoryGridCard extends StatelessWidget {
  const CategoryGridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Mismo estilo que tus otras cards
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: GridView.count(
          shrinkWrap: true, // Para que no de error dentro del ListView
          physics: const NeverScrollableScrollPhysics(), // La tarjeta no scrollea, scrollea el body
          crossAxisCount: 3, // 3 círculos por fila
          mainAxisSpacing: 25,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75, // Ajusta esto para que el texto quepa bien abajo
          children: [
            _buildCategoryItem("Farmacia", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1trM84UtWk27sjxfJCLydSWYmrCq-ISKIFA&s"),
            _buildCategoryItem("Maternidad y Bebés", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRhdDg0ZVP4ev3s3yjgZPE3Lq04GG5lVuI0Q&s"),
            _buildCategoryItem("Alimentos y Bebidas", "https://empresaexterior.com/upload/images/10_2019/5123_alimentosybebidas.jpg"),
            _buildCategoryItem("Belleza", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxkitrtV7EMZlsHtQhuLoOYBWtqut_2QND8w&s"),
            _buildCategoryItem("Cuídate en Casa", "https://images.ctfassets.net/trvmqu12jq2l/5yDXnJwD2xVcQlcShD5Ly5/2575d6cc643af63329301a3d1f790d43/CxBlog-DD-Doctor-LEAD.jpg?q=60&w=1200&h=1073&fm=webp&f=faces&fit=fill"),
            _buildCategoryItem("Para el Hogar", "https://exitocol.vtexassets.com/assets/vtex.file-manager-graphql/images/73015886-0934-44af-9bc6-e43c2dc6f5bb___ecc0c53a73eb6a5d91bb568a3ac682f8.jpg"),
            _buildCategoryItem("Dermo-cosmética", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZq_KT1BeXrSb3fd2VpD2lwSeIos7BxTTocg&s"),
            _buildCategoryItem("Cuidado Personal", "https://ecommerce.surtifamiliar.com/backend/admin/backend/web/archivosDelCliente/categorias/images/20201103104540-Aseo-Personal-Cuidado-Capilar16044183409461.jpg"),
            _buildCategoryItem("Naturales", "https://www.univalle.edu.co/media/k2/items/cache/bc0dafff2a953777f6b7d4ce63e1f694_XL.jpg"),
            _buildCategoryItem("Ver Más", "https://cdn-icons-png.flaticon.com/512/12181/12181287.png"),
          ],
        ),
      ),
    );
  }

  // Función interna para no repetir código de los círculos
  Widget _buildCategoryItem(String title, String url) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35, // Tamaño del círculo
          backgroundColor: const Color(0xFFF5F5F5),
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Color(0xFF4A4A4A),
          ),
        ),
      ],
    );
  }
}