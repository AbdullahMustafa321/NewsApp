import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.sp,
                )),
            TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  fontSize: 20.sp,
                ))
          ]),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 15.h,),),
             NewsListViewBuilder(category: category ,)
          ],
        ),
      ),
    );
  }
}
