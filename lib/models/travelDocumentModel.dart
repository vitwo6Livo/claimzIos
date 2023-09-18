// class travelDocumentModel {
//   int? status;
//   List<Data>? data;
//
//   travelDocumentModel({this.status, this.data});
//
//   travelDocumentModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) { data!.add(new Data.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Data {
//   List? list;
//   List<MeetingDetails>? meetingDetails;
//   List<ApprovalLog>? approvalLog;
//
//   Data({this.list, this.meetingDetails, this.approvalLog});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['list'] != null) {
//       list = <null>[];
//     json['list'].forEach((v) { list!.add(new null.fromJson(v)); });
//     }
//     if (json['meeting_details'] != null) {
//     meetingDetails = <MeetingDetails>[];
//     json['meeting_details'].forEach((v) { meetingDetails!.add(new MeetingDetails.fromJson(v)); });
//     }
//     if (json['approval_log'] != null) {
//     approvalLog = <ApprovalLog>[];
//     json['approval_log'].forEach((v) { approvalLog!.add(new ApprovalLog.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.list != null) {
//       data['list'] = this.list!.map((v) => v.toJson()).toList();
//     }
//     if (this.meetingDetails != null) {
//       data['meeting_details'] = this.meetingDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.approvalLog != null) {
//       data['approval_log'] = this.approvalLog!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class List {
//
//
//   List({});
//
// List.fromJson(Map<String, dynamic> json) {
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   return data;
// }
// }
//
// class MeetingDetails {
//   int? tmdId;
//   int? compId;
//   String? docNo;
//   String? metWhom;
//   String? purposeOfVisit;
//   String? feedback;
//   Null? createdAt;
//   Null? updatedAt;
//
//   MeetingDetails({this.tmdId, this.compId, this.docNo, this.metWhom, this.purposeOfVisit, this.feedback, this.createdAt, this.updatedAt});
//
//   MeetingDetails.fromJson(Map<String, dynamic> json) {
//     tmdId = json['tmd_id'];
//     compId = json['comp_id'];
//     docNo = json['doc_no'];
//     metWhom = json['met_whom'];
//     purposeOfVisit = json['purpose_of_visit'];
//     feedback = json['feedback'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['tmd_id'] = this.tmdId;
//     data['comp_id'] = this.compId;
//     data['doc_no'] = this.docNo;
//     data['met_whom'] = this.metWhom;
//     data['purpose_of_visit'] = this.purposeOfVisit;
//     data['feedback'] = this.feedback;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
//
// class ApprovalLog {
//   int? aplId;
//   int? compId;
//   int? docNo;
//   int? travelId;
//   String? gstAmount;
//   String? basicAmount;
//   String? claimAmount;
//   Null? remarks;
//   String? approvedBy;
//   int? status;
//   String? createdAt;
//   String? updatedAt;
//   int? id;
//   int? companyId;
//   int? idFranchise;
//   int? gradeId;
//   String? empName;
//   String? userType;
//   String? email;
//   String? password;
//   String? empCode;
//   String? birthDate;
//   String? joinDate;
//   Null? leaveDate;
//   String? gender;
//   String? fatherName;
//   String? pAddress;
//   String? presentAddress;
//   String? mobileNo;
//   String? contactNo;
//   String? panNo;
//   String? aadharNo;
//   String? passportNo;
//   String? visaNo;
//   String? placeOfPosting;
//   String? bloodGroup;
//   String? isActive;
//   Null? rememberToken;
//   Null? deletedAt;
//   int? createdBy;
//   int? modifiedBy;
//   int? departmentId;
//   Null? costCenterId;
//   String? headOfDepartment;
//   Null? approver;
//   int? aprrover1;
//   int? aprrover2;
//   int? aprrover3;
//   Null? specialPermission;
//   int? theme;
//   String? otp;
//   Null? altEmail;
//   String? profilePhoto;
//   Null? pAddressTemp;
//   Null? presentAddressTemp;
//   Null? mobileNoTemp;
//   Null? contactNoTemp;
//   Null? altEmailTemp;
//   Null? profilePhotoTemp;
//   Null? deviceId;
//   String? fcmCode;
//   Null? deviceType;
//   Null? designation;
//   Null? weekoff;
//
//   ApprovalLog({this.aplId, this.compId, this.docNo, this.travelId, this.gstAmount, this.basicAmount, this.claimAmount, this.remarks, this.approvedBy, this.status, this.createdAt, this.updatedAt, this.id, this.companyId, this.idFranchise, this.gradeId, this.empName, this.userType, this.email, this.password, this.empCode, this.birthDate, this.joinDate, this.leaveDate, this.gender, this.fatherName, this.pAddress, this.presentAddress, this.mobileNo, this.contactNo, this.panNo, this.aadharNo, this.passportNo, this.visaNo, this.placeOfPosting, this.bloodGroup, this.isActive, this.rememberToken, this.deletedAt, this.createdBy, this.modifiedBy, this.departmentId, this.costCenterId, this.headOfDepartment, this.approver, this.aprrover1, this.aprrover2, this.aprrover3, this.specialPermission, this.theme, this.otp, this.altEmail, this.profilePhoto, this.pAddressTemp, this.presentAddressTemp, this.mobileNoTemp, this.contactNoTemp, this.altEmailTemp, this.profilePhotoTemp, this.deviceId, this.fcmCode, this.deviceType, this.designation, this.weekoff});
//
//   ApprovalLog.fromJson(Map<String, dynamic> json) {
//     aplId = json['apl_id'];
//     compId = json['comp_id'];
//     docNo = json['doc_no'];
//     travelId = json['travel_id'];
//     gstAmount = json['gst_amount'];
//     basicAmount = json['basic_amount'];
//     claimAmount = json['claim_amount'];
//     remarks = json['remarks'];
//     approvedBy = json['approved_by'];
//     status = json['status'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     id = json['id'];
//     companyId = json['company_id'];
//     idFranchise = json['id_franchise'];
//     gradeId = json['grade_id'];
//     empName = json['emp_name'];
//     userType = json['user_type'];
//     email = json['email'];
//     password = json['password'];
//     empCode = json['emp_code'];
//     birthDate = json['birth_date'];
//     joinDate = json['join_date'];
//     leaveDate = json['leave_date'];
//     gender = json['gender'];
//     fatherName = json['father_name'];
//     pAddress = json['p_address'];
//     presentAddress = json['present_address'];
//     mobileNo = json['mobile_no'];
//     contactNo = json['contact_no'];
//     panNo = json['pan_no'];
//     aadharNo = json['aadhar_no'];
//     passportNo = json['passport_no'];
//     visaNo = json['visa_no'];
//     placeOfPosting = json['place_of_posting'];
//     bloodGroup = json['blood_group'];
//     isActive = json['is_active'];
//     rememberToken = json['remember_token'];
//     deletedAt = json['deleted_at'];
//     createdBy = json['created_by'];
//     modifiedBy = json['modified_by'];
//     departmentId = json['department_id'];
//     costCenterId = json['cost_center_id'];
//     headOfDepartment = json['head_of_department'];
//     approver = json['approver'];
//     aprrover1 = json['aprrover_1'];
//     aprrover2 = json['aprrover_2'];
//     aprrover3 = json['aprrover_3'];
//     specialPermission = json['special_permission'];
//     theme = json['theme'];
//     otp = json['otp'];
//     altEmail = json['alt_email'];
//     profilePhoto = json['profile_photo'];
//     pAddressTemp = json['p_address_temp'];
//     presentAddressTemp = json['present_address_temp'];
//     mobileNoTemp = json['mobile_no_temp'];
//     contactNoTemp = json['contact_no_temp'];
//     altEmailTemp = json['alt_email_temp'];
//     profilePhotoTemp = json['profile_photo_temp'];
//     deviceId = json['device_id'];
//     fcmCode = json['fcm_code'];
//     deviceType = json['device_type'];
//     designation = json['designation'];
//     weekoff = json['weekoff'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['apl_id'] = this.aplId;
//     data['comp_id'] = this.compId;
//     data['doc_no'] = this.docNo;
//     data['travel_id'] = this.travelId;
//     data['gst_amount'] = this.gstAmount;
//     data['basic_amount'] = this.basicAmount;
//     data['claim_amount'] = this.claimAmount;
//     data['remarks'] = this.remarks;
//     data['approved_by'] = this.approvedBy;
//     data['status'] = this.status;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['id'] = this.id;
//     data['company_id'] = this.companyId;
//     data['id_franchise'] = this.idFranchise;
//     data['grade_id'] = this.gradeId;
//     data['emp_name'] = this.empName;
//     data['user_type'] = this.userType;
//     data['email'] = this.email;
//     data['password'] = this.password;
//     data['emp_code'] = this.empCode;
//     data['birth_date'] = this.birthDate;
//     data['join_date'] = this.joinDate;
//     data['leave_date'] = this.leaveDate;
//     data['gender'] = this.gender;
//     data['father_name'] = this.fatherName;
//     data['p_address'] = this.pAddress;
//     data['present_address'] = this.presentAddress;
//     data['mobile_no'] = this.mobileNo;
//     data['contact_no'] = this.contactNo;
//     data['pan_no'] = this.panNo;
//     data['aadhar_no'] = this.aadharNo;
//     data['passport_no'] = this.passportNo;
//     data['visa_no'] = this.visaNo;
//     data['place_of_posting'] = this.placeOfPosting;
//     data['blood_group'] = this.bloodGroup;
//     data['is_active'] = this.isActive;
//     data['remember_token'] = this.rememberToken;
//     data['deleted_at'] = this.deletedAt;
//     data['created_by'] = this.createdBy;
//     data['modified_by'] = this.modifiedBy;
//     data['department_id'] = this.departmentId;
//     data['cost_center_id'] = this.costCenterId;
//     data['head_of_department'] = this.headOfDepartment;
//     data['approver'] = this.approver;
//     data['aprrover_1'] = this.aprrover1;
//     data['aprrover_2'] = this.aprrover2;
//     data['aprrover_3'] = this.aprrover3;
//     data['special_permission'] = this.specialPermission;
//     data['theme'] = this.theme;
//     data['otp'] = this.otp;
//     data['alt_email'] = this.altEmail;
//     data['profile_photo'] = this.profilePhoto;
//     data['p_address_temp'] = this.pAddressTemp;
//     data['present_address_temp'] = this.presentAddressTemp;
//     data['mobile_no_temp'] = this.mobileNoTemp;
//     data['contact_no_temp'] = this.contactNoTemp;
//     data['alt_email_temp'] = this.altEmailTemp;
//     data['profile_photo_temp'] = this.profilePhotoTemp;
//     data['device_id'] = this.deviceId;
//     data['fcm_code'] = this.fcmCode;
//     data['device_type'] = this.deviceType;
//     data['designation'] = this.designation;
//     data['weekoff'] = this.weekoff;
//     return data;
//   }
// }