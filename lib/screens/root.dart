import 'package:degustar/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  Cousines? selectedCousine = Cousines.brazilian;

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
                  } else {
                    setState(() {
                      selectedCousine = null;
                    });
                  }
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 8.0),
          ),
        ),
        const Divider(),
        for (final restaurant in resturants.where(
          (r) => selectedCousine == null || r.cuisine == selectedCousine,
        ))
          RestaurantCard(restaurant: restaurant),
      ]),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(restaurant.restaurantName),
            subtitle: Text(restaurant.restaurantAddress),
            trailing: SizedBox(
              width: 50.0,
              // child: Placeholder(),
              child: Image.network(restaurant.restaurantImage),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(text: restaurant.cuisine.cousineName),
                const TextSpan(text: ' • '),
                TextSpan(text: r'$' * restaurant.restaurantPriceRange),
                const TextSpan(text: ' • '),
                TextSpan(text: '${restaurant.restaurantRating}'),
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
