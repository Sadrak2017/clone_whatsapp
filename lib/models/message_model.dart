import 'package:didi/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final String phone;
  final bool unread;
  final bool video;

  Message({
    this.sender ,
    this.time   ,
    this.text   ,
    this.phone  ,
    this.unread , 
    this.video  ,
  });
}

// Message static

List<Message> chats = [
  /** Home messages */
  Message(
    sender: rafael,
    time: '10:30',
    phone: '6 de novembro, 11:56',
    text: 'Olá bom dia! Já enviei os arquivos coforme combinado. As imagens ficaram na pasta rx',
    unread: false,
    video: true,
  ),
  Message(
    sender: ruan,
    time: '10:45',
    phone: '12 de janeiro, 12:00',
    text: 'Bom dia! Como está a evolução do projeto, conseguiu concluir o CI/CD ?',
    unread: true,
    video: false,
  ),
  Message(
    sender: monica,
    time: '11:49',
    phone: '19 de fevereiro, 10:20',
    text: 'Olá! Thanks! Vou avaliar e em breve farei contato para discutir alguns detalhes.',
    unread: false,
    video: true,
  ),
  Message(
    sender: ana,
    time: '12:05',
    phone: '04 de junho, 22:20',
    text: 'Blz, obrigada. Estou entusiasmada com o projeto.',
    unread: true,
    video: false,
  ),
  Message(
    sender: karina,
    time: '13:21',
    phone: '29 de julho, 16:30',
    text: 'Sim, a gente construiu usando JS, dessa vez não usamos nenhum framework...',
    unread: true,
    video: false,
  ), 
  Message(
    sender: vera,
    time: '13:33',
    phone: '20 de julho, 17:20',
    text: 'A logo está pronta, só falta gerar as versões em SVG, mas ficou incrível. Os ícones também melhoramos, ao nvés de gradiente, usamos neumorphism. Atende muito bem à proposta. Avalie depois e nos diga oq ue achou',
    unread: true,
    video: true,
  ),
  Message(
    sender: claudemar,
    time: '13:40',
    phone: '15 de julho, 17:10',
    text: 'Boa tarde, como está ? A gente vai fazer um churrasco nesse próximo final de semana. Está convidado.',
    unread: true,
    video: true,
  ), 
  Message(
    sender: sadrak,
    time: '13:20',
    phone: '04 de junho, 20:40',
    text: 'Ok. Pensei que fosse subir no Gitlab, mas aqui consigo clonar...',
    unread: false,
    video: true,
  ),
];
  
List<Message> messages = [
  /** Home messages screen*/
  Message(
    sender: rafael,
    time: '13:12',
    text: 'Recebi o relatório, vou fazer aqueles ajustes e em breve aviso a atualização.',
    unread: true,
  ),
  Message(
    sender: monica,
    time: '13:20',
    text: 'Ok, o New Relic é excelente para avaliar desempenho! Estabeleça um equilíbrio entre performance e segurança.',
    unread: true,
  ),
  Message(
    sender: rafael,
    time: '13:53',
    text: 'Sim, estou usando ele, a propósito, muito interessante! Obrigado pela dica!',
    unread: true,
  ),
  Message(
    sender: monica,
    time: '13:59',
    text: 'Disponha...',
    unread: true,
  ),
  Message(
    sender: monica,
    time: '14:00',
    text: 'Mais um detalhe, veja se consegue terminar até na próxima segunda-feira, precisamos validar com o Ivan a integração com o pipeline',
    unread: true,
  ),
  Message(
    sender: rafael,
    time: '14:05',
    text: 'Sem problemas, consigo terminar até lá',
    unread: true,
  ),
  Message(
    sender: monica,
    time: '14:06',
    text: 'Obrigada! Qualquer dúvida, à disposição ',
    unread: true,
  ),
];
