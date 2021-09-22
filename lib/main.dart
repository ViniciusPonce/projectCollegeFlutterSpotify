import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(fontFamily: 'Gotham'), home: inicio());
  }
}

// Widget principal() {
//   return Stack(
//     children: [inicio(), rodape()],
//   );
// }

// Widget rodape() {
//   return Positioned(child: Text("Menu"), bottom: 10);
// }

Widget inicio() {
  return Container(
      padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment(0.2, 0.2),
        colors: [
          Color.fromRGBO(0, 0, 0, 0.4),
          Colors.black,
        ],
      )),
      child: DefaultTextStyle(
          child: painelInicio(),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Gotham")));
}

Widget painelInicio() {
  return SingleChildScrollView(
      child: Column(
    children: [titulo(), ultimosAlbuns(), lancamentos(), perfil(), menu()],
  ));
}

Widget titulo() {
  return Row(children: [
    Expanded(flex: 9, child: Text("Boa noite", style: TextStyle(fontSize: 20))),
    Expanded(
        flex: 2,
        child: Icon(Icons.notifications_outlined, color: Colors.white)),
    Expanded(flex: 2, child: Icon(Icons.alarm_outlined, color: Colors.white)),
    Expanded(
        flex: 2, child: Icon(Icons.settings_outlined, color: Colors.white)),
  ]);
}

Widget miniAlbum(foto, album) {
  return Expanded(
      flex: 6,
      child: Container(
        child: Row(children: [
          ClipRRect(
              child: Image(image: AssetImage(foto), width: 50),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), bottomLeft: Radius.circular(4))),
          Flexible(
              child: Container(
            child: Text(album),
            margin: EdgeInsets.all(5),
          ))
        ]),
        margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(70, 70, 70, 1),
            borderRadius: BorderRadius.circular(4)),
      ));
}

Widget ultimosAlbuns() {
  return Column(
    children: [
      Row(children: [
        miniAlbum("albuns/teste1.jpeg", "Arnaldo Antunes"),
        miniAlbum("albuns/teste2.jpeg", " Ao Vivo No\n Estúdio (Deluxe)")
      ]),
      Row(children: [
        miniAlbum("albuns/teste1.jpeg", "Tuyo"),
        miniAlbum("albuns/teste2.jpeg", " As 50 mais\n tocadas no Brasil")
      ]),
      Row(children: [
        miniAlbum("albuns/teste1.jpeg", " Famous\n Last Words (Records)"),
        miniAlbum("albuns/teste2.jpeg", "Drama")
      ]),
    ],
  );
}

Widget lancamentos() {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
                child: Image(
                  image: AssetImage("albuns/teste1.jpeg"),
                  width: 50,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            Column(
              children: [
                Row(
                  children: [
                    Text("NOVO LANÇAMENTO DE", style: TextStyle(fontSize: 9))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Metallica",
                      style: TextStyle(fontSize: 20, height: 1),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Container(
          child: Row(
            children: [
              ClipRRect(
                  child: Image(
                      image: AssetImage("albuns/teste1.jpeg"), width: 110),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(4))),
              Flexible(
                  child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          " My Friend of Musery (From\n Jason´s Riff Tapes)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("  Single • Metallica",
                            style: TextStyle(fontSize: 11, height: 2)),
                      ],
                    ),
                    Container(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 9,
                                child: Icon(Icons.favorite_border_outlined,
                                    color: Colors.white)),
                            Expanded(
                                flex: 9,
                                child: Icon(Icons.play_circle_fill_outlined,
                                    color: Colors.white)),
                          ],
                        ),
                        margin: EdgeInsets.fromLTRB(0, 15, 10, 0))
                  ],
                ),
                margin: EdgeInsets.all(5),
              ))
            ],
          ),
          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          decoration: BoxDecoration(
              color: Color.fromRGBO(70, 70, 70, 1),
              borderRadius: BorderRadius.circular(4)),
        ),
      ],
    ),
    margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
  );
}

Widget perfil() {
  return Container(
    child: Row(
      children: [
        Flexible(
            child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    " Vinicius Ponce Cintra",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("  Idade: 26 anos",
                      style: TextStyle(fontSize: 15, height: 2)),
                ],
              ),
              Row(
                children: [
                  Text("  Sistemas de Informação",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
              Row(
                children: [
                  Text("  Uni-FACEF",
                      style: TextStyle(fontSize: 15, color: Colors.blue)),
                ],
              )
            ],
          ),
          margin: EdgeInsets.all(5),
        )),
        ClipRRect(
            child: Image(image: AssetImage("albuns/teste1.jpeg"), width: 130),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), bottomLeft: Radius.circular(4))),
      ],
    ),
    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(70, 70, 70, 1),
        borderRadius: BorderRadius.circular(4)),
  );
}

Widget menu() {
  return Container(
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_outlined,
            color: Colors.white,
          ),
          label: "Buscar",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_music,
            color: Colors.white,
          ),
          label: 'Sua Biblioteca',
        ),
      ],
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
    ),
    margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
  );
}
