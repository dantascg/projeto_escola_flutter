import 'package:flutter/material.dart';
import '../mock_data/mock_users.dart';
import '../models/classroom.dart';

class TeacherScreen extends StatelessWidget {
  Widget _buildStudentList() {
    if (mockStudents.isEmpty) {
      return Text("Nenhum aluno cadastrado.");
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Lista de Alunos:", style: TextStyle(fontWeight: FontWeight.bold)),
        ...mockStudents.map((s) => Text("- ${s.name}, ${s.age} anos")),
      ],
    );
  }

  Widget _buildClassroomList() {
    if (mockClassrooms.isEmpty) {
      return Text("Nenhuma turma disponível.");
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Turmas:", style: TextStyle(fontWeight: FontWeight.bold)),
        ...mockClassrooms.map(
          (c) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("- ${c.name}"),
              ...c.studentNames.map((name) => Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("• $name"),
              )),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela do Professor")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStudentList(),
              SizedBox(height: 24),
              _buildClassroomList(),
            ],
          ),
        ),
      ),
    );
  }
}
