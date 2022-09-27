// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prochain/screen/detailitem.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 82,
        backgroundColor: Colors.indigo,
        shadowColor: Colors.transparent,
        title: const Text(
          'Items',
          style: TextStyle(color: Colors.white),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.format_align_left_outlined,
              size: 28,
              color: Colors.white,
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
                  child: SvgPicture.asset('assets/Paper.svg',
                      color: Colors.white)),
            ),
            onTap: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 6,
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 13),
                          child: Container(
                            height: 48,
                            width: Get.width,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 19.29, right: 12.29),
                                  child: SvgPicture.asset('assets/Vector.svg'),
                                ),
                                const Text('Cari Data'),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        onTap: () {},
                        // onTap: () =>
                        //     showSearch(context: context, delegate: Search()),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: Get.width,
                        height: 48,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.white,
                          child: SvgPicture.asset(
                            'assets/Filter.svg',
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const DetailItem());
                  },
                  child: Container(
                    height: 95,
                    width: Get.width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Multi Vitamin",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "200",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "SKU : ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                  ),
                                  const Text(
                                    "PKJ-0002",
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                              Text(
                                "Box",
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            thickness: 2,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 34,
        ),
      ),
    );
  }
}
