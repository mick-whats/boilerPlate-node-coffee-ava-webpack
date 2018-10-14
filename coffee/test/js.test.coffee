require('source-map-support').install()
_ = require('lodash')
{test} = require 'ava'

test '文字列で計算', (t) ->
  t.is 100   + '2', '1002'
  t.is '100' + 2  , '1002'
  t.is 100   - '2', 98
  t.is '100' - 2  , 98
  t.is 100   * '2', 200
  t.is '100' * 2  , 200
  t.is 100   / '2', 50
  t.is '100' / 2  , 50
