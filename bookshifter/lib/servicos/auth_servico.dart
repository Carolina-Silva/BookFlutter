import 'package:firebase_auth/firebase_auth.dart';

class AuthServico{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  cadastraUsuario({
    required String nome,
    required String email,
    required String senha,
  }) async {
   UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: senha,
    );

    await userCredential.user!.updateDisplayName(nome);
  }
}

//  https://www.youtube.com/@DotcodeEdu