require('spec_helper')

describe(Recipe) do
    it('validates the presence of name') do
    recipe = Recipe.new({:name => "", :ingredients => "", :instructions => "", :rating => ""})
    expect(recipe.save()).to(eq(false))
  end
end

describe(Recipe) do
  it { should have_and_belong_to_many(:categories)}
end

describe(Recipe) do
  it { should validate_presence_of(:name) }
end

describe(Recipe) do
  it { should validate_presence_of(:ingredients) }
end


describe(Recipe) do
  it { should validate_presence_of(:instructions) }
end
