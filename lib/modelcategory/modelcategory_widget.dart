import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modelcategory_model.dart';
export 'modelcategory_model.dart';

class ModelcategoryWidget extends StatefulWidget {
  const ModelcategoryWidget({Key? key}) : super(key: key);

  @override
  _ModelcategoryWidgetState createState() => _ModelcategoryWidgetState();
}

class _ModelcategoryWidgetState extends State<ModelcategoryWidget> {
  late ModelcategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModelcategoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1574891934268-6287cda565b9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxvcmlnYW1pfGVufDB8fHx8MTcwMDg5NDA1Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                  width: 436.0,
                  height: 1263.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.93, -0.81),
              child: Text(
                '  Origami Model',
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.95, -0.70),
              child: Text(
                '   Choose which Origami Model \n   you\'ve built',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.98, -0.48),
              child: Text(
                '   Select Categories',
                style: FlutterFlowTheme.of(context).bodyLarge,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.05, 0.91),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('Uploadpage');
                },
                text: '       Next  Step       ',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryText,
                  textStyle:
                      FlutterFlowTheme.of(context).headlineSmall.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.05, -0.17),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Animals',
                options: FFButtonOptions(
                  width: 120.0,
                  height: 120.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.09, 0.23),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Bird',
                options: FFButtonOptions(
                  width: 120.0,
                  height: 120.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.13, 0.62),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Math',
                options: FFButtonOptions(
                  width: 120.0,
                  height: 120.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFEF3951),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.97, -0.95),
              child: FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: 'Back',
                options: FFButtonOptions(
                  width: 80.0,
                  height: 20.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF090909),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 5.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
