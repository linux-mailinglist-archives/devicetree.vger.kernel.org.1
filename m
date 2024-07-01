Return-Path: <devicetree+bounces-82002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B20C91E2FB
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:57:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE5D71C21683
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392CC16D4DA;
	Mon,  1 Jul 2024 14:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fcSlIyyY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C3216CD24
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 14:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719845814; cv=none; b=sxSDToPn4kf8xk+y2glNQ759XsC/oxL3Z9A1fh8wDEGK+QrdvRIypjhhlWXpjHQOJ9CTDeGPNa4PaJP3Nzu49ia+RIHkQ26waSdEtpcGrrbwpUnDTBWKaioaAh0HtLs65PID3xNFVbkN+OWmq0Z6+ba3odAFajtoOjGhXYgFnlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719845814; c=relaxed/simple;
	bh=8rvACG9Tldw0R7sQczKSuOfqyU9GkDAAi2aaVVlRDUg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UtBNLwRUtRjvP27OeE4jWFNPGS0EW1I8On3jlRsaI6L1OcKd+5NdVRXrz6fZaNrfn1ic4jXxaFWAAAiaYOBbYhvVjrbRy+rhSkxwE6p4HrW+73g1iOWQZfOPTRsTg0aZTW0uWDgwEz5spZzLzlah+F4aYv5u9uXpQF4poHnWjII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fcSlIyyY; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52cdf4bc083so4590814e87.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 07:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719845810; x=1720450610; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NUpi2VJkABStrX7HzvU2tGfXK2NmMthUnHbMUzSZqBo=;
        b=fcSlIyyY3/ZbNi/1pyhM9FypXoihaBoNjOwaMtM33wvV2Mmc3SaYZN8tBBNHkgTdcX
         C5MiZbO/YE9rlh71PuJcXiIH4rUJPjjOX9hT3bk5gSTakVGFr45xnG5qZCiTrknxH4DY
         t2+WktPb3ijHiH7dtxVU4xcRxQqaPz6R3Ci1YOE+yAusF7gKPLWnhVdyygyHfxTYAPrW
         Lh9lUEnliSfz230Qokp1UiEZrYZi/xFP/pcSWFyhDLm/KM83jhiVvKC3lDFBCGYEhz5U
         ymJWWhowhT7PnxsEDdCXwjZH9whM449cI5rfB9am9XHlPHTT/LKSq0EEbKIsdIbp3oUW
         Hj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719845810; x=1720450610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NUpi2VJkABStrX7HzvU2tGfXK2NmMthUnHbMUzSZqBo=;
        b=mbgBsxCEDzlBiRqvKFqElwCzMWZwylJMmg/5jl4rILRmh+4haX1uPqoMQT91HV1Tzk
         wWXp0zpVkxDBQn+62Mlu5ZyKMVgewn2ZOH4f9SwHYGCo0EflFkC42XNmj2byFXKEmdan
         jLEObwhlLODUjWZ046gJZBZzuv4kYgsmTfP2pqA/jGVL5BxYYApItqvfTxxXIWFRagRE
         mPG36XklhiDBoqJHMuyvenw9ZKVAzTuqLlChXtejaQRqQ6ddcdptp/O2RgwJdYqrN2UB
         yVDNcUytp0GPFooO7oVVfhT9Dqzjp8KfO1VD52X8JtwNAOi9EW+bZhc6eD3f/2MK9KyZ
         525g==
X-Forwarded-Encrypted: i=1; AJvYcCXsdcVCItnImLaa8lFQ7CkawYE/NqiLTj0QPFEe6pk6ukr9jjJJts0+SMFamEITS5pOKYPOT39ynVAqHWQWOm2loHF/IwuOlJUhqg==
X-Gm-Message-State: AOJu0YyishkfVloZAvA3m8QZTVb0SJIeBmZ1yg9T0WqxgdBDCs6GCcix
	KsRblk5Dht2CPaBeMKkWD76tbYmHmuL3r1Tkmk1XfleTsc3PF5avTM7mzu8QWxs=
X-Google-Smtp-Source: AGHT+IFFp745yEV965FCA9ZDSTzXceFaQmPua61KrHO+jS7pR48Zr2ItYavo6QP7EPy0qxYjywPA6Q==
X-Received: by 2002:a05:6512:3b88:b0:52c:e180:4eba with SMTP id 2adb3069b0e04-52e8272ab82mr4811218e87.62.1719845810194;
        Mon, 01 Jul 2024 07:56:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0c0f99sm160062915e9.41.2024.07.01.07.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 07:56:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 01 Jul 2024 16:56:38 +0200
