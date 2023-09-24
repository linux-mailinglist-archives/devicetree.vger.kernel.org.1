Return-Path: <devicetree+bounces-2813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 539DC7ACB01
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E30162811B5
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 17:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60479D53B;
	Sun, 24 Sep 2023 17:22:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD1ED280
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 17:22:40 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D669BF1;
	Sun, 24 Sep 2023 10:22:38 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-533d9925094so2007517a12.2;
        Sun, 24 Sep 2023 10:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695576157; x=1696180957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BG/XMeOWzBck9k44S9pSZJGABBvxaHdwQdAmtNGAYWQ=;
        b=hEVMnvEMaIn9z6c21tZ0XiJE7o4PXl7eI2uK5zaAUi/pnut0tFjsJ/BdFbiNL/NplW
         qVHZ9liVi8TXPXy33nGYCCBrDZEHKcYhUrPit8JRAmmQDEyZBUJi8BfwQ+11Tuoe1wim
         H8sDTOqqTOHL95cJhzZbpTOMWr6GSgySCc10j+Ll84UyUQ8RtZLBhx1zc2Dj4b/HIw6G
         eoxjjt6TljmVUc8nJmfXN1yJGwo5ZmpTsa/kNAWEmovJ2xkC4fe9n3N0JIJb4j82Gj81
         cktnIjdPdhlZd/+SRti3TXUQpuyCWJozgeKyzV80MGeepu+aZUjZfDvyd/19Nx5febgR
         eLJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695576157; x=1696180957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BG/XMeOWzBck9k44S9pSZJGABBvxaHdwQdAmtNGAYWQ=;
        b=iwJ25Uux7p2lZibjxV0INUYi5xUumOxolddI4PCnD3d0P9zPFHTQs0xeM9caDV3xMl
         nl/1KeMrFyVBg4fDatKmse1HiicnJNO4AjPnGYm09LsYOviFPVVTzK4NpXDaVBCM2lls
         3aYOmTd2aJT78V0i2D5TjFnUi84Cyly/E0I3oqzOgIaCF0a+4WCQhDa8LJx+MKKvFs3F
         tyl56GSlZ0TyVMwLvnPJQiQWX/Qj01w9PHrhtFFu+wD5OONHVjkILFqH2QgJaV4DSyja
         c4uObz7yvoWw+qxZ6Qu5Vyj57/lqZvfNR5qJsYA0M435jwQlVsGGrJTxUKhswWTQdrBb
         4TzQ==
X-Gm-Message-State: AOJu0YyC3mENscdXb+THP9f3NlKSlFhF3xwoUGTmeahWr0HSP+Vtz3nu
	uOPCXjTEbMrbHGOSBLgqyoacFPdkvxDFjQ==
X-Google-Smtp-Source: AGHT+IHd83zb2jYZuQjsgeaoTWgRo9yjnfNoU/bJ457JhnKE6g3ghsaeCiKR/fg/Pa8f+V7G94JjHA==
X-Received: by 2002:aa7:d3d5:0:b0:52a:1c3c:2ecc with SMTP id o21-20020aa7d3d5000000b0052a1c3c2eccmr4040008edr.25.1695576157061;
        Sun, 24 Sep 2023 10:22:37 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:c01e:55ce:4cc5:315c])
        by smtp.gmail.com with ESMTPSA id v4-20020aa7d804000000b005308a170845sm4523111edq.29.2023.09.24.10.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 10:22:36 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@microchip.com
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert txt to yaml
Date: Sun, 24 Sep 2023 19:20:04 +0200
Message-Id: <20230924172004.59208-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Convert txt file to yaml.

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---

Changes in v2:
- Removed unnecessary copyright. 
- Added blank line between properties.
- Updated maintenance list. 
- Added ref to watchdog 
- Fixed compatible value.

v1 patch: https://lore.kernel.org/linux-devicetree/20230916154826.84925-1-n3q5u8@yahoo.com/
related unapplied patch: https://lore.kernel.org/linux-devicetree/20230525125602.640855-5-claudiu.beznea@microchip.com/

 .../watchdog/atmel,at91rm9200-wdt.yaml        | 33 +++++++++++++++++++
 .../watchdog/atmel-at91rm9200-wdt.txt         |  9 -----
 2 files changed, 33 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
new file mode 100644
index 000000000000..37fa9a62eaac
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91RM9200 System Timer Watchdog
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com> 
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: atmel,at91rm9200-wdt
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
+    watchdog@fffffd00 {
+        compatible = "atmel,at91rm9200-wdt";
+        reg = <0xfffffd00 0x10>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt b/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
deleted file mode 100644
index d4d86cf8f9eb..000000000000
--- a/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
+++ /dev/null
@@ -1,9 +0,0 @@
-Atmel AT91RM9200 System Timer Watchdog
-
-Required properties:
-- compatible: must be "atmel,at91sam9260-wdt".
-
-Example:
-	watchdog@fffffd00 {
-		compatible = "atmel,at91rm9200-wdt";
-	};
-- 
2.34.1


