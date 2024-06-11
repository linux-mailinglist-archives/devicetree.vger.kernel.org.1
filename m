Return-Path: <devicetree+bounces-74431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE9C90339B
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 09:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E0471F2A4F6
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 07:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D39172BAF;
	Tue, 11 Jun 2024 07:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GpqzNFtN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE912172794
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 07:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718091009; cv=none; b=RqQJ96drqG40SweNcWtlWJcplVafZfTit237SlJXlj7VWjJB0X3LNt7fiBwFdfXZTqforX6qTgvrW8dqrF+GNP4jJ8FQNZcOUyF+67gBKLqRNcQtuOBsTbpftE8O+8VC2bazudvRMpnfoWjhgCoKO1CBUAzlM3h/sJbNu9Tas1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718091009; c=relaxed/simple;
	bh=+yd8str5xHWobCDvL4wg3IC0NY2M/8dT9npvAkWw9YA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=mzMfctRrKtH//WUxHzyrj9Umko/O/mo5/qoPzHUdBbArtbiifAJ18+dBpD+MNRMBFl1xMAzMOq79T5VIOMdT1fipQ0VrC67wwsFrx3TEHMaKkAAxSTVULmN4fJGotBSDOvKXE97HK4UX4UhP3+Q4pO0ofqtMYEKMMMCBX1mBnf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GpqzNFtN; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-421b9068274so16793985e9.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 00:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718091006; x=1718695806; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tp0zErf8dbeYDTLzEuLWwqeIB+WJf5u0UHDSZkndrro=;
        b=GpqzNFtNXegIV5rbf6BAFaKLDqZZUbD9RPXw1CGKOm8BulFyGFGtE2gPl9Yn78vysf
         BI/dA0mLWjE4Nio6rWeb0SdRuyxZwcxXXPQBPwCX6MUssAyBdx4PCOsi+ttSvAhF+06N
         VAoqnx9SPSDWwY2sNwAHgQgrzSOYHE0/QlDICqPQA04LRpmDMnHkw5UJJzIZO+XTnOVS
         ZaViYfhqcIVaC8jOF0xYXCSSEKF6d4LSpBgX0R16jMVf/E6Ewee39OQE06Op+2QTWkAS
         KamHGKyAxayjlAx0L+35/0HsXMkR1FRxF+B8AOLfrwwJwk1B9uMlTQGw/igmDt+//r/K
         79lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718091006; x=1718695806;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tp0zErf8dbeYDTLzEuLWwqeIB+WJf5u0UHDSZkndrro=;
        b=ZIB8F0AH+yediN/OAu/Y0k+a1dMAaQQa1c+dLSP6gZU1tOVEiLTTaB5lI/VXR7nlHy
         LtV6Bdw7hRrSr27oK/atINaMN3m0GHjE6DB9mCv37gn2jNJuL0Qa4ehxWik2q/OqN0D8
         3mNSpEgYkoagAkOL6ZGVKDPJjAb+/f57eItF8NIxW/2LyyJqFYYEjV9KIkAVRID0UJuh
         obR6VK5eFcSmfeTA3Tm3ZjZgoElI5X51Ki0Gfda8saVk9pDJ4WtDp8aO6CG09noro/oI
         /HUAnZXXkMCdojrJRkYdv/Mx+EeW3TWtrH3VzDL0+Nws7IYfXt9Aj9L1cZvfTgglFSfa
         DwpA==
X-Forwarded-Encrypted: i=1; AJvYcCWwgtwsOvP0Kl0lCxAIyPHoyGADGfwTynwopNtGg8WqM7VmHChijdANz05OcohhwLMbvtDNpYaeLHj46n7uXCh8c2J7DOpR+O0jyQ==
X-Gm-Message-State: AOJu0YyQ9C83zdKG1tv0vgge91F/99aJSluQYiB5dcaUpWAyUtdkF+qX
	SRzXgpuOepOE+tKXlmgssAPZYy2mcwNBJDMcuKgpqzzGAfapG5sbyPhVkLlbAgw=
X-Google-Smtp-Source: AGHT+IEzv2F+C93WwbuWLKhepxW6xKhRpwiKHPkrfPo9FyWzxTuYVt4NQR25zFR9Jxxiur1u8S1RmQ==
X-Received: by 2002:a05:600c:4fc1:b0:422:aca:f87a with SMTP id 5b1f17b1804b1-4220acafa7cmr28331685e9.7.1718091006141;
        Tue, 11 Jun 2024 00:30:06 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42158110dfesm202926135e9.19.2024.06.11.00.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 00:30:05 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 11 Jun 2024 09:30:04 +0200
