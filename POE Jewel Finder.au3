#Include <APIConstants.au3>
#include <File.au3>
#Include <Array.au3>
#include <WinAPITheme.au3>
#include <ColorConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <FileConstants.au3>



Local $hGUI = GUICreate("POE Jewel Finder",550,550) ;gui create
GUISetFont(10)
GUISetBkColor(0xFFFFFF)

GUICtrlCreateLabel("Choose Passive skills",10,10,200,25)
Global $string="Lava Lash,Whirling Barrier,Sanctuary,Smashing Strikes,Skull Cracking,Bone Breaker,Spiked Bulwark,Hatchet Master,Slaughter,Born to Fight,Stamina,Endurance,Vigour,Lust for Carnage,Blunt Trauma,Fending,Bloodless,Eagle Eye,Warrior's Blood,Arcing Blows,Fusillade,Static Blows,Wandslinger,Elder Power,Nightstalker,Flaying,Claws of the Magpie,Claws of the Falcon,Grave Intentions,Death Attunement,Overcharge,Mind Drinker,Heart of Thunder,Lightning Walker,Fire Walker,Arsonist,Fingers of Frost,Frost Walker,Heart of Ice,Holy Fire,Arcane Potency,Amplify,Deep Thoughts,Nimbleness,Vampirism,Fangs of Frost,Wrecking Ball,One With Nature,Adder's Touch,Blade Master,Poisonous Fangs,From the Shadows,Life Raker,Intuition,Heavy Draw,Hunter's Gambit,Fervour,Frenetic,Savagery,King of the Hill,Herbalism,Mana Flows,Heart of Oak,Weathered Hunter,Depth Perception,Acuity,Ballistics,Executioner,Cleaving,Blood Siphon,Weapon Artistry,Ambidexterity,Heartseeker,Razor's Edge,Aspect of the Eagle,Butchery,Destroyer,Brutal Blade,Lethality,Master Fletcher,Testudo,Blade Barrier,Crystal Skin,Diamond Skin,Arcane Focus,Instability,Infused,Disemboweling,Divine Fervour,Throatseeker,Prowess,Beef,Physique,Master of the Arena,Heart of the Warrior,Art of the Gladiator,Agility,Alacrity,Precision,Proficiency,Expertise,Ancestral Knowledge,Deep Wisdom,Arcanist's Dominion,Thief's Craft,Wisdom of the Glade,Holy Dominion,Galvanic Hammer,Hard Knocks,Coordination,Finesse,Presage,Might,Dervish,Berserking,Twin Terrors,Doom Cast,Trickery,Sleight of Hand,Savage Wounds,Golem's Blood,Reflexes,Swagger,Heart of Flame,Revenge of the Hunted,Blast Radius,Lord of the Dead,Gravepact,Fury Bolts,Versatility,Sacrifice,Thick Skin,Written in Blood,Cruel Preparation,Faith and Steel,Whispers of Doom,Devotion,Discipline and Training,Leadership,Unnatural Calm,Purity of Flesh,Coldhearted Calculation,Fangs of the Viper,Assassination,Soul of Steel,Void Barrier,Cloth and Chain,Serpent Stance,Primal Spirit,Shamanistic Fury,Ironwood,Primal Manifestation,Totemic Zeal,Volatile Mines,Master Sapper,High Explosives,Clever Construction,Saboteur,Path of the Warrior,Path of the Savant,Path of the Hunter,Shaper,Sentinel,Harrier,Essence Infusion,Influence,Charisma,Sovereignty,Entropy,One with Evil,Corruption,Decay Ward,Strong Arm,Goliath,Soul Siphon,Clever Thief,Blood Drinker,Heart and Soul,Annihilation,Prism Weave,Skittering Runes,Hex Master,Practical Application,Piercing Shots,Essence Surge,Survivalist,Constitution,Foresight,Druidic Rite,Forces of Nature,Fatal Blade,Revelry,Avatar of the Hunt,Ash, Frost and Storm,Mental Rapidity,Quick Recovery,Combat Stamina,Martial Experience,Dynamo,Battle Rouse,Exceptional Performance,Command of Steel,Arcane Chemistry,Profane Chemistry,Master of Blades,Hired Killer,Thrill Killer,Dreamer,Melding,True Strike,Potency of Will,Champion of the Cause,Quickstep,Ribcage Crusher,Breath of Flames,Breath of Lightning,Breath of Rime,Tempest Blast,Bravery,Defiance,Retribution,Sanctity,Light of Divinity,Righteous Decree,Robust,Barbarism,Juggernaut,Retaliation,Storm Weaver,Blade of Cunning,Tireless,Sanctum of Thought,Bloodletting,Flash Freeze,Graceful Assault,Hematophagy,Spirit Void,Essence Sap,Vitality Void,Rampart,Explosive Elements,Shaman's Dominion,Explosive Impact,Crackling Speed,Snowforged,Unstoppable,Unbreakable,Unyielding,Undeniable,Unflinching,Unrelenting,War Bringer,Rite of Ruin,Defy Pain,Flawless Savagery,Crave the Slaughter,Aspect of Carnage,Blitz,Arohongui, Moon's Presence,"
$string&="Ngamahu, Flame's Advance,Hinekora, Death's Fury,Tasalio, Cleansing Water,Tukohama, War's Herald,Tawhoa, Forest's Strength,Ramako, Sun's Light,Valako, Storm's Embrace,Way of the Poacher,Avatar of the Slaughter,Rapid Assault,Avatar of the Chase,Quartz Infusion,Avatar of the Veil,Focal Point,Ricochet,Endless Munitions,Far Shot,Rupturing,Gathering Winds,Occupying Force,Wind Ward,Nature's Adrenaline,Master Surgeon,Nature's Boon,Master Alchemist,Veteran Bowyer,Nature's Reprisal,Master Toxicist,Profane Bloom,Malediction,Vile Bastion,Void Beacon,Forbidden Power,Withering Presence,Frigid Wake,Liege of the Primordial,Mastermind of Discord,Heart of Destruction,Bastion of Elements,Elemancer,Shaper of Flames,Shaper of Storms,Shaper of Winter,Mindless Aggression,Unnatural Strength,Bone Barrier,Mistress of Sacrifice,Essence Glutton,Commander of Darkness,Plaguebringer,Corpse Pact,Headsman,Overwhelm,Bane of Legends,Endless Hunger,Brutal Fervour,Impact,Masterful Form,Gratuitous Violence,Blood in the Eyes,Outmatch and Outlast,Painforged,Violent Retaliation,Reigning Veteran,Arena Challenger,Fortitude,Unstoppable Hero,Conqueror,Worthy Foe,Inspirational,First to Strike, Last to Fall,Master of Metal,Righteous Providence,Inevitable Judgement,Augury of Penitence,Sanctuary,Pious Path,Instruments of Zeal,Instruments of Virtue,Divine Guidance,Sanctuary of Thought,Pursuit of Faith,Ritual of Awakening,Conviction of Power,Illuminated Devotion,Arcane Blessing,Sign of Purpose,Time of Need,Radiant Faith,Bastion of Hope,Harmony of Purpose,Unwavering Faith,Radiant Crusade,Unwavering Crusade,Unstable Infusion,Deadly Infusion,Ambush and Assassinate,Opportunistic,Toxic Delivery,Noxious Strike,Mistwalker,Swift Killer,Patient Reaper,Heartstopper,Escape Artist,Prolonged Pain,Weave the Arcane,Harness the Void,Pyromaniac,Born in the Shadows,Explosives Expert,Bomb Specialist,Perfect Crime,Demolitions Specialist,Chain Reaction,Will of Blades,Path of the Ranger,Path of the Witch,Path of the Marauder,Path of the Duelist,Path of the Shadow,Path of the Templar,Marauder Ascendancy,Ranger Ascendancy,Witch Ascendancy,Duelist Ascendancy,Templar Ascendancy,Shadow Ascendancy,Growth and Decay,Atrophy,Force Shaper,Aspect of the Lynx,Fatal Toxins,Elemental Focus,Unstable Munitions,Hasty Reconstruction,Expeditious Munitions,Destructive Apparatus,Overcharged,Winter Spirit,Primeval Force,Insightfulness,Counterweight,Dirty Techniques,Toxic Strikes,Cannibalistic Rite,Devastating Devices,Righteous Army,Spiritual Command,Redemption,Spiritual Aid,Admonisher,Natural Authority,Arcane Will,Runesmith,Explosive Runes,Ethereal Feast,Light Eater,Taste for Blood,Tolerance,Divine Judgement,Divine Fury,Divine Wrath,Resourcefulness,Soul Thief,Mysticism,Dark Arts,Enigmatic Defence,Enigmatic Reach,Arcane Guarding,Arcane Sanctuary,Arcane Expanse,Swift Venoms,Gladiator's Perseverance,Brinkmanship,Fleetfoot,Silent Steps,Freedom of Movement,Inexorable,Adamant,Dismembering,Steadfast,Season of Ice,Inveterate,Merciless Skewering,Forceful Skewering,Magmatic Strikes,Dazzling Strikes,Disciple of the Slaughter,Disciple of the Unyielding,Longshot,Utmost Swiftness,Utmost Might,Utmost Intellect,Prismatic Skin,Feller of Foes,Pain Forger,Courage,Blacksmith's Clout,Spinecruncher,Entrench,Bladedancer,Farsight,Claws of the Hawk,Backstabbing,Wasting,Disintegration,Titanic Impacts,Kinetic Impacts,Aggressive Bastion,Safeguard,Warrior Training,Steelwood Stance,One with the River,Deadly Draw,Arcane Capacitor,Carrion,Disciple of the Forbidden,Prodigal Perfection,Mystic Bulwark,Essence Extraction,Ravenous Horde,"
$string&="Enduring Bond,Fearsome Force,Indomitable Army,Inspiring Bond,Golem Commander,Field Medicine,Blast Waves,Successive Detonations,Efficient Explosives,Searing Heat,Dire Torment,Watchtowers,Surveillance,Panopticon,Powerful Bond,Burning Brutality,Deep Breaths,Measured Fury,Unfaltering,Discord Artisan,Adjacent Animosity,Window of Opportunity,Undertaker,Bannerman,Instinct,Assured Strike,Anointed Flesh,Harpooner,Serpentine Spellslinger,Forethought,Infused Flesh,Brand Equity,Trick Shot,Split Shot,Deflection,Replenishing Remedies,Acrimony,Harvester of Foes,Malicious Intent,Marked for Death,Mark the Prey,Hearty,Vanquisher,Relentless,Veteran Soldier,Asylum,Careful Conservationist,Natural Remedies,Bastion Breaker,Way of the Warrior,Deadly Inclinations,Mystic Talents,Heart of Darkness,Vengeant Cascade,Tribal Fury,Tenacity,Tranquility,Crusader,Persistence,Hardened Scars,Cleansed Thoughts,Aspect of Stone"


