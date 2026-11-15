@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Statement Event Projection View'
define view entity ZP_STATMEVENT as projection on ZI_STATMEVENT as StatementEvent
{
    key Uuid,
    key HeaderUuid,
    Currency,
    @Semantics.amount.currencyCode: 'Currency'
    Value,
    Description,
    LongDescription,
    EntryType,
    /* Associations */
    _StatementHeader : redirected to parent ZP_STATMHDR
}
