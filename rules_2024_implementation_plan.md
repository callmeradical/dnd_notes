# 2024 D&D Rules Implementation Plan

## Current Status Analysis

The DM Screen has been successfully updated with foundational 2024 rules:

✅ **Already Implemented:**
- Actions (2024) - All 12 core actions
- Conditions (2024) - All 14 conditions with effects  
- Updated damage tables (improvised + by level)
- Skills by Action mapping
- Jump Mechanics
- Concentration rules
- General DC tables and object rules

## Comprehensive Rules Expansion Plan

### **Phase 1: Core Combat Rules (High Priority)**

#### 1.1 Combat Fundamentals
**Target File:** `docs/resources/rules/combat.md` (new file)

```markdown
## Initiative and Turn Order
- Roll d20 + Dexterity modifier
- Ties broken by Dexterity score, then d20 roll
- Surprised creatures can't move or take actions on first turn

## Movement Rules
| Movement Type | Speed | Special Rules |
|---------------|-------|---------------|
| Walking | Normal speed | Standard movement |
| Climbing | Half speed | Athletics check for difficult surfaces |
| Swimming | Half speed | Athletics check in rough water |
| Crawling (Prone) | Half speed | Move while prone |
| Difficult Terrain | Half speed | Costs extra movement |

## Cover Rules
| Cover Type | AC Bonus | Dex Save Bonus | Target Line |
|------------|----------|----------------|-------------|
| Half Cover | +2 | +2 | Half of creature covered |
| 3/4 Cover | +5 | +5 | Three-quarters covered |
| Total Cover | Untargetable | Auto success | Completely blocked |
```

#### 1.2 Weapon Mastery Properties (New 2024 Content)
```markdown
## Weapon Mastery Properties

| Property | Effect |
|----------|--------|
| Cleave | Hit second creature within 5 feet if first hit reduces target to 0 HP |
| Graze | Deal ability modifier damage on miss (min 1) |
| Nick | Make extra attack with different Light weapon as part of Attack action |
| Push | Push creature up to 10 feet away on hit |
| Sap | Target has disadvantage on next attack roll before end of your next turn |
| Slow | Reduce target's Speed by 10 feet until start of your next turn |
| Topple | Target makes Constitution save or becomes Prone (DC 8 + ability mod + prof) |
| Vex | You have advantage on your next attack roll against same target |
```

### **Phase 2: Spellcasting & Ability Checks (High Priority)**

#### 2.1 Spellcasting Quick Reference
**Target File:** `docs/resources/rules/spellcasting.md` (new file)

```markdown
## Spell Save DCs and Attack Rolls
- **Spell Save DC** = 8 + proficiency bonus + spellcasting ability modifier
- **Spell Attack Bonus** = proficiency bonus + spellcasting ability modifier

## Area of Effect Types
| AoE Type | Description |
|----------|-------------|
| Cone | Originates from caster, extends in direction |
| Cube | Select intersection of grid squares |
| Cylinder | Circle on ground with specified height |
| Emanation | Spreads from all sides of origin square |
| Sphere | Expands from chosen point within range |

## Spell Components
| Component | Description | Rules |
|-----------|-------------|-------|
| Verbal (V) | Spoken incantation | Can't cast while silenced |
| Somatic (S) | Hand gestures | Need one free hand |
| Material (M) | Physical components | Need focus or components |
```

#### 2.2 Ability Check Framework
```markdown
## D20 Test Rules (2024 Term)
| Roll Type | Applies To |
|-----------|------------|
| Ability Check | Skill/ability tests |
| Attack Roll | Hitting a target |
| Saving Throw | Avoiding/resisting effects |

## Advantage/Disadvantage
- **Advantage**: Roll 2d20, use higher result
- **Disadvantage**: Roll 2d20, use lower result  
- **Multiple sources**: Only one advantage and one disadvantage apply (they cancel)

## Group Checks
- More than half the group must succeed for group success
```

### **Phase 3: Rest & Recovery Systems (Medium Priority)**

#### 3.1 Rest Mechanics
**Target File:** `docs/resources/rules/rest-recovery.md` (new file)

```markdown
## Short Rest
- **Duration**: At least 1 hour of light activity
- **Benefits**: Spend Hit Dice to recover HP, some abilities recharge
- **Hit Dice**: Roll + Constitution modifier, minimum 1 HP

## Long Rest  
- **Duration**: 8+ hours with at least 6 hours sleep
- **Benefits**: Regain all HP, regain all Hit Dice, recover spell slots
- **Limitation**: Only one long rest benefit per 24-hour period

## Death Saving Throws
| Roll | Result |
|------|--------|
| 10+ | One success |
| 2-9 | One failure |
| Natural 1 | Two failures |
| Natural 20 | Regain 1 HP immediately |

**Death**: 3 failures  
**Stable**: 3 successes  
**Damage at 0 HP**: 1 failure (2 if critical hit)
```

### **Phase 4: Environmental & Exploration Rules (Medium Priority)**

#### 4.1 Vision and Environment
**Target File:** `docs/resources/rules/environment.md` (new file)

```markdown
## Vision and Light
| Light Level | Effect on Vision |
|-------------|------------------|
| Bright Light | Normal vision |
| Dim Light | Lightly obscured, disadvantage on Perception |
| Darkness | Heavily obscured, effectively Blinded |

## Creature Attitudes (2024)
| Attitude | Behavior |
|----------|----------|
| Hostile | Will attack or actively hinder party |
| Unfriendly | Wishes ill but won't attack unprovoked |
| Indifferent | Neutral toward party |
| Friendly | Wishes party well |

## Exhaustion Levels
| Level | Effect |
|-------|--------|
| 1 | Disadvantage on ability checks |
| 2 | Speed halved |
| 3 | Disadvantage on attack rolls and saves |
| 4 | Hit point maximum halved |
| 5 | Speed reduced to 0 |
| 6 | Death |

**Recovery**: One level per long rest
```

