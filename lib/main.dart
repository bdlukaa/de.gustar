import 'package:flutter/material.dart';

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

class Restaurant {
  final String restaurantName;
  final String restaurantAddress;
  final Cousines cuisine;
  final int restaurantPriceRange;
  final double restaurantRating;
  final String restaurantImage;

  const Restaurant({
    required this.restaurantName,
    required this.restaurantAddress,
    required this.cuisine,
    required this.restaurantPriceRange,
    required this.restaurantRating,
    required this.restaurantImage,
  });
}

const resturants = {
  Restaurant(
    cuisine: Cousines.japanese,
    restaurantName: 'Nippon',
    restaurantAddress: 'SCLS 207, Bloco C Loja 17, SHCS',
    restaurantPriceRange: 3,
    restaurantRating: 4.5,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
    cuisine: Cousines.chinese,
    restaurantName: 'Pequim',
    restaurantAddress: 'SCLN 405, Loja 15, SHCN',
    restaurantPriceRange: 3,
    restaurantRating: 4.3,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
    cuisine: Cousines.french,
    restaurantName: 'Le Parisien Bistrot',
    restaurantAddress: 'Asa Norte Comércio Local Norte 103 Bloco B Loja 2',
    restaurantPriceRange: 2,
    restaurantRating: 4.5,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
    cuisine: Cousines.brazilian,
    restaurantName: 'Le Parisien Bistrot',
    restaurantAddress: 'Asa Norte Comércio Local Norte 103 Bloco B Loja 2',
    restaurantPriceRange: 2,
    restaurantRating: 4.5,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
    cuisine: Cousines.indian,
    restaurantName: 'Namaste',
    restaurantAddress: 'Asa Norte CLN 402 BLOCO B LOJA 47',
    restaurantPriceRange: 3,
    restaurantRating: 4.7,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
    cuisine: Cousines.italian,
    restaurantName: 'Ticiana Werner',
    restaurantAddress: '201 Sul, Bloco C, Loja 11',
    restaurantPriceRange: 4,
    restaurantRating: 4.8,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
    cuisine: Cousines.mexican,
    restaurantName: 'El Paso',
    restaurantAddress: '404 Sul, Bloco C, Loja 19',
    restaurantPriceRange: 3,
    restaurantRating: 4.6,
    restaurantImage:
        'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no',
  ),
  Restaurant(
      cuisine: Cousines.spanish,
      restaurantName: 'La Rubia Café',
      restaurantAddress: 'SCLS 404 Bloco C Loja 44',
      restaurantPriceRange: 2,
      restaurantRating: 4.4,
      restaurantImage:
          'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no'),
  Restaurant(
      cuisine: Cousines.thai,
      restaurantName: 'Thai Gardens',
      restaurantAddress: 'SCLS 104 Bloco D Loja 16',
      restaurantPriceRange: 3,
      restaurantRating: 4.5,
      restaurantImage:
          'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no'),
  Restaurant(
      cuisine: Cousines.vietnamese,
      restaurantName: 'Pho Pho',
      restaurantAddress: 'SCLS 109 Bloco A Loja 2',
      restaurantPriceRange: 2,
      restaurantRating: 4.3,
      restaurantImage:
          'https://lh5.googleusercontent.com/p/AF1QipM9o8YfVc78A2r3PenqoO1EZiEN2kjz2h3JQIZH=w114-h114-n-k-no'),
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'de.gustar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF5722),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF5722),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Root(),
    );
  }
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  Cousines? selectedCousine;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.restaurant),
        title: const Text('de.gustar'),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 20.0),
        children: [
          Row(children: [
            const SizedBox(width: 16.0),
            Icon(Icons.place, color: theme.colorScheme.primary),
            const SizedBox(width: 8.0),
            Text('Localização atual: ', style: theme.textTheme.labelSmall),
            Text('Brasília', style: theme.textTheme.labelLarge),
          ]),
          SizedBox(
            height: 40.0,
            child: ListView.separated(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
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
              separatorBuilder: (context, index) => const SizedBox(width: 12.0),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Perto de Você',
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: resturants.length,
              itemBuilder: (context, index) {
                final restaurant = resturants.elementAt(index);
                return Container(
                  height: 120,
                  width: 120.0,
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: NetworkImage(restaurant.restaurantImage),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.darken),
                    ),
                  ),
                  child: Text(
                    restaurant.restaurantName,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 8.0),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Restaurantes',
              style: theme.textTheme.titleLarge,
            ),
          ),
          for (final restaurant in resturants.where(
            (r) => selectedCousine == null || r.cuisine == selectedCousine,
          ))
            RestaurantCard(restaurant: restaurant),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
          const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 8.0),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(restaurant.restaurantName),
                subtitle: Text(restaurant.restaurantAddress),
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
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              RestaurantInfo(restaurant: restaurant),
                        ),
                      );
                    },
                    icon: const Icon(Icons.navigate_next),
                    label: const Text('Ver'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.network(restaurant.restaurantImage),
      ]),
    );
  }
}

