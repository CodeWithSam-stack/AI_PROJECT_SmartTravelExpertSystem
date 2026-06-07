% ==========================================================
% SMART TRAVEL MANAGEMENT EXPERT SYSTEM
% COMPLETE KNOWLEDGE BASE (CORRECTED & UPDATED)
% ==========================================================

% ==========================================================
% USER MANAGEMENT MODULE
% ==========================================================

:- dynamic user_pref/2.

user(rin, leisure, moderate, pakistan).
user(ali, business, premium, pakistan).

% ==========================================================
% DESTINATION KNOWLEDGE BASE
% ==========================================================

destination(dubai,       business, premium,    hot,      shopping).
destination(singapore,   business, moderate,   humid,    technology).
destination(london,      business, premium,    cold,     historical).
destination(bali,        leisure,  moderate,   tropical, beaches).
destination(thailand,    leisure,  affordable, hot,      adventure).
destination(maldives,    leisure,  premium,    tropical, relaxation).
destination(switzerland, leisure,  premium,    cold,     skiing).
destination(skardu,      leisure,  affordable, cold,     mountains).
destination(turkey,      leisure,  moderate,   pleasant, history).
destination(paris,       leisure,  premium,    cold,     romance).

% ==========================================================
% TRANSPORTATION MANAGEMENT MODULE
% ==========================================================

transport(dubai,       flight, 120000).
transport(singapore,   flight, 150000).
transport(london,      flight, 200000).
transport(bali,        flight, 110000).
transport(thailand,    flight, 100000).
transport(maldives,    flight, 180000).
transport(switzerland, flight, 220000).
transport(turkey,      flight, 130000).
transport(paris,       flight, 210000).
transport(skardu,      bus,    5000).

% ==========================================================
% HOTEL & ACCOMMODATION MODULE
% ==========================================================

hotel(burj_hotel,          dubai,       premium).
hotel(marina_bay_hotel,    singapore,   premium).
hotel(budget_bali_inn,     bali,        affordable).
hotel(thai_resort,         thailand,    affordable).
hotel(maldives_water_villa,maldives,    premium).
hotel(skardu_guest_house,  skardu,      affordable).
hotel(swiss_chalet,        switzerland, premium).
hotel(istanbul_boutique,   turkey,      moderate).
hotel(paris_hotel,         paris,       premium).
hotel(london_inn,          london,      premium).

% ==========================================================
% TRAVEL PACKAGE MODULE
% ==========================================================

package(dubai,    five_days,  150000).
package(bali,     four_days,  80000).
package(skardu,   three_days, 25000).
package(turkey,   five_days,  100000).
package(thailand, four_days,  70000).
package(maldives, five_days,  250000).

% ==========================================================
% BUDGET PLANNING MODULE
% ==========================================================

estimate_cost(Place, Total) :-
    (transport(Place, _, TCost) -> true ; TCost = 50000),
    (hotel(_, Place, affordable) -> HCost = 5000 ; HCost = 20000),
    Total is TCost + HCost.

% ==========================================================
% WEATHER & SEASONAL ADVISORY MODULE
% ==========================================================

weather_risk(thailand,    'High Monsoon Risk').
weather_risk(skardu,      'Heavy Snowfall').
weather_risk(dubai,       'Extreme Heat').
weather_risk(switzerland, 'Extreme Cold').
weather_risk(maldives,    'Tropical Storms').
weather_risk(paris,       'Heavy Rain in Winter').

% ==========================================================
% VISA & DOCUMENTATION MODULE
% ==========================================================

visa_required(pakistan, dubai,       yes).
visa_required(pakistan, singapore,   no).
visa_required(pakistan, london,      yes).
visa_required(pakistan, bali,        no).
visa_required(pakistan, thailand,    no).
visa_required(pakistan, switzerland, yes).
visa_required(pakistan, maldives,    no).
visa_required(pakistan, turkey,      no).
visa_required(pakistan, paris,       yes).
visa_required(pakistan, skardu,      no).

% ==========================================================
% RESTAURANT & FOOD RECOMMENDATION MODULE
% ==========================================================

famous_food(thailand,    spicy_noodles).
famous_food(turkey,      kebab).
famous_food(paris,       french_pastries).
famous_food(dubai,       mandi).
famous_food(bali,        seafood).
famous_food(singapore,   chili_crab).
famous_food(london,      fish_and_chips).
famous_food(switzerland, fondue).
famous_food(maldives,    grilled_fish).
famous_food(skardu,      chapli_kebab).

% ==========================================================
% SAFETY & SECURITY MODULE
% ==========================================================

safety_status(dubai,       safe).
safety_status(switzerland, very_safe).
safety_status(thailand,    moderate).
safety_status(skardu,      safe).
safety_status(singapore,   very_safe).
safety_status(london,      safe).
safety_status(paris,       moderate).
safety_status(turkey,      moderate).
safety_status(bali,        safe).
safety_status(maldives,    safe).

