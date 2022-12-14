import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:unimind_core/src/constants/certificate_constants.dart';

class GrpcClientSingleton {
  late ClientChannel client;
  List<int>? certAsList;
  // static const String LOCAL_IP = "192.168.1.33";
  static const String SERVER_IP = "185.92.1.242";
  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    client = ClientChannel(
      SERVER_IP,
      port: 50001,
      options: ChannelOptions(
        // credentials: ClientCertificateChannelCredentials(utf8.encode(CertificateConstants.caCert),
        //     utf8.encode(CertificateConstants.caKey), utf8.encode(CertificateConstants.clientCert)),
        credentials: ChannelCredentials.secure(
          certificates: utf8.encode(CertificateConstants.caCert),
          onBadCertificate: (certificate, host) {
            return host == "$SERVER_IP:50001";
          },
        ),
        idleTimeout: Duration(minutes: 40),
      ),
    );
  }
}

// class ClientCertificateChannelCredentials extends ChannelCredentials {
//   final List<int> _cert; //client-cert
//   final List<int> _key; //client-key
//   final List<int> _trustedCert; //ca-cert
//   // final String _pass;

//   const ClientCertificateChannelCredentials(
//     this._cert,
//     this._key,
//     this._trustedCert,
//     // this._pass,
//   ) : super.secure();

//   @override
//   SecurityContext get securityContext {
//     return SecurityContext(withTrustedRoots: true)
//       ..useCertificateChainBytes(_cert)
//       ..usePrivateKeyBytes(_key)
//       ..setTrustedCertificatesBytes(_trustedCert);
//   }
// }
