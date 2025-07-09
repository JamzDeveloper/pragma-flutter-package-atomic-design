import 'package:design_system_package/design_system_package.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Design System Showcase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ShowcaseHomePage(),
    );
  }
}

class ShowcaseHomePage extends StatefulWidget {
  const ShowcaseHomePage({super.key});

  @override
  State<ShowcaseHomePage> createState() => _ShowcaseHomePageState();
}

class _ShowcaseHomePageState extends State<ShowcaseHomePage> {
  int _selectedIndex = 0;

  final _controller = TextEditingController();

  List<Widget> get _pages => [
    // Atoms
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: const [
          Text(
            'Átomos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          CustomText('Texto básico (Atom)'),
          CustomDivider(),
          CustomSpacer(),
          Row(
            children: [
              CustomIcon(icon: Icons.star, color: Colors.orange),
              CustomIcon(icon: Icons.star, color: Colors.orange),
              CustomIcon(icon: Icons.star, color: Colors.orange),
              CustomIcon(icon: Icons.star, color: Colors.orange),
            ],
          ),
        ],
      ),
    ),

    // Molecules
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Moléculas',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // CustomTextIcon
          const CustomTextIcon(icon: Icons.person, text: 'Perfil'),
          const SizedBox(height: 12),

          // Label + Input
          CustomLabelInput(
            label: 'Nombre',
            hintText: 'Ingresa tu nombre',
            controller: _controller,
          ),
          const SizedBox(height: 12),

          // Button
          Align(
            alignment: Alignment.centerRight,
            child: CustomButtonIcon(
              text: 'Aceptar',
              icon: Icons.check,
              onPressed: () {
                // Acción
              },
            ),
          ),
        ],
      ),
    ),

    // Organisms
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: const [
          Text(
            'Organismos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          UserCard(
            name: 'Jamz Dev',
            email: 'jamz@example.com',
            avatarUrl: 'https://avatars.githubusercontent.com/u/73419222?v=4',
          ),
          ProductItem(
            name: 'Laptop',
            imageUrl:
                'https://www.lacuracao.pe/media/catalog/product/8/3/83er002hlm_1.jpg?quality=80&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700',
            price: 1500,
          ),
          CartSummary(total: 3, items: []),
        ],
      ),
    ),

    // Templates
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: const [
          Text(
            'Templates',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          UserProfileTemplateBody(
            name: 'Jamz Dev',
            email: 'jamz@example.com',
            avatarUrl: 'https://avatars.githubusercontent.com/u/73419222?v=4',
          ),
          ProductTemplateBody(
            title: 'Auriculares',
            imageUrl:
                'https://www.jbl.com.pe/dw/image/v2/AAUJ_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw09d76a30/01.JBL_Tune%20720BT_Product%20Image_Hero_Black.jpg?sw=270&sh=330&sm=fit&sfrm=png',
            price: 250,
          ),
        ],
      ),
    ),

    // Pages
    Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          'Esta misma estructura representa una Page completa.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Design System Showcase')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor:
            Colors.white, // o Theme.of(context).colorScheme.surface
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Atoms'),
          BottomNavigationBarItem(
            icon: Icon(Icons.extension),
            label: 'Molecules',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            label: 'Organisms',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Templates'),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Pages'),
        ],
      ),
    );
  }
}
