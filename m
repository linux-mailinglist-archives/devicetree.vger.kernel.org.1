Return-Path: <devicetree+bounces-11427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 277117D5BFF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90D15B20F4A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 459883D985;
	Tue, 24 Oct 2023 19:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LgXRroQq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD12A3B2B4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:59:15 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AC48186;
	Tue, 24 Oct 2023 12:59:11 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9be7e3fa1daso727971366b.3;
        Tue, 24 Oct 2023 12:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698177549; x=1698782349; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xvLnuPOLZ0Qaew46Cu9xpus2DnZ8DmYwfr9u352DlgY=;
        b=LgXRroQqBLbFPJaz8aH6LhotDjPL9nVb4mnXdAsWxBwUXpU9Jh4WTqecdSY6L0ojxr
         SwAay+SjV9ahI92c5lD3ZeCJoGYPPsiQrhDjJjLpGZOMolyJbPJoYf/QJsnMB/ZEPDJJ
         tSt/cO18RbBvMDWBszGcez8QQ7mGfjmkrf4DRavKpMESOf/720t07ZziGrEshYsuYd65
         v67qPGbFTbz4GUjaPNAw1nut7GYm0HmXhhleOjPi1wINjgTN2yCK/VkdYBU+VIBUeINj
         8ZKrELe4fY7SJ6S2ufYo98xLp6FENBMJHe1+nRCTKcf9ASQkfXhm0JTMzCmGUPS4ILez
         Tj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698177549; x=1698782349;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xvLnuPOLZ0Qaew46Cu9xpus2DnZ8DmYwfr9u352DlgY=;
        b=A4wGe05Whipfpt9zeOmQOX49S+wFHDJOv11rd8xdoJjPO0M4zLerwLyHeXI7l+clAq
         FGdMcQTdn79Yfz+w4KCGSSPCufI4BawVO7NstH7eNskske9Z/rUhHlyon7pZlwEZ1R7Z
         7S+fMriaWFPMG+Avit8iGDDNbQpqyopBsNARbd0KAKC0NVQz4iwe/XlthWG7/onYUXn+
         2R0m3td6VAcat+znnnffS3hjG3TAa3yY1Shmmg5VekNn/oye5WU3TMmSGx9OZRJByL+x
         udVexCCrox5bGQD//dXaUrqulGnrlqbkFz2/E92329k+X2wvmf4rVEyowR/IzXhupNQ+
         DSMw==
X-Gm-Message-State: AOJu0Yz2pGxDeIzeQve2zfsFfBI2n4+8CZP5j2AoboG+KhZslED7Gqzu
	SzXQQHifOwWQSKZWq4A6sR8=
X-Google-Smtp-Source: AGHT+IH88QFQIH9wScZb5doGMoOtngtz59b/bWFztMcjD+NkiEy+AteLh08Hxr4mddzEe2Gu7c/F4g==
X-Received: by 2002:a17:907:9727:b0:9bf:5696:9153 with SMTP id jg39-20020a170907972700b009bf56969153mr10845240ejc.57.1698177548753;
        Tue, 24 Oct 2023 12:59:08 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:918a:dd67:bc8:9f17])
        by smtp.gmail.com with ESMTPSA id e27-20020a170906749b00b0097404f4a124sm8756295ejl.2.2023.10.24.12.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 12:59:08 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	m-karicheri2@ti.com,
	ivan.khoronzhuk@ti.com
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: watchdog: davinci-wdt: convert txt to yaml
Date: Tue, 24 Oct 2023 21:58:39 +0200
Message-Id: <20231024195839.49607-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert txt file to yaml.
Add maintainers list, based on the git history.
Mark clock as required property, by reviewer's suggestion.

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---

Changes in v2 (according to review comments):
- Added clocks to the list of required properties.
- Updated clocks property to have only maxItems without $ref and description. 
- Removed timeout-sec explicit definition, as it is defined in watchdog.yaml.
- Updated maintainers list from the git history.

v1 patch: https://lore.kernel.org/all/20231021171323.113208-1-n2h9z4@gmail.com/

 .../bindings/watchdog/davinci-wdt.txt         | 24 ----------
 .../bindings/watchdog/ti,davinci-wdt.yaml     | 47 +++++++++++++++++++
 2 files changed, 47 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt b/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
deleted file mode 100644
index aa10b8ec36e2..000000000000
--- a/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Texas Instruments DaVinci/Keystone Watchdog Timer (WDT) Controller
-
-Required properties:
-- compatible : Should be "ti,davinci-wdt", "ti,keystone-wdt"
-- reg : Should contain WDT registers location and length
-
-Optional properties:
-- timeout-sec : Contains the watchdog timeout in seconds
-- clocks : the clock feeding the watchdog timer.
-	   Needed if platform uses clocks.
-	   See clock-bindings.txt
-
-Documentation:
-Davinci DM646x - https://www.ti.com/lit/ug/spruer5b/spruer5b.pdf
-Keystone - https://www.ti.com/lit/ug/sprugv5a/sprugv5a.pdf
-
-Examples:
-
-wdt: wdt@2320000 {
-	compatible = "ti,davinci-wdt";
-	reg = <0x02320000 0x80>;
-	timeout-sec = <30>;
-	clocks = <&clkwdtimer0>;
-};
diff --git a/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
new file mode 100644
index 000000000000..4747be98b7d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/ti,davinci-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments DaVinci/Keystone Watchdog Timer (WDT) Controller
+
+description: |
+  Documentation:
+  Davinci DM646x - https://www.ti.com/lit/ug/spruer5b/spruer5b.pdf
+  Keystone - https://www.ti.com/lit/ug/sprugv5a/sprugv5a
+
+maintainers:
+  - Murali Karicheri <m-karicheri2@ti.com>
+  - Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ti,davinci-wdt
+      - ti,keystone-wdt
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@2320000 {
+        compatible = "ti,davinci-wdt";
+        reg = <0x02320000 0x80>;
+        timeout-sec = <30>;
+        clocks = <&clkwdtimer0>;
+    };
-- 
2.34.1


