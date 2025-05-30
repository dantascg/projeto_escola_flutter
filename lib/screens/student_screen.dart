import 'package:flutter/material.dart';
import '../mock_data/mock_users.dart';

class StudentScreen extends StatelessWidget {
  Widget _buildClassroomList() {
    if (mockClassrooms.isEmpty) {
      return Text("Nenhuma turma disponível.");
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Minhas Turmas:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ...mockClassrooms.map(
          (c) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- ${c.name}", style: TextStyle(fontSize: 16)),
              ...c.studentNames.map((name) => Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("• $name"),
              )),
              SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Aluno")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: _buildClassroomList(),
        ),
      ),
    );
  }
}
