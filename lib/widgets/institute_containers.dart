// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/constants.dart';

class InstituteContainers extends StatelessWidget {
  final String imagePath;
  const InstituteContainers({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.76.w,
      height: 76.62.h,
      decoration: BoxDecoration(
        border: Border.all(color: Constants.purple.withOpacity(0.11)),
        borderRadius: BorderRadius.circular(10.64.r),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