$aArray = StringSplit($string,',')


$sList = ""
For $i = 1 To UBound($aArray) - 1
    $sList &= "|" & $aArray[$i]
Next
$AllPassiveArray = StringSplit($sList,'|',2)
$hCombo = GUICtrlCreateCombo("", 10, 40, 200, 25)
GUICtrlSetData($hCombo, $sList)

$add = GUICtrlCreateButton("Add",220,40,40,25)

$PassiveList=GUICtrlCreateEdit("",10,70,200,200)

GUICtrlCreateLabel("Choose Timeless Jewel",300,10,200,25)
$jewellist = "Elegant Hubris|Brutal Restraint|Lethal Pride"
$JewelCombo = GUICtrlCreateCombo("", 300, 40, 150, 25)
GUICtrlSetData($JewelCombo, $jewellist)
$next1 = GUICtrlCreateButton("Next",470,40,50,25)

$pridelist ="base fire damage resistance %|base life leech from attack damage permyriad|base max fortification|base self critical strike multiplier -%|base strength|base stun duration +%|base stun threshold reduction +%|burn damage +%|chance to deal double damage %|chance to intimidate on hit %|endurance charge on kill %|faster burn %|life regeneration rate per minute %|maximum life +%|melee critical strike chance +%|melee damage +%|melee weapon critical strike multiplier +|physical damage % to add as fire|physical damage +%|physical damage reduction rating +%|physical damage taken % as fire|strength +%|summon totem cast speed +%|totem damage +%|warcry buff effect +%"
$hubrislist = "Axiom Warden|Baleful Augmentation|Bloody Flowers' Rebellion|Brutal Execution|Chitus' Heart|City Walls|Crematorium Worker|Dialla's Wit|Discerning Taste|Eternal Adaptiveness|Eternal Bloodlust|Eternal Dominance|Eternal Exploitation|Eternal Fervour|Eternal Fortitude|Eternal Resilience|Eternal Separation|Eternal Subjugation|Flawless Execution|Freshly Brewed|Gemling Ambush|Gemling Inquisition|Gemling Training|Geofri's End|Gleaming Legion|Laureate|Lioneye's Focus|Night of a Thousand Ribbons|Pooled Resources|Purity Rebel|Rigwald's Might|Rites of Lunaris|Rites of Solaris|Robust Diet|Rural Life|Sceptre Pinnacle|Secret Tunnels|Shadowy Streets|Slum Lord|Street Urchin|Superiority|Virtue Gem Surgery|Voll's Coup|War Games|With Eyes Open"
$restraintlist = "base dexterity|base avoid stun %|evasion rating +%|charges gained +%|minion movement speed +%|elemental damage +%|add frenzy charge on kill % chance|base poison damage +%|projectile damage +%|base elemental status ailment duration +%|non curse aura effect +%|critical strike chance +%|global chance to blind on hit %|base cold damage resistance %|base movement velocity +%|attack and cast speed +%|minion damage +%|maximum life +%|faster poison %|accuracy rating +%|non damaging ailment effect +%|dexterity +%|onslaught buff duration on kill ms|physical damage % to add as cold|gain alchemists genius on flask use %"
$faithlist = "Calming Devotion|Cloistered|Enduring Faith|Frenzied Faith|Heated Devotion|Intolerance of Sin|Martyr's Might|Powerful Faith|Smite the Heretical|Smite the Ignorant|Smite the Wicked|Thoughts and Prayers|Thundrous Devotion|Zealot|base_devotion"

