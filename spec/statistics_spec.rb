describe "Statistics" do
  let(:beginner) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:intermediate) { [17, 20, 32, 6, 35, 23, 7, 3, 27, 34, 17, 19] }
  let(:advanced) { [47, 875, 281, 576, 446, 379, 352, 353, 922, 971, 127, 727, 687, 669, 17, 457, 341, 154, 331, 972, 820, 268, 637, 281, 630, 85, 734, 269, 889, 179, 281, 148, 846, 481, 943, 530, 226, 763, 281] }
  let(:expert) { [39.2, 91.92, 993.6, 149.42, 927.84, 245.95, 95000.67, 160.81, 754.8, 781.5, 446.43, 695.33, 554.1, 690.57, 392.4, 624.48, 816.28, 461.27, 0.2, 467.68, 779.13, 812.2, 128.97, 685.95, 601.0, 87.11, 257.15, 686.9, 440.52, 472.97, 109.26, 812.99, 355.33, 264.53, 336.72, 920.4, 861.72, 578.84, 462.28, 982.56, 538.7, 425.92, 471.91, 491.45, 196.82, 302.86, 542.7, 178.58, 17.87, 300.85, 772.4] }

  describe "#mean" do
    it "finds the mean for a series of nine numbers" do
      expect(beginner.mean).to eq(5)
    end

    it "finds the mean for a series of eleven numbers" do
      expect(intermediate.mean).to eq(20)
    end

    it "finds the mean for a series of thirty-nine numbers" do
      expect(advanced.mean).to eq(486.54)
    end

    it "rounds to the nearest hundredth place" do
      expect(expert.mean).to eq(2336.69)
    end
  end

  describe "#median" do
    it "finds the mean for a series of nine numbers" do
      expect(beginner.median).to eq(5)
    end

    it "finds the median for a series of eleven numbers" do
      expect(intermediate.median).to eq(20)
    end

    it "finds the median for a series of thirty-nine numbers" do
      expect(advanced.median).to eq(446)
    end

    it "finds the median for a series of fifty-one numbers" do
      expect(expert.median).to eq(471.91)
    end
  end

  describe "#mode" do
    it "finds the mode for a series of nine numbers" do
      beginner = [1, 2, 3, 4, 5, 6, 7, 8, 9, 8]
      expect(beginner.mode).to eq(8)
    end

    it "finds the mode for a series of eleven numbers" do
      expect(intermediate.mode).to eq(17)
    end

    it "finds the mode for a series of thirty-nine numbers" do
      expect(advanced.mode).to eq(281)
    end

    it "finds the mode for a series of fifty-one numbers" do
      expert = [39.2, 91.92, 993.6, 149.42, 927.84, 245.95, 95000.67, 160.81, 754.8, 781.5, 446.43, 695.33, 554.1, 690.57, 392.4, 624.48, 816.28, 461.27, 0.2, 245.95, 467.68, 779.13, 812.2, 128.97, 685.95, 601.0, 87.11, 257.15, 686.9, 440.52, 472.97, 109.26, 812.99, 355.33, 264.53, 336.72, 920.4, 861.72, 578.84, 462.28, 982.56, 538.7, 425.92, 471.91, 491.45, 196.82, 302.86, 542.7, 178.58, 17.87, 300.85, 772.4]
      expect(expert.mode).to eq(245.95)
    end
  end

end
