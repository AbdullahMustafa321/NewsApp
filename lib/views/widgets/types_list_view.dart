import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/item_model.dart';
import 'news_types.dart';

class TypesListView extends StatelessWidget {
  const TypesListView({
    super.key,
  });

  final List<ItemModel> item = const [
    ItemModel('Business', 'assets/business.jpeg'),
    ItemModel('Entertainment', 'assets/entertaiment.avif'),
    ItemModel('Health', 'assets/health.avif'),
    ItemModel('Science', 'assets/science.avif'),
    ItemModel('Sports', 'assets/sports.jpg'),
    ItemModel('Technology', 'assets/technology.jpeg'),
    ItemModel('World', 'assets/general.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: item.length,
            itemBuilder: (context, index) {
              return NewsTypes(item: item[index]);
            }));
  }
}
