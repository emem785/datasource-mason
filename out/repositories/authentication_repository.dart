@injectable
class BillRepository {
  final IBillApiDataSource billApiDataSource;

  BillRepository(this.billApiDataSource);

  Future<Either<Failure, BillGroupResponse>> fetchBillGroups({
    required String slug,
  }) {
    return billApiDataSource.fetchBillGroups(slug);
  }

  Future<Either<Failure, BillTypeResponse>> fetchBill({
    required String slug,
  }) {
    return billApiDataSource.fetchBillType(slug);
  }

  Future<Either<Failure, BillLookupResponse>> fetchBillInfo({
    required String endpoint,
    required BillLookupRequest request,
  }) {
    return billApiDataSource.fetchBillInfo(endpoint, request);
  }

  Future<Either<Failure, BillPaymentResponse>> payBill({
    required BillPaymentRequest paymentRequest,
  }) {
    return billApiDataSource.payBill(paymentRequest);
  }

  Future<Either<Failure, AirtimePinResponse>> buyAirtimePin({
    required BuyAirtimePinRequest request,
  }) {
    return billApiDataSource.buyAirtimePin(request);
  }

  Future<Either<Failure, MinimumPayResponse>> fetchMinPayableAmount({
    required MinimumPayRequest request,
  }) {
    return billApiDataSource.fetchMinPayableAmount(request);
  }

  Future<Either<Failure, AirtimePinHistoryResponse>> getAirtimePinHistory() {
    return billApiDataSource.getAirtimePinHistory();
  }

  Future<Either<Failure, CommissionHistory>> getCommissionHistory(
    int pageKey,
    DateFilterValueObject dateFilterValueObject,
  ) {
    return billApiDataSource.getCommissionHistory(
        pageKey, dateFilterValueObject);
  }
}
