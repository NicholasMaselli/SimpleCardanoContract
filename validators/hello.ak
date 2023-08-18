use aiken/transaction.{ScriptContext}
use simple/types

validator {
  fn spend(datum: types.Datum, _redeemer: Data, _ctx: ScriptContext) -> Bool {
    datum.message == "Hello World!"
  }
}
