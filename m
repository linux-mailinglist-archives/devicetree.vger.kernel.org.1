Return-Path: <devicetree+bounces-136144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14696A04078
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F11A21620B7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644791F0E47;
	Tue,  7 Jan 2025 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h8wdJ7pI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF7D18CBFC
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255435; cv=none; b=GKzLuUR9yBHIgCMSFlae6OIqVdaaHKRIXUzU8evWWDXuyCuRFv8M3WMarfdCgJlCOtLLGchxd2gOkB6Eve+lKN+0Ok3k8sFLM16rdkf3K3u4nB64drlhbdES73CP1ttPhdwCZK2woGKqw5Z7lV/6+HA6lE+BSzK/8ilL3Xp4GwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255435; c=relaxed/simple;
	bh=Yp7wtG/6fbwK5J4heCVRQsbeAIaIxac6wdVB/naceR8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R4wxb76fWtXB3gjiTn2VLF+QwqRRZVGJXlEgSb8Zzt98h/ZdKa45cV1UQyFMaxE0NMuTUleazthqzi2s3aZTB0uV72SlJHrC/xN2lgMl+ZPcAbDbEHw/mL7QGVGQDa6VEVGZ5h2rD9e/KiTw7QkBwDi/BN8hCKQ7IhwFhOO+ivA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h8wdJ7pI; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4363298fff2so22103745e9.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736255430; x=1736860230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cV4oC9+EL8srSyzO8Y7L+t+TVZRrKU1b9fLi0ltBXl4=;
        b=h8wdJ7pIy5SkhzAeW027VbvRrsQFzXiE+C133Ho/JYFQLWoC9HpM/J4I1hElPFINe0
         t3MQEq8vlkwsVaCxqOQqUBNKeQBQYYYsVL8ABozXcIPaq5zE2rKrt9Cjo6/IyYgu5NRc
         uDYjPOpJ5F8lRXHycJUKdBwQE3lNVNjvaYGt478TySyii8RJ873CSZUGac6PoffKR1tV
         jsrCcDzAcK1c6rhKmfJENKseWDEu6l2Dd8JeFofnHCWQHYWg40YLks6h2lCGcqv3Yp0Q
         Imlby4YPbtWc8DmnLcwMrvX0uwoDRRHvJ9fQ0t3aUbGFPvZ671dou2KvBcNvwp+2gEVW
         kNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736255430; x=1736860230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cV4oC9+EL8srSyzO8Y7L+t+TVZRrKU1b9fLi0ltBXl4=;
        b=auJYYt9CPMAH1hbywqWxE2pfIW7DUdII28lztaUSjehHhWVgsT9IQ9s2EGkWdEYEoH
         5F4xo2dIsBnMDwdfwZ6eRKuHbf0bzYl+tqJW3hviWyoNyzwDWut2xqxjpWVdNHwCwytB
         2vYf5M903+D4hfBolxPrOVVG341xLUdQA5nU95OqR7GwJWqXyOeosRKHVlDjUuUgk2Py
         9B8Obo6nrlkVUUJWFFdLn1Z6bpURWFsbreDUGhaYoviMiMwdSKe58PpaYTncPAlHScgc
         AUM405SxTZPCxX9aIL/zcl9/wHwjF87bkdwm8wd+ABZIjuo3tfSFy1VG7kke9uq9Nthd
         GBsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXo0YEGeahe/YvKn4SMjf2IVEVg9dhooaKxl/Ov8vPYUM3Ehi2Kckt2zBTnY0B2mmEDuSo7tK2+U2lO@vger.kernel.org
X-Gm-Message-State: AOJu0YwyjY/y4ZDCjatVM3gezkrn1P3xzh0YaQMoQstlS9axHLA1Dm7l
	VAsLxHOjQf7Zp27/jvBW+5HgXJ8WyIWlwewqQ/BRM7coo8rlJ3vXhE+e7IEB6lc=
X-Gm-Gg: ASbGncuGDjlcMoEY7STHzatfv2k1dPzwqEc/RCvOwGa4B8f+fBdn5pFnBOa56P359xY
	XVGsSEhbR2ME8sCCulxR9He8ni1ETFCC5Hmfk/E28pQdZ+ynXdIkE/zXB7ojz0oJDZX40CicYNt
	uIQAozdcTyH9R/tMtBZ2IhTPm0l28XaE4EcbyhH7UAgbBjKF1vlbXufviJrqzAfUlNgk9nux4/Z
	trLEriIFQii6xRLS00OVuSr7RdDBdJZX1NHwAA6jswrGup7N6b/zlUFAnclPthDzOOu4cQ=
X-Google-Smtp-Source: AGHT+IFojlvlfBDLwc4jTLHA9St8h6hsy3yqCuHX8QBdkRJhEHjq4U9E5nYclZkRpdSwtLeTTkzBFQ==
X-Received: by 2002:a05:600c:1da0:b0:42c:aeee:80a with SMTP id 5b1f17b1804b1-43668b7a8b8mr201416125e9.7.1736255430084;
        Tue, 07 Jan 2025 05:10:30 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea387sm603189915e9.6.2025.01.07.05.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:10:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
	Yangtao Li <tiny.windzz@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: thermal: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 14:10:26 +0100