Subject: [PATCH 5/7] ARM: dts: marvell: orion: drop incorrect
 address/size-cells in GPIO keys
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-dts-marvell-cleanup-v1-5-4773bd20691a@linaro.org>
References: <20240701-dts-marvell-cleanup-v1-0-4773bd20691a@linaro.org>
In-Reply-To: <20240701-dts-marvell-cleanup-v1-0-4773bd20691a@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3473;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=8rvACG9Tldw0R7sQczKSuOfqyU9GkDAAi2aaVVlRDUg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmgsOnYGPTqX0InmDJtlGWHZ8pHsKB+xFcgOmO+
 c/3NIdFdkeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZoLDpwAKCRDBN2bmhouD
 11YkD/0eImE54i7vier1CiQt2gmuahj1JbBKzyoZEacQ5RTErV27ttNXgFxKeillcW5MMDvd+z5
 eSor3RtcGQzjfmVb/M8VPHV++mCZSVIk8mXv/L1Kju1MQPR+Sk8Zpzg1Vm62Qj7AZipqRLq/whJ
 NgzIXIUF4z5L/rse9q2pAu/RwwCwsi2OUUgJLz1Zyibij4nH8nDYoqOkmCdw6hZzD6padk33++W
 9ZimJ+h1JdZ3nOVLMqlPscZYdgblIfAD56rMPsznAbP0WFO9bToz5Z/sFtQUNXO8JLBPZ5uRalh
 aTEiRjYYiVMprk3wXbJa9aoT+dlPoJ7jC9oUTZxkjt0uRjrDmije4z2yKxLgZ98bJ7GdpNKD+L/
 7gfajGJw8UqtonIaSdW6QobEbfPcYjcCjfAzJSmPZPuEs9SqjIqngeHF83qJg2UKibhh1OjN3V6
 eqD1wjKXalmsEnn7TXMgZcxbXnAg4rIThvpgHU+nTuW7jzKO/QC4QtSc7OmTzk0hNDW37dyI3p5
 q1b6hiJ1PjIOKMu4FwRKYndL7q7z0jg6R8g9IYfED9biLtgwrN5hpBps3CLM5FgbCFx8q8YJcXY
 z6L4h3aqYLbAxTdziYjw701T8cfaQOwAdNu4PtQSjEOhjdLQ7iMFL5Fy4VqFmrh0r37cOBFsYtB
 zFqu1u4rZF6kpyQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Bindings do not allow address/size-cells in GPIO keys and the GPIO keys
is not a bus, see dtbs_check warnings:

  orion5x-lacie-ethernet-disk-mini-v2.dtb: gpio-keys: '#address-cells', '#size-cells' do not match any of the regexes: '^(button|event|key|switch|...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/marvell/mvebu-linkstation-gpio-simple.dtsi      | 2 --
 arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts            | 2 --
 arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts | 5 ++---
 arch/arm/boot/dts/marvell/orion5x-lswsgl.dts                      | 2 --
 arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts     | 2 --
 5 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/mvebu-linkstation-gpio-simple.dtsi b/arch/arm/boot/dts/marvell/mvebu-linkstation-gpio-simple.dtsi
index c2d87ba6190a..055ac754c5fd 100644
--- a/arch/arm/boot/dts/marvell/mvebu-linkstation-gpio-simple.dtsi
+++ b/arch/arm/boot/dts/marvell/mvebu-linkstation-gpio-simple.dtsi
@@ -48,8 +48,6 @@
 / {
 	gpio_keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		pinctrl-0 = <&pmx_power_switch>;
 		pinctrl-names = "default";
 
diff --git a/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts b/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
index 3d6c5af0e843..12a4aac2633e 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
@@ -35,8 +35,6 @@ gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&pmx_buttons>;
 		pinctrl-names = "default";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		button-front {
 			label = "Front Push Button";
diff --git a/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts b/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts
index f17e25ac98dd..a7586370b1d5 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lacie-ethernet-disk-mini-v2.dts
@@ -39,9 +39,8 @@ gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&pmx_power_button>;
 		pinctrl-names = "default";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		button@1 {
+
+		button-1 {
 			label = "Power-on Switch";
 			linux,code = <KEY_POWER>;
 			gpios = <&gpio0 18 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
index e2829fb0c8b2..35dffb24b8b5 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
@@ -74,8 +74,6 @@ gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&pmx_buttons>;
 		pinctrl-names = "default";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		key-func {
 			label = "Function Button";
diff --git a/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts b/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
index 90ce5fa883a4..cb1bd24b7ae3 100644
--- a/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
@@ -35,8 +35,6 @@ gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-0 = <&pmx_buttons>;
 		pinctrl-names = "default";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		key-power {
 			label = "Power";

-- 
2.43.0


