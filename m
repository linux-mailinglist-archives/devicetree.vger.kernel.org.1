Return-Path: <devicetree+bounces-148275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 167A4A3B6B8
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:10:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED852175785
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F5B1DDA36;
	Wed, 19 Feb 2025 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ru22cKO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D061DC996
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 08:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739955453; cv=none; b=hRSvG5xBS3NPBE53AhkswCmxRm41lYSSWSUY6h3ttsa2ypJ3bRhzevj7FlR0deiGw5M8mnw/QSi/RIm5y2b+CTQdXsV2eP7EAK3DgWde1GXANHQuteXs/b01GfR3C82RZgwAXV+liW7U8a0nAxfQpPq3A+rpMo0MRDYtDLKteGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739955453; c=relaxed/simple;
	bh=5feNgE4Z0VyR3BH4VrqG8+EjOe3cq6YlQsxGTVhOkJE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=atMPJZ4jafEOgjBntSk8FfHtefGSq0HU0HGhLUh/w/46jWjvy6qO+uum362EsuA5mTFc75wFe6qmaSQM/e5UqSS/6NxwW18IB5Va5XvZEU7qQxkUi4DC9NgXpaoGypA89qK6iJ7IrrS2jnDOpFKK4ThR/o70lZFmpwdwKy9R1bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ru22cKO3; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43987d046caso3842355e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 00:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739955450; x=1740560250; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PRDH7JUOK4Qt3XrdNtvjAwI3P3XDa0EtyA9y0a/Ff1Y=;
        b=Ru22cKO3w1Sh0ozJfXUZIxGEOZn4+WRiegUhdLUzv2SHaFP8p12AXeoJt68okNKW6A
         W9aV0Rzg2wjDmUQjOw26HUNTSeey2bztSRGjvHR6LAKVwWUbBRdxSSUy/YCZvm2PvLSh
         8AxjQs47pPn2IF+q3RXiJzQV6r+t3ROMLtfydeefkYWdOAxjeyl+tEKrngfWEAFtBQta
         zgQOv0FtTv0p6dYtbQmulhW1qP1MseQuOVWjrKUGUBvykDVkmYCQ4M//yrpxpnVsHrL8
         uvlHiVMFAw3MioS7ChN0kG1IkalZF5dUYOPH/vPEibB5ORqsTPsyf/8loUePcefk1yzJ
         AIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739955450; x=1740560250;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PRDH7JUOK4Qt3XrdNtvjAwI3P3XDa0EtyA9y0a/Ff1Y=;
        b=uumNk72/h1I21VbivCk2+Apaeb7Q3wU/IZg5HugsjbuJ9nDfVHy+BNfg3sW5SrQOgt
         LUQ2iGyJkTtzn6Df5ckcshi8m6JT1+w8Zyeeng3+EFLUqbmuCh/z4WRG/pfAqCWSsfNt
         3XXL4Hulpe3VS1wlcahtuqbTgAfhGWufJ5xab0U6nZRerdEuJisQ0NINTnGpre3iMFf0
         TUQUHHd1fseYQAMtW3Q7sLRcVSDOyS3iJuse2ibu6PezTu9P7/szlYqV8/9FdOIf89RM
         58KWVX+oY0e8+Ig5cCftQmmEY9Z4JR4Mf1WMAJUm6Ea9Zha0UgnrtLlhcxq40X9gD1MB
         MTCg==
X-Forwarded-Encrypted: i=1; AJvYcCVC4SULZTdLaJq9NO62E89FWxwc8U4R6X28ESlhJyP/o9Z7PEhDw0QVEX0NjrkftcKMv2inQj9yAfiq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy55V+dRTQEwXF5S3UV3gPRYXYIaEocZ0en1i6xFbizuDUVOu5h
	tN59jnAb25QO9tZKwVO3SGN1Or0L6n9pUCTftYIIeRUrTex8+WVhyJNCGDz9Xxg=
X-Gm-Gg: ASbGncthjtUjTbPbhQLRucm7jRtcNritGhQqAqnrRC4o/6WtkyMQnA0NWSeneNm3GrK
	8toDgU7yY9wBd0d/xSVFLjZj7O2oSEbtE/zsvbXLU7bHYfPqeL7houw0FepMgzs5YPTRH03oEKD
	IsLXyB/bxofK0AlDpR5/VaOcSodQ3hdje52YxfB/xyVzHyaAzWhfcw7szTJDBa09YYI2Nq9kYcY
	2m9BZImESeI3xDsbzTkip6P5s6zgzTxTrvk8hqNqBiukE9QVneh0kW3Ek2AflBXEtBp+FFWhNL1
	sf5/M9ylAgaz3o7YQqSExLU5Vdlo4w==
