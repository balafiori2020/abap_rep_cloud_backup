FUNCTION zfm_create_all.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  DATA:ls_agency TYPE zrap_500_t_agen.
    DATA:lt_agency TYPE TABLE OF  zrap_500_t_agen.



    APPEND VALUE #(
    agency_id = 'A001'
    agency_name = 'Travel Choice'
    city = 'Bangalore'
    country = 'IN'
    email = 'travelchoice@gmail.com'
    postal_code = '560102'
    state = 'KA'
    street = '12,south street'
    web_address = 'www.travelchoice.com') to lt_agency.



    INSERT  zrap_500_t_agen FROM TABLE @lt_agency.




ENDFUNCTION.