class RestaurantInfo extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantInfo({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.restaurantName),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildWidgetRow(
                    'Culinária: ',
                    restaurant.cuisine.cousineName,
                  ),
                  buildWidgetRow(
                    'Faixa de Preço: ',
                    r'$' * restaurant.restaurantPriceRange,
                    Colors.yellow.shade800,
                  ),
                  buildWidgetRow(
                    'Avaliação Geral: ',
                    '*' * restaurant.restaurantRating.toInt(),
                    Colors.green,
                  ),
                  buildWidgetRow(
                    'Horário de Funcionamento: ',
                    '6h - 20h',
                    Colors.green,
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Row(children: [
            Expanded(
              child: Text(
                'Cardápio',
                style: theme.textTheme.titleLarge,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Ver mais'),
            ),
          ]),
          SizedBox(
            height: 160,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: resturants.length,
              itemBuilder: (context, index) {
                return buildMenuItem('Item ${index + 1}');
              },
              separatorBuilder: (context, index) => const SizedBox(width: 8.0),
            ),
          ),
          const Divider(),
          Text(
            'Reservas',
            style: theme.textTheme.titleLarge,
          ),
          const Center(child: Text('Nenhuma mesa reservada para você ainda!')),
          const SizedBox(height: 6.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    width: 200,
                    behavior: SnackBarBehavior.floating,
                    content:
                        Text('Mesa reservada.', textAlign: TextAlign.center),
                  ),
                );
              },
              child: const Text('Reservar mesa'),
            ),
          ),
          const Divider(),
          Row(children: [
            Expanded(
              child: Text(
                'Fotos',
                style: theme.textTheme.titleLarge,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Ver mais'),
            ),
          ]),
          SizedBox(
            height: 160,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: resturants.length,
              itemBuilder: (context, index) {
                return Image.network(
                  'https://picsum.photos/160?random=$index',
                  height: 160.0,
                  width: 160.0,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 8.0),
            ),
          ),
          const Divider(),
          Text(
            'Avaliações',
            style: theme.textTheme.titleLarge,
          ),
          ...List.generate(6, (index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const CircleAvatar(child: Icon(Icons.person)),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          'Dona Maria',
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Text('5 estrelas', style: theme.textTheme.labelSmall),
                    ]),
                    const SizedBox(height: 6.0),
                    const Text(
                      'Comida tradicional de qualidade com um preço justo. '
                      'O atendimento pode melhorar no sentido de maior rapidez no rodízio. '
                      'Garçom super simpático!',
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget buildWidgetRow(String title, String value, [Color? color]) {
    return Builder(builder: (context) {
      final theme = Theme.of(context);
      return Row(children: [
        Expanded(child: Text(title, style: theme.textTheme.labelLarge)),
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(color: color),
          ),
        ),
      ]);
    });
  }

  Widget buildMenuItem(String name) {
    return Container(
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: NetworkImage(restaurant.restaurantImage),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
        ),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
