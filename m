Return-Path: <devicetree+bounces-117380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D28279B60D5
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FAE728271E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09931E767B;
	Wed, 30 Oct 2024 11:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fdW2T6ug"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75ECE1E5020
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730286109; cv=none; b=fGsqNESU007Hjxz49TxHBnlxY7NcmHZ7wNczMtqxWVs2v2ARMxHpF+ZenxYY26jxao1imH59HpgOwA+NuhIdI6EmfWRpak0sx4gCyq63TR9/qI6RWXGJTlfWQP93Eth80vWuCZI4zbanFo8CM5IcjOWs2BgQQokLUH3p7TvKTcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730286109; c=relaxed/simple;
	bh=GzhYOIOjWWWkcnxKv/+WunfUEbU6v0yAgqFMhuJW65E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=P6JmqR3NK2EATglflspduSZhHmjd4P4PkjORnYZFEwtWSXmEaAX3qNaXTCt7WfJC8fzkuo3YKdU1DP7UNZOn088JmDTHYLELvR0sBqnaXam16V1fSflI3GY567QxrkmF9exFOavDuzQwkYpuSvLt2TOpaW8XZSWD4xMh4amQoeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fdW2T6ug; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-431481433bdso62047915e9.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730286104; x=1730890904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4QBNlB+d2PHxk6dWy4yzXj/lD/DoVJIDKguatDDGb4=;
        b=fdW2T6ugKpHYeb2S0hhZkw47wyu0c4aIb6hYbyV6anYa0nKhycayNVZxCWZk/fRLXU
         k+YHx7OHGajDh8VVBXsbGDGyRP2SuSHYp92Ym9XtCQYou5RhIJPuqXlITDnKUXlsvyBj
         ZOKN5Meg5jeqjD73g1ASPLG59ssYINR4gpzlnHcl//TYvkTuwyaFSWmplBErPOM6hvFz
         aeZrHIo+7lytEhRtqO8+KThOksuVUx+b3ex6RpZOuwrOPRPt9sh8mDrTcK6zDx70UtYk
         oAfZiJ7VaB7VOk418Qb6EELKespsE5kv7LhHqh6TpRbg037silXd3PD0gURMjEQO0s0P
         EBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730286104; x=1730890904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C4QBNlB+d2PHxk6dWy4yzXj/lD/DoVJIDKguatDDGb4=;
        b=I5BzAipq+DQK3LU28FE/KszHvhD2vGQALjTO09E8ADnL1CijsqmfdFcn85ghakcOxk
         UF4DlZLzsFpb2hcg/MPMbDs8yeFCJkhwcwe439vq2BKNhMx9q9n1npASKjjYIItdCCzM
         Ts2O6goFqfUO/abqk8Xe2HNHrGeJzS7fL6fQqou6ewWGRaWBfY0+lkeAr3O2iF2+ltHj
         dfA4sJYAmiFJ+L6yCZ/JbDqUDqz97sBdiyAWLeH+5mT21EXutSym7oQzbnY1Deazo+Cy
         vG5+/WEr4CwHcF6bZUeo+74vKDnlcIUkfBDRbY7TKgamNlPxiW/Ssim/7pVNTAbsefZg
         yiqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcmxmtVpKNJDQm/IZiQvvZBkBG+tPw++oHVNBtcKTY41wYskToK+e085/RZs+LUejV4wJxvZAjCRc4@vger.kernel.org
X-Gm-Message-State: AOJu0YwioCcNDqigexwRXQpRbEeRzXXTK81axdBYCzSgFG5Du8ANmrEE
	OB1b9Yy3vuDaV2r/kcQ9RKxgFSqcu4IOTLwjDsjaULHZJyNBdnGkStTILP7XOxM=
X-Google-Smtp-Source: AGHT+IH0M773hGU4oya6J/fuA+HUQZaFJdAlea6vN77xZ1FRNiRTnlZxHceEr+4/h6lEyss2Uuvwjw==
X-Received: by 2002:a05:600c:1ca6:b0:431:52da:9d67 with SMTP id 5b1f17b1804b1-4319ac7435bmr135949865e9.3.1730286103671;
        Wed, 30 Oct 2024 04:01:43 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd99edebsm17956935e9.45.2024.10.30.04.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 04:01:43 -0700 (PDT)
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
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 04/10] dt-bindings: rtc: renesas,rzg3s-rtc: Document the Renesas RTCA-3 IP
Date: Wed, 30 Oct 2024 13:01:14 +0200
Message-Id: <20241030110120.332802-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the RTC IP (RTCA-3) available on the Renesas RZ/G3S SoC.
The RTC IP available on Renesas RZ/V2H is almost identical with the
one found on Renesas RZ/G3S (it misses the time capture functionality
which is not yet implemented on proposed driver). For this, added also a
generic compatible that will be used at the moment as fallback for both
RZ/G3S and RZ/V2H.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- added back the #include <dt-bindings/clock/renesas,r9a08g045-vbattb.h>
  in example section to fix the build error
- kept the Rb tag from Rob; Rob, please let me know if you consider it
  otherwise

Changes in v4:
- collected tags
- dropped the assigned-clocks, assigned-clock-parents properties from the
  example, along with r9a08g045-vbattb.h inclusion; these were moved
  to the VBATTB example as it fits better in there since these are
  related to the VBATTB but not to the RTC;

  Rob, I haven't dropped your Rb tag for this; please let me know if you
  consider it otherwise.

Changes in v3:
- added RTC bus clock, reset and power-domain; it has been detected
  by reverse engineering that RTC and VBATTB clock, reset and power
  domain are shared; HW manual doesn't mention it
- updated example with these and with assigned-clock properties
  needed to configure the VBATTCLK MUX with proper parent
- updated example section with dt-bindings/clock/r9a08g045-cpg.h
  and dt-bindings/clock/r9a08g045-vbattb.h includes
- for all these, dropped Conor's Rb tag

Changes in v2:
- updated patch description and title
- included reference to rtc.yaml
- updated compatible list with a generic compatible as explained in
  patch description; with this the node in examples section has also been
  updated
- used items to describe interrupts, interrupt-names, clock, clock-names
- updated title section

 .../bindings/rtc/renesas,rz-rtca3.yaml        | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml

diff --git a/Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml b/Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml
new file mode 100644
index 000000000000..e70eeb66aa64
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/renesas,rz-rtca3.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/renesas,rz-rtca3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RTCA-3 Real Time Clock
+
+maintainers:
+  - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
+
+allOf:
+  - $ref: rtc.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,r9a08g045-rtca3 # RZ/G3S
+      - const: renesas,rz-rtca3
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Alarm interrupt
+      - description: Periodic interrupt
+      - description: Carry interrupt
+
+  interrupt-names:
+    items:
+      - const: alarm
+      - const: period
+      - const: carry
+
+  clocks:
+    items:
+      - description: RTC bus clock
+      - description: RTC counter clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: counter
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    items:
+      - description: VBATTB module reset
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r9a08g045-cpg.h>
+    #include <dt-bindings/clock/renesas,r9a08g045-vbattb.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    rtc@1004ec00 {
+        compatible = "renesas,r9a08g045-rtca3", "renesas,rz-rtca3";
+        reg = <0x1004ec00 0x400>;
+        interrupts = <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "alarm", "period", "carry";
+        clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattclk VBATTB_VBATTCLK>;
+        clock-names = "bus", "counter";
+        power-domains = <&cpg>;
+        resets = <&cpg R9A08G045_VBAT_BRESETN>;
+    };
-- 
2.39.2


