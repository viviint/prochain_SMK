// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/screen/itempage.dart';
import 'package:prochain/screen/tambahkategori.dart';

class TambahItem extends StatefulWidget {
  const TambahItem({Key? key}) : super(key: key);

  @override
  State<TambahItem> createState() => _TambahItemState();
}

class _TambahItemState extends State<TambahItem> {
  final _formKey = GlobalKey<FormState>();
  bool _isObsecure = true;
  bool check = false;
  late PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 87,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Tambah Item',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: Center(
          child: GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.indigo, fontSize: 16),
              ),
            ),
            onTap: () {
              Get.back();
            },
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 7,
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding:
                    EdgeInsets.only(top: 40, right: 30, left: 30, bottom: 10),
                child: Text(
                  'Informasi Item',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "Nama Item*"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(labelText: "SKU*"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: _isObsecure,
                      decoration: InputDecoration(
                        labelText: "Kategori",
                        suffixIcon: IconButton(
                          icon: GestureDetector(
                            onTap: () {
                              Get.to(TambahKategori());
                            },
                            child: Icon(_isObsecure
                                ? Icons.add_box_outlined
                                : Icons.add_box_outlined),
                          ),
                          onPressed: () {
                            // Get.to(Tambah_Kategori());
                            setState(() {
                              _isObsecure = !_isObsecure;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "Harga Beli*"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "Satuan*(Pcs/Box)"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(labelText: "Stock"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "Harga Jual"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "Keterangan"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
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
                  Get.to(ItemPage());
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
