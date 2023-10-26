Return-Path: <devicetree+bounces-12263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD627D8938
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:53:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64363B20F71
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA22C3C090;
	Thu, 26 Oct 2023 19:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rep7QBKx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF7F156E4
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:53:39 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A83F5129;
	Thu, 26 Oct 2023 12:53:37 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9c2a0725825so214083266b.2;
        Thu, 26 Oct 2023 12:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698350016; x=1698954816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NoidDC1rkNqrGwoUP3wzln3oeF1WmBpP8RGBkU4I8Gw=;
        b=Rep7QBKxc+Ka3vYnbAOhCcoCkzU5wfmjmCqmOiMOvz/NvScsiB25Om33cOVYW8Sbfo
         sfOmBzROxyatlouWVH6CzDPQqxm4D2zSF6RAjSdFP0qUC99SuRfx2oZSSN24fZspzXMQ
         OihV6XwVIUivCathN/ymfO24ChS3pztsa1G8bAzGAxVgEAlFjZrTajKXPduwL/jUCK0z
         Tm85ri6Vs81+3hWiru+PAnLuLq6yA/zVgPCOPU6HwOhv8AouHi/z57sS1vCc8BUSeEFS
         PdAV0zxJoyV7K+MWNAVkSiW+4zp9t55yUDi3IvcvWVhtvBHpvWQb343GP74rye+0+vQe
         r+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698350016; x=1698954816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NoidDC1rkNqrGwoUP3wzln3oeF1WmBpP8RGBkU4I8Gw=;
        b=f+YoVfA9JcjSIN0CjrCRYV6Y9wIf/lGfkIYo7y3dwRnWwd/zTbYGwI3lIO8Iky76+p
         aql2fj8mBwCN4i00JZYPx+ZztklaBk9d8gur2pWyUlQs+JkHorVj5Mls+rrc3RND69ew
         za4eFNSCDh+wSlbQZI12wqhw14gsq9dFMJm+R4LQPTYlLvp176FiZURYgCKdYvH0b3kh
         AZXTGhWkD40w4fonCrYGs5pccrL8Fb8Yix93WskkrWMpOeyhW1eF8k641PIlLvn5bOjF
         0Lta4/c3zwajwhL76g2WbrfJtfoRiVHU8e4d+WYBo2Jw/zjS7lUkofknKdGkyDOZNKjn
         hYSw==
X-Gm-Message-State: AOJu0Yw978ENqCRZMorDbH7xuNGE4ssNslIMa5/u9i9e7yTYxfo+8V1z
	l3kJDLiBPdrunYGM7c/L5KE=
X-Google-Smtp-Source: AGHT+IGEQ1d+12j6D1l2GmoJoV8MuzQgTVAkfW4qxVFZ4no4rHZ6B/iRsJF98CagYqhPKa9QrtRUFQ==
X-Received: by 2002:a17:906:eec2:b0:9bd:cab6:a34f with SMTP id wu2-20020a170906eec200b009bdcab6a34fmr552194ejb.73.1698350015849;
        Thu, 26 Oct 2023 12:53:35 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:f059:9710:42eb:c98b])
        by smtp.gmail.com with ESMTPSA id k5-20020a1709063e0500b009cc1e8ed7c5sm80764eji.133.2023.10.26.12.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:53:35 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	afd@ti.com
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: watchdog: davinci-wdt: convert txt to yaml
Date: Thu, 26 Oct 2023 21:53:13 +0200
Message-Id: <20231026195313.76756-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert txt file to yaml.
Add maintainers list.
Mark clock as required property, by reviewer's suggestion.
Add power-domains as optional property, by reviewer's suggestion. 

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---

Changes in 3 (according to review comments):
- Added Andrew Davis <afd@ti.com> into maintainers list.
- Added power-domains property.

v2 patch: https://lore.kernel.org/all/20231024195839.49607-1-n2h9z4@gmail.com/


 .../bindings/watchdog/davinci-wdt.txt         | 24 ---------
 .../bindings/watchdog/ti,davinci-wdt.yaml     | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 24 deletions(-)
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
index 000000000000..17c824f2fc7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
@@ -0,0 +1,52 @@
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
+  - Andrew Davis <afd@ti.com>
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
+  power-domains:
+    description:
+      A phandle and PM domain specifier as defined by bindings of 
+      the power controller specified by phandle. 
+      See Documentation/devicetree/bindings/power/power-domain.yaml for details.
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


