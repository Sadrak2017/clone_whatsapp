import 'package:didi/models/user_model.dart';

class Status {
  final User sender;
  final String imageUrl;
  final String time;
  final String text;
  final bool unread;

  Status({
    this.sender ,
    this.imageUrl,
    this.time   ,
    this.text   ,
    this.unread ,  
  });
}

List<Status> status = [
  Status(
    sender: rafael,
    imageUrl: 'assets/images/status/rafael.jpg',
    time: 'Hoje às 12:30',
    text: '...',
    unread: false,
  ),
  Status(
    sender: ruan,
    imageUrl: 'assets/images/status/huan.jpg',
    time: 'Hoje às 10:11',
    text: '...',
    unread: true,
  ),
  Status(
    sender: monica,
    imageUrl: 'assets/images/status/monica.jpg',
    time: 'Hoje às 08:56',
    text: '...',
    unread: true,
  ),
  Status(
    sender: ana,
    imageUrl: 'assets/images/status/ana.jpg',
    time: 'Hoje às 06:56',
    text: '...',
    unread: false,
  ),
  Status(
    sender: karina,
    imageUrl: 'assets/images/status/karina.jpg',
    time: 'Hoje às 01:12',
    text: '...',
    unread: true,
  ), 
  Status(
    sender: vera,
    imageUrl: 'assets/images/status/vera.jpg',
    time: 'Hoje às 01:23',
    text: '...',
    unread: false,
  ),
  Status(
    sender: claudemar,
    imageUrl: 'assets/images/status/claudemar.jpg',
    time: 'Hoje às 12:56',
    text: '...',
    unread: true,
  ),  
  Status(
    sender: sadrak,
    imageUrl: 'assets/images/status/sadrak.jpg',
    time: 'Hoje às 05:23',
    text: '...',
    unread: false,
  ),
];
  