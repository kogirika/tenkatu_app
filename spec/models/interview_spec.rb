require "rails_helper"

RSpec.describe Interview, type: :model do
  describe "selectionの保存" do
    before do
      @in = FactoryBot.build(:interview)
    end
    context "保存がうまくいくとき" do
      it "すべての値が正しく入力されていれば保存できること" do
        expect(@in).to be_valid
      end
      it "必須以外が抜けていても保存できること" do
        @in.charge, @in.memo = nil
        expect(@in).to be_valid
      end
    end
    context "保存がうまくいかないとき" do
      it "エントリー日が空だと保存できない" do
        @in.interview_day = ""
        @in.valid?
        expect(@in.errors.full_messages).to include("面接日を入力してください")
      end
      it "エントリー日が不正だと保存できない" do
        @in.interview_day = "ああああ"
        @in.valid?
        expect(@in.errors.full_messages).to include("面接日を入力してください")
      end
      it "エントリー日が不正だと保存できない" do
        @in.interview_day = "2020-02-31"
        @in.valid?
        expect(@in.errors.full_messages).to include("面接日を入力してください")
      end
    end
  end
end