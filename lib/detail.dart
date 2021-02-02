import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';


class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;
  final String qty;

  const DetailPage(
      {Key key, this.itemJudul, this.itemSub, this.itemImage, this.qty})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("dwx dari " + itemJudul,
              style: TextStyle(color: Colors.white)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Image.asset(itemImage)),
                SizedBox(height: 10),
                Text(
                  itemJudul,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 24, fontWeight: FontWeight.bold),
                ),
               
                SizedBox(height:30),
            Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.pinkAccent,
                        color: Colors.redAccent,
                        elevation: 7.0,
                        child: MaterialButton(
                          // ALERT DIALOG FORM BOOKING
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  title: Text('Form Booking'),
                                  content: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Form(
                                      child: Column(
                                        children: <Widget>[
                                          DateTimePicker(
                                            type: DateTimePickerType
                                                .dateTimeSeparate,
                                            dateMask: 'd MMM, yyyy',
                                            initialValue:
                                                DateTime.now().toString(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                            icon: Icon(Icons.event),
                                            dateLabelText: 'Tanggal / Hari',
                                            timeLabelText: 'Jam',
                                            onChanged: (val) => print(val),
                                            validator: (val) {
                                              print(val);
                                              return null;
                                            },
                                            onSaved: (val) => print(val),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Nama',
                                            ),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Alamat',
                                            ),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Nomor Handphone',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    RaisedButton(
                                      child: Text(
                                        'BOOK NOW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      onPressed: () {
                                        // your code
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Center(
                            child: Text(
                              'BOOKING ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    )     
              ],),
        ),);
  }
}