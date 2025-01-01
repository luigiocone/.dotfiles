MERGED_FILE = merged.json
JSON_DIR = .

# Get the list of all '.json' excluding 'MERGED_FILE'
JSON_FILES = $(shell find $(JSON_DIR) -name '*.json' ! -name '$(notdir $(MERGED_FILE))')

$(MERGED_FILE): $(JSON_FILES)
	# Merge all json files
	jq --slurp '[.[][]]' $(JSON_FILES) > $(MERGED_FILE).tmp

	# Add an incremental id
	jq 'to_entries | map( (.value.id = (1+.key)) | .value)' $(MERGED_FILE).tmp > $(MERGED_FILE)
	rm $(MERGED_FILE).tmp

.PHONY: clean
clean:
	rm -f $(MERGED_FILE)
