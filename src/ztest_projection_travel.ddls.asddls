@EndUserText.label: 'projection View Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI.headerInfo:{

typeName: 'Travel',
typeNamePlural: 'Travels',
title.value: 'Travel_Id',
description.value: 'Tarvel_Desc'
}
@Search.searchable: true
define root view entity ZTEST_PROJECTION_TRAVEL as projection on ZTEST_M_TRAVEL {
@UI.facet: [{
purpose: #STANDARD,type: #IDENTIFICATION_REFERENCE },
{purpose: #STANDARD,type: #LINEITEM_REFERENCE,targetElement: '_Bookings'
}]
@Search.defaultSearchElement: true
@UI.lineItem: [{position:10 }]
@EndUserText.label: 'Travel Id'
@UI.selectionField: [{position: 10}]
@UI.identification: [{position: 10}]
key Travel_Id,
@UI.lineItem: [{position:20 }]
@EndUserText.label: 'Travel Name'
@UI.identification: [{position: 20}]

Tarvel_Desc,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:30 }]
@EndUserText.label: 'Agency'
@UI.selectionField: [{position: 20}]
@UI.identification: [{position: 30}]
@Consumption.valueHelpDefinition: [{entity.name:'ZRAP_500_I_AGENCYT',entity.element: 'agency_id' }]
agency_id,
@Search.defaultSearchElement: true
@UI.lineItem: [{position:40 }]
@EndUserText.label: 'Customer'
@UI.selectionField: [{position: 30}]
@UI.identification: [{position: 40}]
@Consumption.valueHelpDefinition: [{entity.name:'ZRAP_500_I_CUSTOMERT',entity.element: 'Customer_Id' }]
Customer_Id,
@UI.lineItem: [{position:50 }]
@EndUserText.label: 'Start Date'
@UI.identification: [{position: 50}]
Begin_Date,
@UI.lineItem: [{position:60 }]
@EndUserText.label: 'End Date'

@UI.identification: [{position: 60}]
End_Date,
Booking_Fee,
@UI.lineItem: [{position:70 }]
@EndUserText.label: 'Tarvel Cost'
@UI.identification: [{position: 70}]
Travel_Cost,
@UI.selectionField: [{position: 40}]
@UI.identification: [{position: 80}]
@Consumption.valueHelpDefinition: [{entity.name:'I_Currency',entity.element: 'Currency' }]
@EndUserText.label: 'Currency Code'
Currency_code,
@UI.identification: [{position: 90}]
@EndUserText.label: 'Status'
Status,
/* Associations */
_Agency,
_Customer,
_Currency,
_Bookings:redirected to composition child ZTEST_PROJETION_BOOKING

    
}
