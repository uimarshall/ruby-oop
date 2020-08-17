require './lib/game.rb'

describe Game do
    let(:game){Game.new}
    describe '#winner' do
        it 'when a row is filled with X' do
            game = Game.new(['X', 'X', 'X', 3, 'O', 'O', 7, 8, 9])
            expect(game.winner).to eql('X')
        end

        it 'when a row is filled with O' do
            game = Game.new(['O', 'O', 'O', 3, 'X', 'X', 7, 8, 9])
            expect(game.winner).to eql('O')
        end

        it 'when the diagonal are same' do
            game = Game.new(['X', 'O', 3, 4, 'X', 'O', 7, 8, 'X'])
            expect(game.winner).to eql('X')
        end

        it 'when a column is filled' do
            game = Game.new(['O', 2, 'X', 'O', 'X', 6, 'O', 'X', 9])
            expect(game.winner).to eql('O')
        end
        context '#board_full?' do
    it 'when the board is filled completely' do
      game = Game.new(%w[X O X X O X O O X])
      expect(game.board_full?).to be true
    end

    it 'when the board is not filled completely' do
      game = Game.new([1, 'O', 'X', 'X', 5, 'X', 'O', 'O', 'X'])
      expect(game.board_full?).to be false
    end
  end

  describe '#valid_move?' do
    it 'when a valid input is passed as an Argument' do
      game = Game.new([*1..9])
      expect(game.valid_move?(1)).to be true
    end

    it 'when a invalid input is passed as an Argument' do
      game = Game.new([1, 'O', 'X', 'X', 5, 'X', 'O', 'O', 'X'])
      expect(game.valid_move?(3)).to be false
    end
  end

  describe '#check_winner?' do
    it 'when a valid combination is formed in the board' do
      game = Game.new(['X', 'X', 'X', 'O', 5, 'O', 7, 8, 9])
      expect(game.check_winner?).to eql([0, 1, 2])
    end

    it 'when no valid combination is formed in the board' do
      game = Game.new(['X', 2, 'X', 'O', 5, 6, 7, 8, 9])
      expect(game.check_winner?).to be false
    end
  end

  context '#draw?' do
    it 'when the game is a draw' do
      game = Game.new(%w[O X X X O O O X X])
      expect(game.draw?).to be true
    end
  end

  context '#position_taken?' do
    it 'when the position is already taken' do
      game = Game.new(['X', 2, 'X', 'O', 5, 6, 7, 8, 9])
      expect(game.position_taken?(1)).to be true
    end

    it 'when the position is not already taken' do
      game = Game.new(['X', 2, 'X', 'O', 5, 6, 7, 8, 9])
      expect(game.position_taken?(2)).to be false
    end
  end

  end
end