require File.join(File.dirname(__FILE__), 'spec_helper')

describe Sinatrinha do
  context 'GET /' do
    it 'should be successful' do
      get '/'
      last_response.should be_ok
    end

    it 'should return an hello world message at beginning' do
      get '/'

      body = last_response.body
      body.should match(/^Hello World called in /)
    end

    it 'should return current time in ISO format at end' do
      a_date = '2010-12-25 16:00:00'
      Time.should_receive(:now).twice.and_return(Time.parse a_date)

      get '/'

      body = last_response.body
      body.should match(/#{a_date}! =D$/)
    end
  end
end
