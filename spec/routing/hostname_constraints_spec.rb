require 'rails_helper'

#TODO:Routing

describe 'Routing' do
    xexample 'TopPage_Staff' do
        expect(get: 'http://baukis.example.com').to route_to(
            host: 'baukis.example.com',
            controller: 'staff/top',
            actions: 'index'
            )
    end
    
    xexample 'LoginForm_Admin' do
        expect(get: 'http://baukis.example.com/admin/login').to route_to(
            host: 'baukis.example.com',
            controller: 'admin/sessions',
            action: 'new'
            )
    end
    
    xexample 'ホスト名が対象外ならerrors/not_foundへ' do
        expect(get: 'http://foo.example.jp').to route_to(
            controller: 'errors',
            action: 'routing_error'
            )
    end
    
    xexample '存在しないパスならerrors/not_foundへ' do
        expect(get: 'http://baukis.example.com/xyz').to route_to(
            controller: 'errors',
            action: 'routing_error',
            anything: 'xyz'
            )
    end
end