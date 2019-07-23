class Portfolio
  def self.items
    [
      OpenStruct.new(idx: 1, title: 'Log Cabin',    image_filename: 'cabin.png'),
      OpenStruct.new(idx: 2, title: 'Tasty Cake',   image_filename: 'cake.png'),
      OpenStruct.new(idx: 3, title: 'Circus Tent',  image_filename: 'circus.png'),
      OpenStruct.new(idx: 4, title: 'Controller',   image_filename: 'game.png'),
      OpenStruct.new(idx: 5, title: 'Locked Safe',  image_filename: 'safe.png'),
      OpenStruct.new(idx: 6, title: 'Submarine',    image_filename: 'submarine.png')
    ]
  end
end