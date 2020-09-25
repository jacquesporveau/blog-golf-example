class CalculateScoreDifferential
  STANDARD_SLOPE_RATING = 113.freeze
  DECIMAL_POINTS_TO_ROUND_TO = 1.freeze

  def call(adjusted_gross_score, course_rating, slope_rating)
    raw_differential =
      (adjusted_gross_score - course_rating) *
      (STANDARD_SLOPE_RATING / slope_rating)

    raw_differential.round(DECIMAL_POINTS_TO_ROUND_TO)
  end
end

instance = CalculateScoreDifferential.new
puts instance.call(76, 69.9, 127)
