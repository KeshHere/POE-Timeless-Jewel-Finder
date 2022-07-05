#include <GuiConstants.au3>
#Include <APIConstants.au3>
#include <File.au3>
#Include <Array.au3>
#include <WinAPITheme.au3>
#include <ColorConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <FileConstants.au3>



Local $hGUI = GUICreate("Timeless Jewel Finder-v2.0-beta",770,530) ;gui create
GUISetFont(10)
GUISetBkColor(0xFFFFFF)

GUICtrlCreateLabel("Choose Passive skills OR",10,10,200,25)
GUICtrlCreateLabel("Choose Group",10,60,200,25)
Global $string="Lava Lash,Whirling Barrier,Sanctuary,Smashing Strikes,Skull Cracking,Bone Breaker,Spiked Bulwark,Hatchet Master,Slaughter,Born to Fight,Stamina,Endurance,Vigour,Lust for Carnage,Blunt Trauma,Fending,Bloodless,Eagle Eye,Warrior's Blood,Arcing Blows,Fusillade,Static Blows,Wandslinger,Elder Power,Nightstalker,Flaying,Claws of the Magpie,Claws of the Falcon,Grave Intentions,Death Attunement,Overcharge,Mind Drinker,Heart of Thunder,Lightning Walker,Fire Walker,Arsonist,Fingers of Frost,Frost Walker,Heart of Ice,Holy Fire,Arcane Potency,Amplify,Deep Thoughts,Nimbleness,Vampirism,Fangs of Frost,Wrecking Ball,One With Nature,Adder's Touch,Blade Master,Poisonous Fangs,From the Shadows,Life Raker,Intuition,Heavy Draw,Hunter's Gambit,Fervour,Frenetic,Savagery,King of the Hill,Herbalism,Mana Flows,Heart of Oak,Weathered Hunter,Depth Perception,Acuity,Ballistics,Executioner,Cleaving,Blood Siphon,Weapon Artistry,Ambidexterity,Heartseeker,Razor's Edge,Aspect of the Eagle,Butchery,Destroyer,Brutal Blade,Lethality,Master Fletcher,Testudo,Blade Barrier,Crystal Skin,Diamond Skin,Arcane Focus,Instability,Infused,Disemboweling,Divine Fervour,Throatseeker,Prowess,Beef,Physique,Master of the Arena,Heart of the Warrior,Art of the Gladiator,Agility,Alacrity,Precision,Proficiency,Expertise,Ancestral Knowledge,Deep Wisdom,Arcanist's Dominion,Thief's Craft,Wisdom of the Glade,Holy Dominion,Galvanic Hammer,Hard Knocks,Coordination,Finesse,Presage,Might,Dervish,Berserking,Twin Terrors,Doom Cast,Trickery,Sleight of Hand,Savage Wounds,Golem's Blood,Reflexes,Swagger,Heart of Flame,Revenge of the Hunted,Blast Radius,Lord of the Dead,Gravepact,Fury Bolts,Versatility,Sacrifice,Thick Skin,Written in Blood,Cruel Preparation,Faith and Steel,Whispers of Doom,Devotion,Discipline and Training,Leadership,Unnatural Calm,Purity of Flesh,Coldhearted Calculation,Fangs of the Viper,Assassination,Soul of Steel,Void Barrier,Cloth and Chain,Serpent Stance,Primal Spirit,Shamanistic Fury,Ironwood,Primal Manifestation,Totemic Zeal,Volatile Mines,Master Sapper,High Explosives,Clever Construction,Saboteur,Path of the Warrior,Path of the Savant,Path of the Hunter,Shaper,Sentinel,Harrier,Essence Infusion,Influence,Charisma,Sovereignty,Entropy,One with Evil,Corruption,Decay Ward,Strong Arm,Goliath,Soul Siphon,Clever Thief,Blood Drinker,Heart and Soul,Annihilation,Prism Weave,Skittering Runes,Hex Master,Practical Application,Piercing Shots,Essence Surge,Survivalist,Constitution,Foresight,Druidic Rite,Forces of Nature,Fatal Blade,Revelry,Avatar of the Hunt,Ash Frost and Storm,Mental Rapidity,Quick Recovery,Combat Stamina,Martial Experience,Dynamo,Battle Rouse,Exceptional Performance,Command of Steel,Arcane Chemistry,Profane Chemistry,Master of Blades,Hired Killer,Thrill Killer,Dreamer,Melding,True Strike,Potency of Will,Champion of the Cause,Quickstep,Ribcage Crusher,Breath of Flames,Breath of Lightning,Breath of Rime,Tempest Blast,Bravery,Defiance,Retribution,Sanctity,Light of Divinity,Righteous Decree,Robust,Barbarism,Juggernaut,Retaliation,Storm Weaver,Blade of Cunning,Tireless,Sanctum of Thought,Bloodletting,Flash Freeze,Graceful Assault,Hematophagy,Spirit Void,Essence Sap,Vitality Void,Rampart,Explosive Elements,Shaman's Dominion,Explosive Impact,Crackling Speed,Snowforged,Unstoppable,Unbreakable,Unyielding,Undeniable,Unflinching,Unrelenting,War Bringer,Rite of Ruin,Defy Pain,Flawless Savagery,Crave the Slaughter,Aspect of Carnage,Blitz,Arohongui Moon's Presence,"
$string&="Ngamahu Flame's Advance,Hinekora Death's Fury,Tasalio Cleansing Water,Tukohama War's Herald,Tawhoa Forest's Strength,Ramako Sun's Light,Valako Storm's Embrace,Way of the Poacher,Avatar of the Slaughter,Rapid Assault,Avatar of the Chase,Quartz Infusion,Avatar of the Veil,Focal Point,Ricochet,Endless Munitions,Far Shot,Rupturing,Gathering Winds,Occupying Force,Wind Ward,Nature's Adrenaline,Master Surgeon,Nature's Boon,Master Alchemist,Veteran Bowyer,Nature's Reprisal,Master Toxicist,Profane Bloom,Malediction,Vile Bastion,Void Beacon,Forbidden Power,Withering Presence,Frigid Wake,Liege of the Primordial,Mastermind of Discord,Heart of Destruction,Bastion of Elements,Elemancer,Shaper of Flames,Shaper of Storms,Shaper of Winter,Mindless Aggression,Unnatural Strength,Bone Barrier,Mistress of Sacrifice,Essence Glutton,Commander of Darkness,Plaguebringer,Corpse Pact,Headsman,Overwhelm,Bane of Legends,Endless Hunger,Brutal Fervour,Impact,Masterful Form,Gratuitous Violence,Blood in the Eyes,Outmatch and Outlast,Painforged,Violent Retaliation,Reigning Veteran,Arena Challenger,Fortitude,Unstoppable Hero,Conqueror,Worthy Foe,Inspirational,First to Strike Last to Fall,Master of Metal,Righteous Providence,Inevitable Judgement,Augury of Penitence,Sanctuary,Pious Path,Instruments of Zeal,Instruments of Virtue,Divine Guidance,Sanctuary of Thought,Pursuit of Faith,Ritual of Awakening,Conviction of Power,Illuminated Devotion,Arcane Blessing,Sign of Purpose,Time of Need,Radiant Faith,Bastion of Hope,Harmony of Purpose,Unwavering Faith,Radiant Crusade,Unwavering Crusade,Unstable Infusion,Deadly Infusion,Ambush and Assassinate,Opportunistic,Toxic Delivery,Noxious Strike,Mistwalker,Swift Killer,Patient Reaper,Heartstopper,Escape Artist,Prolonged Pain,Weave the Arcane,Harness the Void,Pyromaniac,Born in the Shadows,Explosives Expert,Bomb Specialist,Perfect Crime,Demolitions Specialist,Chain Reaction,Will of Blades,Path of the Ranger,Path of the Witch,Path of the Marauder,Path of the Duelist,Path of the Shadow,Path of the Templar,Marauder Ascendancy,Ranger Ascendancy,Witch Ascendancy,Duelist Ascendancy,Templar Ascendancy,Shadow Ascendancy,Growth and Decay,Atrophy,Force Shaper,Aspect of the Lynx,Fatal Toxins,Elemental Focus,Unstable Munitions,Hasty Reconstruction,Expeditious Munitions,Destructive Apparatus,Overcharged,Winter Spirit,Primeval Force,Insightfulness,Counterweight,Dirty Techniques,Toxic Strikes,Cannibalistic Rite,Devastating Devices,Righteous Army,Spiritual Command,Redemption,Spiritual Aid,Admonisher,Natural Authority,Arcane Will,Runesmith,Explosive Runes,Ethereal Feast,Light Eater,Taste for Blood,Tolerance,Divine Judgement,Divine Fury,Divine Wrath,Resourcefulness,Soul Thief,Mysticism,Dark Arts,Enigmatic Defence,Enigmatic Reach,Arcane Guarding,Arcane Sanctuary,Arcane Expanse,Swift Venoms,Gladiator's Perseverance,Brinkmanship,Fleetfoot,Silent Steps,Freedom of Movement,Inexorable,Adamant,Dismembering,Steadfast,Season of Ice,Inveterate,Merciless Skewering,Forceful Skewering,Magmatic Strikes,Dazzling Strikes,Disciple of the Slaughter,Disciple of the Unyielding,Longshot,Utmost Swiftness,Utmost Might,Utmost Intellect,Prismatic Skin,Feller of Foes,Pain Forger,Courage,Blacksmith's Clout,Spinecruncher,Entrench,Bladedancer,Farsight,Claws of the Hawk,Backstabbing,Wasting,Disintegration,Titanic Impacts,Kinetic Impacts,Aggressive Bastion,Safeguard,Warrior Training,Steelwood Stance,One with the River,Deadly Draw,Arcane Capacitor,Carrion,Disciple of the Forbidden,Prodigal Perfection,Mystic Bulwark,Essence Extraction,Ravenous Horde,"
$string&="Enduring Bond,Fearsome Force,Indomitable Army,Inspiring Bond,Golem Commander,Field Medicine,Blast Waves,Successive Detonations,Efficient Explosives,Searing Heat,Dire Torment,Watchtowers,Surveillance,Panopticon,Powerful Bond,Burning Brutality,Deep Breaths,Measured Fury,Unfaltering,Discord Artisan,Adjacent Animosity,Window of Opportunity,Undertaker,Bannerman,Instinct,Assured Strike,Anointed Flesh,Harpooner,Serpentine Spellslinger,Forethought,Infused Flesh,Brand Equity,Trick Shot,Split Shot,Deflection,Replenishing Remedies,Acrimony,Harvester of Foes,Malicious Intent,Marked for Death,Mark the Prey,Hearty,Vanquisher,Relentless,Veteran Soldier,Asylum,Careful Conservationist,Natural Remedies,Bastion Breaker,Way of the Warrior,Deadly Inclinations,Mystic Talents,Heart of Darkness,Vengeant Cascade,Tribal Fury,Tenacity,Tranquility,Crusader,Persistence,Hardened Scars,Cleansed Thoughts,Aspect of Stone"