% ==========================================================
% EVENT & FESTIVAL MODULE
% ==========================================================

festival(dubai,       shopping_festival).
festival(germany,     oktoberfest).
festival(paris,       fashion_week).
festival(brazil,      carnival).
festival(turkey,      tulip_festival).
festival(switzerland, swiss_national_day).
festival(thailand,    songkran).
festival(singapore,   singapore_food_festival).

% ==========================================================
% CURRENCY & EXPENSE CONVERSION MODULE
% ==========================================================

exchange_rate(usd, pkr, 280).
exchange_rate(aed, pkr, 76).
exchange_rate(eur, pkr, 305).
exchange_rate(gbp, pkr, 355).
exchange_rate(sgd, pkr, 207).

convert_currency(Amount, FromCurrency, Converted) :-
    exchange_rate(FromCurrency, pkr, Rate),
    Converted is Amount * Rate.

% ==========================================================
% TRAVEL INSURANCE MODULE
% ==========================================================

insurance_required(switzerland, yes).
insurance_required(dubai,       no).
insurance_required(london,      yes).
insurance_required(paris,       yes).
insurance_required(maldives,    yes).
insurance_required(singapore,   no).
insurance_required(thailand,    no).
insurance_required(bali,        no).
insurance_required(turkey,      no).
insurance_required(skardu,      no).

% ==========================================================
% REVIEW & RATING ANALYSIS MODULE
% ==========================================================

rating(dubai,       4.5).
rating(bali,        4.7).
rating(skardu,      4.2).
rating(switzerland, 4.9).
rating(maldives,    4.8).
rating(paris,       4.6).
rating(singapore,   4.7).
rating(turkey,      4.4).
rating(thailand,    4.3).
rating(london,      4.5).

% ==========================================================
% EMERGENCY ASSISTANCE MODULE
% ==========================================================

emergency_contact(dubai,       police_999).
emergency_contact(skardu,      rescue_1122).
emergency_contact(london,      emergency_999).
emergency_contact(singapore,   police_999).
emergency_contact(switzerland, emergency_117).
emergency_contact(paris,       emergency_112).
emergency_contact(turkey,      emergency_112).
emergency_contact(thailand,    emergency_191).
emergency_contact(bali,        emergency_110).
emergency_contact(maldives,    police_119).

% ==========================================================
% INTELLIGENT ITINERARY PLANNING MODULE
% ==========================================================

itinerary(dubai,       day1, shopping).
itinerary(dubai,       day2, desert_safari).
itinerary(dubai,       day3, museum_visit).
itinerary(bali,        day1, beach_visit).
itinerary(bali,        day2, temple_visit).
itinerary(bali,        day3, rice_terrace_tour).
itinerary(skardu,      day1, trekking).
itinerary(skardu,      day2, lake_visit).
itinerary(turkey,      day1, hagia_sophia_visit).
itinerary(turkey,      day2, grand_bazaar_shopping).
itinerary(switzerland, day1, alps_hiking).
itinerary(switzerland, day2, lake_cruise).
itinerary(paris,       day1, eiffel_tower).
itinerary(paris,       day2, louvre_museum).
itinerary(thailand,    day1, temple_tour).
itinerary(thailand,    day2, elephant_sanctuary).

% ==========================================================
% AI PREFERENCE LEARNING MODULE
% ==========================================================

learn_preference(Type, Budget) :-
    retractall(user_pref(_, _)),
    assert(user_pref(Type, Budget)).

% ==========================================================
% INFERENCE ENGINE
% ==========================================================

recommend_trip(Place) :-
    user_pref(Type, Budget),
    destination(Place, Type, Budget, _, _).

adventure_trip(Place) :-
    destination(Place, leisure, affordable, _, adventure).

check_visa(Place, Msg) :-
    (visa_required(pakistan, Place, yes)
    -> Msg = 'Visa Required'
    ;  Msg = 'No Visa Required').

safe_destination(Place) :-
    safety_status(Place, safe) ;
    safety_status(Place, very_safe).

recommend_hotel(Place, Hotel) :-
    hotel(Hotel, Place, affordable).

best_rated(Place) :-
    rating(Place, R),
    R >= 4.5.

% ==========================================================
% EXPLANATION & JUSTIFICATION MODULE
% ==========================================================

explain_recommendation(Place, Msg) :-
    destination(Place, Type, Budget, _, _),
    format(atom(Msg),
        'Recommended because it matches ~w travel and ~w budget.',
        [Type, Budget]).

explain_visa(Place, Msg) :-
    visa_required(pakistan, Place, Status),
    format(atom(Msg),
        'Visa status for ~w from Pakistan: ~w.',
        [Place, Status]).

