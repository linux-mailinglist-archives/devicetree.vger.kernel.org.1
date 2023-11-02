Return-Path: <devicetree+bounces-13593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 422EC7DF288
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C985FB2117A
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2255214267;
	Thu,  2 Nov 2023 12:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SKSSv3Hw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298CA18E1D
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:34:44 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54BC19A9;
	Thu,  2 Nov 2023 05:34:39 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9adca291f99so130471066b.2;
        Thu, 02 Nov 2023 05:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698928478; x=1699533278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rsKFZV3nMxQi1oiVGFdNfQgyygad1bdQB+o4P9tAijg=;
        b=SKSSv3HwjZP8vOFHQv6vFz/05iCay0wI6WE4oLkfCkSCB/Q1wIj/PzLg15HlFnzeIA
         GnD6QYMbOg7JGz/iFQkxLz2DyF1yfOM4aLWThgenrCYuz36AVsiJOn+Ao1+tUoBVjlth
         5JnEbSpso0avKMHiUdzDdObcD+vEYSKHO2jXrei1nT2OEkZlIXoFBCAYhb6IkHb7D0Rn
         YS1cKTDyf23/MMknCy0CxG7VAauEIQc08avX7FfkJWS38kS442bTAOycM3WNvX2GwD+k
         3E0CjdnJeDh8wkuVbOmC7klU+3OhiWo5avAwi6IiBFSE5jZwe6jaVyFZS+9Tx4f9CEc+
         rr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698928478; x=1699533278;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsKFZV3nMxQi1oiVGFdNfQgyygad1bdQB+o4P9tAijg=;
        b=j9EmVFkU1v2GJxMnXxzI9ykCKOVgzxkgx24Qw5uzjf58hhmmeB6TzNsowxZSV/xqr1
         AoaqTD3gKbUet+oBfBpDwgYPAYm8Hgbxng9PIs+QOyB8NT4Sphmu8FsAkVB8rYX3ITgJ
         E4Nc8J18y2Ur7fZALHNZ1KDhZ0Uxv2qWZQmC74b03W8SaSUfi806GhOaqpYlkTHWG8Sj
         cwFQZQKGwD9VcAWZO7x6B5OL+I03Ap7Ax+OcSZ0s+czoRF7r3AvVPnNoJg2/dER05LNf
         CdGyAu5ZjHUo6Jiqo6LJH4SW8KaTGIWinujp8w0dgCdrz8BoOfmnytqJ3uLMF+7AvRr1
         Zjyg==
X-Gm-Message-State: AOJu0YxWAFHLd5PRXxVIvU1ZYlEY1cBnpeEkdoMpnR1/xF0EniIdw/IR
	TNDBcMeOeBPnMIm2KE/k8TCJ0LT7C5Myuw==
X-Google-Smtp-Source: AGHT+IHbCh/IJZSGzt0gIABJ7y9ndea7qZv4B5H5UEA37VyBzCW20YKU9oOhMj55kNmOINPQ9aPzcA==
X-Received: by 2002:a17:907:25c6:b0:9d1:a628:3e4f with SMTP id ae6-20020a17090725c600b009d1a6283e4fmr4065531ejc.32.1698928478015;
        Thu, 02 Nov 2023 05:34:38 -0700 (PDT)
Received: from localhost.localdomain (ip5f5af678.dynamic.kabel-deutschland.de. [95.90.246.120])
        by smtp.gmail.com with ESMTPSA id e10-20020a1709067e0a00b009c921a8aae2sm1100112ejr.7.2023.11.02.05.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 05:34:37 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	juhosg@openwrt.org
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: watchdog: qca,ar7130-wdt: convert txt to yaml
Date: Thu,  2 Nov 2023 13:32:34 +0100
Message-Id: <20231102123234.62350-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert txt file to yaml. Add maintainers from git blame. 
Drop qca,ar9330-wdt from example of compatible property
and leave only qca,ar7130-wdt, as description of property
mentioned must be qca,ar7130-wdt.

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---

Changes in v3:
Did run checkpatch and updated the commit message accordingly. 

v2 patch: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231101202722.48056-1-n2h9z4@gmail.com/ 

 .../bindings/watchdog/qca,ar7130-wdt.yaml     | 33 +++++++++++++++++++
 .../bindings/watchdog/qca-ar7130-wdt.txt      | 13 --------
 2 files changed, 33 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/qca,ar7130-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/qca-ar7130-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/qca,ar7130-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qca,ar7130-wdt.yaml
new file mode 100644
index 000000000000..82040ca10eda
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/qca,ar7130-wdt.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/qca,ar7130-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Atheros AR7130 Watchdog Timer (WDT) Controller
+
+maintainers:
+  - Gabor Juhos <juhosg@openwrt.org>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: qca,ar7130-wdt
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@18060008 {
+        compatible = "qca,ar7130-wdt";
+        reg = <0x18060008 0x8>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/qca-ar7130-wdt.txt b/Documentation/devicetree/bindings/watchdog/qca-ar7130-wdt.txt
deleted file mode 100644
index 7a89e5f85415..000000000000
--- a/Documentation/devicetree/bindings/watchdog/qca-ar7130-wdt.txt
+++ /dev/null
@@ -1,13 +0,0 @@
-* Qualcomm Atheros AR7130 Watchdog Timer (WDT) Controller
-
-Required properties:
-- compatible: must be "qca,ar7130-wdt"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-Example:
-
-wdt@18060008 {
-	compatible = "qca,ar9330-wdt", "qca,ar7130-wdt";
-	reg = <0x18060008 0x8>;
-};
-- 
2.34.1


