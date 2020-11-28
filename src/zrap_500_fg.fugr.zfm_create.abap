FUNCTION ZFM_CREATE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
DATA:LS_AGENCY TYPE zrap_500_t_agen.
     DATA:LT_AGENCY TYPE TABLE OF  zrap_500_t_agen.

LS_AGENCY-agency_id = 'A001'.
LS_AGENCY-agency_name = 'Travel Choice'.
LS_AGENCY-city = 'Bangalore'.
LS_AGENCY-country = 'IN'.
LS_AGENCY-email = 'travelchoice@gmail.com'.
LS_AGENCY-postal_code = '560102'.
LS_AGENCY-state = 'KA'.
LS_AGENCY-street = '12,south street'.
LS_AGENCY-web_address = 'www.travelchoice.com'.


APPEND LS_AGENCY to lt_agency.
INSERT  zrap_500_t_agen FROM TABLE @LT_AGENCY.





ENDFUNCTION.
