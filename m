Return-Path: <devicetree+bounces-185185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC54AD6C92
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:48:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA6D43A8A37
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1139322D7A7;
	Thu, 12 Jun 2025 09:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IuEdWg4U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AFA22B5B8
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749721704; cv=none; b=FJwjGdxkGXyDsVIKXDC2bu0VswKMUPb8AFZO0Ar/E8nWddjVLgSItDJ6Nwq3BCfNkJ0CPWhX7v7/Y/1qIix9ZNaALp7KI8hpOtMlFu/H1Wjw775yuLvHq27SRZE8kjbT7HLd6+K+Idz6oCXzCUeqF4Q3depkUr8AVB/c4tGWg2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749721704; c=relaxed/simple;
	bh=s0WO9dFDCSZUvYBIRb4/wfyft3Bl/vsjJiy9qqlHp30=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IxquUHWgGYFRIfY9cf/Ux+y8K6S8DsxrVhJbYdIoo86jcTTycBcBvi/ElfEZB7VWaYAu9/Q3joBo06EZfFvnoXqqNHE2i1O8mMRj+rPA3LNbcgXsAN7yHo+auDDnxKh8cWT5E6uY4ERlJkrP8BiOPbRK1e0FDi44VSFx1HgnHp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IuEdWg4U; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-450d0526132so190075e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749721700; x=1750326500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Myr5poVQQENs/D3wsYBB3gIB4ThR6y3TggVy/m0W1ic=;
        b=IuEdWg4UIE4kilJpREpfxmkDoiRg7GvQirNGT/vU3w90JtXiO/PL2n+8FQRPv0toek
         xJkRnTDPp2gJGrMxmgomYC3btPnzATNhI0ml8T13YrJU+1KMXpljWO3Q7j84qdJQQxdp
         Ox5XXhXGs0JpA0IIh224NKWv7yG8Lzr2f4siJAIPYT1u+pjod2Vd9u/aK15KZ6rqYiMT
         WiGrsTd37uVLxeIBPOPR3o6kj6RpS8Z+MGPwgytLiO6SxVEKcnFYVJpi2QoXueE/xt9M
         I4Wi17cJC9ZK0jtTXIo8l21fC95NdNkuWW0eF62TvzVhPW3mqdjNTb64qYDuWmloENip
         khVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749721700; x=1750326500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Myr5poVQQENs/D3wsYBB3gIB4ThR6y3TggVy/m0W1ic=;
        b=Wl8g2YyrUWfM3FxX4pcT6O4U8jU/1oipAvwzbCJgXSpgVpa5hLmXW9jeUyl4CNBvNI
         7c8BlStuUWFm3lzCOotyCmSZ20iDvZVaDwxOF0ImJN/s5DdRH5AaWRKRv+3XZNoUFMgC
         q5tC8dRvFL2l266KGO1MthUCUaMl3ZxEQ0UP8D0q2VFJqyb3Tp3cTrPawQxGwX/kdHvR
         PazRewAGciYLszxtTZnjgvDl6ZR7drAOIMB8LEkWjRp5PhjUR1TNIMuhVK7Sjl9Crf5c
         7cQRLdQFcU1nfa+UkObqxSgeGtutEyzG4WPFCMW9zAqS8lsVq3HcUQWRu80EDbXQAEPI
         My2w==
X-Forwarded-Encrypted: i=1; AJvYcCWoLX6nT0t8dFgofGxzVnQbzfmez7NUt/BgxXb7MJ6xOuEIt2tdwyRK91u6PeYNITNzEE9D3qr4sAdb@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ2myT8OuyvJlMHefsKw9pFjnKbW3z2hPjzg5Nwk+BIovDCBkq
	XDlASmDz6hsuVa/JHyEDEqAwLfjHsO1TPyg9xKT06rjaj8KOKKyqJpR+Zb/6/Ud1wVc=