Global $chosenlistNum = 0
$aArray = StringSplit($string,',',2)


$sList = ""
For $i = 0 To UBound($aArray) - 1
    $sList &= "|" & $aArray[$i]
Next
$AllPassiveArray = StringSplit($sList,'|',2)

$hCombo = GUICtrlCreateCombo("", 10, 30, 180, 25)
GUICtrlSetData($hCombo, $sList)

$add = GUICtrlCreateButton("Add",195,30,40,25)

$PassiveList=GUICtrlCreateEdit("",10,112,180,195)

GUICtrlCreateLabel("Choose Timeless Jewel",270,10,150,25)
$jewellist = "Elegant Hubris|Brutal Restraint|Lethal Pride|Militant Faith|Glorious Vanity"
$JewelCombo = GUICtrlCreateCombo("", 260, 40, 150, 25)
GUICtrlSetData($JewelCombo, $jewellist)


$pridelist ="base fire damage resistance %|base life leech from attack damage permyriad|base max fortification|base self critical strike multiplier -%|base strength|base stun duration +%|base stun threshold reduction +%|burn damage +%|chance to deal double damage %|chance to intimidate on hit %|endurance charge on kill %|faster burn %|life regeneration rate per minute %|maximum life +%|melee critical strike chance +%|melee damage +%|melee weapon critical strike multiplier +|physical damage % to add as fire|physical damage +%|physical damage reduction rating +%|physical damage taken % as fire|strength +%|summon totem cast speed +%|totem damage +%|warcry buff effect +%"
$hubrislist = "Axiom Warden|Baleful Augmentation|Bloody Flowers' Rebellion|Brutal Execution|Chitus' Heart|City Walls|Crematorium Worker|Dialla's Wit|Discerning Taste|Eternal Adaptiveness|Eternal Bloodlust|Eternal Dominance|Eternal Exploitation|Eternal Fervour|Eternal Fortitude|Eternal Resilience|Eternal Separation|Eternal Subjugation|Flawless Execution|Freshly Brewed|Gemling Ambush|Gemling Inquisition|Gemling Training|Geofri's End|Gleaming Legion|Laureate|Lioneye's Focus|Night of a Thousand Ribbons|Pooled Resources|Purity Rebel|Rigwald's Might|Rites of Lunaris|Rites of Solaris|Robust Diet|Rural Life|Sceptre Pinnacle|Secret Tunnels|Shadowy Streets|Slum Lord|Street Urchin|Superiority|Virtue Gem Surgery|Voll's Coup|War Games|With Eyes Open"
$restraintlist = "base dexterity|base avoid stun %|evasion rating +%|charges gained +%|minion movement speed +%|elemental damage +%|add frenzy charge on kill % chance|base poison damage +%|projectile damage +%|base elemental status ailment duration +%|non curse aura effect +%|critical strike chance +%|global chance to blind on hit %|base cold damage resistance %|base movement velocity +%|attack and cast speed +%|minion damage +%|maximum life +%|faster poison %|accuracy rating +%|non damaging ailment effect +%|dexterity +%|onslaught buff duration on kill ms|physical damage % to add as cold|gain alchemists genius on flask use %"
$faithlist = "Calming Devotion|Cloistered|Enduring Faith|Frenzied Faith|Heated Devotion|Intolerance of Sin|Martyr's Might|Powerful Faith|Smite the Heretical|Smite the Ignorant|Smite the Wicked|Thoughts and Prayers|Thundrous Devotion|Zealot|base_devotion"
$vanitylist = "Ancient Hex|Automaton Studies|Blood-Quenched Bulwark|Bloody Savagery|Commanding Presence|Construct Studies|Cult of Chaos|Cult of Fire|Cult of Ice|Cult of Lightning|Energy Flow Studies|Exquisite Pain|Flesh to Flames|Flesh to Frost|Flesh to Lightning|Flesh Worship|Hierarchy|Jungle Paths|Legacy of the Vaal|Might of the Vaal|Revitalising Darkness|Revitalising Flames|Revitalising Frost|Revitalising Lightning|Revitalising Winds|Ritual of Flesh|Ritual of Immolation|Ritual of Memory|Ritual of Might|Ritual of Shadows|Ritual of Stillness|Ritual of Thunder|Soul Worship|Temple Paths|Thaumaturgical Aptitude|Thaumaturgical Protection"