Subject: [PATCH v2] ASoC: dt-bindings: convert tas571x.txt to dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240611-topic-amlogic-upstream-bindings-convert-tas57xx-v2-1-38269edc1d95@linaro.org>
X-B4-Tracking: v=1; b=H4sIAPv8Z2YC/52OOw6DMBBEr4JcZyNs8RGpco+IwobFrAQ2WjsWE
 eLucThCqtGbYt4cIiATBvEoDsGYKJB3GdStEMOsnUWgMbNQparKpmwh+o0G0Ovibc73FiKjXsG
 QG8nZAIN3CTlC1KFu9x1qPUmsmwobLUVe3Rgn2i/jq888U4ieP9eBJH/t/64kQQKaLKw62Rkjn
 ws5zf7u2Yr+PM8vsvyEpe8AAAA=
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6076;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=+yd8str5xHWobCDvL4wg3IC0NY2M/8dT9npvAkWw9YA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmZ/z8NS0RJHmlRuqyCvb8KS59O1iiLP6u1KVWDjJL
 kOl2W7GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmf8/AAKCRB33NvayMhJ0X5sEA
 COoNSxY4T0Bx2F9DH9iFn2K1myPn2mF4Mfeqn5n2zUVUczfMZfu/dHQHL53y8dwv4STpYVENbaxbnY
 DDWHY2dbJJ6dR05MAAFLlu/VVbkpRtBEROYzJr7gHcSxfq8DSN8HO5SU+oJLTSYpYvOEdokU0pWbG+
 HzdMy/J9F99cijYPypuT6Woy0nBCH9HdNRaHpdG9zV6hbcmMm5XpDVrNvEjnaD4fgLLOrqDjsRS2qt
 KcZhfX6xTXOH+ukuhGNvqvLSg4jKPszo5OzB/x17kmiFrzP+seBYmMvugVcb4McW1rXKByB6pM36S/
 /loc58mo695+V0ZYXEbMIBu6naSauXgi3slSWAPxJTgNe3Ro9LDwWqeMZF0QiPpkNFxNCoCuzel+SM
 VFXXrN+GFcQd1+s+jLH0/kDHrAt6r+9IIm1mTxGNF7I/ghs4CMBe/lI6OfA6yPX7UbPb0ZEmGy+6cR
 Ix1rOhm3crqO+jiGbEoxCidr4EfQmCu+MFqhX0Mgm7sfJccsWAaNl3GXjjfo0XP1iXKvxJUVQ0+DMI
 /ce4NN92B7TXeGXOHXojJRZui2G980A6xrm5IxDrc+CES1adS0uvFlRRp8ziBxF3SFJ/JA/O81F4xu
 SZNTIV2R/quHXxQZ/ZJaPgztWFA9L9r1puc5Aubjd/ZsRy8k6ubZs+VD5o0A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the text bindings for the Texas Instruments
TAS5711/TAS5717/TAS5719/TAS5721 stereo power amplifiers to
dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Add missing port
- Remove label, include and add blank line
- Link to v1: https://lore.kernel.org/r/20240607-topic-amlogic-upstream-bindings-convert-tas57xx-v1-1-ebf1e4919bb1@linaro.org
---
 .../devicetree/bindings/sound/tas571x.txt          |  49 --------
 .../devicetree/bindings/sound/ti,tas57xx.yaml      | 133 +++++++++++++++++++++
 2 files changed, 133 insertions(+), 49 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/tas571x.txt b/Documentation/devicetree/bindings/sound/tas571x.txt
