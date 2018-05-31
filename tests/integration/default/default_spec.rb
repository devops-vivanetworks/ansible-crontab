# encoding: utf-8

# crontab
describe package('cron') do
  it { should be_installed }
end

describe service('cron') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

