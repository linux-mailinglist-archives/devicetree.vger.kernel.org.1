Return-Path: <devicetree+bounces-112928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EFC9A3EC3
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29FBE1C23F43
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659061DE3A9;
	Fri, 18 Oct 2024 12:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RnkapNWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC811D7E30
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729255786; cv=none; b=phgDzX56Xt6pokyKRO30gZ/WA/6uqRuEc6aeFKcZdA51QZBNrlrv93R15bsHKOkhhuJ6y4RgLJ0vXyOwsJZPY4+LF/Pu9dnPU+9sju+hvz9BTB7f/qOGtl69LxYx+H/1knogUiFW9VhQg0y+74cdnWedQpq7UoiSGFrXJbztexo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729255786; c=relaxed/simple;
	bh=AnV9uqwauD/p+Ipu2NjrcrLLR9gUMAgdl4DXvw44W5E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rc+F8sgBhLulNc3RKPy3Rdd4WKnXbGlA9fgl8T3Q6XFwaBztS4AcXyKfE8NQq/Xq1ZQHM3B+ckYLWZuSlzJiz1HxyYKUFRmbSSVlByGXUBTYQdNwUCpTOM7JYQcYwUQ4ZJ5ftAk9FuJlsE1rS3NTdo9lFgkD2r/pYVteEREOF1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RnkapNWB; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d3ecad390so2295963f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1729255783; x=1729860583; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJdspRfhz1ofwrUGp/TbBa4ApP5hkfQr3qfOPVdknzk=;
        b=RnkapNWB1TWvTnDyfs7/kqMGLE7MDx2ZN3gi7iJDO2svNydv4kc7drUICUFUjP7E9i
         tJiE5Wd8V2GpDZF/vwL4Tw7HSUf5nvePFzudHWnyB7HH4IQQCWp6wiQ2smYITU+qEAqQ
         JxPlhdI2CgfiCMhU93uikyVLcdhRwgj3yazgC8WPtTjntGDHcX61y63xWJGL1MMagaq/
         4AEp7cPZNqiufpLAvrmBxJt+xUAolt1hAGqbxtElD3pMp3C9zt+xCEGPt+fC0O5jD8Ix
         H6I8kZqbz+iUUCbZwq4gfZJ5O0KLKuGucgjxONjwlQ6W2vqPKESgyAZGgOD1bVD8ybbl
         UkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729255783; x=1729860583;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJdspRfhz1ofwrUGp/TbBa4ApP5hkfQr3qfOPVdknzk=;
        b=RzqNOW/88HI3GfytyYpcIm5bnsWbbgu9yT8BoGRjJ8sq7Y+bFwwRJMHT+iBNStWOUi
         1kpe2XsFIluuY497p7lLVwJGnmHYsZiufABKnrtYNzaXYqndPVIgYmrIk0kYSadZHZ4q
         prAtsVtiy5qUMac5vDvO+oMnZ3YsuzXDrETz9mCvGOkMKua5sGSPvA8J32lqCeBrvjyY
         6SEH0lNsHzBB8pLGJQnl1AkSS5YhWen1ySlQ0PUjQB5Y5f0YFMuI1c4I19+g8hk5e2sl
         yL0M/7snPMzdPjx6dOjn37XMc4FOwRwYdLwyufxP6nejzTxPMRdkqr5GcXIMewfjO2L/
         6UXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjfRCHekqOaSPZGHelbBENBjjIHx+awxFOSE5bZLfOkx59wd6k1EfDJhu7rq+MxQPKBMeLkx7npImD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0ePzMysNQUr5VMnJpJMXpPhedFz6c0RxkYTSwF+qnEFVhrn/+
	rKfiVZFOXRKbjKxkrQWifvzNcJ0ZQdmjVbu8t36p6d+49eatmEAkHfkTMPF3lHo=
X-Google-Smtp-Source: AGHT+IGdjvdW/MSXDFzNk9XuBhliHLOOZGdDPdkY3CqJMApCdlk1N8cH39foFvu5S7a7vrkexWne9g==
X-Received: by 2002:adf:9cc6:0:b0:379:5c8:33fa with SMTP id ffacd0b85a97d-37d93b2d73amr4565113f8f.0.1729255782915;
        Fri, 18 Oct 2024 05:49:42 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:45a3:93e:5196:d8ce])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43160695d8fsm26640835e9.27.2024.10.18.05.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:49:42 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 18 Oct 2024 14:49:14 +0200
