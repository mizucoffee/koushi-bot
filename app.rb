require 'slack-ruby-bot'

MIZU = '<@U02AD5D331U>'
CHANRIKA = '<@U02AKDSBNG3>'
KOUSHI = [MIZU, CHANRIKA].join(' ')

SlackRubyBot::Client.logger.level = Logger::WARN
c_question = 'C02B8STDD6U'
c_times_xx = ''

class KoushiBot < SlackRubyBot::Bot
  scan '<@U02CLFK7ZB8>' do |client, data, match|
    client.say(text: KOUSHI, channel: data.channel, thread_ts: data[:thread_ts] || data[:ts])
  end
end

KoushiBot.run
