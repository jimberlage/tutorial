(ns tutorial.core-test
  (:require
    [pjstadig.humane-test-output]
    [cljs.test :refer-macros [is are deftest testing use-fixtures]]
    [tutorial.core]))

(deftest test-core
  (is (= true true)))


