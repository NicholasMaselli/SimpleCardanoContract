
use aiken/list
use aiken/transaction.{Transaction, InlineDatum}
use aiken/transaction/value.{Value}
use aiken/transaction/credential.{Address}
use general/types.{PaymentDatum}

/// We expect outputs to be unique. Each output is tagged with a datum.
/// We also expect the datum to be inline
pub fn value_paid_to_with_datum(
  tx: Transaction,
  address: Address,
  payment_datum: PaymentDatum,
) -> Value {
  when
    list.filter(
      tx.outputs,
      fn(output) {
        output.address == address && output.datum == InlineDatum(payment_datum)
      },
    )
  is {
    [output] -> output.value
    _ -> error
  }
}
