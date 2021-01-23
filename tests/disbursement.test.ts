const chai = require('chai')
import { describe } from 'mocha'

let should: any = chai.should()
let expect: any = chai.expect

describe ('The entry payload', () => {
  it ('The property should be exist', (done: any) => {
    const payload: any = {
      bank_code: 'BNI',
      account_number: '1234',
      amount: 1234,
      remark: 'TESTING REMARK'
    }

    chai.assert.typeOf(payload, 'object')
    expect(payload).to.be.an('object').that.has.all.keys(
      'bank_code', 'account_number', 'amount', 'remark'
    )
    expect(payload.bank_code).to.be.a('string')
    expect(payload.account_number).to.be.a('string')
    expect(payload.amount).to.be.a('number')
    expect(payload.remark).to.be.a('string')
    done()
  })

  it ('It should be required', (done: any) => {
    const payload: any = {
      bank_code: 'BNI',
      account_number: '1234',
      amount: 1234,
      remark: 'TESTING REMARK'
    }

    should.exist(payload.bank_code)
    should.exist(payload.account_number)
    should.exist(payload.amount)
    should.exist(payload.remark)
    done()
  })

  it ('The amount should be positive', async (done: any) => {
    const payload: any = {
      bank_code: 'BNI',
      account_number: '1234',
      amount: 0,
      remark: 'TESTING REMARK'
    }

    const isPositive = async () => {
      throw new Error('The amount should be positive')
    }

    if (payload.amount <= -1) {
      await isPositive()
    }
    done()
  })

  it ('The amount should be more than 0', async (done: any) => {
    const payload: any = {
      bank_code: 'BNI',
      account_number: '1234',
      amount: 1,
      remark: 'TESTING REMARK'
    }

    const aboveNol = async () => {
      throw new Error('The amount should be more than 0')
    }

    if (payload.amount <= 0) {
      await aboveNol()
    }

    done()
  })
})