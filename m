Return-Path: <devicetree+bounces-253417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 558A4D0C3B7
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 22:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55A9F301294C
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 21:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B07330C354;
	Fri,  9 Jan 2026 21:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Y95o7UR5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914E0306B37
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 21:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767992557; cv=none; b=O32yxAGABEt+eFnTPAapO61bzOQ9wWg2NBEFDbIOrAJmCRoIZ5MVvcf/xg6DM2J6QzufGjdaaF+q8L5KulsY4lZtpdejrkxcIzjETnc0lc4Fu+yXKYsmZDVVaMqjEg05vdk+GCbqsEAyfWZ125L8+ckYtpqG/VV0l2nztVLGSfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767992557; c=relaxed/simple;
	bh=MIhCbUC5ocN+9NwYvrFWPw2726/aOQXhvOjlUZfkMXc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ia1VLSL1aFFJcxDlySG60syjbfxHmiwBcKz1o52ALW8xnhC7eiJPYGUtQ7XKlLuuKmTcuF93YWJuyVwbglfLhLg50tlnjCC9s09YSYhemzD33fKRjrcA6kF7R3Qr3eGuC09idySJB+MbffJzzMvJubAi7N6BNj9lE24PRRCiE68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Y95o7UR5; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b7277324204so728925266b.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 13:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1767992549; x=1768597349; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fV2e32+Ij+WSa21EamLUbL8uiXqtCH1kWHqaBcm+AnE=;
        b=Y95o7UR5Urvhvw766zVSn0i9xxTivqNBiv7mpxYqQht0SDiapSTxwtH2US8Huw0kd3
         jjDLdSeIq9pHUVSCS0VDIwNN3fKjgMlDBNnZIiaKWNkFJFp6wXgrQ033nXltrQXPnYpQ
         uHRC2egRHcpxWbchUkxJE7/es33WV6DO2u2V/jWxOdMPmiNNbZsDy/ASN6cI8b2Cp9Tr
         EYljI7M5YMPRf2LOJfVGhZ/Etr0bBmiHKuAmhC7qjUX28M3qSbijzWwWclacIOxlR6Ij
         KQngEAqEbM6Ytr1D5QJj8n0Um2Dg6tVhQVs8Q1XrgKtkTG0+V+kWSy0iHgsZLgh7cUnk
         9khA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767992549; x=1768597349;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fV2e32+Ij+WSa21EamLUbL8uiXqtCH1kWHqaBcm+AnE=;
        b=FgDhbOW4UO0hutfczB3uKaCbo4qpcMekMCYQFWjnslCjjJa+qXpphdEHtW4ybpN0IW
         tneghaoazA9Pzv3QFvMMcvcBzmRB41amH0PNBNp/VRviXcirZf896/EVdzBxvTaLeoIq
         /c4SCxM1JOFrxYkWyPBaXqOHANTHgGq5uyOWAYAXQfmNlqv1f7SvELE5CYsQjhmLGjvx
         jlJuKTv3wtKh4XxrgP7aXRQzY+YWebdaTPYoSM80eHDiK/egs3M7b0KULUipayYEh1DP
         PQTpSk6IuA8233JG5uA7zNB0IVy9rdXJn1NABAyMhuLWRDXQCJcpmMJV/jZFgkOjGVNW
         diZg==
X-Forwarded-Encrypted: i=1; AJvYcCUsuJz9smMI71OYpVuqoQE/hOahFP1or4DSqxI9YmOZ01aix+VwcXNDNRTmkhEeim6QQGNZFsLbU+ic@vger.kernel.org
X-Gm-Message-State: AOJu0YymmBs0Exwuib17GTMzPgpeD42kuZmHzsYQDkTA4HlORj5dD4TX
	4mPCTp02WX7Jf+pBa0+w+YNvCSy7DXtytcwLVwXot+ZbL9VjjYCMVSmO
