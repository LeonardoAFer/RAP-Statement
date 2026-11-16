@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Statement Event Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_STATMEVENT
  as select from zstatmevent
  association to parent ZI_STATMHDR as _StatementHeader on $projection.HeaderUuid = _StatementHeader.Uuid
{
  key uuid             as Uuid,
      header_uuid      as HeaderUuid,
      currency         as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      value            as Value,
      description      as Description,
      long_description as LongDescription,
      entry_type       as EntryType,
      _StatementHeader 
}
