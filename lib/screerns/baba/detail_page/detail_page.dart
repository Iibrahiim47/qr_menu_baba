// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qr_menu_baba/model/product_model.dart';
import 'package:qr_menu_baba/static_values.dart';

class DetailPage extends StatefulWidget {
  Data model;

  DetailPage({super.key, required this.model});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF9C22A),
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   fit: BoxFit.cover,
                            //   image: NetworkImage(
                            //       "${StaticValues.imageUrl}${widget.model.imageUrl}"),
                            // ),
                            ),
                        height: height * 0.6,
                        width: width,
                        child: CachedNetworkImage(
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.medium,
                          progressIndicatorBuilder: (context, url, progress) {
                            return const CircularProgressIndicator();
                          },
                          imageUrl:
                              "${StaticValues.imageUrl}${widget.model.imageUrl}",
                        ),
                      ),
                      SizedBox(
                        height: height * 0.08,
                        width: width,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.03,
                            right: width * 0.03,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Card(
                                  color: const Color(0xff9BAD87),
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    height: height * 0.06,
                                    width: width * 0.08,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffDB6439),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.white,
                                      size: width * 0.05,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height,
                                width: width * 0.2,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.03,
                      right: width * 0.03,
                    ),
                    child: SizedBox(
                      height: height * 0.35,
                      width: width,
                      // color: Colors.amber,
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.07,
                            width: width,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${widget.model.engName} - ${widget.model.araName}',
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                            width: width,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${widget.model.price}',
                                style: TextStyle(
                                  color: const Color(0xffDB6439),
                                  fontSize: width * 0.028,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.12,
                            width: width,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '${widget.model.description}',
                                style: TextStyle(
                                  fontSize: width * 0.028,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