Message-ID: <20250107131027.246608-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 48 +++++++++----------
 .../bindings/thermal/imx-thermal.yaml         | 36 +++++++-------
 .../bindings/thermal/imx8mm-thermal.yaml      |  8 ++--
 3 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
index dad8de900495..3e61689f6dd4 100644
--- a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -142,38 +142,38 @@ unevaluatedProperties: false
 examples:
   - |
     thermal-sensor@1f04000 {
-         compatible = "allwinner,sun8i-a83t-ths";
-         reg = <0x01f04000 0x100>;
-         interrupts = <0 31 0>;
-         nvmem-cells = <&ths_calibration>;
-         nvmem-cell-names = "calibration";
-         #thermal-sensor-cells = <1>;
+        compatible = "allwinner,sun8i-a83t-ths";
+        reg = <0x01f04000 0x100>;
+        interrupts = <0 31 0>;
+        nvmem-cells = <&ths_calibration>;
+        nvmem-cell-names = "calibration";
+        #thermal-sensor-cells = <1>;
     };
 
   - |
     thermal-sensor@1c25000 {
-         compatible = "allwinner,sun8i-h3-ths";
-         reg = <0x01c25000 0x400>;
-         clocks = <&ccu 0>, <&ccu 1>;
-         clock-names = "bus", "mod";
-         resets = <&ccu 2>;
-         interrupts = <0 31 0>;
-         nvmem-cells = <&ths_calibration>;
-         nvmem-cell-names = "calibration";
-         #thermal-sensor-cells = <0>;
+        compatible = "allwinner,sun8i-h3-ths";
+        reg = <0x01c25000 0x400>;
+        clocks = <&ccu 0>, <&ccu 1>;
+        clock-names = "bus", "mod";
+        resets = <&ccu 2>;
+        interrupts = <0 31 0>;
+        nvmem-cells = <&ths_calibration>;
+        nvmem-cell-names = "calibration";
+        #thermal-sensor-cells = <0>;
     };
 
   - |
     thermal-sensor@5070400 {
-         compatible = "allwinner,sun50i-h6-ths";
-         reg = <0x05070400 0x100>;
-         clocks = <&ccu 0>;
-         clock-names = "bus";
-         resets = <&ccu 2>;
-         interrupts = <0 15 0>;
-         nvmem-cells = <&ths_calibration>;
-         nvmem-cell-names = "calibration";
-         #thermal-sensor-cells = <1>;
+        compatible = "allwinner,sun50i-h6-ths";
+        reg = <0x05070400 0x100>;
+        clocks = <&ccu 0>;
+        clock-names = "bus";
+        resets = <&ccu 2>;
+        interrupts = <0 15 0>;
+        nvmem-cells = <&ths_calibration>;
+        nvmem-cell-names = "calibration";
+        #thermal-sensor-cells = <1>;
     };
 
 ...
diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
index 337560562337..949b154856c5 100644
--- a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
@@ -80,19 +80,19 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     efuse@21bc000 {
-         #address-cells = <1>;
-         #size-cells = <1>;
-         compatible = "fsl,imx6sx-ocotp", "syscon";
-         reg = <0x021bc000 0x4000>;
-         clocks = <&clks IMX6SX_CLK_OCOTP>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        compatible = "fsl,imx6sx-ocotp", "syscon";
+        reg = <0x021bc000 0x4000>;
+        clocks = <&clks IMX6SX_CLK_OCOTP>;
 
-         tempmon_calib: calib@38 {
-             reg = <0x38 4>;
-         };
+        tempmon_calib: calib@38 {
+            reg = <0x38 4>;
+        };
 
-         tempmon_temp_grade: temp-grade@20 {
-             reg = <0x20 4>;
-         };
+        tempmon_temp_grade: temp-grade@20 {
+            reg = <0x20 4>;
+        };
     };
 
     anatop@20c8000 {
@@ -103,12 +103,12 @@ examples:
                      <0 127 IRQ_TYPE_LEVEL_HIGH>;
 
         tempmon {
-             compatible = "fsl,imx6sx-tempmon";
-             interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
-             fsl,tempmon = <&anatop>;
-             nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
-             nvmem-cell-names = "calib", "temp_grade";
-             clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
-             #thermal-sensor-cells = <0>;
+            compatible = "fsl,imx6sx-tempmon";
+            interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+            fsl,tempmon = <&anatop>;
+            nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+            nvmem-cell-names = "calib", "temp_grade";
+            clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
+            #thermal-sensor-cells = <0>;
         };
     };
diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
index bef0e95e7416..df6c7c5d519f 100644
--- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
@@ -63,10 +63,10 @@ examples:
     #include <dt-bindings/clock/imx8mm-clock.h>
 
     thermal-sensor@30260000 {
-         compatible = "fsl,imx8mm-tmu";
-         reg = <0x30260000 0x10000>;
-         clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
-         #thermal-sensor-cells = <0>;
+        compatible = "fsl,imx8mm-tmu";
+        reg = <0x30260000 0x10000>;
+        clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
+        #thermal-sensor-cells = <0>;
     };
 
 ...
-- 
2.43.0


