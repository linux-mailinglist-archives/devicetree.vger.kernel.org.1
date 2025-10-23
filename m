Return-Path: <devicetree+bounces-230461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9BFC02C48
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 19:41:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CC0F3B0E4C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 142F234A3DA;
	Thu, 23 Oct 2025 17:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SC+bKV1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847B633DEF3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 17:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761241287; cv=none; b=YgsNjfjJAg+fnbvDkKNYyNjyklOXfel2+UTQVxqK+YAkS+eT1WRgavwyw1aQhO/uS7T3R8iNjFFMKmjnVxPQBoXXondnAVieiIWfCAGIyp/3wFD1r+JvoS192Xa7vdTpuLrkOWesn3CMxIcVt7PFu+MeBXyWcUE2vLSs5qVwcCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761241287; c=relaxed/simple;
	bh=brq1Q6J/cHb72gyYM3jxDa4jInBHAcJnQ/osdj5Bc0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=VTDZ3zJNT1gfknnSIZU/j3lpeJ/hic27MFCDaRysngXktZ/P8CqDJeIlPgki01Zp1mQnQkvlAVtqAFCX26JjYGuhoX5mxlDcOHGMcsbviKuMkgpvHaPHKa8KEdqoEyQXuVwv6ASkd9MQb2SxBel4PXjhjElvp/J3G45yHu8Ogqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SC+bKV1+; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-26e68904f0eso11597415ad.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 10:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761241285; x=1761846085; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+RlscW0fJPcI4w1cVrsdBX2mHMbYD0iZ1loDXnboKus=;
        b=SC+bKV1+3Nb2uPW+ss7ZfMAd23SDd9Swd2WfIHGku13Yn04sANHwSzXRLH6Gy8ACTI
         fr+aaL8qKQ45qbn42nAr6VUQyvE3eb/KvUBJaeYx84utCnxEthTU6hTSFgZGjByZzP+B
         mhnK0BqL2T+q8tuUQnFXw6/ifFqkulZzQvCeDdkwHyA5b+4aTYEBEGWYHFBcaotp4b35
         3YdVnorLuZKWcpLAyYc/ijcTzjp6UJu3QfAxnZ9ITXQFxF/tb1X1WE1mpCb7xNAoRcMu
         WUWJ83jWkFVOJE2A8XyHVlLRJxdjrWQ4oMXWNZ5YYw0tVPSkw2FSmCV9vjVxQq/QWoby
         oOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761241285; x=1761846085;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+RlscW0fJPcI4w1cVrsdBX2mHMbYD0iZ1loDXnboKus=;
        b=L7ufuqtlhFY6TNVTju5igX25HD5GEfObWjcpvHv5V1bWfIuBzaFVvzIIYOPjbHfAt8
         cSCmtutQ8aBpBaCdUVJK+jj9BKJRHTdYX+OX5wNkRi/U3b6US+744b+glbip7h1THXBk
         zG8GRzWAOLl13cZ2nLmOgtt0AY3vpaOsRp4aSUGuVmA5ndBYp8Th8BitbZxgfGkJMsAM
         pn1ZaHK+CV0UD8LhhJZUTTBqPbNZzxQWTCfQiKok4an9DzXPqoqwNChp5Lecs8kLm9zk
         P5V6Uop0lXs5jvcl2f5+ITxdkoQbYyXia/QbiJB5xHqHAOFbQApM4Wc2DzBuEJy7sEkp
         aNTw==
X-Forwarded-Encrypted: i=1; AJvYcCU0u5hdUyw5mCk3jhZIF9jk5wMRtZWmf2XACmCOccaZTKpI6UJ1maBxFiiAz/+mUhSZ3sUA1a27W7wg@vger.kernel.org
X-Gm-Message-State: AOJu0YwnPPTmzsAExhYCcPTWOlm9OgBLCG2jmS3JMyXDUJ/MgzUHtJnP
	FBr5ZqxYT5g4WrATfDBIstgVthnKu53QVTKI6vK0+pOIe8cyxhM+Wsf3
X-Gm-Gg: ASbGncvyK20U5WkPkKybBOE/aqReEkd/sWvMweW1xa/Pd9eWWcCarGf0U+ez3464+no
	9MRt2BP9rslpcUJ2YTr0BHLJZhdoEC4hKAXpUjacUTnp+LyML9sm42yeQZaZwcCkscoLIg0iFFM
	m0BkPWsVHe1kvNUr8OZNxph8mBRQ/bNpd9xID3Ta/3BX7ZduZIp0y7phue3fsDlaL8zwxPDOs10
	G4acIP9ycMwG1HkjO73PFvNlq6HIQwDokRWr7CegvS6jmhZzEoYeyobLH50kcuMR1bn6AsCY++5
	vuCETV/6mQs06nHzn6Y4JJ+6xp18QMFOHfdxcIJvZKvfHRsEFxs5ZMB/jV8SD0wJK0zGaRL4rQr
	SULJFhtZv1EQTwqO+mnfMfY52K/TXFImf0qgfGBqxSm+nLp2k8TE7qcpxzd+AOTnJG5DPfgfkRK
	jbMCXFTI9WdwHRa+rP4QO3RZhLIYZoHIM=
