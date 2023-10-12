// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ostello/constants.dart';

class RecentWidget extends StatelessWidget {
  final String text;
  const RecentWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: Constants.grey,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          color: Constants.lightGrey,
        ),
      ),
    );
  }
}