deleted file mode 100644
index 1addc75989d5..000000000000
--- a/Documentation/devicetree/bindings/sound/tas571x.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-Texas Instruments TAS5711/TAS5717/TAS5719/TAS5721 stereo power amplifiers
-
-The codec is controlled through an I2C interface.  It also has two other
-signals that can be wired up to GPIOs: reset (strongly recommended), and
-powerdown (optional).
-
-Required properties:
-
-- compatible: should be one of the following:
-  - "ti,tas5707"
-  - "ti,tas5711",
-  - "ti,tas5717",
-  - "ti,tas5719",
-  - "ti,tas5721"
-  - "ti,tas5733"
-- reg: The I2C address of the device
-- #sound-dai-cells: must be equal to 0
-
-Optional properties:
-
-- reset-gpios: GPIO specifier for the TAS571x's active low reset line
-- pdn-gpios: GPIO specifier for the TAS571x's active low powerdown line
-- clocks: clock phandle for the MCLK input
-- clock-names: should be "mclk"
-- AVDD-supply: regulator phandle for the AVDD supply (all chips)
-- DVDD-supply: regulator phandle for the DVDD supply (all chips)
-- HPVDD-supply: regulator phandle for the HPVDD supply (5717/5719)
-- PVDD_AB-supply: regulator phandle for the PVDD_AB supply (5717/5719)
-- PVDD_CD-supply: regulator phandle for the PVDD_CD supply (5717/5719)
-- PVDD_A-supply: regulator phandle for the PVDD_A supply (5711)
-- PVDD_B-supply: regulator phandle for the PVDD_B supply (5711)
-- PVDD_C-supply: regulator phandle for the PVDD_C supply (5711)
-- PVDD_D-supply: regulator phandle for the PVDD_D supply (5711)
-- DRVDD-supply: regulator phandle for the DRVDD supply (5721)
-- PVDD-supply: regulator phandle for the PVDD supply (5721)
-
-Example:
-
-	tas5717: audio-codec@2a {
-		compatible = "ti,tas5717";
-		reg = <0x2a>;
-		#sound-dai-cells = <0>;
-
-		reset-gpios = <&gpio5 1 GPIO_ACTIVE_LOW>;
-		pdn-gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
-
-		clocks = <&clk_core CLK_I2S>;
-		clock-names = "mclk";
-	};
diff --git a/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml b/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml
new file mode 100644
index 000000000000..2f917238db95
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,tas57xx.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,tas57xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments TAS5711/TAS5717/TAS5719/TAS5721 stereo power amplifiers
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - ti,tas5707
+      - ti,tas5711
+      - ti,tas5717
+      - ti,tas5719
+      - ti,tas5721
+      - ti,tas5733
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO for the active low reset line
+
+  pdn-gpios:
+    maxItems: 1
+    description: GPIO for the active low powerdown line
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: mclk
+
+  AVDD-supply: true
+  DVDD-supply: true
+  HPVDD-supply: true
+  PVDD_AB-supply: true
+  PVDD_CD-supply: true
+  PVDD_A-supply: true
+  PVDD_B-supply: true
+  PVDD_C-supply: true
+  PVDD_D-supply: true
+  DRVDD-supply: true
+  PVDD-supply: true
+
+  '#sound-dai-cells':
+    const: 0
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - '#sound-dai-cells'
+
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,tas5717
+              - ti,tas5719
+    then:
+      properties:
+        PVDD_A-supply: false
+        PVDD_B-supply: false
+        PVDD_C-supply: false
+        PVDD_D-supply: false
+        DRVDD-supply: false
+        PVDD-supply: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,tas5711
+    then:
+      properties:
+        HPVDD-supply: false
+        PVDD_AB-supply: false
+        PVDD_CD-supply: false
+        DRVDD-supply: false
+        PVDD-supply: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,tas5721
+    then:
+      properties:
+        HPVDD-supply: false
+        PVDD_AB-supply: false
+        PVDD_CD-supply: false
+        PVDD_A-supply: false
+        PVDD_B-supply: false
+        PVDD_C-supply: false
+        PVDD_D-supply: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+   i2c {
+     #address-cells = <1>;
+     #size-cells = <0>;
+
+     codec@2a {
+       compatible = "ti,tas5717";
+       reg = <0x2a>;
+       #sound-dai-cells = <0>;
+       reset-gpios = <&gpio1 15 0>;
+       pdn-gpios = <&gpio1 15 0>;
+       AVDD-supply = <&avdd_supply>;
+       DVDD-supply = <&dvdd_supply>;
+       HPVDD-supply = <&hpvdd_supply>;
+       PVDD_AB-supply = <&pvdd_ab_supply>;
+       PVDD_CD-supply = <&pvdd_cd_supply>;
+     };
+   };
+
+...

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240607-topic-amlogic-upstream-bindings-convert-tas57xx-5af1e564e6a1

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


