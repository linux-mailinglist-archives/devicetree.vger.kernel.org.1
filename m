Return-Path: <devicetree+bounces-98438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E32966237
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 15:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB33F1F26279
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 13:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8073F1A76D1;
	Fri, 30 Aug 2024 13:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="d74BMHIu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7CE192D6C
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 13:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725022956; cv=none; b=RwgzV+KB+Ujwd4nhBS4FiUhbqyDRG46U5tFHsURH1RfJWAA6UE+eSquYi3Ozyvjqb0FyDIuFrJuMDe6lW+a5rYMxIcmdgOH0Fiq8Oh23yHpcFRwHWU9XaCsYVNf+ln4b+QLp+WejsUdgKJQUuA5FklnlkVyA6/IDguacdv6pdRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725022956; c=relaxed/simple;
	bh=uhGZ+Ej+8Df3BvNXtqFrx7bgszxm+e6l3LU7esiN/eI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CL5LA+Zc+DYMt3sAVUXgcvBTZzw3yTX793kXYqzcddYPkeejjWxtgui5rsSk8ZJ/U2XE+iqAVvI/YCMtrI4gsNS0yK+45ulXcH7HIM6n/BqHdUuJIWa5DxowMcCcRPLYobiMC8CCtkr56dm2FJlCws7vjZrJa61LAS0iNUSi/Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=d74BMHIu; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-533de5a88f8so1839533e87.3
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725022953; x=1725627753; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ep9Dz4hxWmuGPSojH0Mu0PlK53uNxCmsjb/hiZi2IOk=;
        b=d74BMHIu7vyg8Jl96FTZodVMCO1anjfpwuIEqm8jRAg6XKmVxGzntH2uEOu6QYd53Y
         yLxoY1IvghcuaPV4ZVEX7UDDbIwuvg5RHFk7lZlHfTtaL/ISBYdGTxGFt8ReQZbrZpVo
         0tBmG6XSzBEaf/Ct8gp8qfwWw1BZHamtRnR3V1KKIZCM/E02vLZN6J/oBHhbOF84dcHE
         OdcJzK05lNDFUMLrdzr3JKAqQpbeX7Sy+OrPkrzO5sZAVamFAaCYTIP8TI+gfywOyr13
         WZAY65AT8gDVxBkh/J9RvrpK5o/QRfeQtBxYsWNYIcJ3kHBeIyv/eAvcQjGE0jLHuPnT
         S/MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725022953; x=1725627753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ep9Dz4hxWmuGPSojH0Mu0PlK53uNxCmsjb/hiZi2IOk=;
        b=ZHo7y5pMJ9y/Krihoqw2MxVCi6fag6g4og7gRC9yj+XpIWYYvYbQwSOS9e+Q2r1PyQ
         raPeGWgOS+0heEMbhZnic1zhO/nkTarBOYgH401XRE2coUxjFapJzcMpOO2SrhVO3JNM
         dSwac14Ecf4M1DcUfy3VJYGVQQOWhCFNjvc6+HBitVk0OKGW5tgnUxsJ4NZ4MZUv1gp2
         tQguPLI4VEQT1z4yZBo/OM2LTLJQ6XHz+2/DOqMPbSzI43Q+BT3lrKbRc1u+edxPt3Bd
         gMk5C0R1vOAYhetUBJ61Ci/h+OEEE73rtcPzkHv5s/VyY3m3iwo/iw2qt54p6a1+UN+Z
         uOaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhLl9bS2dvxTqNlN7U0B+15WZl4NIMfi4jsz/qag2rcbwpej+Y7/QJE/G6DMufNIvCD46+IiDe/fKX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4VniYc0qIdmcq3y/0sWRI6GccFfyBIPMl3AeDkRaY+ya3KPTF
	KZkR5u2s3RGHXgQwhW3j5IjKAY8I1fnkr9I8JR5cDVH4RVbOIDmGkVbCZ0Bq+rg=
X-Google-Smtp-Source: AGHT+IHBcNXxqEL3t5TynH4nHYOZ1aADY34nRnO+nmPICBpQZpIG/tXzXQNsjqjeWNwuk/xO+kAwTw==
X-Received: by 2002:a05:6512:1393:b0:52d:b150:b9b3 with SMTP id 2adb3069b0e04-53546b34943mr1359865e87.32.1725022952198;
        Fri, 30 Aug 2024 06:02:32 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba642594dsm80361785e9.47.2024.08.30.06.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 06:02:31 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 01/12] dt-bindings: clock: renesas,r9a08g045-vbattb: Document VBATTB
Date: Fri, 30 Aug 2024 16:02:07 +0300
Message-Id: <20240830130218.3377060-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The VBATTB IP of the Renesas RZ/G3S SoC controls the clock for RTC,
the tamper detector and a small general usage memory of 128B. Add
documentation for it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- moved the file to clock dt bindings directory as it is the
  only functionality supported at the moment; the other functionalities
  (tamper detector, SRAM) are offered though register spreaded
  though the address space of the VBATTB IP and not actually
  individual devices; the other functionalities are not
  planned to be supported soon and if they will be I think they
  fit better on auxiliary bus than MFD
- dropped interrupt names as requested in the review process
- dropped the inner node for clock controller
- added #clock-cells
- added rtx clock
- updated description for renesas,vbattb-load-nanofarads
- included dt-bindings/interrupt-controller/irq.h in examples section

Changes in v2:
- changed file name and compatible
- updated title, description sections
- added clock controller part documentation and drop dedicated file
  for it included in v1
- used items to describe interrupts, interrupt-names, clocks, clock-names,
  resets
- dropped node labels and status
- updated clock-names for clock controller to cope with the new
  logic on detecting the necessity to setup bypass

 .../clock/renesas,r9a08g045-vbattb.yaml       | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml

diff --git a/Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml b/Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml
new file mode 100644
index 000000000000..29df0e01fae5
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/renesas,r9a08g045-vbattb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas Battery Backup Function (VBATTB)
+
+description:
+  Renesas VBATTB is an always on powered module (backed by battery) which
+  controls the RTC clock (VBATTCLK), tamper detection logic and a small
+  general usage memory (128B).
+
+maintainers:
+  - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
+
+properties:
+  compatible:
+    const: renesas,r9a08g045-vbattb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: tamper detector interrupt
+
+  clocks:
+    items:
+      - description: VBATTB module clock
+      - description: RTC input clock (crystal oscillator or external clock device)
+
+  clock-names:
+    items:
+      - const: bclk
+      - const: rtx
+
+  '#clock-cells':
+    const: 1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    items:
+      - description: VBATTB module reset
+
+  renesas,vbattb-load-nanofarads:
+    description: load capacitance of the on board crystal oscillator
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 4000, 7000, 9000, 12500 ]
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - '#clock-cells'
+  - power-domains
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r9a08g045-cpg.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    vbattb@1005c000 {
+        compatible = "renesas,r9a08g045-vbattb";
+        reg = <0x1005c000 0x1000>;
+        interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattb_xtal>;
+        clock-names = "bclk", "rtx";
+        #clock-cells = <1>;
+        power-domains = <&cpg>;
+        resets = <&cpg R9A08G045_VBAT_BRESETN>;
+        renesas,vbattb-load-nanofarads = <12500>;
+    };
-- 
2.39.2


