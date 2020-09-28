require('rspec')
require('triangles')

describe '#Album' do
  before(:each) do
    Triangle.clear()
  end

  describe ('not_a_triangle') do
    it('returns true when three sides to not create a triangle')
      expect(Triangle.not_a_triangle)to.e