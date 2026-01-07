Return-Path: <devicetree+bounces-252372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E24CFE08A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6311304CAC8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1590E341061;
	Wed,  7 Jan 2026 13:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mDGZtDrb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFED33F37F
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793203; cv=none; b=ZtGUUiSphHvUDwX247s3DG4aL0iUjamXIcrXJoBbIgv9Y7egdf4OuhsvTIsSg35rP8AqBSz+AmyRuF/0HabZ2XPJdT+7C5rjqJfJEi3a5r6YCwNgv32XXljpr5jtXWEBgB90cL0kHOL9FoXQ7mvDV2ZQXZyvw1myemiODqUw65o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793203; c=relaxed/simple;
	bh=oJ9gKow6S8KEzSj2K6q1yw7J3LdgtVU6Q9IVbH+UGBA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r34G38noOznrmgsyDqXu5VOXRNQLCwP6waXeZaOwsYDhtPbNTBbNn6DR4tmgKocVKHDoAL2mGZUpE9VqtULf8JHS+sdxsVBLAR0JBXaeeJuNbKuDcDLcS2EaP79mLXyo3Lg38UyelcPj4qLbwdqLsKUUO1RJEdJqpiDZ9cvuUO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mDGZtDrb; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-431048c4068so527265f8f.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767793200; x=1768398000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2y3xJj6Lny5hNArf79Fe/OIMoyByArkbsGtk/c71GuI=;
        b=mDGZtDrb0dmWZF/F4OEy19m34NBpmnh7Ke3WgPNzfJ+sDGZbZCTArygVYxoy+JmNhn
         xRvbL5jOgpFqwvjfAqK+bRikBc2wXimn6qAE0pKgAe8zDCWxZolwaC+OYCSi7ASHueRq
         575aVYAqNaDl9aoM/ImWLjUyGJAm2RpLQt1jE7o7sL14D56MASLFZQPtggY3eFB5WyJf
         cLPIqCyPavhi4p6lF3liqk9i4wG5clPgUAtZ6o5MLMsoRSFR55tog0YKsYbOJXWWBnUS
         kjlndJevwB9Si2AJf/FdfVBtjxLxr0cd+tMDPToC9yb+NWMQWM8Eaoa0PivvzOPvjHay
         MXPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793200; x=1768398000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2y3xJj6Lny5hNArf79Fe/OIMoyByArkbsGtk/c71GuI=;
        b=V30EdQziUe+h15+RqD+xEF1V6+lxOzEmZFrclcYjr1vW9jctbG/0DBmien990KUg00
         Rah+PJmtChn4vGzLlG4PEQrgpQBySJTirqAFyWG66YhwfV1tKJwiwEQsR9faCyZip1X8
         6quG8R3xK9FNTIJL4j5bbGyylJQb7Au4W7L75tfDBtyVFtleTeR/Ud5KwwbB+HRW8FN5
         eHS18ZVDzNRtD3L/LQIR5iQT2gXusV/0d5dHXEsn2Opc01TH6hgNxrwnqmW4tcHeSXTM
         aky8f1RBOdvLNAOIpbb2NxRnFIImPZDebvYQu7GgvsYkj7zAHolO7QIM3GutWADtwlZc
         3yWw==
X-Forwarded-Encrypted: i=1; AJvYcCU6r1Cvc3MKec7cZn9/UHIl5MpOqkKz1pyG35SgjgS0XbduCczP0+Ta5i+TqW7m2R0hNTXkwAcIIbkv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp0KDDxP7qKfh51gInyi7KpG/SZqiGA3mMypdUWr3fG1alZOp9
	fMsRBN5746Tda5CkK/krJVP+oUkv7RR15ISchowiRGRCORMBDHLk3uTr86z3GbG8+jM=
