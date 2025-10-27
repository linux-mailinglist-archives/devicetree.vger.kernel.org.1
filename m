Return-Path: <devicetree+bounces-231659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 941A1C0F767
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2230C3AC59F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B23314A99;
	Mon, 27 Oct 2025 16:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hx22Y6CI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B598313525
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 16:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761583771; cv=none; b=h0LIcyE3WWpfsYhORkT1ECf8i7wYevlBqje8FX8sDUUjuPPbdQgk+9XjesEIVX/GPoxtsuEuwD4K6CaMabGz17VauVoGW/NriEbTCt8G2o9cy9af9YJkxqqGpA8niq4UG4Z+Vc3zdRVz3KMyGvMFCjmXxUob5Sv/eB1uRlhOXHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761583771; c=relaxed/simple;
	bh=TWUcnMhGYjqpSEACT1hY8gU5ZXrwBEJkbZ/hFSk485A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XW9SoVa41qNdAAVEha/Ypgt5/efgGggOvPPgKL+Re9ppWoiPrLyzzhrp9dXXAu7iUN9xceI9B6dJzdNvMbjXg+LASHH6TOge89tJoTskZuYJVZB0XpQN67rH56g5MikQeermxe0bNC7MUn7H8GTAstqNaFYtd9EH0XnrxAeh5Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hx22Y6CI; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-27d3540a43fso49805195ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761583769; x=1762188569; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=geguZxaeJiqKqJQ0kK8UQgUfhxCEenMLMdjKppCx4hc=;
        b=hx22Y6CI/zP/jF+Xi3eElk/Yz7VC5/ug/78dKwna2BwOd2ohPH+vrL+8J8kaf5H61z
         GWSVoszeXs7Ig8SzkKDUo4de9dorZ1qxt88FcOchiwQBmroQgG+vr8R8F//SEHXZNNpm
         UJIi3SOBKMsoiNqLw+J3seyPQVO3A27cZItPW4lHmYvc1L58SAk8yT3BD439mkQMoILJ
         cPSUL1w7aLYQlg8R64r1Rvg5QqbUb9M+Y8bCKWwEolP1qJg5+GKCVWKU065jFbhwCJ0j
         lFLpuTHoF/ZJEN3gBiuG6qmdtXQIhybs3paDZZ+lNF9ILR4lpq0EAuJZGDwpXrqYY8I9
         jP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761583769; x=1762188569;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=geguZxaeJiqKqJQ0kK8UQgUfhxCEenMLMdjKppCx4hc=;
        b=cfFiSX7a+h2FxxTPUB9i8GMeI/YTlgMZc5uAbzrMNWr6suEJHHqyECmqoHK/b04k5c
         3l0tUmmgZ0dDQWuWDgOiPWu+j20X1N93n2B8m+bfksYpKShu5NjH94pPEHi1HpGyLm0r
         F7pT6AHQLfbZoyagvGT8PZ2DrTuRE5Qt5TP4uRxL5otkCqvoAGcma3k/9szBJeKIMPHh
         pHs6syaY7nbHmVsj83eFcRIjSEIsjOJwZcqCPbc6ZZZSQv1Gl0QyOe5igDTRVMOZkKD0
         e689xSrAiA8h6bmIpko2KjhSPl8II3zzvgV611aY8EKpYLLQoQCaX0OekS71nNHDuesz
         qs6Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2XjFeb/XygT3imS4L8Njmzi85E8Kd7XwHHvwcDbcKR6SdgPsnB2/jnMM4s1SGaued9Vc6T8LdyosX@vger.kernel.org
X-Gm-Message-State: AOJu0YxQCFdduvWUDCGrDH7shUeTf2m1SBK/UEDCq7rtCFk20LeDwhRm
	P0p5owYKMeh2k2D/TiY0iR5sDo4M+CqrRPvYats0xchBkR2KbQwK45nJ
X-Gm-Gg: ASbGncsh0L9SyNp/FXwPzg4Oa0g9npIdOLdX4zT8tTlhEvHe50oH6cRPf/qCFWWF/6u
	jOViVPDeSjxcWm2g8Scrwmy/6AGE36hf43jzXanBZoV//PGijcqvod/CVwienR0M9QNlnyHKIbu
	/2eUW0C0B20wMpU42R9A4J7mFX4rhM9NIBlRjv2u54Aj3kpJNVz7wrBu6tRPZIxP4p6Dg8f8aIe
	WckKGeW1J+0hBMiUU0+pQF7qgayt/zwc7irBbLfIdd5R9tYyWwpcy/OF6oYZd3vRBBiJ2edri06
	XsY3b3/yA11ydg89m60GIUDb5wXYpvCSlUTWwJbrt4v9HryeUVxfhy0DXyZWQ/CvNYV5c07tcJ9
	YUnaFzo3S7Bf/UTqR+w0AU+iE9FXTcoRaxgEA8z2poylcEBXzqavlHBgNxqn11MHdK4c7n0MQqc
	7ZzBnIzOlB+maIth/sFntW
X-Google-Smtp-Source: AGHT+IFsZhMXjDA3rdE7firYijUNXcnLWPPnTnb2rv5dx73e9it+zwX4W3UIHnIxK9VNAzx0q7dU+A==
X-Received: by 2002:a17:902:cecb:b0:26d:72f8:8d0a with SMTP id d9443c01a7336-294cb368bd0mr6638925ad.12.1761583768299;
        Mon, 27 Oct 2025 09:49:28 -0700 (PDT)
Received: from Black-Pearl.localdomain ([27.7.191.116])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-29498cf358fsm86581925ad.20.2025.10.27.09.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 09:49:27 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Mon, 27 Oct 2025 16:46:16 +0000
Subject: [PATCH v2] dt-bindings: mmc: socionext,milbeaut-m10v-sdhci-3.0:
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-milbeaut-v2-1-9e1954ff7708@gmail.com>
X-B4-Tracking: v=1; b=H4sIANeh/2gC/0XMywqDMBCF4VeRWTclMxqFrvoe4iKNEx3wUhIbW
 sR3b+qmy/9w+HaIHIQj3IodAieJsi456FKAG+0ysJI+N5Amow1Vapbpwfa1KeM01U3emRzk+zO
 wl/dJtV3uUeK2hs8pJ/ytJ4Kayj+SUKEqufK+bhC17e/DbGW6unWG7jiOLz8RU8qgAAAA
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
Changes in v2:
- Change the description for the property "voltage-ranges".
- Link to v1: https://lore.kernel.org/r/20251023-milbeaut-v1-1-3e4ff67110ad@gmail.com
---
 .../devicetree/bindings/mmc/sdhci-milbeaut.txt     | 30 --------
 .../mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml     | 79 ++++++++++++++++++++++
 2 files changed, 79 insertions(+), 30 deletions(-)

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
index 000000000000..2ba53626a959
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
@@ -0,0 +1,79 @@
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
+    items:
+      items:
+        - description: minimum slot voltage (mV).
+        - description: maximum slot voltage (mV).
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


