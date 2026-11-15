@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Statement Header Projection View'
define root view entity ZP_STATMHDR as projection on ZI_STATMHDR as StatementHeader
{
    key Uuid,
    Bank,
    Branch,
    Account,
    AccountDig,
    Datum,
    Currency,
    @Semantics.amount.currencyCode: 'Currency'
    StartBalance,
    @Semantics.amount.currencyCode: 'Currency'
    EndBalance,
    CreatedByUser,
    CreatedAt,
    ChangedAt,
    LastChangedByUser,
    LocalChangedAt,
    /* Associations */
    _StatementEvent: redirected to composition child ZP_STATMEVENT
}