$nearCleaving = StringReplace("Aggressive Bastion,Cleaving,Spiked Bulwark,Slaughter,Harpooner,Savage Wounds,Hearty,Robust,Juggernaut,Strong Arm,Stamina,Barbarism,Cannibalistic Rite,Disemboweling,Lust for Carnage,Warrior Training,Diamond Skin",',',@CRLF)
$nearMoM = StringReplace("Asylum,Enduring Bond,Arcanist's Dominion,Anointed Flesh,Quick Recovery,Essence Infusion,Fire Walker,Annihilation,Essence Extraction",',',@CRLF)
$nearSupremeEgo = StringReplace("Charisma,Master Sapper,Dire Torment,True Strike,Adder's Touch,Wasting,Overcharged,Void Barrier,Ballistics,Replenishing Remedies,Revenge of the Hunted,Taste for Blood",',',@CRLF)
$nearPainAttunement = StringReplace("Nimbleness,Tolerance,Vampirism,Melding,Undertaker,Deep Wisdom,Grave Intentions",',',@CRLF)
$nearWindDancer = StringReplace("Quickstep,Weapon Artistry,Swift Venoms,Flash Freeze,Silent Steps,Herbalism,Survivalist,Aspect of the Lynx,Careful Conservationist,Intuition,Winter Spirit,Trick Shot,Fervour,King of the Hill,Acuity,Master Fletcher,Vengeant Cascade,Inveterate,Heartseeker",',',@CRLF)
$nearGhostDance = StringReplace("From the Shadows,Clever Thief,Backstabbing,Claws of the Hawk,One with Evil,Coldhearted Calculation,Infused,Blood Drinker,Soul Thief,Will of Blades,Flaying,Resourcefulness,Frenetic,Elemental Focus,Mind Drinker,Fangs of the Viper,Saboteur,Master of Blades,Depth Perception,Claws of the Magpie,Sleight of Hand",',',@CRLF)
$nearIronGrip = StringReplace("Window of Opportunity,Battle Rouse,Path of the Warrior,Sentinel,Path of the Hunter,Arcane Chemistry,Malicious Intent,Reflexes,Hired Killer,Exceptional Performance,Constitution,Totemic Zeal",',',@CRLF)
$nearUnwaveringStance = StringReplace("Eagle Eye,Berserking,Bloodletting,Martial Experience,Admonisher,Command of Steel,Prismatic Skin",',',@CRLF)
$nearIronWill = StringReplace("Potency of Will,Foresight,Dreamer,Path of the Warrior,Decay Ward,Forethought,Relentless,Malicious Intent,Path of the Savant,Inspiring Bond,Ash Frost and Storm,Veteran Soldier,Constitution,Totemic Zeal,Shaper",',',@CRLF)
$nearSolipsism = StringReplace("Potency of Will,Foresight,Window of Opportunity,Path of the Hunter,Destructive Apparatus,True Strike,Harrier,Path of the Savant,Reflexes,Inspiring Bond,Thrill Killer,Hired Killer,Exceptional Performance,Leadership",',',@CRLF)
$nearElementalEquilibrium = StringReplace("Avatar of the Hunt,Burning Brutality,Crystal Skin,Profane Chemistry,Heavy Draw,Art of the Gladiator,Deadly Draw,Weathered Hunter,Hardened Scars,Gladiator's Perseverance",',',@CRLF)
$nearZealotsOath = StringReplace("Might,Arcane Guarding,Death Attunement,Serpent Stance,Acrimony,Corruption,Fearsome Force,Hex Master,Unnatural Calm,Agility,Prism Weave,Blunt Trauma,Enigmatic Reach",',',@CRLF)
$nearPointBlank = StringReplace("Twin Terrors,Dazzling Strikes,Longshot,Thick Skin,Marked for Death,Feller of Foes,Blade Barrier,Fangs of Frost,Utmost Swiftness,Aspect of Stone,Bladedancer",',',@CRLF)
$nearDivineShield = StringReplace("Skull Cracking,Vanquisher,Sanctum of Thought,Counterweight,Bone Breaker,Persistence,Whirling Barrier,Smashing Strikes,Shamanistic Fury,Disemboweling",',',@CRLF)
$nearCallToArms = StringReplace("Executioner,Steadfast,Tribal Fury,Lava Lash,Blade of Cunning,Bastion Breaker",',',@CRLF)
$nearMeasuredFury = StringReplace("Surveillance,Golem's Blood,Vigour,Revelry,Deflection,Assured Strike,Cloth and Chain,Savagery,Ribcage Crusher,Dervish,Titanic Impacts,Master of the Arena,Destroyer,Measured Fury,Testudo,Bravery,Art of the Gladiator,Adamant,Defiance,Mana Flows,Dirty Techniques,Fury Bolts",',',@CRLF)
$nearPerfectAgony = StringReplace("From the Shadows,Forces of Nature,Split Shot,Clever Thief,Hunter's Gambit,Silent Steps,Piercing Shots,Survivalist,Fatal Toxins,Careful Conservationist,Trick Shot,Vengeant Cascade,Inveterate,Heartseeker",',',@CRLF)
$nearTheAgnostic = StringReplace("Endurance,Divine Judgement,Divine Wrath,Runesmith,Sanctum of Thought,Divine Fervour,Holy Dominion,Overcharge,Faith and Steel,Devotion,Divine Fury,Arcane Capacitor,Smashing Strikes,Light of Divinity",',',@CRLF)
$nearEternalYouth = StringReplace("Sanctuary,Combat Stamina,Dynamo,Sanctity,Gravepact,Expertise,Steelwood Stance,Powerful Bond,Deep Breaths,Ancestral Knowledge,Blacksmith's Clout",',',@CRLF)
$nearEldritchBattery = StringReplace("Arcing Blows,Light Eater,Physique,Influence,Fusillade,Whispers of Doom,Alacrity,Searing Heat,Elder Power,Efficient Explosives,Mysticism,Successive Detonations,Throatseeker,Disintegration,Cleansed Thoughts,Utmost Intellect",',',@CRLF)
$nearDoomsday = StringReplace("Enigmatic Defence,Heart of Ice,Mental Rapidity,Prodigal Perfection,Breath of Lightning,Breath of Flames,Skittering Runes,Mystic Bulwark,Instability,Breath of Rime,Cruel Preparation,Wandslinger,Deep Thoughts,Arcane Will,Lord of the Dead,Golem Commander,Discord Artisan,Infused Flesh,Presage,Frost Walker,Heart of Thunder,Essence Surge",',',@CRLF)
$nearList = "61419, near: Doomsday|26725, near: Cleaving|36634, near: Mind Over Matter|33989, near: Supreme Ego|41263, near: Pain Attunement|60735, near: Wind Dancer|61834, near: Ghost Dance|31683, near: Iron Grip|28475, near: Unwavering Stance|6230, near: Iron Will|48768, near: Solipsism|34483, near: Elemental Equilibrium|7960, near: Zealots Oath|46882, near: Point Blank|55190, near: Divine Shield|2491, near: Call to Arms|54127, near: Measured Fury|32763, near: Perfect Agony|26196, near: The Agnostic|33631, near: Eternal Youth|21984, near: Eldritch Battery"

