import 'package:fitted_gridview/fitted_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/model/shop.dart';

class GridViewImage extends StatefulWidget {
  const GridViewImage({super.key, required this.images});
  final List images;

  @override
  State<GridViewImage> createState() => _GridViewImageState();
}

class _GridViewImageState extends State<GridViewImage> {
  late List images;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    images = widget.images;
    print(images);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              Column(
                children: images.map((e) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: FittedGridView(
                      maxItemDisplay: 5,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                e,
                                fit: BoxFit.cover,
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
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
