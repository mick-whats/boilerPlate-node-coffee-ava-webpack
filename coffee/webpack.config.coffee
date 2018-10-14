path = require('path')
module.exports =
  # mode: 'production'
  # mode: 'development'
  devtool: 'source-map',
  watch: false
  entry: ['babel-polyfill', './coffee/lib/index.coffee'],
  output:
    filename: 'ohlc.js'
    path: path.join(__dirname, 'dist')
    library: 'ohlc'
    libraryTarget: 'umd'
    globalObject  : 'this'
  resolve:
    extensions: ['.js', '.coffee']
  module: rules: [ {
    test: /\.m?js$/
    exclude: /(node_modules|bower_components)/
    use:
      loader: 'babel-loader'
      options:
        presets: ['@babel/preset-env']
  },{
        test: /\.coffee$/,
        use: [ 'coffee-loader' ]
    }
  ]