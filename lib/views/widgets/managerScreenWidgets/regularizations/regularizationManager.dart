import 'package:claimz/res/components/date_range_picker.dart';
import 'package:claimz/views/config/mediaQuery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../../viewModel/regularisationRequestViewModel.dart';
import './pendingRegularizations.dart';
import './approvedRegularizations.dart';
import './rejectedRegularizations.dart';

class ManagerRegularizations extends StatefulWidget {
  ManagerRegularizationsState createState() => ManagerRegularizationsState();
}

class ManagerRegularizationsState extends State<ManagerRegularizations> {
  // RegularisationRequestViewModel regularisationRequestViewModel =
  //     RegularisationRequestViewModel();
  DateFormat day = DateFormat('dd');
  DateFormat monthFormat = DateFormat('MMM');
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  bool isLoading = true;
  final _controller = TextEditingController();

  var selectedValue;

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(DateTime.now().year, 4, 1),
    end: DateTime(DateTime.now().year + 1, 3, 31),
  );

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<RegularisationRequestViewModel>(context, listen: false)
        .getRegularisationRequest(dateFormat.format(dateRange.start),
            dateFormat.format(DateTime.now()))
        .then((value) {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final provider =
        Provider.of<RegularisationRequestViewModel>(context).regularisationList;

    // TODO: implement build
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              toolbarHeight: 130,

              elevation: 0,
              title: Column(
                children: [
                  Container(
                    // height: 400,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SvgPicture.asset(
                                  "assets/icons/back button.svg",
                                ),
                              ),
                              SizedBox(
                                  width:
                                      SizeVariables.getWidth(context) * 0.02),
                              Container(
                                width: SizeVariables.getWidth(context) * 0.4,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Regularisations',
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.amber,
                          width: SizeVariables.getWidth(context) * 0.3,
                          height: SizeVariables.getHeight(context) * 0.05,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: DateRangePicker(
                              onPressed: pickDateRange,
                              end: end,
                              start: start,
                              // width: double.infinity,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 17),
                    // color: Colors.red,
                    child: Row(
                      children: [
                        // Padding(
                        //   padding:
                        //       EdgeInsets.only(left: SizeVariables.getWidth(context) * 0.03, top: SizeVariables.getHeight(context) * 0.014),
                        //   child: InkWell(
                        //       onTap: () => Navigator.of(context).pop(),
                        //       child: const Icon(Icons.arrow_back_ios,
                        //           color: Colors.green, size: 30)),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeVariables.getWidth(context) * 0.02,
                              right: SizeVariables.getWidth(context) * 0.04,
                              bottom: SizeVariables.getHeight(context) * 0.04),
                          child: Container(
                            // color: Colors.amber,
                            width: SizeVariables.getWidth(context) * 0.8,
                            height: SizeVariables.getHeight(context) * 0.065,
                            // margin: EdgeInsets.only(
                            //     // top: SizeVariables.getHeight(context) * 0.02,
                            //     ),
                            padding: EdgeInsets.only(
                                left: SizeVariables.getWidth(context) * 0.02),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  // spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                const Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Icon(
                                    Icons.search_outlined,
                                    color: Colors.grey,
                                    size: 22,
                                  ),
                                ),
                                Flexible(
                                  flex: 9,
                                  fit: FlexFit.tight,
                                  child: TextField(
                                    controller: _controller,
                                    // onChanged: (value) => searchByQuery(value),
                                    autofocus: false,
                                    cursorColor: Colors.grey,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search By Name or Title',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // title: Container(
              //   padding: EdgeInsets.only(
              //     top: SizeVariables.getHeight(context) * 0.008,
              //   ),
              //   child: Row(
              //     children: [
              //       InkWell(
              //         onTap: () {
              //           // Navigator.of(context).pushNamed(RouteNames.navbar);
              //           Navigator.of(context).pop();
              //         },
              //         child: SvgPicture.asset(
              //           "assets/icons/back button.svg",
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(
              //           left: SizeVariables.getWidth(context) * 0.01,
              //         ),
              //         child: Text(
              //           'Regularisation',
              //           style: Theme.of(context).textTheme.caption,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              bottom: TabBar(
                  indicatorColor: Theme.of(context).colorScheme.onPrimary,
                  tabs: const [
                    Tab(text: 'Pending'),
                    Tab(text: 'Approved'),
                    Tab(text: 'Rejected'),
                  ]),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : provider['data'].isEmpty
                    ? const Center(
                        child: Text('No Regularisations for the given date'),
                      )
                    : TabBarView(
                        children: [
                          PendingRegulazations(),
                          ApproveRegulizations(),
                          RejectedRegularizations()
                        ],
                      )),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        saveText: "SET",
        builder: (context, child) => Theme(
              data: ThemeData().copyWith(
                colorScheme: const ColorScheme.dark(
                  primary: Color(0xffF59F23),
                  surface: Colors.black,
                  onSurface: Colors.grey,
                ),
                dialogBackgroundColor: Color.fromARGB(255, 91, 91, 91),
              ),
              child: child!,
            ),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        initialDateRange: dateRange);

    if (newDateRange == null) return;

    setState(() {
      dateRange = newDateRange;
    });

    var fromDate = dateFormat.format(dateRange.start);
    var toDate = dateFormat.format(dateRange.end);

    // Map<String, dynamic> _data = {'month': myMonth, 'year': myYears.toString()};

    Provider.of<RegularisationRequestViewModel>(context, listen: false)
        .getRegularisationRequest(fromDate, toDate)
        .then((value) {
      setState(() {
        isLoading = false;
      });
    });
    print('dateRange: $dateRange');
    return dateRange;
  }
}
