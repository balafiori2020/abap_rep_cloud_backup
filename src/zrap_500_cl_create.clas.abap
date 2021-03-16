CLASS zrap_500_cl_create DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS fill_master_data.
ENDCLASS.



CLASS ZRAP_500_CL_CREATE IMPLEMENTATION.


  METHOD fill_master_data.




*    DATA:ls_agency TYPE zrap_500_t_agen.
*    DATA:lt_agency TYPE TABLE OF  zrap_500_t_agen.
*
*    APPEND VALUE #(
*    agency_id = 'A005'
*    agency_name = 'Holiday Inn'
*    city = 'Bangalore'
*    country = 'IN'
*    email = 'holidayinn@gmail.com'
*    postal_code = '560123'
*    state = 'KA'
*    street = '67,west street'
*    web_address = 'www.holidayin.com') to lt_agency.


*data:ls_customer type zrap_500_t_cust.
*     data:lt_customer type TABLE of zrap_500_t_cust.
*
*  APPEND VALUE #(
*  customer_id = '2'
*  first_name = 'Bala'
*  last_name  = 'Subramaniyam'
*city = 'Bangalore'
*country = 'IN'
*email = 'bala@gmail.com'
*phone = '9346247743'
*postal_code = '637211'
*state =  'KA'
*street = '21,street no 1'
*   ) to lt_customer.
*
*    INSERT  zrap_500_t_cust FROM TABLE @lt_customer.


*data :ls_airline type zrap_500_t_airl.
*      data :lt_airline type table of zrap_500_t_airl.
*
*             APPEND VALUE #(
*             airline_id = 'AA'
*             airline_text = 'Air Asia'
*  ) to lt_airline.
*
*   INSERT  zrap_500_t_airl FROM TABLE @lt_airline.


data :ls_flight type zrap_500_t_flg.
      data :lt_flight type table of zrap_500_t_flg.

 APPEND VALUE #(
airline_number = 'AA'
currency_code  = 'INR'
flight_date  = '20201201'
flight_name  = 'AIR 132'
flight_number = 'F001'
flight_price = 3000
  ) to lt_flight.

  APPEND VALUE #(
airline_number = 'AA'
currency_code  = 'INR'
flight_date  = '20201223'
flight_name  = 'WAIR 783'
flight_number = 'F002'
flight_price = 4500
  ) to lt_flight.


  APPEND VALUE #(
airline_number = 'AI'
currency_code  = 'INR'
flight_date  = '20210223'
flight_name  = 'IND34 783'
flight_number = 'F003'
flight_price = 2700
  ) to lt_flight.

   APPEND VALUE #(
airline_number = 'AI'
currency_code  = 'INR'
flight_date  = '20210112'
flight_name  = 'AIND34 873'
flight_number = 'F004'
flight_price = 5600
  ) to lt_flight.


     APPEND VALUE #(
airline_number = 'IG'
currency_code  = 'INR'
flight_date  = '20210217'
flight_name  = 'INDG67 34'
flight_number = 'F005'
flight_price = 3800
  ) to lt_flight.

   APPEND VALUE #(
airline_number = 'IG'
currency_code  = 'INR'
flight_date  = '20210119'
flight_name  = 'IG456 29'
flight_number = 'F006'
flight_price = 3800
  ) to lt_flight.


   APPEND VALUE #(
airline_number = 'SG'
currency_code  = 'INR'
flight_date  = '20210221'
flight_name  = 'SP2345 JET'
flight_number = 'F007'
flight_price = 5100
  ) to lt_flight.



   APPEND VALUE #(
airline_number = 'SG'
currency_code  = 'INR'
flight_date  = '20210116'
flight_name  = 'SJET 1897'
flight_number = 'F008'
flight_price = 2900
  ) to lt_flight.


   APPEND VALUE #(
airline_number = 'IA'
currency_code  = 'INR'
flight_date  = '20210319'
flight_name  = 'INDAI 18938'
flight_number = 'F009'
flight_price = 7200
  ) to lt_flight.

   APPEND VALUE #(
airline_number = 'IA'
currency_code  = 'INR'
flight_date  = '20210219'
flight_name  = 'IN2456 134'
flight_number = 'F010'
flight_price = 3900
  ) to lt_flight.


  INSERT  zrap_500_t_FLG FROM TABLE @lt_FLIGHT.


  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    me->fill_master_data( ).

  ENDMETHOD.
ENDCLASS.
