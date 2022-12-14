import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupTabPageWidget extends StatefulWidget {
  const SignupTabPageWidget({Key? key}) : super(key: key);

  @override
  _SignupTabPageWidgetState createState() => _SignupTabPageWidgetState();
}

class _SignupTabPageWidgetState extends State<SignupTabPageWidget> {
  ApiCallResponse? apiResult0l3;
  TextEditingController? birthdateSignupController;
  TextEditingController? emailSignupController;
  TextEditingController? phoneSignupController;
  TextEditingController? nameSignupController;

  @override
  void initState() {
    super.initState();
    birthdateSignupController = TextEditingController();
    emailSignupController = TextEditingController();
    phoneSignupController = TextEditingController();
    nameSignupController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    birthdateSignupController?.dispose();
    emailSignupController?.dispose();
    phoneSignupController?.dispose();
    nameSignupController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 10),
            child: TextFormField(
              controller: emailSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  'hhg5865k' /* E-mail */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
            child: TextFormField(
              controller: phoneSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  'idmp7i68' /* Telefon numaras?? */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
            child: TextFormField(
              controller: nameSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  'xombkwwb' /* Ad Soyad */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 32),
            child: TextFormField(
              controller: birthdateSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: FFLocalizations.of(context).getText(
                  '8e0w74ak' /* Do??um Tarihi (GG/AA/YYYY) */,
                ),
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              apiResult0l3 = await RegisterUserCall.call(
                email: emailSignupController!.text,
                phone: phoneSignupController!.text,
                name: nameSignupController!.text,
                birthdate: birthdateSignupController!.text,
              );
              if ((apiResult0l3?.succeeded ?? true)) {
                context.pushNamed(
                  'VerificationPin',
                  queryParams: {
                    'loginOrRegister': serializeParam(
                      2.0,
                      ParamType.double,
                    ),
                  }.withoutNulls,
                );
              } else {
                context.pushNamed(
                  'VerificationPin',
                  queryParams: {
                    'loginOrRegister': serializeParam(
                      2.0,
                      ParamType.double,
                    ),
                  }.withoutNulls,
                );
              }

              setState(() {});
            },
            text: FFLocalizations.of(context).getText(
              '6qiw1gyw' /* Hesap Olu??tur */,
            ),
            options: FFButtonOptions(
              width: 230,
              height: 50,
              color: Colors.white,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
              elevation: 3,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '9dqlqd0g' /* Kay??t olmak i??in hesaplar??n??z??... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0x98FFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    final user = await signInWithGoogle(context);
                    if (user == null) {
                      return;
                    }

                    context.goNamedAuth('HomePage', mounted);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3314181B),
                        offset: Offset(0, 2),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: FaIcon(
                    FontAwesomeIcons.facebookF,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
