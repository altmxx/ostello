import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostello/common.dart';

class AddressAvatarWidget extends StatelessWidget {
  const AddressAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Iconsax.location,
                  color: Colors.white,
                ),
                Text(
                  "Ghandhinagar",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                )
              ],
            ),
            VerticalSpace(5.h),
            Text(
              "Near SKM College, Gandhinagar, Ahmedabad",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        CircleAvatar(
          backgroundImage: const AssetImage("assets/images/Avatar.png"),
          radius: 19.r,
        )
      ],
    );
  }
}
