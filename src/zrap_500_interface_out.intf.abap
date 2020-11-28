
INTERFACE ZRAP_500_INTERFACE_OUT

PUBLIC .

  METHODS write
    IMPORTING
      !data         TYPE any
      !name         TYPE string OPTIONAL
    RETURNING
      VALUE(output) TYPE REF TO ZRAP_500_INTERFACE_OUT .
  METHODS get
    IMPORTING
      !data         TYPE any OPTIONAL
      !name         TYPE string OPTIONAL PREFERRED PARAMETER data
    RETURNING
      VALUE(output) TYPE string .

ENDINTERFACE.
