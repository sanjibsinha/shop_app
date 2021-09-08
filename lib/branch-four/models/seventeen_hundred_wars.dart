import 'weapon_used.dart';

class SeventeenHundredWars {
  String imageUrl;
  int centuries;
  String name;
  String place;
  int howManyDied;
  String description;
  List<WeaponUsed> weapons;
  String summary;

  SeventeenHundredWars({
    required this.imageUrl,
    required this.centuries,
    required this.name,
    required this.place,
    required this.howManyDied,
    required this.description,
    required this.weapons,
    required this.summary,
  });
}

List<SeventeenHundredWars> seventeenHundredWars = [
  SeventeenHundredWars(
    imageUrl: 'images/11.jpg',
    centuries: 1700,
    name: 'War of the Spanish Succession 1701–1714',
    place: 'Europe',
    howManyDied: 100000,
    description:
        'Who would be to the throne of Spain following the death of the childless Charles II;'
        ' The last of the Spanish Habsburgs?'
        ' The conflict arose from this question. Although three principal claimants '
        'England, the Dutch Republic, and France signed a treaty of partition in October 1698, it did'
        ' not last. A major conflict arose that centered around one question - who would occupy'
        ' most places. An anti-French alliance was formed (September 7, 1701) by England, the Dutch Republic, and the emperor Leopold. '
        ' They were later joined by Prussia, Hanover, other German states, and Portugal.'
        ' On the other side, The electors of '
        ' Bavaria and Cologne and the dukes of Mantua and Savoy allied themselves with France, although Savoy switched sides in 1703.'
        'John Churchill, duke of Marlborough, played the leading role in Queen Anne’s government and on the battlefield until his fall in 1711. '
        ' He was ably supported on the battlefield by the imperial general Prince Eugene of Savoy.'
        ' In Britain the enemies of Marlborough won influence with the queen and had him removed from command on December 31, 1711. '
        ' With the collapse of the alliance, peace negotiations began in 1712. '
        ' Because of the conflicts of interest between the former allies, each dealt separately with France.',
    weapons: weapons,
    summary: 'Treaties of Utrecht marked the rise of the power of Britain',
  ),
  SeventeenHundredWars(
    imageUrl: 'images/0.jpg',
    centuries: 1700,
    name: 'Great Northern War 1717–1720.',
    place: 'Europe',
    howManyDied: 10000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  SeventeenHundredWars(
    imageUrl: 'images/3.jpg',
    centuries: 1700,
    name: 'War of the Austrian Succession 1740.',
    place: 'Europe',
    howManyDied: 15000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  SeventeenHundredWars(
    imageUrl: 'images/4.jpg',
    centuries: 1700,
    name: 'Anglo-Mysore Wars 1766–1799.',
    place: 'India',
    howManyDied: 20000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  SeventeenHundredWars(
    imageUrl: 'images/5.jpg',
    centuries: 1700,
    name: 'American Revolutionary War 1775–1783.',
    place: 'US',
    howManyDied: 50000,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla odio ipsum, rhoncus id libero id, pretium congue sem. Nunc vitae ultricies justo. In ac nunc a ligula lobortis mattis sed ut ex. Etiam blandit ante sed lacus ullamcorper pulvinar. Ut egestas massa a egestas accumsan. Etiam eu velit ornare, consectetur urna quis, cursus ex. Suspendisse et ipsum mauris. Praesent vestibulum metus ac quam laoreet accumsan. Sed quis ultrices massa, quis elementum nunc. Nam a massa varius lacus suscipit fringilla.'
        'Nulla ullamcorper euismod dui sit amet elementum. Suspendisse dapibus eu tellus eu placerat. Sed sit amet nisi ac lectus maximus convallis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Praesent vitae lacus ac dui aliquam vehicula et sed diam. In eget interdum erat. Donec vel ex quis mi ornare vulputate ut sit amet purus. Curabitur aliquet ornare turpis, sed luctus orci ultrices nec. Mauris vestibulum euismod arcu, eu mollis nulla fermentum eu. Donec sit amet nulla leo. Nam vitae justo nec magna egestas venenatis. Sed ut ipsum fermentum, fermentum est nec, laoreet mauris. Duis et suscipit libero, nec porttitor erat. Proin vel sem sollicitudin, hendrerit mauris ac, accumsan eros.'
        'Proin non egestas velit, in pharetra neque. Etiam a sapien in nunc cursus pharetra. Integer mi nunc, interdum volutpat mi molestie, eleifend consequat lorem. Etiam mattis in libero eget fringilla. Mauris aliquet libero non massa blandit auctor. Duis vestibulum velit dignissim nunc ullamcorper porttitor. Ut vestibulum, neque id blandit eleifend, lectus turpis consectetur nunc, id viverra mauris lacus vitae ipsum. Aliquam quis finibus risus. ',
    weapons: weapons,
    summary: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
];
