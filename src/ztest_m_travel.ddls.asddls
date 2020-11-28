@AbapCatalog.sqlViewName: 'ZTEST_TRAVEL_C'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel view Composite'
define root view ZTEST_M_TRAVEL as select from zrap_500_t_trave
composition [0..*] of ZRAP_500_M_BOOKING as _Bookings 
 association[1] to ZRAP_500_I_AGENCYT as _Agency on $projection.agency_id = _Agency.agency_id
 association[1] to ZRAP_500_I_CUSTOMERT as _Customer on $projection.Customer_Id = _Customer.Customer_Id
 association[1] to I_Currency as _Currency on $projection.Currency_code = _Currency.Currency
 
 
 {
 key zrap_500_t_trave.travel_id as Travel_Id,
 zrap_500_t_trave.tarvel_desc as Tarvel_Desc,
 zrap_500_t_trave.agency_id as agency_id,
 zrap_500_t_trave.customer_id as Customer_Id,
 zrap_500_t_trave.begin_date as Begin_Date,
 zrap_500_t_trave.end_date as End_Date,
 @Semantics.amount.currencyCode: 'Currency_code'
 zrap_500_t_trave.booking_fee as Booking_Fee,
  @Semantics.amount.currencyCode: 'Currency_code'
 zrap_500_t_trave.travel_cost as Travel_Cost,
  @Semantics.currencyCode: true
 zrap_500_t_trave.currency_code as Currency_code,
 zrap_500_t_trave.status as Status,
 _Customer,
 _Agency,
 _Currency,
 _Bookings 
    
}