X-Gm-Gg: AY/fxX7bsvLL46w5TEcTKcaGFwJm2OYyIkpq1862JS6N3VijAFtQeqTVrnvK3dm5zez
	QfuUyj7QjbHw8IouHnEVgyHQL0W8mvVemHS1qIFZeKSCAAQIJ0/QW2SEbBSxZw/jG1pAwdJAjLT
	ihLcGJdluE3DGerHjXKpfpfpAlb2wH/gmrWdJFcSx7e8yqrjCjkxWHI6dYvGNQ3Iv7umgxTLDn/
	iv47tHTDsdkctZftQB0E05KkkfcMd8kOBsPTOWnUBQ6RKlHLWDghJv1cnqiVGcsNaq+pD9k2w/3
	0VMQhn1N3T5JrnDZdpfZawuh8/E0kF5YGt5pm6vmu0bZ+GVpxq/INyILwoJH1+mVyd2IQfU/lKm
	EiJZ5UeBC0NdZMraww+jPU6kbtKzGmKs84MQTk039FGIBKs3RwaiWMKg7hhjhDXRzSLl3kTyGbF
	jKEnev8E8mEAlWbIw6XO93laKuZcfq3iY=
X-Google-Smtp-Source: AGHT+IEmv81ZP2nMx/GBeve9qwqbgXEMVOoOo0eHP+YvxZHkXRk317akrEbP+MJ11KaLATLdGlW1fQ==
X-Received: by 2002:a05:6000:2511:b0:430:fbce:4575 with SMTP id ffacd0b85a97d-432bcfde8afmr8089849f8f.21.1767793199528;
        Wed, 07 Jan 2026 05:39:59 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:39ee:bc4c:aafe:6bd0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dade5sm10595542f8f.9.2026.01.07.05.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:39:59 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: counter: Add NXP System Timer Module Counter
Date: Wed,  7 Jan 2026 14:39:51 +0100
Message-ID: <20260107133953.2094015-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
References: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the System Timer Module description found on the NXP s32 platform
when it is used as a counter and the compatible for the s32g2 variant.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   | 64 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |  6 +-
 .../boot/dts/freescale/s32g274a-rdb2.dts      | 10 +--
 3 files changed, 70 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml

diff --git a/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml b/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
new file mode 100644
index 000000000000..4d42996f5ad3
--- /dev/null
+++ b/Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/counter/nxp,s32g2-stm-cnt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Timer Module (STM)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description:
+  The System Timer Module supports commonly required system and application
+  software timing functions. STM includes a 32-bit count-up timer and four
+  32-bit compare channels with a separate interrupt source for each channel.
+  The counter is driven by the STM module clock divided by an 8-bit prescale
+  value.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-stm-cnt
+      - items:
+          - const: nxp,s32g3-stm-cnt
+          - const: nxp,s32g2-stm-cnt
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Counter clock
+      - description: Module clock
+      - description: Register clock
+
+  clock-names:
+    items:
+      - const: counter
+      - const: module
+      - const: register
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@4011c000 {
+        compatible = "nxp,s32g2-stm-cnt";
+        reg = <0x4011c000 0x3000>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+        clock-names = "counter", "module", "register";
+    };
diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 51d00dac12de..6bc0c75b574f 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -579,7 +579,7 @@ swt6: watchdog@40208000 {
 		};
 
 		stm4: timer@4021c000 {
-			compatible = "nxp,s32g2-stm";
+			compatible = "nxp,s32g2-stm-cnt";
 			reg = <0x4021c000 0x3000>;
 			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
 			clock-names = "counter", "module", "register";
@@ -588,7 +588,7 @@ stm4: timer@4021c000 {
 		};
 
 		stm5: timer@40220000 {
-			compatible = "nxp,s32g2-stm";
+			compatible = "nxp,s32g2-stm-cnt";
 			reg = <0x40220000 0x3000>;
 			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
 			clock-names = "counter", "module", "register";
@@ -597,7 +597,7 @@ stm5: timer@40220000 {
 		};
 
 		stm6: timer@40224000 {
-			compatible = "nxp,s32g2-stm";
+			compatible = "nxp,s32g2-stm-cnt";
 			reg = <0x40224000 0x3000>;
 			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
 			clock-names = "counter", "module", "register";
diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
index ee3121b192e5..bde5d3726825 100644
--- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
+++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
@@ -41,19 +41,15 @@ &uart1 {
 	status = "okay";
 };
 
-&stm0 {
+&stm4 {
 	status = "okay";
 };
 
-&stm1 {
+&stm5 {
 	status = "okay";
 };
 
-&stm2 {
-	status = "okay";
-};
-
-&stm3 {
+&stm6 {
 	status = "okay";
 };
 
-- 
2.43.0


