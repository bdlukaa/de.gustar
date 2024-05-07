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
