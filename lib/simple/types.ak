use aiken/transaction/credential.{Address}

pub type Datum {
  fee_address: Address,
}

test sum() {
  1 + 1 == 2
}

test multiply() {
  5 * 6 == 30
}
