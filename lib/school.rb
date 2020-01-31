class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    integer_time = @start_time.to_i + @hours_in_school_day
      integer_time.to_s + ":00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    @student_names.map do |student_name|
      student_name[0].upcase + student_name[1..-1]
    end
  end

  def convert_end_time_to_clock_time
    if end_time.to_i > 12
      new_time = end_time.to_i
      converted_time = new_time - 12
        converted_time.to_s + ":00"
    end
  end
end
