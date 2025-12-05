import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/coffee.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Coffee> menu = [
      Coffee(
        name: 'Americano',
        description: 'A classic Americano, made with a shot of espresso and hot water.',
        price: 3.50,
        imagePath: 'assets/images/americano.png',
      ),
      Coffee(
        name: 'Cappuccino',
        description: 'Rich espresso with steamed milk and a thick layer of foam.',
        price: 4.00,
        imagePath: 'assets/images/cappuccino.png',
      ),
      Coffee(
        name: 'Latte',
        description: 'A creamy latte with a shot of espresso and steamed milk.',
        price: 4.50,
        imagePath: 'assets/images/latte.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Menu'),
        backgroundColor: Colors.brown[400],
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          final coffee = menu[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                coffee.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(coffee.name),
              subtitle: Text('\$${coffee.price.toStringAsFixed(2)}'),
              onTap: () {
                Navigator.pushNamed(context, '/detail', arguments: coffee);
              },
            ),
          );
        },
      ),
    );
  }
}
