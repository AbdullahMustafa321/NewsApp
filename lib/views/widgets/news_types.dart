import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/item_model.dart';
import 'package:news_app/views/screens/category_screen.dart';

class NewsTypes extends StatelessWidget {
   const NewsTypes({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>  CategoryScreen(category: item.name,)));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.h),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10.r)),
        width: 200.w,
        height: 100.h,
        // Adjust the width as needed
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            item.name,
            style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
    );
  }
}
