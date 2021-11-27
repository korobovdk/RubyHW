class Dad
  def initialize (name)
    @name = name
    @health = 50
    @bellyfull = 50 
    @mood = 50
    @energy = 50
    @drunk = 50
    @hangover = true
    @desire_to_live = 0 
    puts "Спустя 20 лет батя " + @name + " вернулся с хлебом! Выглядит он не очень..." 
  end
  
  def heal 
    puts "Ты достаешь бабушкину аптечку и даешь бате " + @name + " первую попавшуюся таблетку..."
    hp = rand(-2..5)
    @health += hp
    if hp < 0 
      puts "Ой... Ты дал не то лекарство, но батя " + @name + " повеселел!"
      @drunk += 2
    else 
      puts "Повезло, повезло, ему вроде стало лучше! Вроде..."
      @hangover = false
    end
    passage_of_time
  end
  
  def feed 
    puts  "Ты кормишь батю пельменями, теперь " + @name + " выглядит сытым и довольным. Он радостно срыгивает и рассказывает какие же были вкусные булочки в СССР по 5к."
  @bellyfull += 10 
  @mood += 5
  @energy -= 15
  passage_of_time
  end
  
  def walk 
    puts "Не спуская глаз с бати ты идешь гулять с ним в гараж к Петровичу чинить Жигуль."
    puts "Понятное дело чинить Жигуль дело сложное и в нем без ста грамм не разобраться..."
    @energy -= 15
    @drunk += 20
    @mood +=5
  passage_of_time
  end
  
  def watch_football
    puts "Ты решаешься побаловать батю и разрешаешь ему посмотреть футбол с пивом и пачкой кальмаров"
    @bellyfull += 2 
    @energy -= 15
    @drunk += 5
    win = rand(-5..10) 
    if win > 0  
      puts @name + " кричит на весь дом название своей любимой команды, это триумф! Не зря он подсказывал как нужно играть его команде через экран!"
      @mood += 5
    else
      puts "Батина любимая команда проиграла, он начинает плакать и ругаться, а ты удивляешься что из одного слова можно посторить такое множество бранных фраз..."
      @mood -= 5
    end
    passage_of_time
  end
  
  def tasks_for_dad
    tasks = ["починить кран", "вкрутить лампочку", "погулять с собакой", "открыть банку"]
    tasks_fail = ["затопило всю комнату.", "батя лежит под табуреткой.", "собака убежала. Ну ниче батя же вернулся.", "все варенье лежит на полу."]
    rand_task = rand(0..3)
    puts "Ты просишь батю " + tasks[rand_task]
    task_completed = rand(0..1)
    if task_completed == 1 
      puts "Довольный своими свершениями " + @name + " ждет аплодисментов в свой адрес."
      @mood += 10
      @energy -= 10
    else 
      puts "Ты понимаешь что что-то пошло не так, потому что " + tasks_fail[rand_task]
      @mood -= 5
      @energy -= 10
      @desire_to_live += 1
      @health -= 5
    end
    passage_of_time
  end
  
  def jogging
    puts "Ты предлагаешь бате по спортивному пробежаться за пивом. Конечно же он соглашается!"
    @bellyfull -= 5
    @mood += 2
    @energy -= 10 
    @hangover = false 
    passage_of_time
  end 
  
  def put_to_bed
    puts "Ты нежно переносишь " + @name + " на диван, убаюкиваешь и размеренно рассказываешь историю о том, как бы ты хотел быть похожим на него... Батя засыпает..."
    @health += 2
    @bellyfull -= 10 
    @energy += 15
    @drunk -= 10
    passage_of_time
  end 
  
  
  private
  
  def health?
    @health > 20
  end
  
  def full?
    @bellyfull > 10
  end
  
  def happy?
    @mood > 20
  end
  
  def energetic?
    @energy > 10
  end
  
  def drunk?
    @drunk > 80 
  end
  
  def energetic?
    @bellyfull > 10
  end
   
  def escape?
    @desire_to_live > 9
  end
  
  
  def  passage_of_time
    @bellyfull -= rand(5..10)
    @mood -= rand(5..10) 
    @energy += rand(5..10)
    @drunk -= 10
    @desire_to_live += 0.2
    

        if health? 
      puts @name + " чувствует себя нормально."
    else 
        puts "У бати большие проблемы со здороьем!!!"
        @mood = -5
    end
    
    if full?
      @mood += 2
    else 
      puts "Бате срочно нужно покушать!!!"
    end
    
    if happy?
      @desire_to_live -= 0.5
    else
      puts "Тебе кажется что бате не хорошо с тобой..."
      @desire_to_live += 1
    end
    
    if energetic?
      @health += 2
    else 
      puts @name + " закончились силы, дай ему отдохнуть."
      @mood -= 1
    end 
    
    if drunk? 
      puts "Батя переборщил с алкоголем, ему очень плохо..."
      @hangover = true
      @energy -= 8
    end 
    
    if escape?
      puts @name + " ушел за сиграетами и больше никогда не вернулся..."
    end
    
    if @health < 0 
      puts "Твой батя умер, очень жаль... Но зато коллекция крышек от пива теперь твоя."
    end
    
    if @bellyfull < 0 
      @health -= 2 
      @mood -= 2
      @energy -=2 
    end
    
    if @hangover == true
      puts "У бати похмелье, помоги ему только говори тише..."
      @health -= 10
    end 

    
  end
    
end 
dad = Dad.new("Аркадий")
dad.put_to_bed

