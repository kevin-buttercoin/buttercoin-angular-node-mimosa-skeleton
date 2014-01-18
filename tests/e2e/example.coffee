describe 'Example', ->

  beforeEach ->
    browser().navigateTo '/'
    sleep 1

  it 'should have access to /', ->
    expect(browser().location().path()).toBe '/'

  it 'should display the title', ->
    expect(element('.ng-binding').text()).toBe 'Title'