GUICtrlCreateLabel("Choose what you want to get in those passives",300,80,200,50)
$jewelchangecombo = GUICtrlCreateCombo("", 300, 120, 230, 25)
$add2 = GUICtrlCreateButton("Add",390,150,40,25)
$ChosenList=GUICtrlCreateEdit("",300,190,230,80)

$GO = GUICtrlCreateButton("GO!",10,280,530,30)
$output=GUICtrlCreateEdit("",10,320,530,200)
GUICtrlCreateLabel('How many?',230,190,50,50)
$howmanyneed = GUICtrlCreateInput('3',230,230,25,25)
GUISetState(@SW_SHOW, $hGUI)


While 1
	Switch GUIGetMsg()
		Case $GUI_EVENT_CLOSE
			Exit
		Case $add
			GUICtrlSetState($hCombo, $GUI_FOCUS)
			GUICtrlSetData($PassiveList,GUICtrlRead($PassiveList)&guictrlread($hCombo)&@CRLF)
		Case $add2
			GUICtrlSetState($jewelchangecombo, $GUI_FOCUS)
			GUICtrlSetData($ChosenList,GUICtrlRead($ChosenList)&guictrlread($jewelchangecombo)&@CRLF)
		Case $next1
			GUICtrlSetData($jewelchangecombo,'')
			GUICtrlSetState($jewelchangecombo, $GUI_FOCUS)
			if GUICtrlRead($JewelCombo) == 'Elegant Hubris' Then GUICtrlSetData($jewelchangecombo, $hubrislist)
			if GUICtrlRead($JewelCombo) == 'Brutal Restraint' Then GUICtrlSetData($jewelchangecombo, $restraintlist)
			if GUICtrlRead($JewelCombo) == 'Lethal Pride' Then GUICtrlSetData($jewelchangecombo, $pridelist)
			if GUICtrlRead($JewelCombo) == 'Militant Faith' Then GUICtrlSetData($jewelchangecombo, $faithlist)
		Case $GO
			GUICtrlSetData($output,'')
			$chosenpassivelist = StringSplit(GUICtrlRead($PassiveList),@CRLF,2)
			if GUICtrlRead($JewelCombo) == 'Elegant Hubris' Then $filetoread = "ElegantHubrisSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Brutal Restraint' Then $filetoread = "BrutalRestraintSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Lethal Pride' Then $filetoread = "LethalPrideSeeds.csv"
			if GUICtrlRead($JewelCombo) == 'Militant Faith' Then $filetoread = "MilitantFaithSeeds.csv"

			$array = FileReadToArray($filetoread)

			for $line in $array
				if $line <> '' Then
					$FOUND = 0
					Global $FOUND[5] = [0,0,0,0,0]
					$splitline = StringSplit($line,',')
					if $splitline[1] <> '' Then
						for $checkpassives in StringSplit(GUICtrlRead($PassiveList),@CRLF,2)
							$checkcolumn = _ArraySearch($AllPassiveArray,$checkpassives)
	;~ 						ConsoleWrite($checkcolumn+2)
	;~ 						ConsoleWrite(@CRLF)
							$chosennum = 0
							for $chosen in StringSplit(guictrlread($ChosenList),@CRLF,2)
	;~ 							ConsoleWrite($chosen)
	;~ 							ConsoleWrite(@CRLF)
								If $chosen <> '' Then
									if $splitline[$checkcolumn+2] == StringReplace($chosen,' ','_') Then
										ConsoleWrite('FOUND-'&$splitline[1]&'-'&$AllPassiveArray[$checkcolumn])
										ConsoleWrite(@CRLF)
										$FOUND[$chosennum] +=1
										ConsoleWrite('found = '&$FOUND)
										ConsoleWrite(@CRLF)
									EndIf
									$chosennum+=1
								EndIf
							Next

						Next

						$FOUNDTOTAL = 0
						For $j = 0 to UBound($FOUND) - 1
							$FOUNDTOTAL = $FOUNDTOTAL + $FOUND[$j]
						Next

						If $FOUNDTOTAL >= GUICtrlRead($howmanyneed) Then
							GUICtrlSetData($output,GUICtrlRead($output)&$splitline[1]&' seed -FOUND - ('&$FOUND[0]&','&$FOUND[1]&','&$FOUND[2]&','&$FOUND[3]&','&$FOUND[4]&')'&@CRLF)
						EndIf
					EndIf
				EndIf

			Next








		MsgBox(0,'Search','DONE')
	EndSwitch

WEnd


