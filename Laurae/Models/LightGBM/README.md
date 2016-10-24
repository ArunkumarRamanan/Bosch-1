Parameter search sweeping.

# Search 1: Depth

* Threads = 12
* Eta = 0.05
* Min_sample = 100
* Min_hess = 10
* Subsample = 1.0
* Colsample = 1.0

Leaves is variable.



| Try | Leaf | Iter + Std | AUC + Std | MCC + Std | MCC (1) | MCC (2) | Positives (3) |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| #1 | 511(9.00) | 096.2 + 21.2 | 0.9144 + 0.0032 | 0.4720 + 0.0056 | 0.4617 | 0.4690 | 3592 / 2249 / 2748 |
| #4 | 383(8.50) | 100.4 + 08.9 | 0.9170 + 0.0045 | 0.4725 + 0.0042 | 0.4658 | 0.4689 | 2369 / 2256 / 2308 |
| #2 | 255(8.00) | 110.4 + 10.2 | 0.9185 + 0.0040 | 0.4773 + 0.0047 | 0.4657 | 0.4741 | 2948 / 2248 / 2531 |
| #5 | 191(7.50) | 118.8 + 07.9 | 0.9186 + 0.0042 | 0.4757 + 0.0055 | 0.4648 | 0.4722 | 2819 / 2251 / 2480 |
| #3 | 127(7.00) | 139.6 + 30.6 | 0.9189 + 0.0039 | 0.4751 + 0.0048 | 0.4669 | 0.4714 | 2853 / 2233 / 2489 |

* (1) = 5-fold threshold
* (2) = All
* (3) = Overfit (2), CV (1), Average