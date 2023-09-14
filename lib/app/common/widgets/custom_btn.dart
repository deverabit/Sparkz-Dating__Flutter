import 'package:dating_app/app/common/common.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/core.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onTap,
    required this.color,
    this.textColor,
    this.resize = false,
    this.icon,
    this.isLoading = false,
    this.prefix,
    this.loadingColor,
  });
  final double? width;
  final double? height;
  final String? text;
  final void Function()? onTap;
  final Color color;
  final Color? textColor;
  final bool resize;
  final IconData? icon;
  final bool isLoading;
  final Widget? prefix;
  final Color? loadingColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isLoading ? loadingColor ?? Color(kDarkGrey.value) : color,
          borderRadius: resize ? klargeBorderRadius : kmediumBorderRadius,
        ),
        child: resize
            ? Icon(icon, size: 23.sp, color: Color(kLight.value))
            : const Center().reusableText(
                text ?? '',
                style: appMStyle(
                  20,
                  textColor ?? Colors.white,
                  FontWeight.w700,
                ),
              ),
      ),
    );
  }
}

// ** Custom Elevated Button

class CustomElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final double? height;
  final double? width;
  final double? radius;
  final String text;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.height,
    this.width,
    this.radius,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      width: width ?? double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.5, color: kGrey),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
          ),
          padding: EdgeInsets.zero,
          backgroundColor: kDarkRed,
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appMStyle(16, kLight, FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
