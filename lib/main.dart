import 'package:flutter/material.dart';
import 'package:larebaja2/widgets/PromoCard.dart';
import 'package:larebaja2/widgets/CategoryGridCard.dart';
import 'package:larebaja2/widgets/BrandCard.dart';
import 'package:larebaja2/widgets/StoreCircleCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 253, 253),
          surfaceTintColor: Colors.transparent,
          elevation: 4,
          scrolledUnderElevation: 4,
          shadowColor: Colors.black26,
          toolbarHeight: 130,
          centerTitle: false,
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.only(left: 40, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "larebaja",
                  style: TextStyle(
                    fontSize: 32, // Tamaño más equilibrado
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 240, 3, 3),
                    letterSpacing: 0,
                  ),
                ),
                // El subtítulo del logo
                Transform.translate(
                  offset: const Offset(25, -14),
                  child: const Text(
                    "virtual.com",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                ),
              ],
            ),
          ),

          actions: [
            // Botón de Ubicación
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Container(
                width: 55,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 3, 3),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.location_on_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(width: 0),

            // Botón de Bolsa de compras
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Container(
                width: 55,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 3, 3),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(75),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Buscador estilizado
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "¿Qué estás buscando?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 24, 23, 23),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 196, 194, 194),
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Dirección

                  // Dirección
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Domicilio: ",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Calle 135 # 158-36, Suba, Bogotá, D.C.,",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "Colombia - BOGOTÁ, D.C.",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 240, 3, 3),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),

        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              "¡Hola danielacrd100@gmail.com!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 3, 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ENCUENTRA NUESTRAS MARCAS EXCLUSIVAS",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            const PromoCard(
              imageUrl:
                  'https://d1h08qwp2t1dnu.cloudfront.net/assets/media/es_co/images/volantini/big_244864_webp_desktop.webp?modified=1775215071',
            ),

            const SizedBox(height: 15),

            const CategoryGridCard(),

            const SizedBox(height: 15),

            // ... dentro de tu ListView principal ...
            const SizedBox(height: 15),

            // Contenedor para el scroll horizontal
            SingleChildScrollView(
              scrollDirection:
                  Axis.horizontal, // <--- ESTO permite scrolear a la derecha
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ), // Espacio inicial
              child: Row(
                children: [
                  // PRIMERA PROMO
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width *
                        0.85, // Ancho al 85% de la pantalla
                    child: const PromoCard(
                      imageUrl:
                          'https://d1h08qwp2t1dnu.cloudfront.net/assets/media/es_ec/images/volantini/big_87493_webp_mobile.webp?modified=1775632447',
                    ),
                  ),

                  const SizedBox(width: 10), // Espacio entre tarjetas
                  // SEGUNDA PROMO
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const PromoCard(
                      imageUrl:
                          'https://copservir.vtexassets.com/assets/vtex.file-manager-graphql/images/0fab9d84-8930-4c53-89f0-4ea06f3158b6___f1d106d7de15fd77c59127ec4d440d5b.jpg',
                    ),
                  ),

                  const SizedBox(width: 10),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Scroll Horizontal de cartas PEQUEÑAS
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Carta Pequeña 1
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.56,
                    child: const PromoCard(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF6zQ1KmBnKxFZjzq2QOBKy7dS5WrGDA5YpMePRf1AXD3CSlpv',
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Carta Pequeña 2
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const PromoCard(
                      imageUrl:
                          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSQ2ZnRwYgu4xlQ6pf8Q_npfVXLeFYt7Ly-HOShBGV4agMd1o3u',
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Carta Pequeña 3
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const PromoCard(
                      imageUrl:
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS_lINJmM82t2lc1FGH93M6GYgjhnCYCZ5BKvtlOOy_0GgMYNlT',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            const SizedBox(height: 15),

            // Este es el contenedor del scroll para los botones
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // BOTÓN 1
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 3, 3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Súper Descuentos",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                  // BOTÓN 2
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 227, 227),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Ofertas",
                        style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // BOTÓN 3
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 227, 227),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Más Vendidas",
                        style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            //----------------------------------------------------------------------------------
            //lo que toca hacer de dani
            //_---------------------------------------------------------------------------------
            const SizedBox(height: 15),

            // Contenedor para el scroll horizontal
            SingleChildScrollView(
              scrollDirection:
                  Axis.horizontal, // 
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ), // Espacio inicial
              child: Row(
                children: [
                  // PRIMERA PROMO
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width *
                        0.90, // Ancho al 85% de la pantalla
                    child: const PromoCard(
                      imageUrl:
                          'https://blog.larebajavirtual.com/wp-content/uploads/2026/03/Producto-del-Mes-Abril-2026.jpg',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Scroll Horizontal de cartas PEQUEÑAS
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Carta Pequeña 1
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const PromoCard(
                      imageUrl:
                          'https://www.nestlefamilynes.co/sites/default/files/styles/header_slider_tablet/public/slide_image/banner_nutriadvance_mobile.jpg?itok=aXXLv4rQ',
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Carta Pequeña 2
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const PromoCard(
                      imageUrl:
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSkq6Ocfp3zna61jyjAEDkCnNuDrR-bkqIuTBSCwgr1rkE8A2Qc',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Contenedor para el scroll horizontal
            SingleChildScrollView(
              scrollDirection:
                  Axis.horizontal, // <--- ESTO permite scrolear a la derecha
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ), // Espacio inicial
              child: Row(
                children: [
                  // PRIMERA PROMO
                  SizedBox(
                    width:
                        MediaQuery.of(context).size.width *
                        0.70, // Ancho al 85% de la pantalla
                    child: const PromoCard(
                      imageUrl:
                          'https://www.nestlefamilynes.co/sites/default/files/styles/header_slider_tablet/public/slide_image/banner_nutriadvance_mobile.jpg?itok=aXXLv4rQ',
                    ),
                  ),

                  const SizedBox(width: 10), // Espacio entre tarjetas
                  // SEGUNDA PROMO
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.7,
                    child: const PromoCard(
                      imageUrl:
                          'https://images.catalogium.com/co/ctg/201786/3.webp',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            //----------------------------------------------------------------------------------
            //lo que toca hacer de dani
            //_---------------------------------------------------------------------------------
            const SizedBox(height: 15),

            Text(
              "Marcas Destacadas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // PRIMER LOGO
                  Expanded(
                    child: const BrandCard(
                      logoUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/NIVEA_logo_2021.svg/1280px-NIVEA_logo_2021.svg.png',
                    ),
                  ),

                  const SizedBox(width: 12), // Espacio entre los dos
                  // SEGUNDO LOGO
                  Expanded(
                    child: const BrandCard(
                      logoUrl:
                          'https://images.ctfassets.net/j0994xxhz671/3w1O5aRy3ZcQ8sQ56mUtdd/aa885be0a9395791cec9ee29a9a10fe1/VICK_LOGO_LA.png',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Text(
              "Tiendas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoreCircleCard(logoUrl: 'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/panadol/es_CO/dolex-logo/New-Beacon-Dolex_high_res.png?auto=format'),
                      StoreCircleCard(
                        logoUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4-6zxIXHTZ4dmBBT1h4K2Fpp0Oiz1RToUw&s',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // Espacio entre filas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoreCircleCard(
                        logoUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNYhIZkeLOeXJGev2uiVcY3pHJmwyCqCWUqA&s',
                      ),
                      StoreCircleCard(logoUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHwL0vSAnjaTn1F_8AMFCv8Qf0C-Rl4GzrKQ&s'),
                    ],
                  ),
                ],
              ),
            ),

            //---------------------------------------------------------------------------------
            const SizedBox(height: 15),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: const Color.fromARGB(255, 221, 17, 14),
          unselectedItemColor: const Color.fromARGB(255, 133, 130, 130),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'categorias',
            ),
          ],
        ),
      ),
    );
  }
}
