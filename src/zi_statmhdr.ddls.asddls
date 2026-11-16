@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Statement Header Inferface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_STATMHDR
  as select from zstatmhdr
    composition [0..*] of ZI_STATMEVENT as _StatementEvent
{
  key uuid                 as Uuid,
      bank                 as Bank,
      branch               as Branch,
      account              as Account,
      account_dig          as AccountDig,
      statement_date       as StatementDate,
      currency             as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      start_balance        as StartBalance,
      @Semantics.amount.currencyCode: 'Currency'
      end_balance          as EndBalance,
      @Semantics.user.createdBy: true
      created_by_user      as CreatedByUser,
      @Semantics.systemDateTime.createdAt: true
      created_at           as CreatedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at           as ChangedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by_user as LastChangedByUser,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_changed_at     as LocalChangedAt,
      _StatementEvent 
}
