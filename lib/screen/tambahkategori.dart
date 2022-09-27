// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prochain/screen/components/popup/popupkategori.dart';

class TambahKategori extends StatefulWidget {
  const TambahKategori({Key? key}) : super(key: key);

  @override
  State<TambahKategori> createState() => _TambahKategoriState();
}

class _TambahKategoriState extends State<TambahKategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 87,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Kategori',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Text(
                'Batal',
                style: TextStyle(color: Colors.indigo, fontSize: 16),
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.indigo,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 7,
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Jajanan",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                        child: SvgPicture.asset('assets/more_vertical.svg'),
                        onTap: () {
                          Get.bottomSheet(const PopUpKategory(),
                              barrierColor: Colors.transparent);
                        },
                      )
                    ],
                  ),
                ),
                const Divider(
                  endIndent: 10,
                  indent: 10,
                  thickness: 2,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mainan",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                        child: SvgPicture.asset('assets/more_vertical.svg'),
                        onTap: () {
                          Get.bottomSheet(const PopUpKategory(),
                              barrierColor: Colors.transparent);
                        },
                      )
                    ],
                  ),
                ),
                const Divider(
                  endIndent: 10,
                  indent: 10,
                  thickness: 2,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sembako",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                        child: SvgPicture.asset('assets/more_vertical.svg'),
                        onTap: () {
                          Get.bottomSheet(const PopUpKategory(),
                              barrierColor: Colors.transparent);
                        },
                      )
                    ],
                  ),
                ),
                const Divider(
                  endIndent: 10,
                  indent: 10,
                  thickness: 2,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ButtonTheme(
              minWidth: Get.width,
              height: 70,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.white),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                child: const Text(
                  "Simpan",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  // Get.offAll(WebLogin());
                },
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