X-Gm-Gg: AY/fxX4MXuU1QObpSBA3q3fFTzrbOLHLoB4G99oLRb37J1nPX1Xf7tbQvNIdL2SnD0P
	qqn3IKjwHm4W5N+V6v+k+8F6T3SLj02t2+tQi4JaYGVbxFpQgj/BbH5dwBlKecicX2DfbtfSxzx
	/8GkLx5yi8eJzK6V7tY4cseJ2M2jdW+ChZs87B6x6yQqOlF0ib6dq9J5Fr6HizCxnLjspfQNMcX
	eU0+YTgu+4RFABvT5BGtpoReQ0ObqT+sR/PjDUsGgw09fWGzYmbihmuPqOWTrJznb2P3nt8YmNv
	HqCXAAJoCUJbc7UQnYg+36dZYUDZkAfW2oWpH/D4gukCJXdWsPCLqK7FKnbgk2yrKo87iic+BIG
	qoNHKvUsHRvyaU9t3zrUPlOjvhbC5KnEL30LIHuh3tXNarc7AW5lu4tugJA/ZETg2BmojW6UWt2
	71ekwD9BP+O6vhsJ9sj0PCg/Xxwz2dhPIli/RVfyWtcwyx/Hd3S6CtfHvGXmhpYWHBYdUOJv0y7
	WYXH19LRhJDxBBtZ0/faKm7oRHRtrRh+1ZuZB+/p80=
X-Google-Smtp-Source: AGHT+IGRZySNRyM85Hacs42nYDTPpBQ3MX8sowJF4XP7WFryeun3vhdWyZgSoov4UeJOWt3GLTnYCQ==
X-Received: by 2002:a17:907:7f86:b0:b84:2b4b:ab12 with SMTP id a640c23a62f3a-b84453a1251mr1037515966b.40.1767992548990;
        Fri, 09 Jan 2026 13:02:28 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-afbb-db00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:afbb:db00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b842a4d3113sm1217894866b.43.2026.01.09.13.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 13:02:27 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2] arm64: dts: amlogic: move CPU OPP table and clock assignment to SoC.dtsi
