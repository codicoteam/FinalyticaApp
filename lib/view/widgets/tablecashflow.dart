import 'package:flutter/material.dart';

class TableCashFlow extends StatefulWidget {
  const TableCashFlow({super.key});

  @override
  State<TableCashFlow> createState() => _TableCashFlowState();
}

class _TableCashFlowState extends State<TableCashFlow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20), // Control the margin if necessary
      child: Table(
        defaultColumnWidth: const FixedColumnWidth(110.0),
        border: TableBorder.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 2,
        ),
        children: [
          TableRow(children: [
            _buildTableCell('Overview', fontSize: 17.0),
            _buildTableCell('Income', fontSize: 17.0),
            _buildTableCell('Expenses', fontSize: 17.0, color: Colors.red),
          ]),
          TableRow(children: [
            _buildTableCell('Count'),
            _buildTableCell('US\$10'),
            _buildTableCell('US\$10', color: Colors.red),
          ]),
          TableRow(children: [
            _buildTableCell('Average(Day)'),
            _buildTableCell('US\$10'),
            _buildTableCell('US\$10', color: Colors.red),
          ]),
          TableRow(children: [
            _buildTableCell('Total'),
            _buildTableCell('US\$30'),
            _buildTableCell('US\$30', color: Colors.red),
          ]),
        ],
      ),
    );
  }

  // Helper function to build table cells with minimal padding
  Widget _buildTableCell(String text, {double fontSize = 14.0, Color color = Colors.black}) {
    return Padding(
      padding: const EdgeInsets.all(4.0), // Reduce padding to minimize space
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: color),
        textAlign: TextAlign.center,
      ),
    );
  }
}
