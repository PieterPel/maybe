require "csv"

CSV::DateMatcher     = / \A(?: (\w+,?\s+)?\w+\s+\d{1,2},?\s+\d{2,4} |
                            \d{4}-\d{2}-\d{2} |
                            \d{8} )\z /x
CSV::DateTimeMatcher =/ \A(?: (\w+,?\s+)?\w+\s+\d{1,2}\s+\d{1,2}:\d{1,2}:\d{1,2},?\s+\d{2,4} |
            # ISO-8601 and RFC-3339 (space instead of T) recognized by (Date)Time.parse
            \d{4}-\d{2}-\d{2}
              (?:[T\s]\d{2}:\d{2}(?::\d{2}(?:\.\d+)?(?:[+-]\d{2}(?::\d{2})|Z)?)?)? |
            \d{8}
        )\z /x
