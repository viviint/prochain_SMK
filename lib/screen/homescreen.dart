// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prochain/screen/tambahitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 88,
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: const Text("Items",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          leading: GestureDetector(
            child: const Icon(Icons.format_align_left_rounded),
            onTap: () {
              // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //     builder: (BuildContext context) => Home()));
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: SvgPicture.asset(
                'assets/Paper.svg',
              ),
            )
          ],
        ),
        body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: 127,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/folder.png'),
                        fit: BoxFit.cover))),
          ),
          const Center(
              child: Text("Ops! Item Kosong :(",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.indigo))),
          const SizedBox(height: 10),
          const Text(
            "Belum ada data item",
          ),
          const SizedBox(height: 12),
          ButtonTheme(
            minWidth: 270,
            height: 70,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.indigo)),
              color: Colors.indigo,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/PaperPlus.svg'),
                  const Text("Tambah", style: TextStyle(fontSize: 18)),
                ],
              ),
              onPressed: () {
                Get.offAll(const TambahItem());
              },
            ),
          )
        ])));
  }
}