X-Gm-Gg: ASbGncsvNqFWcggNuUxYL78Uz5+ilX1UwH3r+zs+lLPkrF6pjLsYUzlfKcu2yhOkrjG
	5tWtyPnKrSXu8gU0oGorTkCNgUQvbbYRhX9ZIuXR2jqx4dZuU1xV4S4JxPiBZAdutEWYmTuNuJp
	Kf4pQtkUePUXQYEDQXKV7ErA8UiBhLFW8M0BK4L9Qr0I+bTKOhawPGcznfDTf3AjlJyhD8h9prK
	VW04vcApeTw+/dX9RWHG7xGQhONzUfaKnBcO8J0vY5OrT1N98geaOZwz5fOJ10ItmVh1xcJVBCi
	Pu82LX1SsX/Vaq7UgQT6xTRrFB9KHhjDRb/t1Y6+UiFJKBvQdqGq0Ww3Rv7OE3N3T7/euoNRqg=
	=
X-Google-Smtp-Source: AGHT+IGQXEC55fXNFt2JcDplGna7M5lNHAnmfEE8oJ5P1ElgKnXBGbj/U/t/VrF0AYpAltsnHeHEgA==
X-Received: by 2002:a05:600c:859c:b0:453:c39:d0b1 with SMTP id 5b1f17b1804b1-45324875832mr17428305e9.2.1749721700200;
        Thu, 12 Jun 2025 02:48:20 -0700 (PDT)
Received: from kuoka.. ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532de8bd0bsm15394225e9.5.2025.06.12.02.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 02:48:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH 2/2] ARM: dts: s5pv210: Align i2c-gpio node names with dtschema
Date: Thu, 12 Jun 2025 11:48:09 +0200
Message-ID: <20250612094807.62532-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250612094807.62532-3-krzysztof.kozlowski@linaro.org>
References: <20250612094807.62532-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5159; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=s0WO9dFDCSZUvYBIRb4/wfyft3Bl/vsjJiy9qqlHp30=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSqJaVNvr5Yz4vK8Qo57gsKiWk04AUVgqe6ECk
 xIlKvemSS+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEqiWgAKCRDBN2bmhouD
 14XHD/0Yd7qjZhOwXmX0UZYY1e7KP75JIg60MWwMUTtusGK+CZk2Q16AOMkU4TJrVKeEzu0f5XA
 mk2NDcSH1+XoY2wcAmkIRHTHDr5xah1V2950DpiIq2vpgpDCZ/lceMZuor3gIFmxm+yIm/usmvf
 nR38ZUs04llYMwekUBRhGvvvZhsfhBoDD37oOy6NAiBS4v1PJDvGGtHjzOHBgv6PALRrnxCeQ8Y
 ooNKR2OIu12Qk9rXrrNh1iC+jHwY7L6hMWNk8u7uwRZ2khiheJgrIZBis+D3FPBcX2mBCCUk64w
 cIC9lKOEtf6y1cOJ9gaLPBQPyyMqZxCeAjB9FZ6DMt7WAkvzx1ZG7lODoxEEy80bLJU35OTOpDC
 CqelG2bU796EliLF7Ac/bqe1Z+BiqHCWc/Nv/WTJxdVB17fQYaMQAo4tnJSSO2tMiNr5tFJRtDC
 kWGDYvqTuxSO8A4atYT2futOlWbzyauhwCJNtK5NqKr6Z6MT4XoJ9siiUGV4rWcizIR+4NBUJI/
 Y+ZFHzXOnnFfaCpjgQLwidBByuteJP+7/FpXO92WxL42GTbAtg/LD7gTMLJRH2qdwax8sHmrLs8
 YAHG2tlDvz/XHZz4TgbhEEf305sEYQr3mDLxN/NUiglK+oEFjKFaIpk57MoBij/wIOYhgRxuHJc L+dE2mFHiK/84Gg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

New dtschema v2025.6 enforces different naming on I2C nodes thus new
dtbs_check warnings appeared for I2C GPIO nodes:

  s5pv210-fascinate4g.dtb: i2c-gpio-0 (i2c-gpio):
    $nodename:0: 'i2c-gpio-0' does not match '^i2c(@.+|-[a-z0-9]+)?$'
  s5pv210-fascinate4g.dtb: i2c-gpio-0 (i2c-gpio):
    Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'audio-codec@1a' were unexpected)

Rename the nodes to a generic i2c-[0-9]+ style with numbers continuing
the SoC I2C controller indexing (3 controllers) for simplicity and
obviousness, even if the SoC I2C controller is not enabled on given
board.  The names anyway would not conflict with SoC ones because of
unit addresses.