$nearcombo = GUICtrlCreateCombo("", 10, 80, 180, 25)
GUICtrlSetData($nearcombo, $nearList)





GUICtrlCreateLabel("Choose what you want to get in those passives",235,100,200,50)
$jewelchangecombo = GUICtrlCreateCombo("", 220, 140, 230, 25)
$add2 = GUICtrlCreateButton("Add",310,170,40,25)

GUICtrlCreateLabel("Counter",307,220,50,25)
$counter = GUICtrlCreateInput("0",305,240,50,25)

GUICtrlCreateLabel("Chosen",580,10,200,25)
GUICtrlCreateLabel("Min. Count",730,5,50,40)
$Chosen1 = GUICtrlCreateInput("",500,40,200,25,$ES_RIGHT)
$chosen1count = GUICtrlCreateInput("0",735,40,25,25)

$Chosen2 = GUICtrlCreateInput("",500,70,200,25,$ES_RIGHT)
$chosen2count = GUICtrlCreateInput("0",735,70,25,25)

$Chosen3 = GUICtrlCreateInput("",500,100,200,25,$ES_RIGHT)
$chosen3count = GUICtrlCreateInput("0",735,100,25,25)

$Chosen4 = GUICtrlCreateInput("",500,130,200,25,$ES_RIGHT)
$chosen4count = GUICtrlCreateInput("0",735,130,25,25)

