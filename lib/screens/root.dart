import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Cousines {
  brazilian,
  chinese,
  french,
  indian,
  italian,
  japanese,
  mexican,
  spanish,
  thai,
  vietnamese;

  String get cousineName {
    switch (this) {
      case Cousines.brazilian:
        return 'Brasileira';
      case Cousines.chinese:
        return 'Chinesa';
      case Cousines.french:
        return 'Francesa';
      case Cousines.indian:
        return 'Indiana';
      case Cousines.italian:
        return 'Italiana';
      case Cousines.japanese:
        return 'Japonesa';
      case Cousines.mexican:
        return 'Mexicana';
      case Cousines.spanish:
        return 'Espanhola';
      case Cousines.thai:
        return 'Tailandesa';
      case Cousines.vietnamese:
        return 'Vietnamita';
    }
  }
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  var selectedCousine = Cousines.brazilian;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('de.gustar'),
      ),
      body: ListView(padding: const EdgeInsets.all(8.0), children: [
        const Text('Localização atual: Brasília'),
        SizedBox(
          height: 40.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: Cousines.values.length,
            itemBuilder: (context, index) {
              final cousine = Cousines.values[index];
              return ChoiceChip(
                label: Text(cousine.cousineName),
                selected: selectedCousine == cousine,
                onSelected: (selected) {
                  if (selected) {
                    setState(() {
                      selectedCousine = cousine;
                    });
                  }
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 8.0),
          ),
        ),
        const Divider(),
        const RestaurantCard(
          restaurantName: 'Restaurante 1',
          restaurantAddress: 'Endereço 1',
          cuisine: Cousines.brazilian,
          restaurantPriceRange: 4,
          restaurantRating: 5,
        ),
      ]),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String restaurantName;
  final String restaurantAddress;
  final Cousines cuisine;
  final int restaurantPriceRange;
  final int restaurantRating;

  const RestaurantCard({
    super.key,
    required this.restaurantName,
    required this.restaurantAddress,
    required this.cuisine,
    required this.restaurantPriceRange,
    required this.restaurantRating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(restaurantName),
            subtitle: Text(restaurantAddress),
            trailing: const SizedBox(
              width: 50.0,
              child: Placeholder(),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(text: cuisine.cousineName),
                const TextSpan(text: ' • '),
                TextSpan(text: r'$' * restaurantPriceRange),
                const TextSpan(text: ' • '),
                TextSpan(text: '$restaurantRating'),
              ]),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Ver'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
