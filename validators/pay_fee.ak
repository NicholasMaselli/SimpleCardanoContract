use aiken/transaction.{ScriptContext}
use simple/types



validator {
  fn pay_fee(_datum: types.Datum, _redeemer: Data, _ctx: ScriptContext) -> Bool {
    True
  }
}