$Chosen5 = GUICtrlCreateInput("",500,160,200,25,$ES_RIGHT)
$chosen5count = GUICtrlCreateInput("0",735,160,25,25)

$Chosen6 = GUICtrlCreateInput("",500,190,200,25,$ES_RIGHT)
$chosen6count = GUICtrlCreateInput("0",735,190,25,25)

$Chosen7 = GUICtrlCreateInput("",500,220,200,25,$ES_RIGHT)
$chosen7count = GUICtrlCreateInput("0",735,220,25,25)

$Chosen8 = GUICtrlCreateInput("",500,250,200,25,$ES_RIGHT)
$chosen8count = GUICtrlCreateInput("0",735,250,25,25)

$Chosen9 = GUICtrlCreateInput("",500,280,200,25,$ES_RIGHT)
$chosen9count = GUICtrlCreateInput("0",735,280,25,25)

$Chosen10 = GUICtrlCreateInput("",500,310,200,25,$ES_RIGHT)
$chosen10count = GUICtrlCreateInput("0",735,310,25,25)
Global $AllChosen1to10 = [$Chosen1,$Chosen2,$Chosen3,$Chosen4,$Chosen5,$Chosen6,$Chosen7,$Chosen8,$Chosen9,$Chosen10]
Global $AllChosenCount = [$chosen1count,$chosen2count,$chosen3count,$chosen4count,$chosen5count,$chosen6count,$chosen7count,$chosen8count,$chosen9count,$chosen10count]

GUICtrlCreateLabel("Total count[minimum total]",500,350,155,25)
$totalminimum = GUICtrlCreateInput("1",680,345,25,25)
$question = GUICtrlCreateButton("?",655,345,25,25)

$save = GUICtrlCreateButton("Save current configs",500,380,250,50)
$load = GUICtrlCreateButton("Load saved configs",500,450,250,50)


GUICtrlCreateLabel('1',710,42,25,25)
GUICtrlCreateLabel('2',710,72,25,25)
GUICtrlCreateLabel('3',710,102,25,25)
GUICtrlCreateLabel('4',710,132,25,25)
GUICtrlCreateLabel('5',710,162,25,25)
GUICtrlCreateLabel('6',710,192,25,25)
GUICtrlCreateLabel('7',710,222,25,25)
GUICtrlCreateLabel('8',710,252,25,25)
GUICtrlCreateLabel('9',710,282,25,25)
GUICtrlCreateLabel('10',710,312,25,25)


