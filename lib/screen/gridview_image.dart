import 'dart:async';

import 'package:fitted_gridview/fitted_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/shop.dart';
import 'package:food_app/widget/Overlay.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class GridViewImage extends StatefulWidget {
  const GridViewImage({super.key, required this.images});
  final List images;

  @override
  State<GridViewImage> createState() => _GridViewImageState();
}

class _GridViewImageState extends State<GridViewImage> {
  late List images;
  List<Widget> images_widget = [];
  StreamController<Widget> overlayController =
      StreamController<Widget>.broadcast();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    images = widget.images;
    for (var item in images) {
      images_widget.add(Image(image: AssetImage(item)));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    overlayController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.chevron_left_outlined,
                            color: Colors.black, size: 40),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Menu & Photos',
                        style: TextStyle(
                            fontFamily: 'Josefin',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: FittedGridView(
                    maxItemDisplay: images.length,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: InkWell(
                            onTap: () {
                              SwipeImageGallery(
                                context: context,
                                children: images_widget,
                                onSwipe: (index) {
                                  overlayController.add(OverlayExample(
                                    title:
                                        '${index + 1}/${images_widget.length}',
                                  ));
                                },
                                overlayController: overlayController,
                                initialOverlay: OverlayExample(
                                  title: '${index + 1}/${images_widget.length}',
                                ),
                                initialIndex: index
                              ).show();
                            },
                            child: Hero(
                              tag: index,
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    remainingItemsOverlay: (remaining) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          color: Colors.grey.withOpacity(0.7),
                          alignment: Alignment.center,
                          child: Text(
                            "+$remaining",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
