import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_jtm/models/login_response.dart';
import 'package:test_flutter_jtm/shared/clippath.dart';
import 'package:test_flutter_jtm/shared/custom_card.dart';
import 'package:test_flutter_jtm/shared/theme.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginResponse loginResponse = LoginResponse(); //model dari login response
  List jumlahOutlet = [];


  fetchLoginApi() async {
    var url = Uri.parse('http://test-tech.api.jtisrv.com/md/public/API/Auth');
    var response = await http.post(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final jsonLoginResponse = jsonDecode(response.body);
      loginResponse = LoginResponse.fromJson(jsonLoginResponse);
      setState(() {});
    }

  }

  getOutlet() async {
    var dio = Dio();
    final response = await dio.post(
        'http://test-tech.api.jtisrv.com/md/public/API/Auth/initData',
        data: {"act": "initData", "outlet_id": 1});
    print(response.data);
    setState(() {
      jumlahOutlet.add(response.data['data']["outlet"]);
    });

    print(jumlahOutlet);

    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchLoginApi();
    getOutlet();
  }



  // login() async {
  //   var dio = Dio();
  //   final response = await dio.post(
  //       'http://test-tech.api.jtisrv.com/md/public/API/Auth',
  //       data: {"act": "LOGIN", "un": "admin@admin.com", "up": "admin"});
  //   print(response.data['status']["login"]);
  //   if (response.data['status']["login"] == true) {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     await prefs.setString(
  //         'role', json.encode(response.data["status"]['role']));
  //     print(response.data["status"]['role']);
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }


  String selected = "HOME";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blue,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
                0.25), // here the desired height
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0,
                    style: BorderStyle.none,
                    color: white.withOpacity(0),
                  ),
                  color: white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                        child: Center(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width / 6, 0, 0, 7),
                                    child: Text('APP KEUANGAN',
                                        textAlign: TextAlign.center,
                                        style: blueTextStyle.copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                                  child: Image.asset(
                                      "assets/button_notifikasi.png",
                                      height: 45,
                                      fit: BoxFit.contain),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0,
                                style: BorderStyle.none,
                                color: white.withOpacity(0),
                              ),
                              color: white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: SizedBox(
                                    height:
                                    MediaQuery.of(context).size.height * 0.15,
                                    width:
                                    MediaQuery.of(context).size.height * 0.055,
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selected = "HOME";
                                          });
                                        },
                                        child: selected == "HOME"
                                            ? Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_home_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Home',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )
                                            : Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_home_tidak_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Home',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )),
                                  )),
                              Expanded(
                                  child: SizedBox(
                                    height:
                                    MediaQuery.of(context).size.height * 0.15,
                                    width:
                                    MediaQuery.of(context).size.height * 0.055,
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selected = "TRANSAKSI";
                                          });
                                        },
                                        child: selected == "TRANSAKSI"
                                            ? Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_transaksi_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Transaksi',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )
                                            : Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_transaksi_tidak_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Transaksi',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )),
                                  )),
                              Expanded(
                                  child: SizedBox(
                                    height:
                                    MediaQuery.of(context).size.height * 0.15,
                                    width:
                                    MediaQuery.of(context).size.height * 0.055,
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selected = "LAPORAN";
                                          });
                                        },
                                        child: selected == "LAPORAN"
                                            ? Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_laporan_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Laporan',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )
                                            : Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_laporan_tidak_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Laporan',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )),
                                  )),
                              Expanded(
                                  child: SizedBox(
                                    height:
                                    MediaQuery.of(context).size.height * 0.15,
                                    width:
                                    MediaQuery.of(context).size.height * 0.055,
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selected = "TOOLS";
                                          });
                                        },
                                        child: selected == "TOOLS"
                                            ? Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_tools_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Tools',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )
                                            : Column(
                                          children: [
                                            Image.asset(
                                                "assets/button_tools_tidak_aktif.png",
                                                fit: BoxFit.contain),
                                            Text('Tools',
                                                textAlign: TextAlign.center,
                                                style: blueTextStyle.copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700)
                                            ),
                                          ],
                                        )),
                                  )),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: white.withOpacity(0),
                                      ),
                                      color: blue)),
                              Align(
                                alignment: Alignment.topCenter,
                                child: ClipPath(
                                  clipper: TsClip(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color: white.withOpacity(0),
                                        ),
                                        color: white),
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    width: 106,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0.0, 0, 0, 6),
                                        child: Image.asset(
                                            "assets/button_refresh.png",
                                            fit: BoxFit.contain),
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
                  ),
                ],
              ),
            )),
        body: ListView.builder(
            physics: const ScrollPhysics(),
            itemCount: jumlahOutlet.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, i) => CustomCard(jumlahOutlet[i])));
  }

}