Verified with comparing two fdt (after fdtdump).

Reported-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Closes: https://lore.kernel.org/all/aCtD7BH5N_uPGkq7@shikoro/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210-aquila.dts  |  2 +-
 arch/arm/boot/dts/samsung/s5pv210-aries.dtsi  | 16 ++++++++--------
 arch/arm/boot/dts/samsung/s5pv210-galaxys.dts |  2 +-
 arch/arm/boot/dts/samsung/s5pv210-goni.dts    |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/s5pv210-aquila.dts b/arch/arm/boot/dts/samsung/s5pv210-aquila.dts
index 0f5c6cd0f3a1..e9ec2cc718e0 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-aquila.dts
+++ b/arch/arm/boot/dts/samsung/s5pv210-aquila.dts
@@ -62,7 +62,7 @@ bat_reg: regulator-2 {
 		regulator-max-microvolt = <3700000>;
 	};
 
-	i2c_pmic: i2c-pmic {
+	i2c_pmic: i2c-3 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj4 0 GPIO_ACTIVE_HIGH>;
 		scl-gpios = <&gpj4 3 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi b/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi
index 153514e80c9a..0a1a35f4f7cc 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/samsung/s5pv210-aries.dtsi
@@ -102,7 +102,7 @@ wifi_pwrseq: wifi-pwrseq {
 		power-off-delay-us = <500>;
 	};
 
-	i2c_sound: i2c-gpio-0 {
+	i2c_sound: i2c-3 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&mp05 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&mp05 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -150,7 +150,7 @@ wm8994: audio-codec@1a {
 		};
 	};
 
-	i2c_accel: i2c-gpio-1 {
+	i2c_accel: i2c-4 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj3 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpj3 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -170,7 +170,7 @@ accelerometer@38 {
 		};
 	};
 
-	i2c_pmic: i2c-gpio-2 {
+	i2c_pmic: i2c-5 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj4 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpj4 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -420,7 +420,7 @@ safe2_sreg: ESAFEOUT2 {
 		};
 	};
 
-	i2c_musb: i2c-gpio-3 {
+	i2c_musb: i2c-6 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj3 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpj3 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -442,7 +442,7 @@ fsa9480: musb@25 {
 		};
 	};
 
-	i2c_fuel: i2c-gpio-4 {
+	i2c_fuel: i2c-7 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&mp05 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&mp05 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -459,7 +459,7 @@ fg: fuelgauge@36 {
 		};
 	};
 
-	i2c_touchkey: i2c-gpio-5 {
+	i2c_touchkey: i2c-8 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj3 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpj3 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -485,7 +485,7 @@ touchkey@20 {
 		};
 	};
 
-	i2c_prox: i2c-gpio-6 {
+	i2c_prox: i2c-9 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpg2 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpg0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
@@ -513,7 +513,7 @@ light-sensor@44 {
 		};
 	};
 
-	i2c_magnetometer: i2c-gpio-7 {
+	i2c_magnetometer: i2c-10 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpj0 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
diff --git a/arch/arm/boot/dts/samsung/s5pv210-galaxys.dts b/arch/arm/boot/dts/samsung/s5pv210-galaxys.dts
index 879294412381..5863a1300cc1 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-galaxys.dts
+++ b/arch/arm/boot/dts/samsung/s5pv210-galaxys.dts
@@ -51,7 +51,7 @@ key-home {
 		};
 	};
 
-	i2c_fmradio: i2c-gpio-8 {
+	i2c_fmradio: i2c-11 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpd1 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		scl-gpios = <&gpd1 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
diff --git a/arch/arm/boot/dts/samsung/s5pv210-goni.dts b/arch/arm/boot/dts/samsung/s5pv210-goni.dts
index d32f42dd1bf5..079581f4dfec 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-goni.dts
+++ b/arch/arm/boot/dts/samsung/s5pv210-goni.dts
@@ -74,7 +74,7 @@ tsp_reg: regulator-3 {
 		enable-active-high;
 	};
 
-	i2c_pmic: i2c-pmic {
+	i2c_pmic: i2c-3 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpj4 0 GPIO_ACTIVE_HIGH>;
 		scl-gpios = <&gpj4 3 GPIO_ACTIVE_HIGH>;
-- 
2.45.2


