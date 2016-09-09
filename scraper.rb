#!/bin/env ruby
# encoding: utf-8

require 'pry'
require 'wikidata/fetcher'

names1 = EveryPolitician::Wikidata.morph_wikinames(source: 'everyPolitician-scrapers/mexico-deputies-wikipedia', column: 'wikipedia__en')
names2 = EveryPolitician::Wikidata.morph_wikinames(source: 'everyPolitician-scrapers/mexico-deputies-wikipedia-2015', column: 'wikipedia__en')
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names1 + names2 })
EveryPolitician::Wikidata.notify_rebuilder
