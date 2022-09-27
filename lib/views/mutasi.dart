import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter_jtm/shared/theme.dart';

class Mutasi extends StatefulWidget {
  Mutasi({Key? key}) : super(key: key);

  @override
  State<Mutasi> createState() => _MutasiState();
}

class _MutasiState extends State<Mutasi> {
  List listOutlet = ["Outlet 1", "Outlet 2", "Outlet 3", "Outlet 4"];
  List uang = ["IDR", "USD", "EUR", "SGD"];
  String? selected;
  String? selectedUang;
  String startdate = "";
  String todate = "";
  List foto = [];
  TextEditingController keterangan = TextEditingController();
  TextEditingController uangController = TextEditingController();

  @override
  void initState() {
    startdate = DateFormat('d/MM/yyyy').format(DateTime.now()).toString();
    todate = DateFormat('d/MM/yyyy').format(DateTime.now()).toString();
    super.initState();
    selected = listOutlet[0];
    selectedUang = uang[0];
  }

  message(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => Center(
            child: AlertDialog(
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              content: Container(
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                ),
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('Filter',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: biru,
                                fontWeight: FontWeight.w800,
                                textStyle:
                                Theme.of(context).textTheme.subtitle1,
                              )),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 10,
                            child: DropdownButtonFormField(
                              iconEnabledColor: biru,
                              iconDisabledColor: biru,
                              style: Theme.of(context).textTheme.subtitle1,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(right: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: putih, width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: birumuda, width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor: putih,
                              ),
                              validator: (value) =>
                              value == null ? "Pilih Laporan" : null,
                              dropdownColor: Colors.white,
                              value: selected,
                              isExpanded: true,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selected = newValue;
                                });
                              },
                              items: listOutlet.map(
                                    (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Center(
                                        child: Text(val,
                                            style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              color: biru,
                                              fontWeight: FontWeight.w500,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ))),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 3.0),
                                    child: Text('Start Date',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: biru,
                                          fontWeight: FontWeight.w800,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        )),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                                    child: Container(
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.08,
                                      child: Card(
                                        color: birumuda,
                                        shape: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: birumuda,
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        child: Theme(
                                          data: ThemeData(
                                              inputDecorationTheme:
                                              InputDecorationTheme(
                                                border: InputBorder.none,
                                              )),
                                          child: DateTimePicker(
                                            type: DateTimePickerType.date,
                                            textAlign: TextAlign.center,
                                            dateMask: 'd/MM/yyyy',
                                            initialValue:
                                            DateTime.now().toString(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                            onChanged: (val) {
                                              setState(() {
                                                startdate = val;
                                              });
                                            },
                                            validator: (val) {
                                              print(val);
                                              return null;
                                            },
                                            onSaved: (val) => print(val),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 3.0),
                                    child: Text('To Date',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: biru,
                                          fontWeight: FontWeight.w800,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        )),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                                    child: Container(
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.08,
                                      child: Card(
                                        color: birumuda,
                                        shape: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: birumuda,
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        child: Theme(
                                          data: ThemeData(
                                              inputDecorationTheme:
                                              InputDecorationTheme(
                                                border: InputBorder.none,
                                              )),
                                          child: DateTimePicker(
                                            type: DateTimePickerType.date,
                                            textAlign: TextAlign.center,
                                            dateMask: 'd/MM/yyyy',
                                            initialValue:
                                            DateTime.now().toString(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2100),
                                            onChanged: (val) {
                                              setState(() {
                                                todate = val;
                                              });
                                            },
                                            validator: (val) {
                                              print(val);
                                              return null;
                                            },
                                            onSaved: (val) => print(val),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width / 4.5,
                                0,
                                MediaQuery.of(context).size.width / 4.5,
                                8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Card(
                                color: biru,
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: biru,
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                                // semanticContainer: true,
                                // clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Center(
                                  child: Text('Submit',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color: putih,
                                        fontWeight: FontWeight.w800,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
            0.25), // here the desired height
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                  style: BorderStyle.none,
                  color: putih.withOpacity(0),
                ),
                color: putih),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: biru,
                          )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: Text('Pindah Mutasi',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: biru,
                                fontWeight: FontWeight.w800,
                                textStyle:
                                Theme.of(context).textTheme.subtitle1,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.width / 10,
                      child: DropdownButtonFormField(
                        iconEnabledColor: biru,
                        iconDisabledColor: biru,
                        style: Theme.of(context).textTheme.subtitle1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(right: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: birumuda, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: birumuda, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: birumuda,
                        ),
                        validator: (value) =>
                        value == null ? "Pilih Outlet" : null,
                        dropdownColor: Colors.white,
                        value: selected,
                        isExpanded: true,
                        onChanged: (String? newValue) {
                          setState(() {
                            selected = newValue;
                          });
                        },
                        items: listOutlet.map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Center(
                                  child: Text(val,
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: biru,
                                        fontWeight: FontWeight.w500,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ))),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.width / 9,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              message(context);
                            });
                          },
                          child: Card(
                            child: Center(
                              child: Text(
                                  'Jenis Laporan  ' + startdate + " - " + todate,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    color: biru,
                                    fontWeight: FontWeight.w800,
                                    textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                  )),
                            ),
                            color: birumuda,
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: putih,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                    ))
              ],
            )),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text('Dari',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: putih,
                  fontWeight: FontWeight.w800,
                  textStyle: Theme.of(context).textTheme.subtitle1,
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: putih,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: TextFormField(
                            controller: uangController,
                            onFieldSubmitted: (v) {
                              var hasil = v.replaceAll('IDR', "");
                              final formattedPrice =
                              NumberFormat.currency(locale: 'IDR')
                                  .format(double.parse(hasil));
                              uangController.value = TextEditingValue(
                                text: formattedPrice,
                                selection: TextSelection.collapsed(
                                    offset: formattedPrice.length),
                              );
                            },
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.number),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: DropdownButtonFormField(
                      style: Theme.of(context).textTheme.subtitle1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: birumuda, width: 1),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: putih,
                      ),
                      validator: (value) => value == null ? "Pilih Uang" : null,
                      dropdownColor: Colors.white,
                      value: selectedUang,
                      isExpanded: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedUang = newValue;
                        });
                      },
                      items: uang.map(
                            (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icon_rupiah.png",
                                    height: 10, fit: BoxFit.contain),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(val,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: biru,
                                      fontWeight: FontWeight.w500,
                                      textStyle:
                                      Theme.of(context).textTheme.subtitle1,
                                    )),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text('Ke',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: putih,
                  fontWeight: FontWeight.w800,
                  textStyle: Theme.of(context).textTheme.subtitle1,
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: putih,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: TextFormField(
                            controller: uangController,
                            onFieldSubmitted: (v) {
                              var hasil = v.replaceAll('IDR', "");
                              final formattedPrice =
                              NumberFormat.currency(locale: 'IDR')
                                  .format(double.parse(hasil));
                              uangController.value = TextEditingValue(
                                text: formattedPrice,
                                selection: TextSelection.collapsed(
                                    offset: formattedPrice.length),
                              );
                            },
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.number),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: DropdownButtonFormField(
                      style: Theme.of(context).textTheme.subtitle1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: birumuda, width: 1),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: putih,
                      ),
                      validator: (value) => value == null ? "Pilih Uang" : null,
                      dropdownColor: Colors.white,
                      value: selectedUang,
                      isExpanded: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedUang = newValue;
                        });
                      },
                      items: uang.map(
                            (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icon_dollar.png",
                                    height: 10, fit: BoxFit.contain),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(val,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: biru,
                                      fontWeight: FontWeight.w500,
                                      textStyle:
                                      Theme.of(context).textTheme.subtitle1,
                                    )),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

