module PowerLiquidFilters
  def powerable(input)
    num = input.to_f
    
    if num >= 0.001
      num.round(3)
    else
      arr = (sprintf '%.3e', num).split 'e'
      "#{arr[0].to_f} * 10<sup>#{arr[1].to_i}</sup>"
    end
  end
end

Liquid::Template.register_filter PowerLiquidFilters