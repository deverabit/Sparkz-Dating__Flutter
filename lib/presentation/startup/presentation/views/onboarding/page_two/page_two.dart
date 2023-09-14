import 'package:dating_app/app/core/core.dart';

import '../../../../../../app/common/common.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/people_talking.png',
            height: height * 0.4,
            width: width,
          ),
          30.sbH,
          ReusableText(
            text: pageTwoText,
            style: appMStyle(
              19,
              Color(kDark.value),
              FontWeight.w600,
            ),
          ),
          10.sbH,
          ReusableText(
            text: pageTwo,
            style: appMStyle(
              19,
              Color(kDark.value),
              FontWeight.w500,
            ),
          ).padding(EdgeInsets.symmetric(horizontal: 20)),
        ],
      ),
    );
  }
}
