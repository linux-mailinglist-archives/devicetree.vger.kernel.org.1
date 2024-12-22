Return-Path: <devicetree+bounces-133365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D0A9FA646
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 15:53:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9115D1887CBD
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 14:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A4618FDB2;
	Sun, 22 Dec 2024 14:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aZxUOHgc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B74818FC6B
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 14:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734879184; cv=none; b=NAuwSDZQGEK52E7yA1nL1z+e27NJuox1nVwHysM/VChsQ6BHkPT78y2gzpPkD1jJFerazbD12S49VHop3Qz5l0hYRoJIt0QAe4h/wAFbU6RT1nPmTEsPyicsswVJPXzDGHKHgBFh3EB21jZ2Dsu0U798+YiaFqfk387oKQSyJZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734879184; c=relaxed/simple;
	bh=+d33dOGNSMQlOHHkjlGTTjjfImS0dtwZ7ZPSkBlaEWM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gNBjaVSVEXBhb1fPkiNNnDdXAGT8UheqF7DCI+w/ONhYL8oI62zfrZvBU0FJBQ+GLNJxYa+iwKOJOusOn/OAFMEwB1E/394EHwsbETxO2P3mZ+BI8Ohgv8tv0CsQyfCnRiACT8UdAc+E3SjX7kEZC7pmeHXGT5Dr4Udkaqy/mjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aZxUOHgc; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa551d5dd72so64027366b.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 06:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734879180; x=1735483980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMZe3KIsDQb+Ch5185jS18YCIZb5/VxUA7wsA3ESW1g=;
        b=aZxUOHgcb3W5XVci2yenEwkalKnozqq29CZatva+hFnLPfDAMGJM0XpoB7aL5wIR/J
         2PBwvAshhc96JXuivO9MRPwKOf1VZnmydM+sSPQrS1mfib0glMiP+iTt67HnnLnlwLGj
         32y+cNWTuOetp7jpxWbi06S7hgQD+tgfC6OYTL0fGnW2heCzkJxRhNGBc0IitmyCJp/k
         qe/653JSd74BVinH+E7g4/V5eVdNBaDje/cK+ZCVHJJJ0z259Kmt6cWBB1WkaCNcBKIQ
         iXV8LzX4lC8g795Re7+gC4rl93OiOJMrhMASDEEDx0qzFU5ERKxuwgzxL3R7CXXDB0os
         5IMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734879180; x=1735483980;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMZe3KIsDQb+Ch5185jS18YCIZb5/VxUA7wsA3ESW1g=;
        b=UOQhBZXd+YWHOcVRChbgpiZVfx2+rCQgGPsM8BAmH8VLpBbeEdWK93LDVXB31GBRVe
         jZI9zkO/F4yNQtM8QKS9bK6bN/rufwgw41tqD41/T5ENF9/+XTFaR2UfOjfMsmmee31m
         pRogX4t3zMyz+4J2XG9oFIkxzat7O6u9e96iVlAl/69Y5/8Av1PgEaIZVIKxeoAc7Tli
         60KUYa507xiSU4/72cqn0ohzG6A7CMwgP8BwKw5kydY0GenCm23iaGv0zFlFBoEfIrfy
         DP48BPIXJDKv8biin7lArbOMjs+bAf41Ytn261tm42mij9rOzgEORxj10BPPZhJaorhr
         6N7w==
X-Forwarded-Encrypted: i=1; AJvYcCUZZmjcvWxnJnDU5kMsAmnY+0Zqd7d0eqHZNf8qoGECVohAYjRVJbt4atZtICAR4p0pAk/4nQP+B8CY@vger.kernel.org
X-Gm-Message-State: AOJu0YzgvXv8huwteSf2inZukaQvBjQU2fNBTHOk3uEcSmPhZcj0Zu8S
	iytYBEY+4BE1Crkk4tb0sfnLxbgNRiImCskTxAUkcvG+C2wf7uzJEWJmnUw0JkQ=
X-Gm-Gg: ASbGncuMuyFrcswAJH2ZILSUQaOGccCJGradNzQk3ayV5/WY6LRBMliDuyX+5TRYu5x
	tLGLYKz+iwXayJ8kyzB0vWtBE1w312c1/GbQ4i6UKwlb6JRAg5tTqySTXBnEPy7E1Ojb1e8FFOK
	vqzgpzyDvVFWKYnOT+cya6UT7NcDLtykPiB5dzbFdk/yV61QhfvK+sA1aKhNwSFL6pOycnlT2kb
	Clc8z71tfWLvEjy7u0t25/6jCvfES4W5+pL67e8sMjAsDNi8gHeuT8aQiQsCIlGe8I2ny9UaZ5x
	pz9S01uMCn9GgdUJo65SsomBgh/ILA==
X-Google-Smtp-Source: AGHT+IHjZBO20DhCS6VWRIkYCvaJqzjKDPYq8fCPXpEgvr/Ih/lPcG98CqFloHsurYEW0cVqBYl2ww==
X-Received: by 2002:a17:906:dc95:b0:aa6:75db:c34e with SMTP id a640c23a62f3a-aac3444a235mr315630266b.14.1734879179038;
        Sun, 22 Dec 2024 06:52:59 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe46f6sm395237866b.111.2024.12.22.06.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 06:52:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: exynos8895: Rename PMU nodes to fixup sorting
Date: Sun, 22 Dec 2024 15:52:57 +0100
Message-ID: <20241222145257.31451-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Nodes should be sorted by name but it is also nice to have same class of
devices together, so rename both PMU nodes (A53 and M2) to use "pmu"
prefix, instead of suffix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I know we have everywhere else in pure-ARM designs nodes "arm-xxx-pmu",
but this is too trivial and unimportant to change.  I however want to
avoid copying unsorted-style code to new patches.
---
 arch/arm64/boot/dts/exynos/exynos8895.dtsi | 48 +++++++++++-----------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos8895.dtsi b/arch/arm64/boot/dts/exynos/exynos8895.dtsi
index 90b318b2f08a..d31d74cc4580 100644
--- a/arch/arm64/boot/dts/exynos/exynos8895.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos8895.dtsi
@@ -26,30 +26,6 @@ aliases {
 		pinctrl7 = &pinctrl_peric1;
 	};
 
-	arm-a53-pmu {
-		compatible = "arm,cortex-a53-pmu";
-		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-affinity = <&cpu0>,
-				     <&cpu1>,
-				     <&cpu2>,
-				     <&cpu3>;
-	};
-
-	mongoose-m2-pmu {
-		compatible = "samsung,mongoose-pmu";
-		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-affinity = <&cpu4>,
-				     <&cpu5>,
-				     <&cpu6>,
-				     <&cpu7>;
-	};
-
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -149,6 +125,30 @@ oscclk: osc-clock {
 		clock-output-names = "oscclk";
 	};
 
+	pmu-a53 {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>,
+				     <&cpu1>,
+				     <&cpu2>,
+				     <&cpu3>;
+	};
+
+	pmu-mongoose-m2 {
+		compatible = "samsung,mongoose-pmu";
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu4>,
+				     <&cpu5>,
+				     <&cpu6>,
+				     <&cpu7>;
+	};
+
 	psci {
 		compatible = "arm,psci";
 		method = "smc";
-- 
2.43.0


