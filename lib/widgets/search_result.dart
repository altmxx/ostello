import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/common.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.w, bottom: 24.h),
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 60.w,
            decoration: BoxDecoration(
              color: const Color(0xffF9F3FF),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Image.asset(
              "assets/images/Akash.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          HorizontalSpace(14.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Akash Institute",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Physics . Chemistry . Biology . Maths",
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff414141),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
