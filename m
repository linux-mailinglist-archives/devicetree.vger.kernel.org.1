Return-Path: <devicetree+bounces-10557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4D47D1E87
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06961B20324
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3846612E79;
	Sat, 21 Oct 2023 17:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TIK1rH0+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0B820EE
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:15:52 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C639124;
	Sat, 21 Oct 2023 10:15:47 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9becde9ea7bso632539566b.0;
        Sat, 21 Oct 2023 10:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697908546; x=1698513346; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SYVq2ZPazJDWbniLyYRNjUBhJddUsd8744HXa1msGVw=;
        b=TIK1rH0+zDgIJDMw8gvdqSTo7G9/BwIrkWep/wMxuR00xE7MOCtflMptMin43S8jVs
         DWVZBVcx9jD/UdhkvVFnbo3mFAhvR7vgI0FYg5wgo/Bw+5SZqB0TBO27EsusQn2uwnzu
         oDuLgMKilvNpr1anzZIsTjh52K8VAWlTKk2YKKC1n1FHw4Z33N7hAu1GTcqU/kQdySPA
         4ftLrvnjVse4Nsaf38Hhtfuut9nzIH5RUeTGby0fJFXmOTAgclxhWDSw/4zPghL/pohh
         AItGh1Z4hALCjVRfNdFY5P3KxRX389NQSAR9juFL+9rdHNMGdy4Pqr311foKwOBKDo7J
         kESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697908546; x=1698513346;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SYVq2ZPazJDWbniLyYRNjUBhJddUsd8744HXa1msGVw=;
        b=Z558oVuaQv1faDmwG6PbJvNoxYKoO6w3x/NCupUM4WnmC6thJ8M3BGuzbIY+hJsoRl
         vL948vE82kO5HAzL7FltnYgnZchIqzt+9ylbF+EMz4PDLuRLKP/q82SkvMSX4ZqbhyeV
         6GKa0p6xPL/A1Gxum8REqmG6mJntMZGivB23CpSp06ErHRKtF3gFD5K98jMIObGEce6b
         6qJ7IrxzamK2fujYuzBNFa5SlrPSdWU4FRzQhD9Felhi7Jrf2az8gSmuXp4YI2fqNd87
         j+vE5+I02hVWIQaVgkI1r8kjYYjLyO635rhmDTc3EDncRXvEG5iA4eD2Cjt0Mpw5Au1l
         EGyg==
X-Gm-Message-State: AOJu0Yw9INj2XmbOXhhukpgBkJzNLUSYCQx+ZSPHtB2o7jApqhDHhsv2
	6dLieCbTVIFK+2UCayzIt4jDCl3pUFtglA==
X-Google-Smtp-Source: AGHT+IEh/1SUOV+kWD84qsjX/cvZMRrPM3Yt1mkdcpK7e8t2yu8K8/cQQ1lkh7VcRyns7yK5FRBpNA==
X-Received: by 2002:a17:906:4fc7:b0:9bf:c00f:654a with SMTP id i7-20020a1709064fc700b009bfc00f654amr4311336ejw.24.1697908545586;
        Sat, 21 Oct 2023 10:15:45 -0700 (PDT)
Received: from localhost.localdomain ([95.90.240.24])
        by smtp.gmail.com with ESMTPSA id f20-20020a17090660d400b009a1c05bd672sm3823964ejk.127.2023.10.21.10.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 10:15:44 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	t-kristo@ti.com
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: watchdog: davinci-wdt: convert txt to yaml
Date: Sat, 21 Oct 2023 19:13:23 +0200
Message-Id: <20231021171323.113208-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert txt file to yaml.
Add maintainers list. Took from ti,rti-wdt.yaml file. 

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---
 .../bindings/watchdog/davinci-wdt.txt         | 24 ---------
 .../bindings/watchdog/ti,davinci-wdt.yaml     | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 24 deletions(-)
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
index 000000000000..357c1effff49
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
@@ -0,0 +1,50 @@
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
+  - Tero Kristo <t-kristo@ti.com>
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
+  timeout-sec: true
+
+  clocks:
+    description:
+      the clock feeding the watchdog timer.
+      Needed if platform uses clocks.
+      See clock-bindings.txt
+
+required:
+  - compatible
+  - reg
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

