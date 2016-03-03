class Television
  attr_reader :size, :price, :resolution

  def initialize(input_options)
    @size = input_options[:size]
    @price = input_options[:price]
    @resolution = input_options[:resolution]
  end

  def print_info
    puts "size: #{size}, price: #{price}, resolution: #{resolution}"
  end

  def double_price
    @price = price * 2
    print_info
  end
end

class CurvedTelevision < Television
  def initialize(input_options)
    super
    @viewing_angle = input_options[:viewing_angle]
  end

  def print_info
    super
    # puts "size: #{@size}, price: #{@price}, resolution: #{@resolution}, viewing_angle: #{@viewing_angle}"
    puts "viewing angle: #{@viewing_angle}"
  end
end

samsung_tv = Television.new(size: 32, price: 300, resolution: "1080")
visio_tv = Television.new(size: 32, price: 100, resolution: "1080")
lg_tv = CurvedTelevision.new(size: 55, price: 800, resolution: "4k", viewing_angle: 180)

visio_tv.print_info
lg_tv.print_info

p visio_tv.price


