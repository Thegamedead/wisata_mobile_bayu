import 'package:flutter/material.dart';

class FromScreen6 extends StatefulWidget {
  const FromScreen6({super.key});

  @override
  State<FromScreen6> createState() => _FromScreen6State();
}

class _FromScreen6State extends State<FromScreen6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = ' ';
  String nama = ' ';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Selamat Datang Di Form"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (String value) {
                    setState(() {
                      nama = value;
                    });
                  },
                  controller: textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Nama',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('Jenis Kelamin: '),
                    Radio(
                        value: 'Laki-Laki',
                        groupValue: selectedRadio,
                        onChanged: (value) {
                          setState(() {
                            selectedRadio = value.toString();
                          });
                        }),
                    Text('Laki-Laki'),
                    Radio(
                        value: 'Perempuan',
                        groupValue: selectedRadio,
                        onChanged: (value) {
                          setState(() {
                            selectedRadio = value.toString();
                          });
                        }),
                    Text('Perempuan')
                  ],
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  title: Text('Olahraga'),
                  value: olahraga,
                  onChanged: (value) {
                    setState(() {
                      olahraga = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Seni'),
                  value: seni,
                  onChanged: (value) {
                    setState(() {
                      seni = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
                SwitchListTile(
                  title: Text('Lulus'),
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1),
                        )),
                  ),
                ),
              ],
            )));
  }
}