$GO = GUICtrlCreateButton("GO!",200,280,280,30)
$output=GUICtrlCreateEdit("",10,320,470,200,BitOR($WS_VSCROLL,$ES_AUTOVSCROLL,$ES_READONLY))

GUISetState(@SW_SHOW, $hGUI)


While 1
	Switch GUIGetMsg()
		Case $GUI_EVENT_CLOSE
			Exit
		Case $nearcombo
			GUICtrlSetData($PassiveList,'')
			if GUICtrlRead($nearcombo) == '26725, near: Cleaving' Then GUICtrlSetData($PassiveList, $nearCleaving)
			if GUICtrlRead($nearcombo) == '36634, near: Mind Over Matter' Then GUICtrlSetData($PassiveList, $nearMoM)
			if GUICtrlRead($nearcombo) == '33989, near: Supreme Ego' Then GUICtrlSetData($PassiveList, $nearSupremeEgo)
			if GUICtrlRead($nearcombo) == '41263, near: Pain Attunement' Then GUICtrlSetData($PassiveList, $nearPainAttunement)
			if GUICtrlRead($nearcombo) == '60735, near: Wind Dancer' Then GUICtrlSetData($PassiveList, $nearWindDancer)
			if GUICtrlRead($nearcombo) == '61834, near: Ghost Dance' Then GUICtrlSetData($PassiveList, $nearGhostDance)
			if GUICtrlRead($nearcombo) == '31683, near: Iron Grip' Then GUICtrlSetData($PassiveList, $nearIronGrip)
			if GUICtrlRead($nearcombo) == '28475, near: Unwavering Stance' Then GUICtrlSetData($PassiveList, $nearUnwaveringStance)
			if GUICtrlRead($nearcombo) == '6230, near: Iron Will' Then GUICtrlSetData($PassiveList, $nearIronWill)
			if GUICtrlRead($nearcombo) == '48768, near: Solipsism' Then GUICtrlSetData($PassiveList, $nearSolipsism)
			if GUICtrlRead($nearcombo) == '34483, near: Elemental Equilibrium' Then GUICtrlSetData($PassiveList, $nearElementalEquilibrium)
			if GUICtrlRead($nearcombo) == '7960, near: Zealots Oath' Then GUICtrlSetData($PassiveList, $nearZealotsOath)
			if GUICtrlRead($nearcombo) == '46882, near: Point Blank' Then GUICtrlSetData($PassiveList, $nearPointBlank)
			if GUICtrlRead($nearcombo) == '55190, near: Divine Shield' Then GUICtrlSetData($PassiveList, $nearDivineShield)
			if GUICtrlRead($nearcombo) == '2491, near: Call to Arms' Then GUICtrlSetData($PassiveList, $nearCallToArms)
			if GUICtrlRead($nearcombo) == '54127, near: Measured Fury' Then GUICtrlSetData($PassiveList, $nearMeasuredFury)
			if GUICtrlRead($nearcombo) == '32763, near: Perfect Agony' Then GUICtrlSetData($PassiveList, $nearPerfectAgony)
			if GUICtrlRead($nearcombo) == '26196, near: The Agnostic' Then GUICtrlSetData($PassiveList, $nearTheAgnostic)
			if GUICtrlRead($nearcombo) == '33631, near: Eternal Youth' Then GUICtrlSetData($PassiveList, $nearEternalYouth)
			if GUICtrlRead($nearcombo) == '21984, near: Eldritch Battery' Then GUICtrlSetData($PassiveList, $nearEldritchBattery)
			if GUICtrlRead($nearcombo) == '61419, near: Doomsday' Then GUICtrlSetData($PassiveList, $nearDoomsday)

		Case $question
			MsgBox(0,'Note',"It doesn't have to be total of the above 10 mod counts. Its just to filter out lower combinations. Let's say you want 2 aura atleast and 3 of the other good mods. Put in 2 as minimum count beside aura (above) and then put in 5 [2 + 3] in How many[minimum total] so it doesn't out put combinations like 2+(1+1) etc and only gives 2+(1+1+1) as minimum.")
		Case $save
			$savename= InputBox("Prompt","Enter name to save as:")
			if $savename <> '' Then
				IniWrite($savename,'General','PassiveNames',stringreplace(GUICtrlRead($PassiveList),@CRLF,'|||'))
				IniWrite($savename,'General','TimelessJewel',GUICtrlRead($JewelCombo))
				IniWrite($savename,'General','output',StringReplace(GUICtrlRead($output),@CRLF,'|||'))
				IniWrite($savename,'General','Chosen1',GUICtrlRead($Chosen1))
				IniWrite($savename,'General','Chosen2',GUICtrlRead($Chosen2))
				IniWrite($savename,'General','Chosen3',GUICtrlRead($Chosen3))
				IniWrite($savename,'General','Chosen4',GUICtrlRead($Chosen4))
				IniWrite($savename,'General','Chosen5',GUICtrlRead($Chosen5))
				IniWrite($savename,'General','Chosen6',GUICtrlRead($Chosen6))
				IniWrite($savename,'General','Chosen7',GUICtrlRead($Chosen7))
				IniWrite($savename,'General','Chosen8',GUICtrlRead($Chosen8))
				IniWrite($savename,'General','Chosen9',GUICtrlRead($Chosen9))
				IniWrite($savename,'General','Chosen10',GUICtrlRead($Chosen10))
				IniWrite($savename,'General','chosen1value',GUICtrlRead($chosen1count))
				IniWrite($savename,'General','chosen2value',GUICtrlRead($chosen2count))
				IniWrite($savename,'General','chosen3value',GUICtrlRead($chosen3count))
				IniWrite($savename,'General','chosen4value',GUICtrlRead($chosen4count))
				IniWrite($savename,'General','chosen5value',GUICtrlRead($chosen5count))
				IniWrite($savename,'General','chosen6value',GUICtrlRead($chosen6count))
				IniWrite($savename,'General','chosen7value',GUICtrlRead($chosen7count))
				IniWrite($savename,'General','chosen8value',GUICtrlRead($chosen8count))
				IniWrite($savename,'General','chosen9value',GUICtrlRead($chosen9count))
				IniWrite($savename,'General','chosen10value',GUICtrlRead($chosen10count))
				IniWrite($savename,'General','totalmin',GUICtrlRead($totalminimum))
			EndIf
		Case $load
			$loadfile = FileOpenDialog("Choose the config",@ScriptDir,"All (*.*)")
			if $loadfile <> '' Then

				GUICtrlSetData($PassiveList,StringReplace(IniRead($loadfile,'General','PassiveNames',''),'|||',@CRLF))
				GUICtrlSetData($JewelCombo,IniRead($loadfile,'General','TimelessJewel',''))
				GUICtrlSetData($output,StringReplace(IniRead($loadfile,'General','output',''),'|||',@CRLF))
				GUICtrlSetData($Chosen1,IniRead($loadfile,'General','Chosen1',''))
				GUICtrlSetData($Chosen2,IniRead($loadfile,'General','Chosen2',''))
				GUICtrlSetData($Chosen3,IniRead($loadfile,'General','Chosen3',''))
				GUICtrlSetData($Chosen4,IniRead($loadfile,'General','Chosen4',''))
				GUICtrlSetData($Chosen5,IniRead($loadfile,'General','Chosen5',''))
				GUICtrlSetData($Chosen6,IniRead($loadfile,'General','Chosen6',''))
				GUICtrlSetData($Chosen7,IniRead($loadfile,'General','Chosen7',''))
				GUICtrlSetData($Chosen8,IniRead($loadfile,'General','Chosen8',''))
				GUICtrlSetData($Chosen9,IniRead($loadfile,'General','Chosen9',''))
				GUICtrlSetData($Chosen10,IniRead($loadfile,'General','Chosen10',''))
				GUICtrlSetData($chosen1count,IniRead($loadfile,'General','chosen1value',''))
				GUICtrlSetData($chosen2count,IniRead($loadfile,'General','chosen2value',''))
				GUICtrlSetData($chosen3count,IniRead($loadfile,'General','chosen3value',''))
				GUICtrlSetData($chosen4count,IniRead($loadfile,'General','chosen4value',''))
				GUICtrlSetData($chosen5count,IniRead($loadfile,'General','chosen5value',''))
				GUICtrlSetData($chosen6count,IniRead($loadfile,'General','chosen6value',''))
				GUICtrlSetData($chosen7count,IniRead($loadfile,'General','chosen7value',''))
				GUICtrlSetData($chosen8count,IniRead($loadfile,'General','chosen8value',''))
				GUICtrlSetData($chosen9count,IniRead($loadfile,'General','chosen9value',''))
				GUICtrlSetData($chosen10count,IniRead($loadfile,'General','chosen10value',''))
				GUICtrlSetData($totalminimum,IniRead($loadfile,'General','totalmin','1'))
			EndIf
		Case $add
			GUICtrlSetState($hCombo, $GUI_FOCUS)
			GUICtrlSetData($PassiveList,GUICtrlRead($PassiveList)&guictrlread($hCombo)&@CRLF)
		Case $add2
			if $chosenlistNum <= 9 then

				$getall = ''
				for $element in $AllChosen1to10
					$getall &= GUICtrlRead($element)&'|'
				Next

				if not StringInStr($getall,guictrlread($jewelchangecombo)) Then
					GUICtrlSetState($jewelchangecombo, $GUI_FOCUS)
					GUICtrlSetData($AllChosen1to10[$chosenlistNum],guictrlread($jewelchangecombo))
					$chosenlistNum += 1
				Else
					MsgBox(0,'Notification', 'That mod is already chosen, please try other')
				EndIf
			Else
				MsgBox(0,'Error', 'Limit of 10 reached')
			EndIf


		Case $JewelCombo
			GUICtrlSetData($jewelchangecombo,'')

			for $element in $AllChosen1to10
				GUICtrlSetData($element,'')
			Next
			for $element in $AllChosenCount
				GUICtrlSetData($element,'0')
			Next
			$chosenlistNum = 0
			GUICtrlSetState($jewelchangecombo, $GUI_FOCUS)
			if GUICtrlRead($JewelCombo) == 'Elegant Hubris' Then GUICtrlSetData($jewelchangecombo, $hubrislist)
			if GUICtrlRead($JewelCombo) == 'Brutal Restraint' Then GUICtrlSetData($jewelchangecombo, $restraintlist)
			if GUICtrlRead($JewelCombo) == 'Lethal Pride' Then GUICtrlSetData($jewelchangecombo, $pridelist)
			if GUICtrlRead($JewelCombo) == 'Militant Faith' Then GUICtrlSetData($jewelchangecombo, $faithlist)
			if GUICtrlRead($JewelCombo) == 'Glorious Vanity' Then GUICtrlSetData($jewelchangecombo, $vanitylist)
		Case $GO
