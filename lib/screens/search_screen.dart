import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ostello/common.dart';
import 'package:ostello/constants.dart';
import 'package:ostello/widgets/address_avatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ostello/widgets/recent_search_container.dart';
import 'package:ostello/widgets/search_result.dart';
import 'package:ostello/widgets/top_searches_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _searchResultsFound = "";
  bool recentSearchVisible = true;
  final searchController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: 12.w, right: 11.w, bottom: 17.h, top: 65.h),
              width: double.infinity,
              color: Constants.purple,
              child: Column(
                children: [
                  const AddressAvatarWidget(),
                  VerticalSpace(18.h),
                  TextField(
                    controller: searchController,
                    cursorColor: Colors.black,
                    style: const TextStyle(height: 1),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      suffixIcon: Container(
                        padding: EdgeInsets.only(right: 14.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundColor: Constants.purple,
                              radius: 15.r,
                              child: Icon(
                                MdiIcons.faceAgent,
                                color: Colors.white,
                                size: 20.sp,
                              ),
                            ),
                            HorizontalSpace(6.w),
                            Icon(
                              Iconsax.microphone_2,
                              color: Constants.lightGrey,
                              size: 24.sp,
                            )
                          ],
                        ),
                      ),
                      isDense: true,
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.only(top: 8.h),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 16.w,
                        minHeight: 16.w,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                            left: 16.w, top: 18.h, bottom: 18.h, right: 4.w),
                        child: const Icon(
                          Iconsax.search_normal_14,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {
                          _searchResultsFound = "";
                          recentSearchVisible = true;
                        });
                      }
                    },
                    onSubmitted: (value) {
                      if (value.isNotEmpty &&
                          value.toLowerCase() == "iit jee coaching") {
                        setState(() {
                          _searchResultsFound = "Found";
                        });
                      } else if (value.isNotEmpty &&
                          value.toLowerCase() != "iit jee coaching") {
                        setState(() {
                          _searchResultsFound = "Not Found";
                          recentSearchVisible = false;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            VerticalSpace(19.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_searchResultsFound == "Found")
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(bottom: 25.h),
                    shrinkWrap: true,
                    children: const [
                      SearchResult(),
                      SearchResult(),
                      SearchResult(),
                      Divider(
                        color: Constants.lightestGrey,
                        thickness: 0.5,
                      ),
                    ],
                  ),
                if (_searchResultsFound == "Not Found")
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Uh-oh!",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Constants.grey,
                          ),
                        ),
                        Text(
                          "No results for ${searchController.text} found.\nPlease try something else.!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Constants.lightGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                recentSearchVisible
                    ? Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Text(
                              "Recent Searches",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Constants.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          HorizontalSpace(8.w),
                          SizedBox(
                            width: 20.w,
                            height: 20.w,
                            child: Image.asset(
                              "assets/images/noun-time-slot-4445880.png",
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
                VerticalSpace(18.h),
                recentSearchVisible
                    ? Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Wrap(
                          runAlignment: WrapAlignment.end,
                          spacing: 11.w,
                          runSpacing: 18.h,
                          children: const [
                            RecentWidget(
                              text: "Medical Coaching",
                            ),
                            RecentWidget(
                              text: "Medical Entrance Exam",
                            ),
                            RecentWidget(
                              text: "Medical Coaching",
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
                VerticalSpace(19.h),
                const Divider(
                  color: Constants.lightestGrey,
                  thickness: 0.5,
                ),
                VerticalSpace(22.h),
                const TopSearches(),
                VerticalSpace(20.h),
              ],
            )
          ],
        ),
      ),
    );
  }
}
