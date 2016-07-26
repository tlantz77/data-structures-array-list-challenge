require_relative 'array_list'

describe ArrayList do

  let(:arr_list) { ArrayList.new(5) }

  it 'can initialize a new ArrayList as a FixedArray' do
    expect(arr_list.fixed).to be_a FixedArray
  end

  it 'can initialize a new ArrayList with a given size' do
    expect(arr_list.length).to eq(5)
  end

  it 'can add a new element' do
    expect(arr_list.add('newthing')).to eq('newthing')
  end

  it 'will increase in size when new element added' do
    expect{ arr_list.add('newthing') }.to change{ arr_list.length }.by(1)
  end

  it 'can retrieve element at a given index' do
    arr_list.add('newthing')
    expect(arr_list.get(5)).to eq('newthing')
  end

  it 'will raise error if given index is outside the bounds of the array' do
    expect { arr_list.get(6) }.to raise_error(StandardError, 'Out of Bounds')
  end

  it 'can assign an element to a given index' do
    arr_list.set(3, "What up!")
    expect(arr_list.get(3)).to eq("What up!")
  end

  it 'will raise error if no element to replace exists at index' do
    expect { arr_list.set(6, "Yahoo!") }.to raise_error(StandardError, 'Out of Bounds')
  end

  it 'can insert a new element in the middle' do
    arr_list.set(3, 'thing')
    arr_list.insert(3, 'newthing')
    expect(arr_list.get(3)).to eq('newthing')
    expect(arr_list.get(4)).to eq('thing')
  end

  it 'will raise error if index to insert at is outside of ArrayList' do
    expect { arr_list.insert(7, "Yahoo!") }.to raise_error(StandardError, 'Out of Bounds')
  end

end
