import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/views/widgets/lanch_url.dart';

class NewsTile extends StatelessWidget {
   NewsTile({super.key,required this.article});
ArticlesMosdel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: GestureDetector(
            onTap: (){
              LaunchUrl(url: article.url).launchURL();
            },
            child: Image.network(
              article.image?? 'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png',
              width: 350.w,
              height: 200.h,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          article.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        Text(
          article.subtitle??'...',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
