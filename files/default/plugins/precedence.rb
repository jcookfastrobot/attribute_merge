Ohai.plugin(:Precedence) do
  provides 'precedence/lvl_15'

  collect_data(:default) do
    precedence Mash.new
    precedence[:lvl_15] = "Precedence: automatic - Ohai Module: precedence.rb"
  end
end
