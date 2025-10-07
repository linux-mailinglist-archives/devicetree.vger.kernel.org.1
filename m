Return-Path: <devicetree+bounces-224230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 949CDBC1E54
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 17:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B84019A471F
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 15:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9992E5402;
	Tue,  7 Oct 2025 15:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="UO8txzWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF962E371A
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 15:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759850432; cv=none; b=pi4k2HHyntzhP3v2w7HKu2sJY3Z/iw9d0BUJ2s3hOI5VCPoWMHX/qKhIJTu9V/xRnSOFT0kcVTr/0SaTQRcjnn417AI1F29QHUqF1ZpII8i8SXdWiUMSQkIYTK397pIEKQpzndzYhcxSFJ0SrGqHBaeUTWlFvEJZKKkc9xS75HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759850432; c=relaxed/simple;
	bh=Q6UQpldCCzcj/oyzGB5w5BeL2UdJGo93YK+DycSMlBM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OFkxsZB3j6IKxBco6GPRJtYkf8GYyunXQNfgmjlo5Uj+VL9BaqLE5gHXzlvQaq8pY3XF/5Jl0gWe+bKF7sF6ZXHDDZByLhpU2qvvFDpOgRVaOx4+wj48qGCjQgw7Og7syTW+6FRuFLDG9io9AFK0Brm085JBuBPuBvgwRBQVZ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=UO8txzWd; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=GJIrZL61BrUaWb7sxIqmaeJyiXJeN7Pi/c+xdAOUic0=; b=UO8txz
	WdvUGYXZlW63GeyN/fKWjLzXe6AT6QI9o7bL23hGVAf5oB+308EyZzF1kU48VG6B
	D68La2PauXGgiG5YCIZYQ6MbfVBLBkr4aBu4DK1AHcUj3J6VDSCSysymGGKzNe7P
	CG6SXZkXrDJxy25KqGxjJt9TnouP3t1LWz208YsDQOy186bzCCzqafdX79q/CLot
	hCC2Y9n+DBlPbFoNtdWncYeTN5viJfMKtv3TQzFPD+cUxXbN6OlOORyUqDo7ykVP
	sBxLUeKCc1FdK6BsMvCe9irAxV6R/4TKmT4NJoKixvI4aMbOhphF/E2FC3YNjMJ9
	0kTAS9XlmYR6V/8g==
Received: (qmail 313154 invoked from network); 7 Oct 2025 17:20:26 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 7 Oct 2025 17:20:26 +0200
X-UD-Smtp-Session: l3s3148p1@0QeHG5NAZMoujntU
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/5] dt-bindings: watchdog: factor out RZ/A watchdog
Date: Tue,  7 Oct 2025 17:20:06 +0200
Message-ID: <20251007152007.14508-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251007152007.14508-7-wsa+renesas@sang-engineering.com>
References: <20251007152007.14508-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Renesas created different watchdog IPs but they are all handled in the
same binding documentation. This leads to a lot of conditional handling
which makes it unnecessarily hard to add new items. Factor out the RZ/A
watchdog to make handling easier.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Changes since v2:
* none

 .../bindings/watchdog/renesas,rza-wdt.yaml    | 51 +++++++++++++++++++
 .../bindings/watchdog/renesas,wdt.yaml        |  7 ---
 2 files changed, 51 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.yaml
new file mode 100644
index 000000000000..ba922c3f7b10
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/renesas,rza-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/A Watchdog Timer (WDT) Controller
+
+maintainers:
+  - Wolfram Sang <wsa+renesas@sang-engineering.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,r7s72100-wdt     # RZ/A1
+          - renesas,r7s9210-wdt      # RZ/A2
+      - const: renesas,rza-wdt       # RZ/A
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  timeout-sec: true
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+allOf:
+  - $ref: watchdog.yaml#
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r7s72100-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    watchdog@fcfe0000 {
+            compatible = "renesas,r7s72100-wdt", "renesas,rza-wdt";
+            reg = <0xfcfe0000 0x6>;
+            interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&p0_clk>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
index b6e60162c263..8a25e0c6271f 100644
--- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
@@ -13,12 +13,6 @@ maintainers:
 properties:
   compatible:
     oneOf:
-      - items:
-          - enum:
-              - renesas,r7s72100-wdt     # RZ/A1
-              - renesas,r7s9210-wdt      # RZ/A2
-          - const: renesas,rza-wdt       # RZ/A
-
       - items:
           - enum:
               - renesas,r9a06g032-wdt    # RZ/N1D
@@ -140,7 +134,6 @@ allOf:
             contains:
               enum:
                 - renesas,r9a09g077-wdt
-                - renesas,rza-wdt
                 - renesas,rzn1-wdt
     then:
       required:
-- 
2.47.2


