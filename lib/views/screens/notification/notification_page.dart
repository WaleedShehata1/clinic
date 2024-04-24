import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/commponents/card_notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0).w,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Row(
              children: [
                Text(
                  "الإشعارات",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_right_alt,
                      size: 35.w,
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.only(bottom: 15.h, top: 5.h, start: 25.w),
            child: Text(
              "اليوم",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey),
            ),
          ),
          cardNotification(),
          cardNotification(),
          cardNotification(),
        ]),
      ),
    );
  }
}
