class LoginResponse {
  Status? status;

  LoginResponse({this.status});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status =
    json['status'] != null ? new Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    return data;
  }
}

class Status {
  int? error;
  bool? login;
  String? userId;
  String? role;
  String? apiVer;
  String? devDebugParam;

  Status(
      {this.error,
        this.login,
        this.userId,
        this.role,
        this.apiVer,
        this.devDebugParam});

  Status.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    login = json['login'];
    userId = json['user_id'];
    role = json['role'];
    apiVer = json['api-ver'];
    devDebugParam = json['dev-debug-param'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['login'] = this.login;
    data['user_id'] = this.userId;
    data['role'] = this.role;
    data['api-ver'] = this.apiVer;
    data['dev-debug-param'] = this.devDebugParam;
    return data;
  }
}
