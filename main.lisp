;;;; SPDX-FileCopyrightText: Atlas Engineer LLC
;;;; SPDX-License-Identifier: BSD-3-Clause

(uiop:define-package :nx-fruit
  (:use :cl)
  (:import-from :nyxt :echo :define-command-global))

(in-package :nx-fruit)

(defparameter list-of-fruits 
  (list "Abiu"
        "Açaí"
        "Acerola"
        "Ackee"
        "African cucumber"
        "Apple"
        "Apricot"
        "Avocado"
        "Banana"
        "Bilberry"
        "Blackberry"
        "Blackcurrant"
        "Black sapote"
        "Blueberry"
        "Boysenberry"
        "Breadfruit"
        "Buddha's hand (fingered citron)"
        "Cactus pear"
        "Canistel"
        "Cempedak"
        "Cherimoya (Custard Apple)"
        "Cherry"
        "Chico fruit"
        "Cloudberry"
        "Coco De Mer"
        "Coconut"
        "Crab apple"
        "Cranberry"
        "Currant"
        "Damson"
        "Date"
        "Dragonfruit (or Pitaya)"
        "Durian"
        "Egg Fruit"
        "Elderberry"
        "Feijoa"
        "Fig"
        "Finger Lime (or Caviar Lime)"
        "Goji berry"
        "Gooseberry"
        "Grape"
        "Raisin"
        "Grapefruit"
        "Grewia asiatica (phalsa or falsa)"
        "Guava"
        "Hala Fruit"
        "Honeyberry"
        "Huckleberry"
        "Jabuticaba"
        "Jackfruit"
        "Jambul"
        "Japanese plum"
        "Jostaberry"
        "Jujube"
        "Juniper berry"
        "Kaffir Lime"
        "Kiwano (horned melon)"
        "Kiwifruit"
        "Kumquat"
        "Lemon"
        "Lime"
        "Loganberry"
        "Longan"
        "Loquat"
        "Lulo"
        "Lychee"
        "Magellan Barberry"
        "Mamey Apple"
        "Mamey Sapote"
        "Mango"
        "Mangosteen"
        "Marionberry"
        "Melon"
        "Cantaloupe"
        "Galia melon"
        "Honeydew"
        "Mouse melon"
        "Musk melon"
        "Watermelon"
        "Miracle fruit"
        "Monstera deliciosa"
        "Mulberry"
        "Nance"
        "Nectarine"
        "Orange"
        "Blood orange"
        "Clementine"
        "Mandarine"
        "Tangerine"
        "Papaya"
        "Passionfruit"
        "Pawpaw"
        "Peach"
        "Pear"
        "Persimmon"
        "Plantain"
        "Plum"
        "Prune (dried plum)"
        "Pineapple"
        "Pineberry"
        "Plumcot (or Pluot)"
        "Pomegranate"
        "Pomelo"
        "Purple mangosteen"
        "Quince"
        "Raspberry"
        "Salmonberry"
        "Rambutan (or Mamin Chino)"
        "Redcurrant"
        "Rose apple"
        "Salal berry"
        "Salak"
        "Satsuma"
        "Shine Muscat or Vitis Vinifera"
        "Sloe or Hawthorn Berry"
        "Soursop"
        "Star apple"
        "Star fruit"
        "Strawberry"
        "Surinam cherry"
        "Tamarillo"
        "Tamarind"
        "Tangelo"
        "Tayberry"
        "Ugli fruit"
        "White currant"
        "White sapote"
        "Yuzu"
        "Bell pepper"
        "Chile pepper"
        "Corn kernel"
        "Cucumber"
        "Eggplant"
        "Jalapeño"
        "Olive"
        "Pea"
        "Pumpkin"
        "Squash"
        "Tomato"
        "Zucchini"))

(define-command-global fruit-of-the-day ()
  "Echo the fruit of the day!"
  (let* ((current-time (local-time:now))
         (current-day-as-string (aref local-time:+day-names+ (local-time:timestamp-day-of-week current-time)))
         (current-fruit (nth (mod (local-time:day-of current-time) (length list-of-fruits)) list-of-fruits)))
    (echo "Have a wonderful ~a ~a!" current-fruit current-day-as-string)))
