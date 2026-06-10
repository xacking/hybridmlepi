# Data access

Raw datasets are **not** stored in this repository, for legal/compliance reasons.
This folder holds access instructions only. Place obtained data locally (it is
git-ignored) before running the notebooks.

## 1. Ebola tweets (social-media track)

- **Source:** third-party corpus released by Mirugwe et al. (2024).
- **Restriction:** X/Twitter Terms of Service prohibit redistributing raw tweet
  text. We therefore do **not** include `ebola_tweets.csv`.
- **To reproduce:** obtain the corpus from the original authors, or rehydrate
  from tweet IDs using `tweepy` and a valid X/Twitter API token.
- The 22-term symptom-keyword dictionary used for weak labelling should be
  placed here as `symptom_dictionary.txt` (one term per line).

Expected local layout (git-ignored):
```
data/ebola/ebola_tweets.csv
data/ebola/symptom_dictionary.txt
```

## 2. COVID-19 complete-blood-count (clinical track)

- **Source:** Hospital Israelita Albert Einstein, São Paulo — de-identified
  under Brazilian LGPD. Publicly available on Kaggle:
  https://www.kaggle.com/datasets/einsteindata4u/covid19
- **Restriction:** already openly hosted on Kaggle; we cite it rather than
  re-host. Download it yourself from the link above.

Expected local layout (git-ignored):
```
data/covid/covid19_clinical_dataset.xlsx
```

## Notes

- Notebook outputs in this repo were cleared to ensure no raw tweet text or
  patient rows are committed.
- Derived, non-identifying results (metrics, confusion matrices, SHAP/permutation
  values, figures) live in `../results/` and are shareable under CC-BY-4.0.
