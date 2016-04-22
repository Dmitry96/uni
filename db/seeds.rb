def create_or_update_course(course_attrs)
  course = Course.find_by(title: course_attrs[:title])
  if course.nil?
    course = Course.create!(course_attrs)
    puts ">>>> Создан новый курс: #{course_attrs[:title]}"
  elsif course.attributes == course_attrs
    puts "Существующий курс не изменен: #{course_attrs[:title]}"
  else
    course.update_attributes(course_attrs)
    puts "Обновлен существующий << КУРС >>: #{course_attrs[:title]}"
  end
  course
end

def create_or_update_section(section_attrs)
  section = Section.find_by(title: section_attrs[:title], course: section_attrs[:course])
  if section.nil?
    section = Section.create!(section_attrs)
    puts ">>>> Создан новый РАЗДЕЛ: #{section_attrs[:title]}"
  elsif section.attributes == section_attrs
    puts "Существующий раздел не изменен: #{section_attrs[:title]}"
  else
    section.update_attributes(section_attrs)
    puts "Обновлен существующий РАЗДЕЛ: #{section_attrs[:title]}"
  end
  section
end

def create_or_update_lesson(lesson_attrs)
  lesson = Lesson.find_by(title: lesson_attrs[:title], section: lesson_attrs[:section])

  # Need to create a new lesson!
  if lesson.nil?
    lesson = Lesson.create!(lesson_attrs)
    puts ">>>> Создан новый урок: #{lesson_attrs[:title]}"

  # Just need to update our lesson's attributes
  elsif lesson.attributes == lesson_attrs
    puts "Существующий урок не изменен: #{lesson_attrs[:title]}"
  else
    lesson.update_attributes(lesson_attrs)
    puts "Обновлен существующий урок: #{lesson_attrs[:title]}"
  end
  lesson
end

course = create_or_update_course(
  title: 'Язык С/C++',
  slug: 'C-C++-language',
  short_description: 'Этот курс ознакомит вас с основами языка С, далее мы плавно перейдём к изучению С++',
  description: 'Этот курс ознакомит вас с основами языка С, далее мы плавно перейдём к изучению С++.Не беспокойтесь, если вам что-то не понятно, в интернете куча примеров и вы сможте обязательно найти ответ на тот или инной возникший вопрос.',
)


section = create_or_update_section(
  title: 'Язык Программирования C/C++',
  slug: 'languageC-C++',
  description: 'И так, мы начинаем! Языки С/C++',
  course: course
)

create_or_update_lesson(
  title: '1 урок',
  slug: 'first',
  description: 'В первом уроке мы поговорим о структуре программы',
  section: section,
  course: course,
  url: '/C-C++-language/01_C.md'
)

create_or_update_lesson(
  title: '2 урок',
  slug: 'second',
  description: 'Алфавит',
  section: section,
  course: course,
  url: '/C-C++-language/02_C(2).md'
)




course = create_or_update_course(
  title: 'Язык Ассемблер',
  slug: 'Asm-language',
  short_description: 'Этот курс ознакомит вас с низкоуровневым языком программирования - Ассемблер',
  description: 'Этот курс ознакомит вас с низкоуровневым языком программирования - Ассемблер.Этот язык раньше, да и сейчас используется в программировании, в основном для написания драйверов в связки с языком С.',
)

section = create_or_update_section(
  title: 'Язык Программирования Ассемблер',
  slug: 'Asm-language',
  description: 'И так, приступим.',
  course: course
)

create_or_update_lesson(
  title: '1 урок',
  slug: 'first',
  description: 'Базовые системы счисления. Объявления данных в Ассемблере',
  section: section,
  course: course,
  url: '/Asm-language/01_asm.md'
)

create_or_update_lesson(
  title: '2 урок',
  slug: 'second',
  description: 'Этапы создания программы на языке Ассемблер. Вывод строки на экран',
  section: section,
  course: course,
  url: '/Asm-language/02_asm.md'
)


course = create_or_update_course(
  title: 'Язык Java',
  slug: 'Java-language',
  short_description: 'Этот курс ознакомит вас с таким замечательным языком программирования как Java',
  description: 'Этот курс ознакомит вас с таким замечательным языком программирования как Java. В данный момент этот язык является очень популярным.Он используется в многих областях IT, всеми любимый Java! ',
)

section = create_or_update_section(
  title: 'Язык Программирования Ассемблер',
  slug: 'Java-language',
  description: 'Приступим к изучению Java',
  course: course
)

create_or_update_lesson(
  title: '1 урок',
  slug: 'first',
  description: 'Пример по теме “Java. Синхронизация”',
  section: section,
  course: course,
  url: '/Java-language/01_java.md'
)

create_or_update_lesson(
  title: '2 урок',
  slug: 'second',
  description: 'Пример по теме “Java. Нити процессов”. Thread priorities',
  section: section,
  course: course,
  url: '/Java-language/02_java(2).md'
)


