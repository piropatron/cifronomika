game_user =
  count_step: 0
  user_number: 0
  numbers: [1..10]
  get_random: (min, max) ->
    Math.round(Math.random() * (max - min) + min)
  set_number: ->
    this.user_number = parseInt(prompt('Загадайте число'))
    this
  set_count_step: ->
    this.count_step = this.get_random(1, 10)
    alert('Комньютер говорит что угадает за '+ this.count_step + ' шагов')
    this
  try_number: ->
    this.count_step--;
    if(this.count_step <= 0)
      alert('Вы выиграли !!!');
      return
    index = this.get_random(0, this.numbers.length - 1)
    computer_number = this.numbers[ index ]
    if computer_number is this.user_number
      alert('Компьютер выиграл !!!')
      return

    result = prompt('Компьютер говорит ' + computer_number);
    if result == '>'
      this.numbers = this.numbers.filter (v) -> v > computer_number
    else
      this.numbers = this.numbers.filter (v) -> v < computer_number
    this.try_number()

game_user.set_number().set_count_step().try_number();