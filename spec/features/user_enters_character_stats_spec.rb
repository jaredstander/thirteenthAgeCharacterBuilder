# Jared, this goes in spec/features/user_enters_character_stats_spec.rb

# STATS - Name, Race, Stats, Base Init
# BIOS - Backgrounds, One Unique Things, Icon Relationships
# CLASS - Class, Feats, Class Talents / Features, Recoveries, HP, AC
# SPELLS - Spell lists
# WEAPONS
# INVENTORY
# WEALTH

require 'rails_helper'

feature 'User enters character stats' do
  scenario 'successfully' do
    visit new_stat_path

    fill_in "stats_character_name", with: 'thing'
    select 'Dark Elf', from: 'race'
    fill_in 'strength', with: 10
    fill_in 'dexterity', with: 6
    fill_in 'constitution', with: 12
    fill_in 'wisdom', with: 8
    fill_in 'intelligence', with: 14
    fill_in 'charisma', with: 10
    fill_in 'initiative', with: -2
    click_on 'Create'

    # Jared, these are the derived, computed stats
    expect(page).to have_content("Dexterity: 6")
    expect(page).to have_content("Power: 200")
  end
end