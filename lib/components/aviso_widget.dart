import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'aviso_model.dart';
export 'aviso_model.dart';

class AvisoWidget extends StatefulWidget {
  const AvisoWidget({super.key});

  @override
  State<AvisoWidget> createState() => _AvisoWidgetState();
}

class _AvisoWidgetState extends State<AvisoWidget>
    with TickerProviderStateMixin {
  late AvisoModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          Navigator.pop(context);
        },
        child: Container(
          width: double.infinity,
          height: 520.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 7.0,
                color: Color(0x2F1D2429),
                offset: Offset(0.0, 3.0),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'AVISO',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyLarge,
                ),
                Divider(
                  height: 16.0,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 20.0),
                  child: Text(
                    'Espaço EA (Espaço Eletricista Automotivo) Produção de conteúdo e\ntreinamento automotivo.\n\nTodos os direitos reservados, de acordo com os art. 11 e 14 da Lei\nn° 9.610, de 19 de fevereiro de 1998. Nenhuma parte deste conteúdo pode ser impresso, reproduzido ou utilizado de qualquer forma ou por qualquer meio eletrônico, mecânico ou outros, agora conhecidos ou inventados no futuro, incluindo fotocópia e gravação, ou em qualquer sistema de armazenamento ou recuperação de informação, sem permissão por escrito dos autores.\n\nAviso de marca registrada: Nomes de produtos ou empresas podem ser\nmarcas comerciais ou registradas e são usados apenas para identificação e explicação sem a intenção de a infringir.\n\n\n© 2024 Espaço EA',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
