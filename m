Return-Path: <devicetree+bounces-162003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C9DA7656E
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 14:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1981F163F67
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 12:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CF01E32A3;
	Mon, 31 Mar 2025 12:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kHsdGu7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7629B1BC073
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 12:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743423049; cv=none; b=ZRJ0TZu0ZE+ypGbJW1uCojazpNH2KruwwwRcv5s9/lP9n9vBQhAKPXUuYqH1gKl+k3tBmKF7VpMrh+qqeYma+IQ75q6dniVKogp/5h0nTprV3AFKK65a4LISrEhNwuXs/BGT35ug8WMUWzZ0EuzpMzO83bTx0xrDyGPJRxq4QRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743423049; c=relaxed/simple;
	bh=5FQq6G6CcDVX/WJRqrI0CJelfhamUp2ah6wu3/cOoYQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F7C8GEApATYIUvTkxEctWQrepYUNW2qsEXkNSCWVL3wbCgKArT9IitH46Uu443a/DxCg3M8dk27dx5a44ljGJGofBQKKuj892lMnFGokoNZwaUj8bhZklHATwLLI9pFmFIjswpwxZAJuLQAAkRo8KjeuFwGOj6DToXFMO9TOsUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kHsdGu7m; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so2771355e9.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 05:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743423046; x=1744027846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=okpqta+/WuV57s9p5DTEKrgVp2I+VFSDY0MRg0XoSnw=;
        b=kHsdGu7mW5rF1LggZgXF+ue/tM5+Zj60JKkP7iQJCphZbIT4exo5MZHuRExOuOnjz9
         zK/uN9E04CmloSW9YPr+q501Hz2WtU5Bcy2eem5uR5Yb98qB1HEgnGRQs5phG2dklGKK
         R1Y8CY7ara0EX7m0lrN+iZ378HREqJE2oMHPZcoVEQEdIW9BjAQwQArWZrXONNOmbfDi
         H5Xv8Z5FA2Edcsu+ytOoA81RxLFSTU/OygDxqjk87IiIrkNNYlz4Jpgcqvum/yfceaq+
         kGe2sQM3tfv6PL4u+jyHOTPZdA29f5NnmdSV18VFu63g31nOObiq2XqCYfR9wcoIcLze
         QH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743423046; x=1744027846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=okpqta+/WuV57s9p5DTEKrgVp2I+VFSDY0MRg0XoSnw=;
        b=qM2aytkl8gFpvxbg6DuvmMhJ7oB1kwl0TFNsxOOv8SAAGrtnyXTq5BhiRjhEC4Nao8
         XP/ZFG/0mqwmLGR8QM7+giFwjh1FkaPGZ2nGRPdE4V57MiOgx+Qb5n/oKrTHZROgT2MA
         t9OVqwmG6FRyeov5RhunYnw8qd++y+cldNVZV1zVZYPjv5Lf1Yjov5+ROfcwCk9fFcgq
         ZDehkEg8R7aDafnQAJ66dbdcAWEuoReZsHiNQFMFE2Z6dcXLfz41HCrdLA5aoriZF/FX
         ACU4cJh1ax8EuDKlAjsOlqk3nWoZ2DOaBkYUSz1xlVjAYJjKpBo4y/fCCGIzqTH1YaOl
         wmjQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3n73xab5Wk/jrhsEo6iQROr9YAEuqGpqh51zxpaEUKvKyXEmanzct/BGeq+ACKL5gV2qjS0XmSOR7@vger.kernel.org
X-Gm-Message-State: AOJu0YzcfyGX5+wWePgGZyxV3pg8n51U+BuYG/EnSOqaCCcfhdgRt87z
	ikmTlQOb2vU5LYj8cM7PrObEDR0Sc4Y4e0AQKdTRf2v31ZTcncc9a78BerG4nf4=
X-Gm-Gg: ASbGncv4XX+tFUizOiWjPfW7vduQgY6lzxa2p2n3xeOh+KlggDZU5xia2K7XWesf7Ki
	0CzQtE405KV3fAMPRGP2zlOsOxB96jT9iM1zr4nuOejkVh6hTrs/l+IlN1zb7n0yE4GkNLAmpUf
	wjYMHS7uPftf8yfNvYOSetNG6aSISs9cbd8F677SEW0E65ebk1ayJLOozede/EzqlfyxMNwHzzY
	QJVKC+KFjDmRpnMVs0dzAnaE0VhOLcuF7ejdvtkiBw4BgjLZtfX+8IcmhjFOKSbjsDEXPJmbl2Y
	o1FSPEW7ofdPCnoLKSq1mVgwCG+yzAnjZZzuLQ5Bn8FtOVXtfPvfU1XG7KylP1oaD7zqkz2DtQn
	6O85EdNwO6XlUChDf37UcDEs=
