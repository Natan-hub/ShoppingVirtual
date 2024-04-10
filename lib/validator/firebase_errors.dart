// String getErrorString(String code) {
//   switch (code) {
//     case 'invalid-credential':
//       return 'E-mail e/ou senha inválidos';
//     case 'email-already-exists':
//       return 'E-mail já está sendo utilizado por outra conta';
//     case 'id-token-expired':
//       return 'O seu login expirou';
//     case 'user-not-found':
//       return 'Usuário não encontrado';
//     case 'wrong-password':
//       return 'Senha incorreta';
//     // ... adicionar outros casos para os códigos de erro relevantes
//     default:
//       return 'Um erro indefinido ocorreu';
//   }
// }

String getErrorString(String code) {
  switch (code) {
    case 'ERROR_WEAK_PASSWORD':
      return 'Sua senha é muito fraca.';
    case 'ERROR_INVALID_EMAIL':
    case "invalid-email":
      return 'Seu e-mail é inválido.';
    case 'ERROR_EMAIL_ALREADY_IN_USE':
    case "account-exists-with-different-credential":
      return 'E-mail já está sendo utilizado em outra conta.';
    case 'ERROR_INVALID_CREDENTIAL':
      return 'Seu e-mail é inválido.';
    case "ERROR_WRONG_PASSWORD":
    case "wrong-password":
      return 'Sua senha está incorreta.';
    case 'ERROR_USER_NOT_FOUND':
    case "user-not-found":
      return 'Não há usuário com este e-mail.';
    case 'ERROR_USER_DISABLED':
    case "user-disabled":
      return 'Este usuário foi desabilitado.';
    case 'ERROR_TOO_MANY_REQUESTS':
    case "operation-not-allowed":
      return 'Muitas solicitações. Tente novamente mais tarde.';
    case 'ERROR_OPERATION_NOT_ALLOWED':
    default:
      return 'Um erro indefinido ocorreu';
  }
}
