class Phase < ActiveHash::Base
  self.data = [
    { id: 0, name: "応募" },
    { id: 1, name: "書類選考" },
    { id: 2, name: "試験" },
    { id: 3, name: "一次面接" },
    { id: 4, name: "二次面接" },
    { id: 5, name: "最終面接" },
    { id: 6, name: "その他" }
  ]
end