;~ 			ToolTip("Running, Please wait...")
			GUICtrlSetData($output,'')
			$chosenpassivelist = StringSplit(GUICtrlRead($PassiveList),@CRLF,2)
			if GUICtrlRead($JewelCombo) == 'Elegant Hubris' Then $filetoread = "ElegantHubrisSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Brutal Restraint' Then $filetoread = "BrutalRestraintSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Lethal Pride' Then $filetoread = "LethalPrideSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Militant Faith' Then $filetoread = "MilitantFaithSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Glorious Vanity' Then $filetoread = "GloriousVanitySeeds.csv"

			$array = FileReadToArray($filetoread)
			if $array = '' Then
				MsgBox(0,'Error', 'Please download the 4 CSV files from first zip in release section of GITHUB and put it in the same folder as this app.')
				Exit
			EndIf
			for $line in $array
				if $line <> '' Then
					GUICtrlSendMsg($output, 0xB7, 0, 0)
					$FOUND = 0
					Global $FOUND[10] = [0,0,0,0,0,0,0,0,0,0]
					$splitline = StringSplit($line,',')
					if $splitline[1] <> '' Then
						GUICtrlSetData($counter,$splitline[1])
;~ 						ConsoleWrite('####################################')
;~ 						ConsoleWrite(@CRLF)
;~ 						ConsoleWrite($splitline[1])

						for $checkpassives in StringSplit(GUICtrlRead($PassiveList),@CRLF,2)
							if $checkpassives <> '' Then
