/*
*  "status": {
        "timestamp": "2024-01-12T14:42:28.302Z",
        "error_code": 0,
        "error_message": null,
        "elapsed": 20,
        "credit_count": 1,
        "notice": null,
        "total_count": 9001
    },
* */

class StatusModel {
  final String timestamp;
  final int errorCode;
  final String errorMessage;
  final int elapsed;
  final int creditCount;
  final String notice;
  final int totalCount;

  StatusModel(this.timestamp, this.errorCode, this.errorMessage, this.elapsed,
      this.creditCount, this.notice, this.totalCount);
  StatusModel.fromJson(Map<String, dynamic> json)
      : timestamp = json["timestamp"] == null ? "" : json["timestamp"],
        errorCode = json["error_code"] == null ? 0 : json["error_code"],
        errorMessage =
        json["error_message"] == null ? "" : json["error_message"],
        elapsed = json["elapsed"] == null ? 0 : json["elapsed"],
        creditCount = json["credit_count"] == null ? 0 : json["credit_count"],
        notice = json["notice"] == null ? "" : json["notice"],
        totalCount = json["total_count"] == null ? 0 : json["total_count"];
}