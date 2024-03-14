
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorWid extends StatelessWidget {
  final String text;
  const ErrorWid({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          text,
          style:
          TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}

