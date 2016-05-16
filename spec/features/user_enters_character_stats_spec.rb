# Jared, this goes in spec/features/user_enters_character_stats_spec.rb

# STATS - Name, Race, Physical Stats
# BIOS - Backgrounds, One Unique Things
# CLASS - Class, Feats, Class Talents / Features
# SPELLS - Spell lists
# WEAPONS
# INVENTORY
# WEALTH

#Things that will be filled-in qutomatically:
# Init, Race Ability, Mental Defense, Physical Defense, Recovery and Recovery Die, AC, HP

require 'rails_helper'

feature 'User enters character stats' do
  scenario 'successfully' do
    visit new_stat_path

    fill_in "character name", with: 'thing'
    select 'Dark Elf', from: 'stat_character_race'
    fill_in 'stat_character_strength', with: 10
    fill_in 'stat_character_dexterity', with: 6
    fill_in 'stat_character_constitution', with: 12
    fill_in 'stat_character_wisdom', with: 8
    fill_in 'stat_character_intelligence', with: 14
    fill_in 'stat_character_charisma', with: 10
    click_on 'Create'

    # Jared, these are the derived, computed stats
    expect(page).to have_content("Dexterity: 6")
    expect(page).to have_content("Power: 200")
  end
end