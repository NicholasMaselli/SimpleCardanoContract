use aiken/transaction.{ScriptContext}
use simple/types

validator {
  fn always_succeed(_datum: types.Datum, _redeemer: Data, _ctx: ScriptContext) -> Bool {
    True
  }
}
