Return-Path: <devicetree+bounces-14208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BEB7E2B80
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13C701C20C4F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C162C850;
	Mon,  6 Nov 2023 17:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GrvqLEQv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14C82C84C
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:54:34 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 598CD99;
	Mon,  6 Nov 2023 09:54:33 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9d216597f64so719142766b.3;
        Mon, 06 Nov 2023 09:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699293272; x=1699898072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IzKV7qWrlJmcquvKy+a5u08BQoeMEeArYOHGsnCX41Q=;
        b=GrvqLEQv1v2dUwM7sFYuMjXccaGR85URCxR+FytrEQTxDduref6KkzQsJfgNv5ElKO
         VPZSy8bpCR8WbU+x6rMGdK2IRqDO2B/JNz4PtFau6cq04GN62y08AMQeUx8dAT0wKWUA
         r6lRhJSjLvc2y7LWQkushvMSsCymw4/ZosZl8LraWGq3EbNVTI3HILnsH/Zx1B7wyanE
         25c5ZeANAXK6VMrK/fCAVjzesWFwluLKdhrTbkfmBwfQJ6pPLB5DDExoFwW9gU0D4H2T
         6Z5Q574sYVHSbSAZU8dFjMkVO+ODemc9ugjVeH4XIpz0uVpnA6ssZibI2cIf+rJf1aS4
         HsGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699293272; x=1699898072;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IzKV7qWrlJmcquvKy+a5u08BQoeMEeArYOHGsnCX41Q=;
        b=W0m9YB7qEPBBydhlp6Iv4TSk1sukM1AGWIUo2TVD4wYrkrC0NfKn7PgTTCVeHUlpVK
         bDio14E38m91bjXG3BTkqDVkPYx0tsfRrQ69aqIdr4Hl/vwLCQn0ryia7Fom6Q7VQpSb
         FkuV6em/y1+AVHkEAS7+tf+1ArVl6tsPuzv2WotNzNihwcNVUPjtbFZdJ7Sh5Vz0XLxm
         JcEK73Vuw5Kr7sab56gEuWpEIFn64McmZvg9OCFyr+bPqOmUH1IigcO/1qQS8dmVktoa
         Xs1oloPyAfUQI/c5mfM5mCm1VQ9sHBVnTLjT02EA5zyuviiUMUJACjzOAn/M65q/uNS4
         R9Lw==
X-Gm-Message-State: AOJu0YxWIDPOBJrEMeVryMteJQOeMudBlS1e1Vfu4QHkEH/T2IcxuG5V
	8seF9GjvaPzyUhgZN1ZPrbg=
X-Google-Smtp-Source: AGHT+IFceGCqz7uGeasJ8d+wxWR0+0eyyS86xlfc4B2mo//mWBCxuzkcbi0iaMx+rshovbvyruvywA==
X-Received: by 2002:a17:907:2d1e:b0:9c0:1d65:68d9 with SMTP id gs30-20020a1709072d1e00b009c01d6568d9mr14416837ejc.7.1699293271544;
        Mon, 06 Nov 2023 09:54:31 -0800 (PST)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:6811:f78e:de5c:331])
        by smtp.gmail.com with ESMTPSA id dx15-20020a170906a84f00b0098e34446464sm91217ejb.25.2023.11.06.09.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 09:54:31 -0800 (PST)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	stigge@antcom.de
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: watchdog: nxp,pnx4008-wdt: convert txt to yaml
Date: Mon,  6 Nov 2023 18:54:28 +0100
Message-Id: <20231106175428.162256-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert txt file to yaml. Add maintainers from git blame.

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---

Changes in v2 (according to review comments):
- Put allOf: after maintainers: block.
- Put unevaluatedProperties: after required: block.
- Updated example to use lower-case hex.

v1 patch: https://lore.kernel.org/all/20231104182813.80055-1-n2h9z4@gmail.com/

 .../bindings/watchdog/nxp,pnx4008-wdt.yaml    | 34 +++++++++++++++++++
 .../bindings/watchdog/pnx4008-wdt.txt         | 17 ----------
 2 files changed, 34 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
new file mode 100644
index 000000000000..35ef940cbabe
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/nxp,pnx4008-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PNX watchdog timer
+
+maintainers:
+  - Roland Stigge <stigge@antcom.de>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: nxp,pnx4008-wdt
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
+    watchdog@4003c000 {
+        compatible = "nxp,pnx4008-wdt";
+        reg = <0x4003c000 0x1000>;
+        timeout-sec = <10>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt b/Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt
deleted file mode 100644
index 4b76bec62af9..000000000000
--- a/Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-* NXP PNX watchdog timer
-
-Required properties:
-- compatible: must be "nxp,pnx4008-wdt"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-Optional properties:
-- timeout-sec: contains the watchdog timeout in seconds.
-
-Example:
-
-	watchdog@4003c000 {
-		compatible = "nxp,pnx4008-wdt";
-		reg = <0x4003C000 0x1000>;
-		timeout-sec = <10>;
-	};
-- 
2.34.1