X-Google-Smtp-Source: AGHT+IGb1jEC7y+Y7Rl+PioMxXoJSfQnw0OF7LzA+zc795fUjhCn+RhDum3IRhMvx+QUGzwJ/XfnIA==
X-Received: by 2002:a05:600c:2d04:b0:439:84d3:f7fd with SMTP id 5b1f17b1804b1-43984d3fb0bmr37040725e9.4.1739955449623;
        Wed, 19 Feb 2025 00:57:29 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4399beadf31sm10007375e9.0.2025.02.19.00.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 00:57:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-fsd@tesla.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: exynos: gs101: Change labels to lower-case
Date: Wed, 19 Feb 2025 09:57:25 +0100
Message-ID: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS coding style expects labels to be lowercase.  No functional impact.
Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 813f96089578..80c1af3a8836 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -73,7 +73,7 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0000>;
 			enable-method = "psci";
-			cpu-idle-states = <&ANANKE_CPU_SLEEP>;
+			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
 			dynamic-power-coefficient = <70>;
 		};
@@ -83,7 +83,7 @@ cpu1: cpu@100 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0100>;
 			enable-method = "psci";
-			cpu-idle-states = <&ANANKE_CPU_SLEEP>;
+			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
 			dynamic-power-coefficient = <70>;
 		};
@@ -93,7 +93,7 @@ cpu2: cpu@200 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0200>;
 			enable-method = "psci";
-			cpu-idle-states = <&ANANKE_CPU_SLEEP>;
+			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
 			dynamic-power-coefficient = <70>;
 		};
@@ -103,7 +103,7 @@ cpu3: cpu@300 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0300>;
 			enable-method = "psci";
-			cpu-idle-states = <&ANANKE_CPU_SLEEP>;
+			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
 			dynamic-power-coefficient = <70>;
 		};
@@ -113,7 +113,7 @@ cpu4: cpu@400 {
 			compatible = "arm,cortex-a76";
 			reg = <0x0400>;
 			enable-method = "psci";
-			cpu-idle-states = <&ENYO_CPU_SLEEP>;
+			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
 			dynamic-power-coefficient = <284>;
 		};
@@ -123,7 +123,7 @@ cpu5: cpu@500 {
 			compatible = "arm,cortex-a76";
 			reg = <0x0500>;
 			enable-method = "psci";
-			cpu-idle-states = <&ENYO_CPU_SLEEP>;
+			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
 			dynamic-power-coefficient = <284>;
 		};
@@ -133,7 +133,7 @@ cpu6: cpu@600 {
 			compatible = "arm,cortex-x1";
 			reg = <0x0600>;
 			enable-method = "psci";
-			cpu-idle-states = <&HERA_CPU_SLEEP>;
+			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <650>;
 		};
@@ -143,7 +143,7 @@ cpu7: cpu@700 {
 			compatible = "arm,cortex-x1";
 			reg = <0x0700>;
 			enable-method = "psci";
-			cpu-idle-states = <&HERA_CPU_SLEEP>;
+			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <650>;
 		};
@@ -151,7 +151,7 @@ cpu7: cpu@700 {
 		idle-states {
 			entry-method = "psci";
 
-			ANANKE_CPU_SLEEP: cpu-ananke-sleep {
+			ananke_cpu_sleep: cpu-ananke-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
@@ -160,7 +160,7 @@ ANANKE_CPU_SLEEP: cpu-ananke-sleep {
 				min-residency-us = <2000>;
 			};
 
-			ENYO_CPU_SLEEP: cpu-enyo-sleep {
+			enyo_cpu_sleep: cpu-enyo-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
@@ -169,7 +169,7 @@ ENYO_CPU_SLEEP: cpu-enyo-sleep {
 				min-residency-us = <2500>;
 			};
 
-			HERA_CPU_SLEEP: cpu-hera-sleep {
+			hera_cpu_sleep: cpu-hera-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x0010000>;
-- 
2.43.0


