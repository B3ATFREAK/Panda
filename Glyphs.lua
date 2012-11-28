﻿
local L = Panda.locale
local panel = Panda.panel.panels[3]


local name = GetSpellInfo(45357)

local check = CreateFrame("CheckButton", "PandaGlyphProfit", panel, "OptionsCheckButtonTemplate")
check:SetWidth(22)
check:SetHeight(22)
check:SetPoint("TOPLEFT", Panda.panel, "BOTTOMLEFT", 185, 35)
check:SetScript("OnClick", function() Panda.showprofit = not Panda.showprofit; panel:Hide(); panel:Show() end)

local checklabel = check:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
checklabel:SetPoint("LEFT", check, "RIGHT", 5, 0)
checklabel:SetText("Show profit")

CreateFrame("Frame", nil, panel):SetScript("OnShow", function() if GetReagentCost then check:Show() else check:Hide() end end)


panel:RegisterFrame(MAJOR_GLYPHS, Panda.PanelFactory(45357,
[[79251 79254 83096 83107   0     0     0   79514   0   85684   0   85691 85692 84652   0   79731
    0     0     0   81956   0     0     0   79515   0     0   82345 85685 85687 85689
  61979 61978 63481   0     0     0     0     0     0     0     0     0     0     0     0   44680
  39343 43126 43425 41110 42745 42969 41539 42409 42454 42909 40906 87897 43534
    0     0   43421 45744 42753 42954 41524 42407 42464 42915 40915 87898 43542
    0     0   43415 43869 44684 45767 41529 42403 42472 42914 40912 87899 43547
    0     0   43419 41102 42739 42958 41526 42414 50077 42901 45603 87900 43533
    0     0   43431 41109 63539 42957 41517 42412 42460 42902 45604 87896 43552
    0     0   43430 41097 42752 42959 41538 42405 45782 42899 40920 87901 43537
    0     0   45793 41101 42748 42968 41518 42396 45783 42913 40908 85695
    0     0     0   41107 42754 42971 45777 42404   0   42917 40899 85696
    0     0     0   43867 44920 45766 41534 42417   0     0   40921 85697 85697
    0     0     0   43868 69773   0   41552 45757   0     0   44928 87892 85700
    0     0     0   45745   0     0     0     0     0     0     0   85695 85696
    0     0     0   66918   0     0     0     0     0     0     0   87892 85699
  39342 43124 45795 45741 45737 45769 45770 45758 45780 42906 45602 87894 45800 68793
    0     0   45792 45742 50045 63420 45772 42401 45779 45731 40896 87895 45799 43825
    0     0   43428 45743 42736 42955 45771 45756 45781 45625 40903   0   43554 43553
    0     0   45790 41105 45736 42963 41527 45755   0   42911 67484   0   43826
    0     0   43432   0   44955 45764 41542 45753   0     0   45601   0   43549
    0     0     0     0   42749 45761   0   42406   0     0     0     0   43548
  39341 43122 67482 41103   0   42974 45776 45760   0   42905 45622 87893 43541 43536
    0     0   43416   0     0     0   41541 42399   0     0   40901   0   45804 43546
    0     0     0     0     0     0     0   87902   0     0     0     0   43543
  39340 43120 43414 45746 45740 42972 41535 42397 42470 42904 40902 87880
    0     0     0   41098 42744 42973 41533 42416 42466 42903 40916
    0     0     0   41099   0     0     0   79513   0     0   45623
  39339 43118 67483 41104 42746 42970 41547 42411 43392 45733 40909 87891
    0     0   43422   0   42738 64493   0   42415   0   42910
    0     0   43424   0     0   42966   0   43370   0   43674
    0     0     0     0     0     0     0   43372
  39338 43116 43423 41106 42737 42961 41532 42400 42465 42898 40923
    0     0   43417 41092   0   42962 41536 42398 42458 42908 67487
    0     0   45797 45747   0   42964 43725 42402   0   45734 40924
    0     0   43427 41108   0     0   41530   0     0   42900 40914
    0     0     0     0     0     0   43344   0     0     0   43331
    0     0     0     0     0     0     0     0     0     0   67485
  39334 39774 43418 41095 42741 42960 45778 42410 45785 45735 40922
    0     0   43413 41096   0     0   41531 42408 42455 42907 40913
    0     0   43397 41094   0     0     0     0   42462   0   40897
    0     0   43399 43367   0     0     0     0   43390   0   48720
]], nil, function(frame)
	frame:SetAttribute("type", "macro")
	if frame.id == 44680 then
		frame:SetAttribute("macrotext", "/run CloseTradeSkill()\n/cast "..name.."\n"..
			"/run for i=1,GetNumTradeSkills() do if GetTradeSkillInfo(i) == '"..L["Northrend Inscription Research"].."' then DoTradeSkill(i) end end CloseTradeSkill()")
	else
		frame:SetAttribute("macrotext", Panda.CraftMacro(name, frame.id))
	end
end))


