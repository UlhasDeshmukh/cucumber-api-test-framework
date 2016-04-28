@db-tracking
Feature: real time tracking for delivery boys
  as a opearational manager, I should be able to track delivery boys.

Background:
            Given user logs in as opearational manager

Scenario:   opearational manager able to see dbs on panel

            When opearational manager opens tracking panel
            Then location of all delivery boys should be shown on panel

Scenario: opearational manager able to see dbs on panel when db change location

            When opearational manager opens tracking panel
            And select one of delivery boy
            Then route of delivery boy shoule be shown on panel

Scenario: opearational manager able to see expected time required by dbs
          to reach delivery address

            When opearational manager opens tracking panel
            And select one of delivery boy
            Then expected time required by dbs to reach delivery address should be shown on panel

Scenario: opearational manager able to see information related to delivery boy and delivery

            When opearational manager opens tracking panel
            And select one of delivery boy
            Then name and contact information of delivery boy should be shown on panel
            And delivery details should be available on panel
