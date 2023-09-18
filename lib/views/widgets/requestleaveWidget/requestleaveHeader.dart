import 'package:claimz/res/components/bottomNavigationBar.dart';
import 'package:claimz/utils/routes/routeNames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/components/buttonStyle.dart';
import '../../config/mediaQuery.dart';

class RequestleaveHeader extends StatefulWidget {
  const RequestleaveHeader({Key? key}) : super(key: key);

  @override
  State<RequestleaveHeader> createState() => _RequestleaveHeaderState();
}

class _RequestleaveHeaderState extends State<RequestleaveHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.06,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: SizeVariables.getHeight(context) * 0.02),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CustomBottomNavigation(1)));
                  },
                  child: SvgPicture.asset(
                    "assets/icons/back button.svg",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeVariables.getHeight(context) * 0.025,
                left: SizeVariables.getWidth(context) * 0.02),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Request Leave',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: SizeVariables.getHeight(context)*0.13,
          //   ),
          //   child: Container(
          //     height: SizeVariables.getHeight(context)*0.035,
          //     width: SizeVariables.getWidth(context)*0.2,
          //     child: AppButtonStyle(
          //       label: 'Leave List',
          //       onPressed: () {
          //         Navigator.pushNamed(context, RouteNames.leave);
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
