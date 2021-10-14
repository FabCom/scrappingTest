require_relative('../lib/annuaireMairies')



describe 'hash verification for create_departements_array' do
  it 'must return an array' do
    expect(create_departements_array().class).to eq(Array)
  end
end

describe 'hash verification for create_towns_array' do
  it 'must return an array' do
    expect(create_towns_array({"id"=>"24 ", "name"=>"Dordogne", "link_relative"=>"dordogne.html"}).class).to eq(Array)
  end
end
