import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_flutter_jtm/shared/theme.dart';


class Pindah extends StatefulWidget {
  Pindah({Key? key}) : super(key: key);

  @override
  State<Pindah> createState() => _PindahState();
}

class _PindahState extends State<Pindah> {
  List listOutlet = ["Outlet 1", "Outlet 2", "Outlet 3", "Outlet 4"];
  List uang = ["IDR", "USD", "EUR", "SGD"];
  String? selected;
  String? selectedUang;
  List foto = [];
  TextEditingController keterangan = TextEditingController();
  TextEditingController uangController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selected = listOutlet[0];
    selectedUang = uang[0];
  }
// getOutlet() async {
//     var dio = Dio();
//     final response = await dio.post(
//         'http://test-tech.api.jtisrv.com/md/public/API/Auth/initData',
//         data: {"act": "initData", "outlet_id": 1});

//     return true;
//   }

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
                          child: Text('Pindah',
                              textAlign: TextAlign.center,
                              style: blueTextStyle.copyWith(
                                  fontWeight: FontWeight.w800, fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.width / 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width / 10,
                                  0,
                                  MediaQuery.of(context).size.width / 10,
                                  MediaQuery.of(context).size.height * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Dari",
                                      style: blueTextStyle.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      )),
                                  DropdownButtonFormField(
                                    iconEnabledColor: biru,
                                    iconDisabledColor: biru,
                                    style:
                                    Theme.of(context).textTheme.subtitle1,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(right: 3),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: birumuda, width: 1),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: birumuda, width: 1),
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
                                                  style: blueTextStyle.copyWith(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w500))),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width / 10,
                                  0,
                                  MediaQuery.of(context).size.width / 10,
                                  MediaQuery.of(context).size.height * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Ke",
                                      style: blueTextStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),

                                  DropdownButtonFormField(
                                    iconEnabledColor: biru,
                                    iconDisabledColor: biru,
                                    style:
                                    Theme.of(context).textTheme.subtitle1,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(right: 3),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: birumuda, width: 1),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: birumuda, width: 1),
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
                                                  style: blueTextStyle.copyWith(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500))
                                          ),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                )
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
            child: Text('Start Date',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w800)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: putih,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: DateTimePicker(
                type: DateTimePickerType.date,
                textAlign: TextAlign.center,
                dateMask: 'd/MM/yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text('Input',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w800)),
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
                                    style: blueTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
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
            child: Text('Photo',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w800)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.14,
            child: Card(
              shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: birumuda,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: birumuda,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: putih,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: biru,
                              ),
                              Flexible(
                                child: Text('Tambahkan Foto',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.fade,
                                    style: blueTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  foto.length != 1
                      ? Expanded(child: SizedBox())
                      : Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: birumuda,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: putih,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: biru,
                              ),
                              Flexible(
                                child: Text('Tambahkan Foto',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.fade,
                                    style: blueTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  foto.length != 2
                      ? Expanded(child: SizedBox())
                      : Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: birumuda,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: putih,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: biru,
                              ),
                              Flexible(
                                child: Text('Tambahkan Foto',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.fade,
                                    style: blueTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  foto.length != 3
                      ? Expanded(child: SizedBox())
                      : Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: birumuda,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: putih,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: biru,
                              ),
                              Flexible(
                                child: Text('Tambahkan Foto',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.fade,
                                    style: blueTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                        ),
                      ),
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
            child: Text('Keterangan',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  color: putih,
                  fontWeight: FontWeight.w800,
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: putih,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: TextFormField(),
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 3.5,
                  0,
                  MediaQuery.of(context).size.width / 3.5,
                  8),
              child: Card(
                color: birumuda,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: birumuda,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                // semanticContainer: true,
                // clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Center(
                  child: Text('Submit',
                      textAlign: TextAlign.center,
                      style: blueTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w800)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
