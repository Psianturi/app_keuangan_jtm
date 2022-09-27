import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_flutter_jtm/shared/clippath.dart';
import 'package:test_flutter_jtm/shared/theme.dart';
import 'package:test_flutter_jtm/views/keluar.dart';
import 'package:test_flutter_jtm/views/kurs.dart';
import 'package:test_flutter_jtm/views/masuk.dart';
import 'package:test_flutter_jtm/views/mutasi.dart';
import 'package:test_flutter_jtm/views/pindah.dart';


class CustomCard extends StatefulWidget {
  CustomCard(this.outlet);
  Map outlet = {};

  @override
  State<CustomCard> createState() => _CustomCardState();
}

bool parameter = false;

class _CustomCardState extends State<CustomCard> {
  double _height = 0;
  double _width = 0;
  ubah(bool parameter, BuildContext context) {
    if (parameter == true) {
      setState(() {
        _height = MediaQuery.of(context).size.height;
        _width = MediaQuery.of(context).size.width * 0.70;
      });
    } else {
      setState(() {
        _height = 0;
        _width = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35, //tinggi card
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: parameter == false ? white : white.withOpacity(0.72),
        shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: white.withOpacity(0),
              width: 0.0,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(16, 16, 38, 16),
              children: [
                Text(widget.outlet["outlet_name"],
                    textAlign: TextAlign.left,
                    style: blueTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w800),
                ),
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset("assets/icon_rupiah.png",
                              height: 10, fit: BoxFit.contain),
                        ),                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                            child: Text(
                                'IDR    ......................................................................................',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: blueTextStyle.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 6, 0, 6),
                          child: Text('10.0000',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: blueTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset("assets/icon_dollar.png",
                              height: 10, fit: BoxFit.contain),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                'USD    ......................................................................................',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: blueTextStyle.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 6, 0, 6),
                          child: Text('10.0000',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: blueTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset("assets/icon_euro.png",
                              height: 10, fit: BoxFit.contain),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                'EUR    ......................................................................................',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: blueTextStyle.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 6, 0, 6),
                          child: Text('10.0000',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: blueTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset("assets/icon_dollar_singapore.png",
                              height: 10, fit: BoxFit.contain),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                'SGD    ......................................................................................',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: blueTextStyle.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 6, 0, 6),
                          child: Text('10.0000',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: blueTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  parameter = !parameter;
                  print("dddd");
                  print(parameter);
                  ubah(parameter, context);
                });
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ClipPath(
                        clipper: CardOpen(),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          decoration: BoxDecoration(
                            color: bluelight,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.32),
                                offset: const Offset(0, 1),
                                blurRadius: 5,
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: parameter == true
                                  ? Image.asset("assets/button_open_slide.png",
                                  height: 28, fit: BoxFit.contain)
                                  : Image.asset("assets/button_close_slide.png",
                                  height: 28, fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 585),
                      width: _width,
                      height: _height,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 15, 10, 10),
                        color: bluelight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 72,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: white.withOpacity(0),
                                  ),
                                  color: bluelight),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.06,
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        child: Masuk(),
                                                      ));
                                                });
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      "assets/button_input_masuk.png",
                                                      fit: BoxFit.contain),
                                                  Text('MASUK',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 11,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                  ),
                                                ],
                                              )))),
                                  Expanded(
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.06,
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  setState(() {
                                                    Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                          PageTransitionType
                                                              .fade,
                                                          child: Keluar(), //
                                                        ));
                                                  });
                                                });
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      "assets/button_input_keluar.png",
                                                      fit: BoxFit.contain),
                                                  Text('KELUAR',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 11,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                  ),
                                                ],
                                              )))),
                                  Expanded(
                                      child: SizedBox(
                                        height: MediaQuery.of(context).size.height *
                                            0.12,
                                        width: MediaQuery.of(context).size.height *
                                            0.06,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                setState(() {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type:
                                                        PageTransitionType.fade,
                                                        child: Pindah(),
                                                      ));
                                                });
                                              });
                                            },
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    "assets/button_input_pindah.png",
                                                    fit: BoxFit.contain),
                                                Text('PINDAH',
                                                    textAlign: TextAlign.center,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 11,
                                                        fontWeight:
                                                        FontWeight.w600),
                                                ),
                                              ],
                                            )),
                                      )),
                                  Expanded(
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.06,
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  setState(() {
                                                    Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                          PageTransitionType
                                                              .fade,
                                                          child: Mutasi(),
                                                        ));
                                                  });
                                                });
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      "assets/button_input_mutasi.png",
                                                      fit: BoxFit.contain),
                                                  Text('MUTASI',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 11,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                  ),
                                                ],
                                              )))),
                                  Expanded(
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.06,
                                          child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  setState(() {
                                                    Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                          PageTransitionType
                                                              .fade,
                                                          child: Kurs(),
                                                        ));
                                                  });
                                                });
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      "assets/button_input_kurs.png",
                                                      fit: BoxFit.contain),
                                                  Text('KURS',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 11,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                  ),
                                                ],
                                              )))),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: white,
                                      shape: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: white.withOpacity(0),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(11)),
                                      child: ListView(
                                        shrinkWrap: true,
                                        padding: const EdgeInsets.all(11),
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 1, 0, 0),
                                                child: Text('Jumlah Barang ',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w700),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 1, 0, 0),
                                                  child: Text(
                                                      '...............................................................',
                                                      textAlign: TextAlign.left,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.w700),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 2, 0, 4),
                                                child: Text('16',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 1, 0, 0),
                                                child: Text('Total IDR ',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 1, 0, 0),
                                                  child: Text(
                                                      '...............................................................',
                                                      textAlign: TextAlign.left,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                          FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 2, 0, 0),
                                                child: Text('Rp. 10.0000000000',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 1, 0, 0),
                                                child: Text('Total USD ',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 1, 0, 0),
                                                  child: Text(
                                                      '...............................................................',
                                                      textAlign: TextAlign.left,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 2, 0, 0),
                                                child: Text('\$  10.0000000000',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 1, 0, 0),
                                                child: Text('Total EUR ',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 1, 0, 0),
                                                  child: Text(
                                                      '...............................................................',
                                                      textAlign: TextAlign.left,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 2, 0, 0),
                                                child: Text(
                                                    '\u{20B9} 10.0000000000',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 1, 0, 0),
                                                child: Text('Total SGD ',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 1, 0, 0),
                                                  child: Text(
                                                      '...............................................................',
                                                      textAlign: TextAlign.left,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      style: blueTextStyle.copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.fromLTRB(
                                                    0, 2, 0, 0),
                                                child: Text(
                                                    '\$\$ 10.0000000000',
                                                    textAlign: TextAlign.left,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: blueTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w800),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ))
                          ],
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
    );
  }
}