### **Phase 5: Advanced Equipment & Technology (Low Priority)**

#### 5.1 Modern Equipment (2024 XDMG)
**Target File:** `docs/resources/rules/equipment.md` (new file)

```markdown
## Firearms (2024)
| Property | Description |
|----------|-------------|
| Burst Fire | DC 15 Dex save in 10-foot cube |
| Reload | Takes action to reload after specified shots |

## Explosives
| Item | Damage | Save DC | Radius |
|------|--------|---------|--------|
| Bomb | 3d6 fire | 12 Dex | 5 feet |
| Dynamite | 3d6 force | 12 Dex | 5 feet |  
| Fragmentation Grenade | 5d6 piercing | 15 Dex | 20 feet |
| Smoke Grenade | Heavily obscured | None | 20 feet |

## Technology DCs
| Complexity | DC | Examples |
|------------|----|-----------| 
| Simple | 10 | Calculator, lighter |
| Complex | 20 | Computer, chainsaw, hovercraft |
```

### **Phase 6: Social Interaction Systems (Low Priority)**

#### 6.1 Social Mechanics
**Target File:** `docs/resources/rules/social.md` (new file)

```markdown
## Loyalty System (Optional Rule)
- **Starting Score**: 10 + highest party Charisma modifier
- **Range**: 0-20
- **Modifications**: ±d4 based on actions and treatment

| Score | Loyalty Level |
|-------|---------------|
| 15+ | Will risk life for party |
| 10-14 | Generally loyal |
| 5-9 | Wavering loyalty |
| 1-4 | Disloyal, may abandon |
| 0 | Will betray party |

## Renown System (Optional Rule)
| Renown | Benefits |
|--------|----------|
| 1-2 | Local recognition |
| 3-4 | Regional recognition |
| 5+ | Wide recognition, special privileges |
```

## Implementation Schedule

### **Week 1-2: Core Combat (Phase 1)**
- [ ] Create `docs/resources/rules/combat.md`
- [ ] Add initiative, movement, and cover rules
- [ ] Add weapon mastery properties table
- [ ] Update navigation in main index files

### **Week 3-4: Spellcasting & Checks (Phase 2)** 
- [ ] Create `docs/resources/rules/spellcasting.md`
- [ ] Create ability check reference tables
- [ ] Add advantage/disadvantage rules
- [ ] Cross-reference with existing DM screen

### **Week 5-6: Rest & Recovery (Phase 3)**
- [ ] Create `docs/resources/rules/rest-recovery.md`
- [ ] Add death saving throw table
- [ ] Add exhaustion mechanics
- [ ] Integrate with existing travel rules

### **Week 7-8: Environment & Exploration (Phase 4)**
- [ ] Create `docs/resources/rules/environment.md`
- [ ] Add vision and light tables
- [ ] Add creature attitude system
- [ ] Connect to existing city/travel content

### **Week 9-10: Equipment & Technology (Phase 5)**
- [ ] Create `docs/resources/rules/equipment.md`
- [ ] Add firearms and explosives tables
- [ ] Add technology DC reference
- [ ] Optional: Add to tools section

### **Week 11-12: Social Systems (Phase 6)**
- [ ] Create `docs/resources/rules/social.md`
- [ ] Add loyalty and renown systems
- [ ] Integrate with influence action rules
- [ ] Final testing and validation

## File Structure Plan

```
docs/
├── resources/
│   ├── dm_screen.md (already updated)
│   └── rules/
│       ├── index.md (new - rules navigation)
│       ├── combat.md (new)
│       ├── spellcasting.md (new)
│       ├── rest-recovery.md (new)
│       ├── environment.md (new)
│       ├── equipment.md (new)
│       └── social.md (new)
```

## Integration Strategy

### Navigation Updates
1. **Main Index**: Add "Rules Reference" section pointing to rules/
2. **Rules Index**: Create comprehensive rules navigation
3. **Cross-References**: Link between DM screen and detailed rules
4. **Search Optimization**: Tag all rules content appropriately

### Content Organization Principles
1. **DM Screen**: Quick reference tables for active play
2. **Rules Files**: Detailed explanations and extended tables
3. **No Duplication**: DM screen has core info, rules files have comprehensive info
4. **Cross-Links**: Easy navigation between related content

### Testing Checklist
- [ ] All markdown renders correctly in MkDocs
- [ ] Navigation links work properly
- [ ] No duplicate content between files
- [ ] Tables fit mobile and desktop displays
- [ ] Search functionality works
- [ ] All 2024 rule changes are accurately represented

## Risk Assessment

**Low Risk Changes:**
- Creating new rule files (additive only)
- Adding cross-references
- Expanding existing sections

**Medium Risk Changes:**
- Navigation restructuring
- Large table additions

**High Risk Changes:**  
- None - all changes are additive

## Success Metrics

- ✅ Complete 2024 rules coverage for common situations
- ✅ Fast lookup for frequently needed rules
- ✅ Consistent formatting across all rule files
- ✅ Logical organization and easy navigation
- ✅ Mobile-friendly table layouts
- ✅ Integration with existing campaign materials

**Estimated Total Time**: 12 weeks for complete implementation  
**Priority Focus**: Phases 1-3 (combat, spells, rest) for maximum impact  
**Dependencies**: None - can be implemented independently