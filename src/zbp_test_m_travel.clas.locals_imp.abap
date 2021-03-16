CLASS lhc_ztest_m_travel DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

*    METHODS ValidateCustomer FOR DETERMINE ON SAVE
*      IMPORTING keys FOR ZTEST_M_TRAVEL~ValidateCustomer.

      METHODS ValidateCustomer FOR VALIDATE ON SAVE
      IMPORTING keys FOR ZTEST_M_TRAVEL~ValidateCustomer.

ENDCLASS.

CLASS lhc_ztest_m_travel IMPLEMENTATION.

  METHOD ValidateCustomer.

  READ ENTITIES OF ZTEST_M_TRAVEL IN LOCAL MODE
      ENTITY ztest_m_travel
        FIELDS ( Customer_Id ) WITH CORRESPONDING #( keys )
      RESULT DATA(members).

    LOOP AT members INTO DATA(member).

    IF member-Customer_Id = 'C001'.
APPEND VALUE #( %tky = member-%tky ) TO failed-ztest_m_travel.
append value #(
%tky = member-%tky
%msg = new_message(
                    id = 'ZRAP_500_MC_TRAVEL'
                    number = '001'
                    severity = if_abap_behv_message=>severity-error
*                    v1 = member-Customer_Id
*                    %element-Customer_Id = if_abap_behv=>mk=ok

 )
  ) to reported-ztest_m_travel.

*     MODIFY ENTITIES OF ZTEST_M_TRAVEL IN LOCAL MODE
*        ENTITY ztest_m_travel
*          UPDATE
*            FIELDS ( agency_id )
*            WITH VALUE #(
*                          ( %tky         = member-%tky
*                            agency_id = 'A003'
*                            ) ).
    endif.
    endloop.

  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
