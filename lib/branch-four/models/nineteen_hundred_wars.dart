import 'weapon_used.dart';

class NineteenHundredWars {
  String imageUrl;
  int centuries;
  String name;
  String place;
  int howManyDied;
  String description;
  List<WeaponUsed> weapons;
  String summary;

  NineteenHundredWars({
    required this.imageUrl,
    required this.centuries,
    required this.name,
    required this.howManyDied,
    required this.place,
    required this.description,
    required this.weapons,
    required this.summary,
  });
}

List<NineteenHundredWars> nineteenHundredWars = [
  NineteenHundredWars(
    imageUrl: 'images/1.jpg',
    centuries: 1900,
    name: 'Name',
    place: 'Austria',
    howManyDied: 100000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  NineteenHundredWars(
    imageUrl: 'images/6.jpg',
    centuries: 1900,
    name: 'Name',
    place: 'Greece',
    howManyDied: 10000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  NineteenHundredWars(
    imageUrl: 'images/3.jpg',
    centuries: 1900,
    name: 'Name',
    place: 'Bavaria',
    howManyDied: 15000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  NineteenHundredWars(
    imageUrl: 'images/2.jpg',
    centuries: 1900,
    name: 'Name',
    place: 'India',
    howManyDied: 20000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  NineteenHundredWars(
    imageUrl: 'images/8.jpg',
    centuries: 1900,
    name: 'Name',
    place: 'China',
    howManyDied: 50000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
];
