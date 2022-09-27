import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prochain/screen/components/popup/popupitem.dart';
import 'package:prochain/screen/components/popup/popupkategori.dart';

class DetailItem extends StatefulWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  State<DetailItem> createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 82,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: const Text(
          'Item',
          style: TextStyle(color: Colors.black),
        ),
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text(
              "Batal",
              style: TextStyle(color: Colors.indigo),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                height: 22,
                width: 22,
                child: SvgPicture.asset('assets/more_vertical.svg',
                    color: Colors.black),
              ),
            ),
            onTap: () {
              Get.bottomSheet(const PopUpItem(),
                  barrierColor: Colors.transparent);
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Divider(
            thickness: 7,
            height: 7,
            color: Colors.grey.shade200,
          ),
          Container(
            height: 174,
            width: Get.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Multi Vitamin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Harga Beli",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Rp. 10,000",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "per box",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Harga Beli",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Rp. 10,000",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "per box",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 7,
            height: 7,
            color: Colors.grey.shade200,
          ),
          Container(
            height: 283,
            width: Get.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/box.svg",
                        color: Colors.black,
                      ),
                      Text(
                        " Informasi Item",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "SKU",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                  const Text(
                    "PKJ-0001",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Barcode",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                  const Text(
                    "PKJ-0001",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Unit",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                  const Text(
                    "Box",
                    style: TextStyle(color: Colors.black, fontSize: 14),
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
