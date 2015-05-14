require('spec_helper')

describe(Category) do
  it('validates presence of name') do
    category = Category.new({:name => ""})
    expect(category.save()).to(eq(false))
  end
end

describe(Category) do
  it { should have_and_belong_to_many(:recipes)}
end

describe(Category) do
  it { should validate_presence_of(:name) }
end