X-Google-Smtp-Source: AGHT+IFfxGetZxOYzBkLMbSAX9vob0YlVWtcztLEw1yU6xI6aPUDPEqjnKvkoiTPdJH966r2PqACrQ==
X-Received: by 2002:a17:903:2443:b0:24c:cca1:7cfc with SMTP id d9443c01a7336-290cb947830mr310655975ad.59.1761241284484;
        Thu, 23 Oct 2025 10:41:24 -0700 (PDT)
Received: from Black-Pearl.localdomain ([27.7.191.116])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2946e21fbbdsm29202205ad.99.2025.10.23.10.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 10:41:24 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 23 Oct 2025 17:37:36 +0000
Subject: [PATCH] dt-bindings: mmc: socionext,milbeaut-m10v-sdhci-3.0:
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-milbeaut-v1-1-3e4ff67110ad@gmail.com>
X-B4-Tracking: v=1; b=H4sIAN9n+mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUyMT3dzMnKTUxNISXdNkAyMzc6B4qlGyElB5QVFqWmYF2Kjo2NpaADb
 XLoxaAAAA
X-Change-ID: 20250524-milbeaut-5c0267202e2c
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Taichi Sugaya <sugaya.taichi@socionext.com>, 
 Takao Orito <orito.takao@socionext.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

Convert SOCIONEXT Milbeaut SDHCI controller binding to YAML format.
Add a new property "voltage-ranges" to resolve dt_check errors.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/mmc/sdhci-milbeaut.txt     | 30 ---------
 .../mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml     | 78 ++++++++++++++++++++++
 2 files changed, 78 insertions(+), 30 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt b/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt
deleted file mode 100644
index 627ee89c125b..000000000000
--- a/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-* SOCIONEXT Milbeaut SDHCI controller
-
-This file documents differences between the core properties in mmc.txt
-and the properties used by the sdhci_milbeaut driver.
-
-Required properties:
-- compatible: "socionext,milbeaut-m10v-sdhci-3.0"
-- clocks: Must contain an entry for each entry in clock-names. It is a
-  list of phandles and clock-specifier pairs.
-  See ../clocks/clock-bindings.txt for details.
-- clock-names: Should contain the following two entries:
-	"iface" - clock used for sdhci interface
-	"core"  - core clock for sdhci controller
-
-Optional properties:
-- fujitsu,cmd-dat-delay-select: boolean property indicating that this host
-  requires the CMD_DAT_DELAY control to be enabled.
-
-Example:
-	sdhci3: mmc@1b010000 {
-		compatible = "socionext,milbeaut-m10v-sdhci-3.0";
-		reg = <0x1b010000 0x10000>;
-		interrupts = <0 265 0x4>;
-		voltage-ranges = <3300 3300>;
-		bus-width = <4>;
-		clocks = <&clk 7>, <&ahb_clk>;
-		clock-names = "core", "iface";
-		cap-sdio-irq;
-		fujitsu,cmd-dat-delay-select;
-	};
diff --git a/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
new file mode 100644
index 000000000000..6b67bef30347
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SOCIONEXT Milbeaut SDHCI controller
+
+maintainers:
+  - Taichi Sugaya <sugaya.taichi@socionext.com>
+  - Takao Orito <orito.takao@socionext.com>
+
+description:
+  The SOCIONEXT Milbeaut SDHCI controller is a specialized SD Host
+  Controller found in some of Socionext's Milbeaut image processing SoCs.
+  It features a dedicated "bridge controller." This bridge controller
+  implements special functions like reset control, clock management for
+  various SDR modes (SDR12, SDR25, SDR50) and physical pin property settings.
+
+allOf:
+  - $ref: sdhci-common.yaml#
+
+properties:
+  compatible:
+    const: socionext,milbeaut-m10v-sdhci-3.0
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: iface
+
+  fujitsu,cmd-dat-delay-select:
+    description:
+      Its presence indicates that the controller requires a specific command
+      and data line delay selection mechanism for proper operation, particularly
+      when dealing with high-speed SD/eMMC modes.
+    type: boolean
+
+  voltage-ranges:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    description:
+      Two cells are required, first cell specifies minimum slot voltage (mV),
+      second cell specifies maximum slot voltage (mV).
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mmc@1b010000 {
+        compatible = "socionext,milbeaut-m10v-sdhci-3.0";
+        reg = <0x1b010000 0x10000>;
+        interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+        voltage-ranges = <3300 3300>;
+        bus-width = <4>;
+        clocks = <&clk 7>, <&ahb_clk>;
+        clock-names = "core", "iface";
+        cap-sdio-irq;
+        fujitsu,cmd-dat-delay-select;
+    };
+...

---
base-commit: 7bac2c97af4078d7a627500c9bcdd5b033f97718
change-id: 20250524-milbeaut-5c0267202e2c

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


