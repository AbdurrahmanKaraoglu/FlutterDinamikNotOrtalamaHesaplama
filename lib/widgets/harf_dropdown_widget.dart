import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constants/app_constants.dart';
import 'package:flutter_dinamik_not/helper/data_helper.dart';

class HarfDropdownWidget extends StatefulWidget {
  final Function onHarfSecildi;
  const HarfDropdownWidget({Key? key, required this.onHarfSecildi}) : super(key: key);

  @override
  _HarfDropdownWidgetState createState() => _HarfDropdownWidgetState();
}

class _HarfDropdownWidgetState extends State<HarfDropdownWidget> {
  double secilenHarfDegeri = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(color: Sabitler.anaRenk.shade100.withOpacity(0.3), borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        value: secilenHarfDegeri,
        onChanged: (value) {
          setState(() {
            secilenHarfDegeri = value!;
            widget.onHarfSecildi(secilenHarfDegeri);
          });
        },
        items: DataHelper.tumDerslerinHarfleri(),
        underline: Container(),
      ),
    );
  }
}