panel:RegisterFrame(MINOR_GLYPHS, Panda.PanelFactory(45357,
[[79251 79254 80588 80586 80584   0   86541 79538   0   87278 87883 87884 87887   0     0   44680
    0     0   80587 80581   0     0   87276 87277   0   87279   0   87885 87889
    0     0   85221 80585   0     0   87392   0     0     0     0   85698 87890
  39343 43126 45794   0   45739 42965 44923 43374 43394 45732 44922 87881 43550
    0     0   49084   0   42751 42967   0     0   42457 85683 40900 87888
    0     0   43412   0     0     0     0     0   42459   0     0   87882
    0     0     0     0     0     0     0     0   42463 42456   0   90715
  39342 43124 43400   0   45738 45762   0     0   42471   0     0   43671 43539 43672 43673 45806
    0     0     0     0     0     0     0     0   42453   0     0   43535 43544 43827 43551
  39341 43122   0     0     0   45768 45775
  39340 43120   0     0     0   43378   0     0     0   43355
  39339 43118   0   43369 63416   0   43388   0   43393 43351 43334
    0     0     0   41100   0     0   43381   0   42473 42897 68039 89868
    0     0     0     0     0   41540 43385   0   42467   0   40919 67486
  39338 43116 43398 43365 43360 43376 43386 43373 43389 87393 43316
    0     0     0   43368 42735 43377   0     0   43391
    0     0     0     0     0   43380   0   93202 42461 45789
  39334 39774 43395 43366 43339 43379 41537 43342   0   43338 43335
    0     0   43396 43340 43359 43343   0   43371   0   43350 43332
    0     0     0     0   43364 42956   0     0     0   43356
    0     0     0   42743 43361   0     0     0     0   42912
]], nil, function(frame)
	frame:SetAttribute("type", "macro")
	if frame.id == 44680 then
		frame:SetAttribute("macrotext", "/run CloseTradeSkill()\n/cast "..name.."\n"..
			"/run for i=1,GetNumTradeSkills() do if GetTradeSkillInfo(i) == '"..L["Minor Inscription Research"].."' then DoTradeSkill(i) end end CloseTradeSkill()")
	else
		frame:SetAttribute("macrotext", Panda.CraftMacro(name, frame.id))
	end
end))


panel:RegisterFrame(L["Inscriptions"], Panda.PanelFactory(45357,
[[79251 79254 87577 87578 87579 87580
]]))


panel:RegisterFrame(L["Scrolls"], Panda.PanelFactory(45357,
[[61979 61978 63303 63305 63306 63307 63304 63308 63388 62237 60838
  39343 43126 43463 37091 37093 37097 43465 44315
	  0     0   43464 37092 37094 37098 43466
  39342 43124 33457 33458 33461 33460 33462
  39341 43122 27498 27499 27502 27501 27503
  39340 43120 10309 10308 10307 10306 10310 43850
  39339 43118  4425  4419  4422  4424  4426 44314
  39338 43116
  39334 39774  1477  2290  1711  1712  2289 64670
  39151 39469   0     0     0     0     0   37118 38682
  39151 37101  3012   955  1180  1181   954
]]))
