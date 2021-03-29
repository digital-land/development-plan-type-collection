DEVELOPMENT_PLAN_TYPE_DATASET=$(DATASET_DIR)development-plan-type.csv
DEVELOPMENT_PLAN_TYPE_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)development-plan-type/61b14fb2024514e9f263e9ef22abadc6423bf73a170880f22fd2308e9f79098d.csv\
    $(TRANSFORMED_DIR)development-plan-type/d4cd3017668c5548df11cecd4345cee90e81cf3b6e98ebab0cab61dac82e748d.csv

$(TRANSFORMED_DIR)development-plan-type/61b14fb2024514e9f263e9ef22abadc6423bf73a170880f22fd2308e9f79098d.csv: collection/resource/61b14fb2024514e9f263e9ef22abadc6423bf73a170880f22fd2308e9f79098d
	$(run-pipeline)

$(TRANSFORMED_DIR)development-plan-type/d4cd3017668c5548df11cecd4345cee90e81cf3b6e98ebab0cab61dac82e748d.csv: collection/resource/d4cd3017668c5548df11cecd4345cee90e81cf3b6e98ebab0cab61dac82e748d
	$(run-pipeline)

$(DEVELOPMENT_PLAN_TYPE_DATASET): $(DEVELOPMENT_PLAN_TYPE_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(DEVELOPMENT_PLAN_TYPE_TRANSFORMED_FILES)

dataset:: $(DEVELOPMENT_PLAN_TYPE_DATASET)