;~ 								ConsoleWrite('*******************')
;~ 								ConsoleWrite(@CRLF)
;~ 								ConsoleWrite($checkpassives)
;~ 								ConsoleWrite(@CRLF)
								$checkcolumn = _ArraySearch($AllPassiveArray,$checkpassives)
;~ 								ConsoleWrite($checkcolumn+2)
;~ 								ConsoleWrite(@CRLF)
;~ 								ConsoleWrite('*******************')
								$chosennum = 0
								for $chose in $AllChosen1to10
									$chosen = GUICtrlRead($chose)
;~ 		 							ConsoleWrite($chosen)
;~ 	 								ConsoleWrite(@CRLF)
									If $chosen <> '' Then
;~ 										ConsoleWrite(@CRLF)
;~ 										ConsoleWrite($splitline[$checkcolumn+2])
;~ 										ConsoleWrite(@CRLF)
;~ 										ConsoleWrite(StringReplace($chosen,' ','_'))
;~ 										ConsoleWrite(@CRLF)

										if $splitline[$checkcolumn+2] == StringReplace($chosen,' ','_') or $splitline[$checkcolumn+2] == $chosen Then
;~ 											ConsoleWrite('FOUND-'&$splitline[1]&'-'&$AllPassiveArray[$checkcolumn]&'-'&$chosen)
;~ 											ConsoleWrite(@CRLF)
											$FOUND[$chosennum] +=1
;~ 											ConsoleWrite('found = '&$FOUND[$chosennum])
;~ 											ConsoleWrite(@CRLF)
										EndIf
										$chosennum+=1
									EndIf
								Next
							EndIf
						Next
						$FOUNDTOTAL = 0
						For $j = 0 to UBound($FOUND) - 1
							$FOUNDTOTAL = $FOUNDTOTAL + $FOUND[$j]
						Next

						if $FOUNDTOTAL >= GUICtrlRead($totalminimum) Then
;~ 							ConsoleWrite($FOUNDTOTAL)
							If $FOUND[0] >= GUICtrlRead($chosen1count) And $FOUND[1] >= GUICtrlRead($chosen2count) And $FOUND[2] >= GUICtrlRead($chosen3count) And $FOUND[3] >= GUICtrlRead($chosen4count) And $FOUND[4] >= GUICtrlRead($chosen5count) And $FOUND[5] >= GUICtrlRead($chosen6count) And $FOUND[6] >= GUICtrlRead($chosen7count) And $FOUND[7] >= GUICtrlRead($chosen8count) And $FOUND[8] >= GUICtrlRead($chosen9count) And $FOUND[9] >= GUICtrlRead($chosen10count) Then
								GUICtrlSetData($output,GUICtrlRead($output)&$splitline[1]&' seed -FOUND - ('&$FOUND[0]&','&$FOUND[1]&','&$FOUND[2]&','&$FOUND[3]&','&$FOUND[4]&','&$FOUND[5]&','&$FOUND[6]&','&$FOUND[7]&','&$FOUND[8]&','&$FOUND[9]&')'&@CRLF)
							EndIf
						EndIf
					EndIf
				EndIf

			Next







;~ 		ToolTip('')
		GUICtrlSetData($counter,'DONE')
		MsgBox(0,'Search','DONE')

	EndSwitch

WEnd


