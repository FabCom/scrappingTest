require_relative('../lib/annuaireMairies')


describe 'verification for create_departements_array' do
  it 'must return an array' do
    expect(create_departements_array().class).to eq(Array)
  end
end

describe 'verification for create_towns_array' do
  it 'must return an array' do
    expect(create_towns_array({"id"=>"24 ", "name"=>"Dordogne", "link_relative"=>"dordogne.html"}).class).to eq(Array)
  end
end

describe 'verification for get_town_info' do
  it 'must return an Hash' do
    expect(get_town_info({"name"=>"VILLETTE-SUR-AIN", "link_relative"=>"01/villette-sur-ain.html"}).class).to eq(String)
  end
  it 'must return an Hash' do
    expect(get_town_info({"name"=>"VILLETTE-SUR-AIN", "link_relative"=>"01/villette-sur-ain.html"})).to eq('mairie.villette-sur-ain@wanadoo.fr')
  end
end
