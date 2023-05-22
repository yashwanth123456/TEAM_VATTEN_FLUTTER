import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Text(
              'VATTEN',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          )
        ],
        body: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'We Guarantee Purity !',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          weekFormat: true,
                          weekStartsMonday: true,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(() =>
                                _model.calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle: TextStyle(),
                          dayOfWeekStyle: TextStyle(),
                          dateStyle: TextStyle(),
                          selectedDateStyle: TextStyle(),
                          inactiveDateStyle: TextStyle(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: Wrap(
                            spacing: 8.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 2.0, 2.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 220),
                                      curve: Curves.bounceOut,
                                      width: MediaQuery.of(context).size.width *
                                          0.428,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: Image.asset(
                                            'assets/images/9621-waves.gif',
                                          ).image,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x34090F13),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            FlutterFlowTheme.of(context)
                                                .primary600
                                          ],
                                          stops: [1.0, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: CircularPercentIndicator(
                                        percent: 0.5,
                                        radius: 60.0,
                                        lineWidth: 24.0,
                                        animation: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        backgroundColor: Color(0xFFF1F4F8),
                                        center: Text(
                                          '50%',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 2.0, 12.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.44,
                                      height: 190.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/9621-waves.gif',
                                          ).image,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x34090F13),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            FlutterFlowTheme.of(context)
                                                .secondaryColor
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 8.0, 12.0, 8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                                  child: Text(
                                                    'Quality Status',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: StreamBuilder<
                                                          List<QualityRecord>>(
                                                        stream:
                                                            queryQualityRecord(
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitFadingCircle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<QualityRecord>
                                                              textQualityRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final textQualityRecord =
                                                              textQualityRecordList
                                                                      .isNotEmpty
                                                                  ? textQualityRecordList
                                                                      .first
                                                                  : null;
                                                          return GradientText(
                                                            valueOrDefault<
                                                                String>(
                                                              textQualityRecord!
                                                                  .ph,
                                                              'PH',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryColor
                                                            ],
                                                            gradientDirection:
                                                                GradientDirection
                                                                    .ltr,
                                                            gradientType:
                                                                GradientType
                                                                    .linear,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    StreamBuilder<
                                                        List<QualityRecord>>(
                                                      stream:
                                                          queryQualityRecord(
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitFadingCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<QualityRecord>
                                                            textQualityRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final textQualityRecord =
                                                            textQualityRecordList
                                                                    .isNotEmpty
                                                                ? textQualityRecordList
                                                                    .first
                                                                : null;
                                                        return GradientText(
                                                          textQualityRecord!
                                                              .tds!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                          colors: [
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryColor
                                                          ],
                                                          gradientDirection:
                                                              GradientDirection
                                                                  .ltr,
                                                          gradientType:
                                                              GradientType
                                                                  .linear,
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 2.0, 16.0, 12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8.0,
                                  color: Color(0x34090F13),
                                  offset: Offset(0.0, 4.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
