import 'package:flutter/material.dart';
import 'detail.dart';



class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("DWX PHOTOGRPHY"),
        ),
        body: _PageList());
  }
}

class _PageList extends StatefulWidget {
  _PageStateListState createState() => _PageStateListState();
}

class _PageStateListState extends State<_PageList> {
  List<String> judul = [
    "Prewedding",
    "Wedding",
    "Cinematic",
  ];

  List<String> subjudul = [
    "Abadikan moment terbaik anda di DWX PHOTOGRAPHY",
    "Abadikan moment terbaik anda di DWX PHOTOGRAPHY",
    "Abadikan moment terbaik anda di DWX PHOTOGRAPHY",
  ];

  List<String> gambar = [
    "images/prewedding.jpeg",
    "images/wedding.jpeg",
    "images/cinematic.jpeg",

  ];

  List<String> isian = [
    "Abadikan moment terbaik anda di DWX PHOTOGRAPHY,",
    "Abadikan moment terbaik anda di DWX PHOTOGRAPHY",
    "Abadikan moment terbaik anda di DWX PHOTOGRAPHY",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (BuildContext contex, int index) {
          final title = judul[index].toString();
          final subTitle = subjudul[index].toString();
          final img = gambar[index].toString();
          final isian = [index].toString();
          return Container(
            height: 200,
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  backgroundImage(img),
                  Container(
                    child: topContent(title, subTitle, isian, ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                          itemJudul: title,
                          itemImage: img,
                          itemSub: subTitle,
                          qty: isian,
                        )));
              },
            ),
          );
        },
      ),
    );
  }
}

backgroundImage(String gambar) {
  return new Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar))),
  );
}

topContent(String nama, String deskripsi, String sample) {
  return new Container(
    height: 150,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderText,
          ),
          Container(
            height: 1,
            width: 100,
            color: Colors.redAccent,
          ),
          Text(
            deskripsi,
            style: descHeaderText,
          ),

          Text(
            sample,
            style: footerHeaderText,
          )
        ],
      ),
    ),
  );
}

final baseTextStyle = const TextStyle( fontFamily: 'arial');

final bigHeaderText =
baseTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white);

final descHeaderText =
baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white);

final footerHeaderText =
baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);

final detailstyle =
baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);
