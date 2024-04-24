import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/consts/images.dart';
import '../../widgets/commponents/card_item.dart';
import '../../widgets/commponents/constant.dart';
import '../../widgets/commponents/text_Form_Field.dart';
import '../item_view/item_view.dart';

class OnlineShop extends StatelessWidget {
  const OnlineShop({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    Text(
                      "صيدليات أونلاين",
                      style: TextStyle(
                          color: primerColor,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w900),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50.h,
                    child: DefaultFormField(
                      fillColor: Colors.white,
                      radius: 20.r,
                      prefixIcon: Icon(
                        Icons.search,
                        color: primerColor,
                        size: 24.sp,
                      ),
                      controller: TextEditingController(),
                      hint: "ابحث عن  الدواء",
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(15.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20).r,
                      color: primerColor,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        ImagesPath.icMenu,
                        width: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15.w, vertical: 30.h),
                child: Text(
                  "أكثر الأدوية شراء``",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                    color: primerColor,
                  ),
                ),
              ),
              SizedBox(
                height: 270.h,
                child: ListView.builder(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ItemView();
                            })),
                        child: cardItem());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
