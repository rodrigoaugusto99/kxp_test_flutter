import 'package:flutter/material.dart';
import 'package:my_first_app/app/models/moeda_model.dart';
import 'package:stacked_services/stacked_services.dart';

import 'moedas_sheet_model.dart';

class MoedasSheet extends StatefulWidget {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;

  const MoedasSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  _MoedasSheetState createState() => _MoedasSheetState();
}

class _MoedasSheetState extends State<MoedasSheet> {
  late MoedaModel _selectedMoeda;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: ListView.builder(
        itemCount: widget.request.data.length,
        itemBuilder: (context, index) {
          final innerMoeda = widget.request.data[index];
          return ListTile(
            title: Text(innerMoeda.name),
            onTap: () {
              _selectedMoeda = innerMoeda;
              widget.completer!(SheetResponse(data: _selectedMoeda));
            },
          );
        },
      ),
    );
  }
}

@override
MoedasSheetModel viewModelBuilder(BuildContext context) => MoedasSheetModel();
