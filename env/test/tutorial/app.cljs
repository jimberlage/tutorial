(ns tutorial.app
  (:require
    [doo.runner :refer-macros [doo-tests]]
    [tutorial.core-test]))

(doo-tests 'tutorial.core-test)