Date: Fri,  9 Jan 2026 22:02:17 +0100
Message-ID: <20260109210217.828961-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the assignment of the CPU clocks and the CPU OPP table(s) from
board.dts to SoC.dtsi to reduce the code duplication.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Changes since v1 at [0]:
- rebase on top of 6.19-rc1 (previously I had a temporary change as
  parent of this one (which resulted in v1 not applying)


[0] https://lore.kernel.org/linux-amlogic/890f1ce6-60d2-47d4-8552-940f3abd7c1e@linaro.org/T/#m25c47d91bbc194cc228ea3c4efc653edccadf7db


 .../boot/dts/amlogic/meson-g12a-fbx8am.dts    |  8 -------
 .../dts/amlogic/meson-g12a-radxa-zero.dts     |  8 -------
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  8 -------
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  8 -------
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  8 -------
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  8 +++++++
 .../amlogic/meson-g12b-a311d-libretech-cc.dts | 13 ----------
 .../boot/dts/amlogic/meson-g12b-a311d.dtsi    | 24 +++++++++++++++++++
 .../dts/amlogic/meson-g12b-bananapi-cm4.dtsi  | 12 ----------
 .../boot/dts/amlogic/meson-g12b-bananapi.dtsi | 12 ----------
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 12 ----------
 .../amlogic/meson-g12b-odroid-go-ultra.dts    | 12 ----------
 .../boot/dts/amlogic/meson-g12b-odroid.dtsi   | 12 ----------
 .../dts/amlogic/meson-g12b-radxa-zero2.dts    | 12 ----------
 .../boot/dts/amlogic/meson-g12b-s922x.dtsi    | 24 +++++++++++++++++++
 .../boot/dts/amlogic/meson-g12b-w400.dtsi     | 12 ----------
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  7 ++++++
 .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     |  8 -------
 .../boot/dts/amlogic/meson-sm1-bananapi.dtsi  |  8 -------
 .../dts/amlogic/meson-sm1-khadas-vim3l.dts    |  8 -------
 .../boot/dts/amlogic/meson-sm1-odroid.dtsi    |  8 -------
 .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  9 -------
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  8 -------
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  8 +++++++
 24 files changed, 71 insertions(+), 186 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
index d0a3b4b9229c..abf6b63ea0d7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
@@ -265,26 +265,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &ethmac {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
index 4353485c6f26..a85f383a1699 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
@@ -218,26 +218,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cvbs_vdac_port {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index f39fcabc763f..5b6716aeaae5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -312,26 +312,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cvbs_vdac_port {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index b5bf8ecc91e6..dd9da7a5ec5f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -405,26 +405,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &clkc_audio {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 5ab460a3e637..015e3c7e3a91 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -261,26 +261,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cvbs_vdac_port {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 1321ad95923d..51317d11f263 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -25,6 +25,8 @@ cpu0: cpu@0 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		cpu1: cpu@1 {
@@ -40,6 +42,8 @@ cpu1: cpu@1 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		cpu2: cpu@2 {
@@ -55,6 +59,8 @@ cpu2: cpu@2 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		cpu3: cpu@3 {
@@ -70,6 +76,8 @@ cpu3: cpu@3 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		l2: l2-cache0 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
index 82546b738977..5747acf8f337 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
@@ -6,7 +6,6 @@
 
 /dts-v1/;
 
-#include <dt-bindings/clock/g12a-clkc.h>
 #include "meson-g12b-a311d.dtsi"
 #include "meson-libretech-cottonwood.dtsi"
 
@@ -74,38 +73,26 @@ sound {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &pwm_ab {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
index 8ecb5bd125c1..f15baa708b36 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
@@ -109,3 +109,27 @@ opp-2208000000 {
                 };
 	};
 };
+
+&cpu0 {
+	operating-points-v2 = <&cpu_opp_table_0>;
+};
+
+&cpu1 {
+	operating-points-v2 = <&cpu_opp_table_0>;
+};
+
+&cpu100 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
+
+&cpu101 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
+
+&cpu102 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
+
+&cpu103 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
index 39011b645128..7a204d324dd4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
@@ -153,38 +153,26 @@ &cecb_AO {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &ext_mdio {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 1b08303c4282..4321d08d11a6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -261,38 +261,26 @@ &cecb_AO {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &ethmac {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index fc737499f207..b16247e0df9f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -49,38 +49,26 @@ vddcpu_b: regulator-vddcpu-b {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &pwm_ab {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
index d5938a4a6da3..c81d7fdbe2f5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
@@ -279,38 +279,26 @@ &arb {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 /* RK817 only supports 12.5mV steps, round up the values */
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
index 3298d59833b6..88d995006f94 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
@@ -225,38 +225,26 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu_thermal {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index 1e5c6f984945..e95e193eaebc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -257,38 +257,26 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu_thermal {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
index 19cad93a6889..eef98add05c6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
@@ -99,3 +99,27 @@ opp-1908000000 {
 		};
 	};
 };
+
+&cpu0 {
+	operating-points-v2 = <&cpu_opp_table_0>;
+};
+
+&cpu1 {
+	operating-points-v2 = <&cpu_opp_table_0>;
+};
+
+&cpu100 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
+
+&cpu101 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
+
+&cpu102 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
+
+&cpu103 {
+	operating-points-v2 = <&cpub_opp_table_1>;
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
index 9b6d780eada7..4834f418bef5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
@@ -211,38 +211,26 @@ &cecb_AO {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu100 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu101 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu102 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cpu103 {
 	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
 };
 
 &cvbs_vdac_port {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 23358d94844c..18506d54d239 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -57,6 +57,7 @@ cpu0: cpu@0 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_l>;
 			#cooling-cells = <2>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		cpu1: cpu@1 {
@@ -73,6 +74,7 @@ cpu1: cpu@1 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_l>;
 			#cooling-cells = <2>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		cpu100: cpu@100 {
@@ -89,6 +91,7 @@ cpu100: cpu@100 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_b>;
 			#cooling-cells = <2>;
+			clocks = <&clkc CLKID_CPUB_CLK>;
 		};
 
 		cpu101: cpu@101 {
@@ -105,6 +108,7 @@ cpu101: cpu@101 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_b>;
 			#cooling-cells = <2>;
+			clocks = <&clkc CLKID_CPUB_CLK>;
 		};
 
 		cpu102: cpu@102 {
@@ -121,6 +125,7 @@ cpu102: cpu@102 {
 			i-cache-sets = <64>;
 			next-level-cache = <&l2_cache_b>;
 			#cooling-cells = <2>;
+			clocks = <&clkc CLKID_CPUB_CLK>;
 		};
 
 		cpu103: cpu@103 {
@@ -137,6 +142,8 @@ cpu103: cpu@103 {
 			i-cache-sets = <64>;
 			next-level-cache = <&l2_cache_b>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpub_opp_table_1>;
+			clocks = <&clkc CLKID_CPUB_CLK>;
 		};
 
 		l2_cache_l: l2-cache-cluster0 {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
index 9be3084b090d..661e454ca673 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
@@ -145,26 +145,18 @@ &cecb_AO {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU1_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU2_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU3_CLK>;
 };
 
 &cvbs_vdac_port {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
index 5e07f0f9538e..f0e4b168a411 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
@@ -183,26 +183,18 @@ &arb {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU1_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU2_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU3_CLK>;
 };
 
 &ext_mdio {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
index a3d9b66b6878..4e1e9a502666 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
@@ -49,26 +49,18 @@ sound {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU1_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU2_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU3_CLK>;
 };
 
 &pwm_AO_cd {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
index c4524eb4f099..ad886d446e96 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -248,26 +248,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU1_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU2_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU3_CLK>;
 };
 
 &ext_mdio {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
index 5daadfb170b4..2a16f54332df 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
@@ -6,7 +6,6 @@
 
 /dts-v1/;
 
-#include <dt-bindings/clock/g12a-clkc.h>
 #include "meson-sm1.dtsi"
 #include "meson-libretech-cottonwood.dtsi"
 
@@ -62,24 +61,16 @@ sound {
 
 &cpu0 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU1_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU2_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU3_CLK>;
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 024d2eb8e6ee..e275b0f36b09 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -357,26 +357,18 @@ &clkc_audio {
 
 &cpu0 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU_CLK>;
 };
 
 &cpu1 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU1_CLK>;
 };
 
 &cpu2 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU2_CLK>;
 };
 
 &cpu3 {
 	cpu-supply = <&vddcpu>;
-	operating-points-v2 = <&cpu_opp_table>;
-	clocks = <&clkc CLKID_CPU3_CLK>;
 };
 
 &ethmac {
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index e5db8ce94062..8f5b850b1774 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -63,6 +63,8 @@ cpu0: cpu@0 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU_CLK>;
 		};
 
 		cpu1: cpu@1 {
@@ -78,6 +80,8 @@ cpu1: cpu@1 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU1_CLK>;
 		};
 
 		cpu2: cpu@2 {
@@ -93,6 +97,8 @@ cpu2: cpu@2 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU2_CLK>;
 		};
 
 		cpu3: cpu@3 {
@@ -108,6 +114,8 @@ cpu3: cpu@3 {
 			i-cache-sets = <32>;
 			next-level-cache = <&l2>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu_opp_table>;
+			clocks = <&clkc CLKID_CPU3_CLK>;
 		};
 
 		l2: l2-cache0 {
-- 
2.52.0


