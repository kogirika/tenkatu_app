require "rails_helper"

RSpec.describe Selection, type: :model do
  describe "selectionの保存" do
    before do
      @s = FactoryBot.build(:selection)
    end
    context "保存がうまくいくとき" do
      it "すべての値が正しく入力されていれば保存できること" do
        expect(@s).to be_valid
      end
      it "必須以外が抜けていても保存できること" do
        @s.agent, @s.position, @s.url, @s.place, @s.sumally, @s.appeal, @s.anxiety,@s.memo ,@s.refusal_reason = nil
        expect(@s).to be_valid
      end
    end
    context "保存がうまくいかないとき" do
      it "企業名が空だと保存できないこと" do
        @s.company_name = ""
        @s.valid?
        expect(@s.errors.full_messages).to include("企業名を入力してください")
      end
      it "フェーズが空だと保存できない" do
        @s.phase_id = nil
        @s.valid?
        expect(@s.errors.full_messages).to include("フェーズを入力してください")
      end
      it "フェーズが範囲外の数字だと保存できない" do
        @s.phase_id = 10
        @s.valid?
        expect(@s.errors.full_messages).to include("フェーズを選択してください")
      end
      it "エントリー日が空だと保存できない" do
        @s.entry_day = ""
        @s.valid?
        expect(@s.errors.full_messages).to include("エントリー日を入力してください")
      end
      it "エントリー日が不正だと保存できない" do
        @s.entry_day = "ああああ"
        @s.valid?
        expect(@s.errors.full_messages).to include("エントリー日を入力してください")
      end
      it "エントリー日が不正だと保存できない" do
        @s.entry_day = "2020-02-31"
        @s.valid?
        expect(@s.errors.full_messages).to include("エントリー日を入力してください")
      end
      it "urlが不正だと保存できない" do
        @s.url = "ああああ"
        @s.valid?
        expect(@s.errors.full_messages).to include("URLは不正な値です")
      end
    end
  end
end