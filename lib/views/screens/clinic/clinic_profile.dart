import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/commponents/constant.dart';

class ClinicProfilePage extends StatelessWidget {
  const ClinicProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Container(
          padding: EdgeInsetsDirectional.only(top: 20.h),
          color: primerColor,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: const Radius.circular(250).r,
                      topStart: const Radius.circular(350).r,
                    ),
                  ),
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 25.w, vertical: 50.h),
                  child: Column(
                    children: [
                      Text(
                        "صيدلية المصري",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "30 كيلومتر",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: primerColor,
                            ),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: primerColor,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 30.h),
                        padding: EdgeInsetsDirectional.all(10.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.only(
                                topStart: const Radius.circular(15).r,
                                topEnd: const Radius.circular(15).r),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1.w)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "أرقام التليفونات",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: primerColor,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.all(10.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: const Radius.circular(15).r,
                                bottomStart: const Radius.circular(15).r),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1.w)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "01507623823",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: primerColor,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.all(10.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.only(
                                topStart: const Radius.circular(15).r,
                                topEnd: const Radius.circular(15).r),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1.w)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "25 ش ابن السراج متفرع من وينجت",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: primerColor,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.all(10.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: const Radius.circular(15).r,
                                bottomStart: const Radius.circular(15).r),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.w,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "من 10 ص الي 12 م",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: primerColor,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(-190, -150),
          child: Container(
            width: 400.w,
            height: 400.h,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF).withOpacity(0.2),
                borderRadius: BorderRadius.all(const Radius.circular(300).r)),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, 80),
          child: Container(
            width: 120.w,
            height: 100.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsetsDirectional.only(bottom: 10.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25).r),
            child: Image.asset(
              ImagesPath.notificationAvatar,
              width: 200.w,
              height: 200.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ]),
    );
  }
}
