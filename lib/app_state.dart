import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AUDI = prefs.getStringList('ff_AUDI') ?? _AUDI;
    });
    _safeInit(() {
      _BMW = prefs.getStringList('ff_BMW') ?? _BMW;
    });
    _safeInit(() {
      _CHEVROLET = prefs.getStringList('ff_CHEVROLET') ?? _CHEVROLET;
    });
    _safeInit(() {
      _CHRYSLER = prefs.getStringList('ff_CHRYSLER') ?? _CHRYSLER;
    });
    _safeInit(() {
      _CITROEN = prefs.getStringList('ff_CITROEN') ?? _CITROEN;
    });
    _safeInit(() {
      _DODGE = prefs.getStringList('ff_DODGE') ?? _DODGE;
    });
    _safeInit(() {
      _FIAT = prefs.getStringList('ff_FIAT') ?? _FIAT;
    });
    _safeInit(() {
      _FORD = prefs.getStringList('ff_FORD') ?? _FORD;
    });
    _safeInit(() {
      _JEEP = prefs.getStringList('ff_JEEP') ?? _JEEP;
    });
    _safeInit(() {
      _MERCEDES = prefs.getStringList('ff_MERCEDES') ?? _MERCEDES;
    });
    _safeInit(() {
      _PEUGEOT = prefs.getStringList('ff_PEUGEOT') ?? _PEUGEOT;
    });
    _safeInit(() {
      _RENAULT = prefs.getStringList('ff_RENAULT') ?? _RENAULT;
    });
    _safeInit(() {
      _TOYOTA = prefs.getStringList('ff_TOYOTA') ?? _TOYOTA;
    });
    _safeInit(() {
      _VOLKSWAGEN = prefs.getStringList('ff_VOLKSWAGEN') ?? _VOLKSWAGEN;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _VarMenuVisivel = false;
  bool get VarMenuVisivel => _VarMenuVisivel;
  set VarMenuVisivel(bool value) {
    _VarMenuVisivel = value;
  }

  List<String> _VarListaDeModelos = [];
  List<String> get VarListaDeModelos => _VarListaDeModelos;
  set VarListaDeModelos(List<String> value) {
    _VarListaDeModelos = value;
  }

  void addToVarListaDeModelos(String value) {
    _VarListaDeModelos.add(value);
  }

  void removeFromVarListaDeModelos(String value) {
    _VarListaDeModelos.remove(value);
  }

  void removeAtIndexFromVarListaDeModelos(int index) {
    _VarListaDeModelos.removeAt(index);
  }

  void updateVarListaDeModelosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _VarListaDeModelos[index] = updateFn(_VarListaDeModelos[index]);
  }

  void insertAtIndexInVarListaDeModelos(int index, String value) {
    _VarListaDeModelos.insert(index, value);
  }

  String _VarModeloSelecionado = 'N/A Modelo';
  String get VarModeloSelecionado => _VarModeloSelecionado;
  set VarModeloSelecionado(String value) {
    _VarModeloSelecionado = value;
  }

  String _VarMontadoraSelecionada = 'N/A Montadora';
  String get VarMontadoraSelecionada => _VarMontadoraSelecionada;
  set VarMontadoraSelecionada(String value) {
    _VarMontadoraSelecionada = value;
  }

  int _VarIndexModelo = 0;
  int get VarIndexModelo => _VarIndexModelo;
  set VarIndexModelo(int value) {
    _VarIndexModelo = value;
  }

  List<String> _AUDI = [
    'MOTRONIC M3.8.2',
    'MOTRONIC M3.8.3',
    'MOTRONIC M3.8-2-3-4-5',
    'MOTRONIC ME7.5'
  ];
  List<String> get AUDI => _AUDI;
  set AUDI(List<String> value) {
    _AUDI = value;
    prefs.setStringList('ff_AUDI', value);
  }

  void addToAUDI(String value) {
    _AUDI.add(value);
    prefs.setStringList('ff_AUDI', _AUDI);
  }

  void removeFromAUDI(String value) {
    _AUDI.remove(value);
    prefs.setStringList('ff_AUDI', _AUDI);
  }

  void removeAtIndexFromAUDI(int index) {
    _AUDI.removeAt(index);
    prefs.setStringList('ff_AUDI', _AUDI);
  }

  void updateAUDIAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _AUDI[index] = updateFn(_AUDI[index]);
    prefs.setStringList('ff_AUDI', _AUDI);
  }

  void insertAtIndexInAUDI(int index, String value) {
    _AUDI.insert(index, value);
    prefs.setStringList('ff_AUDI', _AUDI);
  }

  List<String> _BMW = ['M1.7', 'M3.1', 'M3.3.1'];
  List<String> get BMW => _BMW;
  set BMW(List<String> value) {
    _BMW = value;
    prefs.setStringList('ff_BMW', value);
  }

  void addToBMW(String value) {
    _BMW.add(value);
    prefs.setStringList('ff_BMW', _BMW);
  }

  void removeFromBMW(String value) {
    _BMW.remove(value);
    prefs.setStringList('ff_BMW', _BMW);
  }

  void removeAtIndexFromBMW(int index) {
    _BMW.removeAt(index);
    prefs.setStringList('ff_BMW', _BMW);
  }

  void updateBMWAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _BMW[index] = updateFn(_BMW[index]);
    prefs.setStringList('ff_BMW', _BMW);
  }

  void insertAtIndexInBMW(int index, String value) {
    _BMW.insert(index, value);
    prefs.setStringList('ff_BMW', _BMW);
  }

  List<String> _CHEVROLET = [
    'MOTRONIC M1.5.1',
    'MOTRONIC M1.5.2',
    'MOTRONIC M1.5.4',
    'MOTRONIC M1.5.5',
    'MOTRONIC M2.8.1',
    'MOTRONIC M2.8',
    'MOTRONIC ME 7.9.6',
    'MOTRONIC ME 7.9.9',
    'MULTEC 700',
    'MULTEC EMS',
    'MULTEC F',
    'MULTEC HSFI 2.3',
    'MULTEC M',
    'MULTEC OHC',
    'MULTEC VHC - HV 240'
  ];
  List<String> get CHEVROLET => _CHEVROLET;
  set CHEVROLET(List<String> value) {
    _CHEVROLET = value;
    prefs.setStringList('ff_CHEVROLET', value);
  }

  void addToCHEVROLET(String value) {
    _CHEVROLET.add(value);
    prefs.setStringList('ff_CHEVROLET', _CHEVROLET);
  }

  void removeFromCHEVROLET(String value) {
    _CHEVROLET.remove(value);
    prefs.setStringList('ff_CHEVROLET', _CHEVROLET);
  }

  void removeAtIndexFromCHEVROLET(int index) {
    _CHEVROLET.removeAt(index);
    prefs.setStringList('ff_CHEVROLET', _CHEVROLET);
  }

  void updateCHEVROLETAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CHEVROLET[index] = updateFn(_CHEVROLET[index]);
    prefs.setStringList('ff_CHEVROLET', _CHEVROLET);
  }

  void insertAtIndexInCHEVROLET(int index, String value) {
    _CHEVROLET.insert(index, value);
    prefs.setStringList('ff_CHEVROLET', _CHEVROLET);
  }

  List<String> _CHRYSLER = ['STRATUS 2.5'];
  List<String> get CHRYSLER => _CHRYSLER;
  set CHRYSLER(List<String> value) {
    _CHRYSLER = value;
    prefs.setStringList('ff_CHRYSLER', value);
  }

  void addToCHRYSLER(String value) {
    _CHRYSLER.add(value);
    prefs.setStringList('ff_CHRYSLER', _CHRYSLER);
  }

  void removeFromCHRYSLER(String value) {
    _CHRYSLER.remove(value);
    prefs.setStringList('ff_CHRYSLER', _CHRYSLER);
  }

  void removeAtIndexFromCHRYSLER(int index) {
    _CHRYSLER.removeAt(index);
    prefs.setStringList('ff_CHRYSLER', _CHRYSLER);
  }

  void updateCHRYSLERAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CHRYSLER[index] = updateFn(_CHRYSLER[index]);
    prefs.setStringList('ff_CHRYSLER', _CHRYSLER);
  }

  void insertAtIndexInCHRYSLER(int index, String value) {
    _CHRYSLER.insert(index, value);
    prefs.setStringList('ff_CHRYSLER', _CHRYSLER);
  }

  List<String> _CITROEN = [
    'IAW 6LP',
    'IAW 8P',
    'MA 3.1',
    'ME 7.4.4',
    'MP 3.2',
    'SAGEM SL96'
  ];
  List<String> get CITROEN => _CITROEN;
  set CITROEN(List<String> value) {
    _CITROEN = value;
    prefs.setStringList('ff_CITROEN', value);
  }

  void addToCITROEN(String value) {
    _CITROEN.add(value);
    prefs.setStringList('ff_CITROEN', _CITROEN);
  }

  void removeFromCITROEN(String value) {
    _CITROEN.remove(value);
    prefs.setStringList('ff_CITROEN', _CITROEN);
  }

  void removeAtIndexFromCITROEN(int index) {
    _CITROEN.removeAt(index);
    prefs.setStringList('ff_CITROEN', _CITROEN);
  }

  void updateCITROENAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CITROEN[index] = updateFn(_CITROEN[index]);
    prefs.setStringList('ff_CITROEN', _CITROEN);
  }

  void insertAtIndexInCITROEN(int index, String value) {
    _CITROEN.insert(index, value);
    prefs.setStringList('ff_CITROEN', _CITROEN);
  }

  List<String> _DODGE = ['DAKOTA 3.9', 'DAKOTA 5.2', 'GRAND CHEROKEE 4.0'];
  List<String> get DODGE => _DODGE;
  set DODGE(List<String> value) {
    _DODGE = value;
    prefs.setStringList('ff_DODGE', value);
  }

  void addToDODGE(String value) {
    _DODGE.add(value);
    prefs.setStringList('ff_DODGE', _DODGE);
  }

  void removeFromDODGE(String value) {
    _DODGE.remove(value);
    prefs.setStringList('ff_DODGE', _DODGE);
  }

  void removeAtIndexFromDODGE(int index) {
    _DODGE.removeAt(index);
    prefs.setStringList('ff_DODGE', _DODGE);
  }

  void updateDODGEAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _DODGE[index] = updateFn(_DODGE[index]);
    prefs.setStringList('ff_DODGE', _DODGE);
  }

  void insertAtIndexInDODGE(int index, String value) {
    _DODGE.insert(index, value);
    prefs.setStringList('ff_DODGE', _DODGE);
  }

  List<String> _FIAT = [
    'G6-G7',
    'HSFI 2.3',
    'IAW 1G7',
    'IAW 49FB – COM BC',
    'IAW 49FB – SEM BC',
    'IAW 4AF – COM BC',
    'IAW 4AF – SEM BC',
    'IAW 4CF',
    'IAW 4GF',
    'IAW 4SF – COM BC',
    'IAW 4SF – SEM BC',
    'IAW 59FB – COM BC',
    'IAW 59FB – SEM BC',
    'IAW 5NF',
    'IAW 7GF',
    'MONOMOTRONIC MA 1.7',
    'MOTRONIC M 1.5.2',
    'MOTRONIC M 1.5.4',
    'MOTRONIC M 2.10.4',
    'MOTRONIC ME 7.9.6',
    'MT27E'
  ];
  List<String> get FIAT => _FIAT;
  set FIAT(List<String> value) {
    _FIAT = value;
    prefs.setStringList('ff_FIAT', value);
  }

  void addToFIAT(String value) {
    _FIAT.add(value);
    prefs.setStringList('ff_FIAT', _FIAT);
  }

  void removeFromFIAT(String value) {
    _FIAT.remove(value);
    prefs.setStringList('ff_FIAT', _FIAT);
  }

  void removeAtIndexFromFIAT(int index) {
    _FIAT.removeAt(index);
    prefs.setStringList('ff_FIAT', _FIAT);
  }

  void updateFIATAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _FIAT[index] = updateFn(_FIAT[index]);
    prefs.setStringList('ff_FIAT', _FIAT);
  }

  void insertAtIndexInFIAT(int index, String value) {
    _FIAT.insert(index, value);
    prefs.setStringList('ff_FIAT', _FIAT);
  }

  List<String> _FORD = [
    'EEC IV CFI',
    'EEC IV EFI',
    'EEC IV SFI',
    'EEC V SFI - 60 PINOS',
    'EEC V SFI - 104 PINOS',
    'EEC VI',
    'IAW 4 CFR - 4 AFR'
  ];
  List<String> get FORD => _FORD;
  set FORD(List<String> value) {
    _FORD = value;
    prefs.setStringList('ff_FORD', value);
  }

  void addToFORD(String value) {
    _FORD.add(value);
    prefs.setStringList('ff_FORD', _FORD);
  }

  void removeFromFORD(String value) {
    _FORD.remove(value);
    prefs.setStringList('ff_FORD', _FORD);
  }

  void removeAtIndexFromFORD(int index) {
    _FORD.removeAt(index);
    prefs.setStringList('ff_FORD', _FORD);
  }

  void updateFORDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _FORD[index] = updateFn(_FORD[index]);
    prefs.setStringList('ff_FORD', _FORD);
  }

  void insertAtIndexInFORD(int index, String value) {
    _FORD.insert(index, value);
    prefs.setStringList('ff_FORD', _FORD);
  }

  List<String> _JEEP = ['DAKOTA 3.9', 'DAKOTA 5.2', 'GRAND CHEROKEE 4.0'];
  List<String> get JEEP => _JEEP;
  set JEEP(List<String> value) {
    _JEEP = value;
    prefs.setStringList('ff_JEEP', value);
  }

  void addToJEEP(String value) {
    _JEEP.add(value);
    prefs.setStringList('ff_JEEP', _JEEP);
  }

  void removeFromJEEP(String value) {
    _JEEP.remove(value);
    prefs.setStringList('ff_JEEP', _JEEP);
  }

  void removeAtIndexFromJEEP(int index) {
    _JEEP.removeAt(index);
    prefs.setStringList('ff_JEEP', _JEEP);
  }

  void updateJEEPAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _JEEP[index] = updateFn(_JEEP[index]);
    prefs.setStringList('ff_JEEP', _JEEP);
  }

  void insertAtIndexInJEEP(int index, String value) {
    _JEEP.insert(index, value);
    prefs.setStringList('ff_JEEP', _JEEP);
  }

  List<String> _MERCEDES = ['VDO - MSM 1.0 - 1.1 - 1.4'];
  List<String> get MERCEDES => _MERCEDES;
  set MERCEDES(List<String> value) {
    _MERCEDES = value;
    prefs.setStringList('ff_MERCEDES', value);
  }

  void addToMERCEDES(String value) {
    _MERCEDES.add(value);
    prefs.setStringList('ff_MERCEDES', _MERCEDES);
  }

  void removeFromMERCEDES(String value) {
    _MERCEDES.remove(value);
    prefs.setStringList('ff_MERCEDES', _MERCEDES);
  }

  void removeAtIndexFromMERCEDES(int index) {
    _MERCEDES.removeAt(index);
    prefs.setStringList('ff_MERCEDES', _MERCEDES);
  }

  void updateMERCEDESAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _MERCEDES[index] = updateFn(_MERCEDES[index]);
    prefs.setStringList('ff_MERCEDES', _MERCEDES);
  }

  void insertAtIndexInMERCEDES(int index, String value) {
    _MERCEDES.insert(index, value);
    prefs.setStringList('ff_MERCEDES', _MERCEDES);
  }

  List<String> _PEUGEOT = [
    'IAW 5NP',
    'IAW 6LP',
    'IAW 8P',
    'MA 3.0',
    'MA 3.1',
    'ME 7.4.4',
    'MP 3.2',
    'SAGEM SL96'
  ];
  List<String> get PEUGEOT => _PEUGEOT;
  set PEUGEOT(List<String> value) {
    _PEUGEOT = value;
    prefs.setStringList('ff_PEUGEOT', value);
  }

  void addToPEUGEOT(String value) {
    _PEUGEOT.add(value);
    prefs.setStringList('ff_PEUGEOT', _PEUGEOT);
  }

  void removeFromPEUGEOT(String value) {
    _PEUGEOT.remove(value);
    prefs.setStringList('ff_PEUGEOT', _PEUGEOT);
  }

  void removeAtIndexFromPEUGEOT(int index) {
    _PEUGEOT.removeAt(index);
    prefs.setStringList('ff_PEUGEOT', _PEUGEOT);
  }

  void updatePEUGEOTAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _PEUGEOT[index] = updateFn(_PEUGEOT[index]);
    prefs.setStringList('ff_PEUGEOT', _PEUGEOT);
  }

  void insertAtIndexInPEUGEOT(int index, String value) {
    _PEUGEOT.insert(index, value);
    prefs.setStringList('ff_PEUGEOT', _PEUGEOT);
  }

  List<String> _RENAULT = [
    'FENIX 5',
    'IAW 5NR',
    'IAW 08R',
    'SAGEM 3000 - Modelo 1',
    'SAGEM 3000 - Modelo 2',
    'SAGEM SAFIR 55 pinos',
    'SIRIUS 32B'
  ];
  List<String> get RENAULT => _RENAULT;
  set RENAULT(List<String> value) {
    _RENAULT = value;
    prefs.setStringList('ff_RENAULT', value);
  }

  void addToRENAULT(String value) {
    _RENAULT.add(value);
    prefs.setStringList('ff_RENAULT', _RENAULT);
  }

  void removeFromRENAULT(String value) {
    _RENAULT.remove(value);
    prefs.setStringList('ff_RENAULT', _RENAULT);
  }

  void removeAtIndexFromRENAULT(int index) {
    _RENAULT.removeAt(index);
    prefs.setStringList('ff_RENAULT', _RENAULT);
  }

  void updateRENAULTAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _RENAULT[index] = updateFn(_RENAULT[index]);
    prefs.setStringList('ff_RENAULT', _RENAULT);
  }

  void insertAtIndexInRENAULT(int index, String value) {
    _RENAULT.insert(index, value);
    prefs.setStringList('ff_RENAULT', _RENAULT);
  }

  List<String> _TOYOTA = ['DENSO (1ZZ-FBE)'];
  List<String> get TOYOTA => _TOYOTA;
  set TOYOTA(List<String> value) {
    _TOYOTA = value;
    prefs.setStringList('ff_TOYOTA', value);
  }

  void addToTOYOTA(String value) {
    _TOYOTA.add(value);
    prefs.setStringList('ff_TOYOTA', _TOYOTA);
  }

  void removeFromTOYOTA(String value) {
    _TOYOTA.remove(value);
    prefs.setStringList('ff_TOYOTA', _TOYOTA);
  }

  void removeAtIndexFromTOYOTA(int index) {
    _TOYOTA.removeAt(index);
    prefs.setStringList('ff_TOYOTA', _TOYOTA);
  }

  void updateTOYOTAAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _TOYOTA[index] = updateFn(_TOYOTA[index]);
    prefs.setStringList('ff_TOYOTA', _TOYOTA);
  }

  void insertAtIndexInTOYOTA(int index, String value) {
    _TOYOTA.insert(index, value);
    prefs.setStringList('ff_TOYOTA', _TOYOTA);
  }

  List<String> _VOLKSWAGEN = [
    'DIGIFANT 1.74',
    'DIGIFANT 1.82',
    'EEC IV CFI',
    'IAW 1ABW',
    'IAW 1AVB',
    'IAW 1AVI',
    'IAW 1AVP',
    'IAW 1AVS',
    'IAW 4AVP',
    'IAW 4BV',
    'IAW 4GV',
    'IAW 4LV - IAW 4SV',
    'IAW 7.5.30',
    'IAW VG7.2',
    'MONOMOTRONIC M1.2.3',
    'MOTRONIC M3.8.2',
    'MOTRONIC M3.8.3',
    'MOTRONIC ME 7.5.10',
    'MOTRONIC ME 7.5.20',
    'MOTRONIC ME 7.5',
    'MOTRONIC MP 9.0',
    'SIMOS 2.1'
  ];
  List<String> get VOLKSWAGEN => _VOLKSWAGEN;
  set VOLKSWAGEN(List<String> value) {
    _VOLKSWAGEN = value;
    prefs.setStringList('ff_VOLKSWAGEN', value);
  }

  void addToVOLKSWAGEN(String value) {
    _VOLKSWAGEN.add(value);
    prefs.setStringList('ff_VOLKSWAGEN', _VOLKSWAGEN);
  }

  void removeFromVOLKSWAGEN(String value) {
    _VOLKSWAGEN.remove(value);
    prefs.setStringList('ff_VOLKSWAGEN', _VOLKSWAGEN);
  }

  void removeAtIndexFromVOLKSWAGEN(int index) {
    _VOLKSWAGEN.removeAt(index);
    prefs.setStringList('ff_VOLKSWAGEN', _VOLKSWAGEN);
  }

  void updateVOLKSWAGENAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _VOLKSWAGEN[index] = updateFn(_VOLKSWAGEN[index]);
    prefs.setStringList('ff_VOLKSWAGEN', _VOLKSWAGEN);
  }

  void insertAtIndexInVOLKSWAGEN(int index, String value) {
    _VOLKSWAGEN.insert(index, value);
    prefs.setStringList('ff_VOLKSWAGEN', _VOLKSWAGEN);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
