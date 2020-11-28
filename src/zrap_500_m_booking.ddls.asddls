@AbapCatalog.sqlViewName: 'ZRAP_500_M_BOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Managed Booking'
define  view ZRAP_500_M_BOOKING as select from zrap_500_t_book 
association to parent ZTEST_M_TRAVEL as _Travel on $projection.Travel_Id = _Travel.Travel_Id
association [1..1] to ZRAP_500_I_CUSTOMERT as _Customer on $projection.Customer_Id = _Customer.Customer_Id 
association [1..1] to ZRAP_500_I_AIRLINE as _Airline on $projection.Airline_Id = _Airline.Airline_Id
association [1..1] to I_Currency as _Currency on $projection.Currency_Code = _Currency.Currency
association [1..1] to ZRAP_500_I_FLIGHT  as _Flight on $projection.Flight_Number = _Flight.Flight_Number and 
 $projection.Airline_Id = _Flight.Airline_id  
{
key zrap_500_t_book.booking_id as Booking_Id,
key zrap_500_t_book.travel_id as Travel_Id,
zrap_500_t_book.booking_desc as Booking_Desc,
zrap_500_t_book.customer_id as Customer_Id,
zrap_500_t_book.airline_id as Airline_Id,
zrap_500_t_book.flight_number as Flight_Number,
zrap_500_t_book.flight_date as Flight_Date,
zrap_500_t_book.flight_price as Flight_Price,
zrap_500_t_book.currency_code as Currency_Code,
zrap_500_t_book.booking_status as Booking_Status,
_Travel,
_Airline,
_Flight,
_Currency,
_Customer

    
}
