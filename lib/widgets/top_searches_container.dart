import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostello/common.dart';
import 'package:ostello/widgets/institute_containers.dart';

class TopSearches extends StatelessWidget {
  const TopSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.w, right: 13.w),
      child: Column(children: [
        Text(
          "Top Searches By Students & Parents",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        VerticalSpace(22.h),
        GridView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 14.9.w,
              mainAxisSpacing: 20.h,
              childAspectRatio: 111.76 / 76.62),
          children: const [
            InstituteContainers(imagePath: "assets/images/Akash.png"),
            InstituteContainers(imagePath: "assets/images/AFID.png"),
            InstituteContainers(imagePath: "assets/images/VR ACADEMY.png"),
            InstituteContainers(imagePath: "assets/images/MCC.png"),
            InstituteContainers(imagePath: "assets/images/Global IAS.png"),
            InstituteContainers(imagePath: "assets/images/Jamboree.png"),
          ],
        ),
      ]),
    );
  }
}
