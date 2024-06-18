import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detail_beasiswa_model.dart';
export 'detail_beasiswa_model.dart';

class DetailBeasiswaWidget extends StatefulWidget {
  const DetailBeasiswaWidget({super.key});

  @override
  State<DetailBeasiswaWidget> createState() => _DetailBeasiswaWidgetState();
}

class _DetailBeasiswaWidgetState extends State<DetailBeasiswaWidget> {
  late DetailBeasiswaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailBeasiswaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFEC739),
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.safePop();
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Text(
                          'Beasiswa Djarum',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 40.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          'Tenggat Minggu, 16 Juni 2024',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF818898),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/1522298726_Tentang_Kami_-_Tentang_DBP_preview.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Sejak 1984, Djarum Foundation terus konsisten dalam memberikan kontribusi terhadap dunia pendidikan di Indonesia. Langkah ini diawali kesadaran bahwa pendidikan merupakan salah satu upaya untuk meningkatkan kesejahteraan masyarakat dan bangsa dalam mewujudkan masa depan yang lebih baik.\n\nDjarum Foundation turut berperan aktif dalam memajukan pendidikan di Indonesia melalui program beasiswa prestasi (Merit based Scholarship) yang dikenal sebagai Djarum Beasiswa Plus bagi mahasiswa berprestasi di Indonesia.Perbedaan Djarum Beasiswa Plus dengan program beasiswa lain adalah selain mendapatkan dana beasiswa selama satu tahun, Beswan Djarum (sebutan bagi penerima program Djarum Beasiswa Plus) juga mendapatkan berbagai macam pelatihan ketrampilan lunak atau soft skills guna mempersiapkan mereka menjadi calon pemimpin masa depan bangsa. \n\nPelatihan ini meliputi Nation Building, Character Building, Leadership Development, Competition Challenges, serta International Exposure. Tidak hanya berhenti sampai di sini, melalui program Community Empowerment, Beswan Djarum juga diberikan kesempatan untuk menerapkan berbagai ketrampilan lunak yang telah diperoleh dengan melibatkan diri secara langsung dalam memberikan jalan keluar pada suatu permasalahan sosial di lingkungan tempat mereka berada.Melalui pembudayaan dan pemberdayaan para penerima program Djarum Beasiswa Plus ini, rangkaian pelatihan tersebut dimaksudkan guna menyerasikan antara pencapaian akademik (hard skills) yang diperoleh di perguruan tinggi dengan berbagai ketrampilan lunak (soft skills) yang diperoleh dari program ini. Tujuannya agar Beswan Djarum di kemudian hari menjadi pemimpin masa depan bangsa yang cakap secara intelegensia maupun emosional.Lebih dari 13.397 mahasiswa berprestasi telah menjadi penerima program. Mereka berasal dari berbagai macam latar belakang pendidikan di lebih dari 127 perguruan tinggi unggulan di seluruh 34 provinsi di Indonesia. Sebuah bukti keseriusan Djarum Foundation dalam komitmennya membangun bangsa melalui pendidikan.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 20.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await launchURL('https://djarumbeasiswaplus.org/');
                        },
                        text: 'Daftar Sekarang',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFEC739),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