Subject: [PATCH v6 4/6] arm64: dts: qcom: sc8280xp-crd: enable bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-sc8280xp-pwrseq-v6-4-8da8310d9564@linaro.org>
References: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
In-Reply-To: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>, Kalle Valo <kvalo@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2765;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=PSP5k/7+o4RbhR6vZKPhMZtapkBQsdcYux59esMYuv0=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBnEllg+2Zow2g/M1aY5b0B51j4ddjbtagb/Buha
 CBljcgi9piJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZxJZYAAKCRARpy6gFHHX
 ckCYEADYxgGE2mbIEi1RMLbCKedCBFlNvRYaTHJOWhnqNos3f7Q+UNbQhhED8pUnctrjjbdLvC5
 D/PtREGG8+oJizHvOR4/Nmz9ZnK+3GTY6z4/nydo/yNb0oCkzFtxHHhusJJe5c7iBzMTcx53HKj
 KNFt6vMglibBeaM2zvGH88Xx2bETKeIFz6i93U0pTlHsZhc0Go/IUdbez5py7oge7oh3tDd2pWC
 OL4fx/yjl9ObSrg3jiV1bEU8gdCmUlJYDzNNU9szR1kjT7ifIwMHCU49D2uOSVHO4qa2gkouIIA
 3I8glAxiZcmjIyVnJy30ObZ4Z6WPp+fMbKgAoj+Dv1WLHp0JDNASEm6caMCfS092nlWPlxw9mvg
 S4ALWOmO/5oMO5zpvPD/VkXDklOU7hCMYhCm/lvzcap44ImgCg1nQp6mD3bnRrGVjzo41sIwhr7
 hri6o2esFg2bB5Q93E/Df6ZfwIR0m2x/fMk8WxFI0b8OgzSVcJuVZrzUS0TPfhW6NKpbZxXOzs3
 ETPqLfDyjdWqeR9Ae48p23XWulV48XxEQH8XMtOpS15dFkv4l7EEde5NoM4gO/xpgT5yCUnLJRY
 BTk9eWlurfq40vu7W7D2u1Khfvenpvp5HS8cvuHcS676pIeoJMkRuR+Y0/RvjMjgA0HKwhWgoHe
 s1aZRa4IepdzP3Q==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the bluetooth node for sc8280xp-crd and make it consume the outputs
from the PMU as per the new DT bindings contract.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 59 ++++++++++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index a02d8029ac2d..75adaa19d1c3 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -20,6 +20,7 @@ aliases {
 		i2c4 = &i2c4;
 		i2c21 = &i2c21;
 		serial0 = &uart17;
+		serial1 = &uart2;
 	};
 
 	backlight: backlight {
@@ -264,10 +265,11 @@ usb1_sbu_mux: endpoint {
 	wcn6855-pmu {
 		compatible = "qcom,wcn6855-pmu";
 
-		pinctrl-0 = <&wlan_en>;
+		pinctrl-0 = <&bt_en>, <&wlan_en>;
 		pinctrl-names = "default";
 
 		wlan-enable-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
+		bt-enable-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
 		swctrl-gpios = <&tlmm 132 GPIO_ACTIVE_HIGH>;
 
 		vddio-supply = <&vreg_s10b>;
@@ -748,6 +750,26 @@ &sdc2 {
 	status = "okay";
 };
 
+&uart2 {
+	pinctrl-0 = <&uart2_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn6855-bt";
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
+		vddaon-supply = <&vreg_pmu_aon_0p8>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p8>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
 &uart17 {
 	compatible = "qcom,geni-debug-uart";
 
@@ -893,6 +915,13 @@ hastings_reg_en: hastings-reg-en-state {
 &tlmm {
 	gpio-reserved-ranges = <74 6>, <83 4>, <125 2>, <128 2>, <154 7>;
 
+	bt_en: bt-en-state {
+		pins = "gpio133";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio25";
 		function = "gpio";
@@ -1086,6 +1115,34 @@ reset-n-pins {
 		};
 	};
 
+	uart2_default: uart2-default-state {
+		cts-pins {
+			pins = "gpio121";
+			function = "qup2";
+			bias-bus-hold;
+		};
+
+		rts-pins {
+			pins = "gpio122";
+			function = "qup2";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		rx-pins {
+			pins = "gpio124";
+			function = "qup2";
+			bias-pull-up;
+		};
+
+		tx-pins {
+			pins = "gpio123";
+			function = "qup2";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
+
 	usb0_sbu_default: usb0-sbu-state {
 		oe-n-pins {
 			pins = "gpio101";

-- 
2.43.0


