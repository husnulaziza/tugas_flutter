// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class buildernya extends StatelessWidget {
  buildernya({super.key});

  List<dynamic> global = [];

  Future getItems() async {
    var response = await http.get(Uri.https(
      'randomuser.me',
      '/api/',
    ));
    //https://randomuser.me/api//
    var jsonData = jsonDecode(response.body);

    global = jsonData['results'];
    print(global.length);
    return jsonData;
  }

  int plusOne(int x) {
    int hasil = x + 1;
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getItems(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Semua User : ",
                            style: GoogleFonts.ptSans(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          for (int i = 0; i < global.length; i++)
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 1,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromARGB(108, 143, 55, 184)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.purple),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 12),
                                                  child: Text(
                                                    plusOne(i).toString(),
                                                    style: GoogleFonts.ptSans(
                                                        color: Colors.white),
                                                  ),
                                                )),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                global[i]['name']['first'],
                                                style: GoogleFonts.ptSans(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 25),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 143, 55, 184),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
