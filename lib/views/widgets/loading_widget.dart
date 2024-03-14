import 'package:card_loading/card_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          for (int i = 0; i <= 4; i++)
            Column(
              children: [
                CardLoading(
                  height: 100.h,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(10)),
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: CardLoading(
                    width: 280.w,
                    height: 30.h,
                    borderRadius:
                    const BorderRadius.all(Radius.circular(10)),
                    margin: const EdgeInsets.only(bottom: 10),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: CardLoading(
                    width: 200.w,
                    height: 25.h,
                    borderRadius:
                    const BorderRadius.all(Radius.circular(10)),
                    margin: const EdgeInsets.only(bottom: 10),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