% ==========================================================
% CHATBOT SYSTEM
% ==========================================================
% FIX: Use recursive chatbot/0 calls instead of repeat/0.
%      After each handle/1 completes, chatbot/0 is called
%      again cleanly — no leftover tokens cause a false
%      "Invalid Choice" read.
% ==========================================================

start :-
    write('===================================='), nl,
    write('  SMART TRAVEL MANAGEMENT SYSTEM   '), nl,
    write('===================================='), nl,
    chatbot.

chatbot :-
    nl,
    write('---------- MAIN MENU ----------'), nl,
    write(' 1. Recommend Trip'),             nl,
    write(' 2. Visa Check'),                 nl,
    write(' 3. Cost Estimate'),              nl,
    write(' 4. Safe Destinations'),          nl,
    write(' 5. Famous Food'),               nl,
    write(' 6. Best Rated Destinations'),    nl,
    write(' 7. Emergency Contacts'),         nl,
    write(' 8. Exit'),                       nl,
    write('-------------------------------'), nl,
    write('Enter choice: '),
    read(Choice),
    handle(Choice).

% ==========================================================
% HANDLE USER CHOICES
% ==========================================================

% --- Option 1: Recommend Trip ---
handle(1) :-
    nl,
    write('=== TRIP RECOMMENDATION ==='), nl,
    write('Enter trip type (business/leisure): '),
    read(T),
    write('Enter budget (affordable/moderate/premium): '),
    read(B),
    learn_preference(T, B),
    nl,
    (   recommend_trip(P)
    ->  write('>>> Recommended Destination: '), write(P), nl
    ;   write('>>> No suitable destination found for your preferences.'), nl
    ),
    chatbot.  % <-- loop back cleanly

% --- Option 2: Visa Check ---
handle(2) :-
    nl,
    write('=== VISA CHECK ==='), nl,
    write('Enter destination name: '),
    read(P),
    check_visa(P, Msg),
    nl,
    write('>>> '), write(Msg), nl,
    chatbot.

% --- Option 3: Cost Estimate ---
handle(3) :-
    nl,
    write('=== COST ESTIMATE ==='), nl,
    write('Enter destination name: '),
    read(P),
    nl,
    (   estimate_cost(P, Cost)
    ->  write('>>> Estimated Cost (PKR): '), write(Cost), nl
    ;   write('>>> Cost information unavailable.'), nl
    ),
    chatbot.

% --- Option 4: Safe Destinations ---
handle(4) :-
    nl,
    write('=== SAFE DESTINATIONS ==='), nl,
    forall(safe_destination(P),
           (write(' - '), write(P), nl)),
    chatbot.

% --- Option 5: Famous Food ---
handle(5) :-
    nl,
    write('=== FAMOUS FOOD ==='), nl,
    write('Enter destination name: '),
    read(P),
    nl,
    (   famous_food(P, F)
    ->  write('>>> Famous Food: '), write(F), nl
    ;   write('>>> Food information unavailable.'), nl
    ),
    chatbot.

% --- Option 6: Best Rated Destinations ---
handle(6) :-
    nl,
    write('=== BEST RATED DESTINATIONS (4.5 and above) ==='), nl,
    forall(
        (best_rated(P), rating(P, R)),
        (write(' - '), write(P), write(' : '), write(R), nl)
    ),
    chatbot.

% --- Option 7: Emergency Contacts ---
handle(7) :-
    nl,
    write('=== EMERGENCY CONTACTS ==='), nl,
    write('Enter destination name: '),
    read(P),
    nl,
    (   emergency_contact(P, C)
    ->  write('>>> Emergency Contact: '), write(C), nl
    ;   write('>>> Emergency contact unavailable.'), nl
    ),
    chatbot.

% --- Option 8: Exit ---
handle(8) :-
    nl,
    write('===================================='), nl,
    write('  Thank You for Using Smart Travel  '), nl,
    write('         Expert System!             '), nl,
    write('===================================='), nl.

% --- Invalid choice handler ---
handle(_) :-
    nl,
    write('>>> Invalid choice. Please enter a number between 1 and 8.'), nl,
    chatbot.

% ==========================================================
% SAMPLE QUERIES (run in Prolog top-level)
% ==========================================================

% ?- start.
% ?- learn_preference(leisure, moderate), recommend_trip(X).
% ?- adventure_trip(X).
% ?- check_visa(dubai, X).
% ?- check_visa(maldives, X).
% ?- estimate_cost(skardu, X).
% ?- estimate_cost(paris, X).
% ?- safe_destination(X).
% ?- famous_food(paris, X).
% ?- best_rated(X).
% ?- explain_recommendation(bali, X).
% ?- explain_visa(london, X).
% ?- rating(X, R), R >= 4.5.
% ?- itinerary(dubai, Day, Activity).
% ?- emergency_contact(london, X).
% ?- convert_currency(100, usd, X).
% ?- weather_risk(X, Y).
% ?- insurance_required(london, X).
% ?- festival(dubai, X).