X-Google-Smtp-Source: AGHT+IEzz4CgTrtL2IjSDR8RRNEQ/kYEnvAi0vIwUY4iCQ9PQ0DHcXncAtiFti+dDMrorBgDi5Zm0g==
X-Received: by 2002:a05:600c:5494:b0:43d:7a:471f with SMTP id 5b1f17b1804b1-43db6252fa8mr87142055e9.18.1743423045681;
        Mon, 31 Mar 2025 05:10:45 -0700 (PDT)
Received: from toyger.tail248178.ts.net (i5E863BED.versanet.de. [94.134.59.237])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d8fba3b13sm124137345e9.3.2025.03.31.05.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 05:10:44 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: align gpio-keys label format
Date: Mon, 31 Mar 2025 14:10:05 +0200
Message-ID: <20250331121011.385250-1-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Most devices follow the practise of capitilising all words in a label,
this seems to be the standard elsewhere too (e.g. run "evtest" on an x86
ThinkPad).

Adjust the stragglers to follow suite, and standardise on "Volume
Buttons" over "Volume keys" as the label for the entire device where
applicable.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---

This is really a drop in the ocean, a good next step would be to fix the
pm8941-pwrkey driver so your power button doesn't show up as
"pm8941_pwrkey".
---
 arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi | 4 ++--
 arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts    | 6 +++---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts   | 2 +-
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts     | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi       | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi  | 6 +++---
 arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 2 +-
 7 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
index e6a69d942a4a..452c455294d0 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
@@ -90,17 +90,17 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&vol_keys_default>;
 
 		button-vol-down {
-			label = "Volume down";
+			label = "Volume Down";
 			gpios = <&pm8998_gpios 5 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEDOWN>;
 			debounce-interval = <15>;
 			wakeup-source;
 		};
 
 		button-vol-up {
-			label = "Volume up";
+			label = "Volume Up";
 			gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEUP>;
 			debounce-interval = <15>;
 			wakeup-source;
diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
index 0cac06f25a77..2a62d58195fd 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
@@ -124,16 +124,16 @@ zap_shader_region: memory@f7900000 {
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		label = "Volume buttons";
+		label = "Volume Up";
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&vol_up_key_default>;
 
 		key-vol-up {
-			label = "Volume up";
+			label = "Volume Up";
 			gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEUP>;
 			debounce-interval = <15>;
 			wakeup-source;
@@ -141,9 +141,9 @@ key-vol-up {
 	};
 
 	gpio-hall-sensor {
 		compatible = "gpio-keys";
-		label = "Hall effect sensor";
+		label = "Hall Effect Sensor";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&hall_sensor_default_state>;
 
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 0f1c83822f66..0333e06227eb 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -54,9 +54,9 @@ gpio-keys {
 		pinctrl-0 = <&volume_down_default>, <&hall_sensor_default>;
 		pinctrl-names = "default";
 
 		key-volume-up {
-			label = "Volume up";
+			label = "Volume Up";
 			gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEUP>;
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 712f29fbe85e..1b00fd5b2c89 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -56,9 +56,9 @@ gpio-keys {
 		pinctrl-0 = <&volume_down_default>;
 		pinctrl-names = "default";
 
 		key-volume-up {
-			label = "Volume up";
+			label = "Volume Up";
 			gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEUP>;
 			debounce-interval = <15>;
 		};
diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index 99dafc6716e7..b60a41f71e29 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -129,9 +129,9 @@ gpio-keys {
 
 		label = "GPIO Buttons";
 
 		key-vol-up {
-			label = "Volume up";
+			label = "Volume Up";
 			linux,code = <KEY_VOLUMEUP>;
 			gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index 8a0f154bffc3..535b02d1b12c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -48,23 +48,23 @@ event-hall-sensor {
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		label = "Volume keys";
+		label = "Volume Buttons";
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&volume_down_gpio &volume_up_gpio>;
 
 		key-vol-down {
-			label = "Volume down";
+			label = "Volume Down";
 			linux,code = <KEY_VOLUMEDOWN>;
 			gpios = <&pm8998_gpios 5 GPIO_ACTIVE_LOW>;
 			debounce-interval = <15>;
 		};
 
 		key-vol-up {
-			label = "Volume up";
+			label = "Volume Up";
 			linux,code = <KEY_VOLUMEUP>;
 			gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
 			debounce-interval = <15>;
 		};
diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
index 85a928f98077..a7544d8b4fac 100644
--- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
+++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
@@ -68,9 +68,9 @@ gpio-keys {
 		pinctrl-0 = <&kypd_volp_n>;
 		pinctrl-names = "default";
 
 		key-volume-up {
-			label = "Volume up";
+			label = "Volume Up";
 			gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEUP>;
 		};
 	};
-- 
2.49.0


