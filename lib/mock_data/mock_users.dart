import '../models/user.dart';
import '../models/student.dart';
import '../models/teacher.dart';
import '../models/classroom.dart';

List<User> mockUsers = [
  User(username: 'coordenador', password: '1234', role: UserRole.coordinator),
  User(username: 'professor', password: '1234', role: UserRole.teacher),
  User(username: 'aluno', password: '1234', role: UserRole.student),
];

List<Teacher> mockTeachers = [];
List<Student> mockStudents = [];
List<Classroom> mockClassrooms = [
  Classroom(name: "Turma A", studentNames: ["João", "Maria"]),
  Classroom(name: "Turma B", studentNames: ["Carlos", "Ana"]),
];