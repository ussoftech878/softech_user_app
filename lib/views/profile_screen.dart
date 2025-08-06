import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:softech_user_app/utils/images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            image: AssetImage(PngAssests.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 43.h),
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://placehold.co/600x400/png",
                        height: 90.w,
                        width: 90.w,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: 20.h),
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: const Color(0xFF9A9999),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 0.86.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                const Divider(thickness: 0.5),
                SizedBox(height: 10.h),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x19000000),
                        blurRadius: 20.r,
                        offset: const Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Account Settings",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          SizedBox(
                            height: 50.h,
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.lock),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "Change Password",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 24.w,
                                    color: const Color(0xFF04BFB6),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 2.h,
                          // ),
                          Divider(thickness: 0.5.h),
                          SizedBox(
                            height: 50.h,
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.info_outline),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 24.w,
                                    color: const Color(0xFF04BFB6),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 30.h,
                          // ),
                          SizedBox(
                            height: 59.h,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.5.h),
                                child: Row(
                                  children: [
                                    Icon(Icons.info_outline),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "Privacy Policy",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 24.w,
                                      color: const Color(0xFF04BFB6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 30.h,
                          // ),
                          SizedBox(
                            height: 59.h,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.5.h),
                                child: Row(
                                  children: [
                                    Icon(Icons.logout),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "Logout",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 24.w,
                                      color: const Color(0xFF04BFB6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 7.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
