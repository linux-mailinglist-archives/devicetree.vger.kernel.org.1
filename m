Return-Path: <devicetree+bounces-187840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CFAAE174B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 11:14:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B26B01BC00B5
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 09:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C46227FB35;
	Fri, 20 Jun 2025 09:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YDg9ole1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F8427FB25
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 09:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750410885; cv=none; b=dCYWdv42Zz7YaLKzMhvgSTAxfljeZG5x2NSPeWjlxT6pU8poeil3AV47i1yujK2k5aDfkFqhZoBaVVIhP3C9OEBRgdQ5wwURphJDR3uuwgwqNXu2MgzkG7/HggA4QczWLn5PoCCmIlUKhP5KbYagljPAgGH76GxCZrZBmEHuIoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750410885; c=relaxed/simple;
	bh=IbdDdqJIlfCEtsWF/EFEzyYcJx1OX94SsN+n2lWpZQw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Vx7W3D+MJPL9NSmiw5vUxJBC/FIbrjhi/CBYwO/okiHqEnLspA+3fRO/xthJ3Qk4Zk4jM9WubCMSDJUsvlNK2dYXQYQVOBDPqHT9xjlWKV+AMOBWvA5hGTbhX85nbnEgLnEIiNCMw22XHef1slh3ET6HTmO1A6eNKAdu1po0qyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YDg9ole1; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-234f17910d8so14105785ad.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 02:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750410883; x=1751015683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TxZMvbONeEq9YW62a7hG0AWRnsA50F8YYO9Dh3zVrG8=;
        b=YDg9ole17HzMmmqKhk8O+JofmX2MuuDMZINo1tTpD9x4aLwYM5WtSgdNdHIhfzABHL
         alyqcPMEZac7f+k64gMKxAbu/3hNpX2SFwaMs8iccgJah2jXxSyv7NUoIWe2bDnh/YSp
         vUWwZI0G7+g9yMgpqOLIcE0ZbcQXx7HBUylU6efZGllPKdjTnZT6Ol6wj1h9WXJRBvIE
         W/poLn99nt3PxJqLUd52J+ADBj/aaQ6+o2wQZTXH5nXdGhyXdcvx+1DF5b1ONl0N7s9W
         kjn64AJpR+l1OTu4/Wmf7lHdzYAwSgZI/Yy7LEKEyjug3LuNBWBNApkhuZFfag7HWpLO
         g15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750410883; x=1751015683;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TxZMvbONeEq9YW62a7hG0AWRnsA50F8YYO9Dh3zVrG8=;
        b=q/aWpBxwX/5yPTIg39InyxQNsrFFPCCjPx9AU4jKaCAy6q3nOCsBNpFO4/q8CFcWw/
         KC70e24jvVaekZF4dggua7Tdtp/Pp9pe8SQee8SZ08cEVpb8eZEqjBm0DHdcQHT7mVF6
         LV1kCNXWynQxTomv5Hho71AgmKciqm2n06PFwk/zv3QzAch37iUNYRAIaN5AHrvd1I6w
         OFlnt8KJ2F9hnuDEIIDOuiZyHBlwgN1qsGJQGLv3o/1yLn6CaK9xJmnJtLvAZrnFWzxl
         NjFf17hBtJ1vs5CFPVkqOEBxQYvnk7c7VWckor0cqSvD6n1YzDzpJr6tIBCFf02WwCon
         3Wsg==
X-Gm-Message-State: AOJu0YzTulH4RiS6i2hFMdmi4jyJ21CB7lT2dYV3Tk8MgIyc7JwrIJzw
	HVwBAqyro08buGzjI117zalqoK3IMo+evWV9uPQvKbW5utgcq6h6LOneRllV6fVa
X-Gm-Gg: ASbGncuQ1tB9SM5JegwaWPhTpwakbODGl7jifXOtPE4Xgyf0oUw1hN4hkkF93j3vixt
	WsRUFdsLQzqJlXAl4lYWHrL3iP20ZypsF3khJG2s2pJYrQFJJdnnYFxUramVfi10V0TvMMEp4hY
	aCoIrKd/dSXn88f1jaAFy7jg+mxvWv5KHpkA+tWzpCsX165kh1TnMEsYWxOvQV2IFKvKbWRJxqp
	ocKQK/8KQ0VzJDwMXWSjTAmw/jCnMfmNFWwzYgyjo70YfQ67WG1SlgKA2ItCoRTZoG2kf2A96Hg
	rzXlpPsWBGZpZ7ypHchQ+x6ErZIGgJhRC/AeRLu6mkfP+O578HEXogzk19ssYDPvrt0VPtDZPP3
	XKYIP2Q==
X-Google-Smtp-Source: AGHT+IExTLdsXAUTk+ruQ9SfZaYZti0lKGeWvwwzYcoaSQ1Drr2W0ARpMclBQj8hkdn6/TKlnxZBFw==
X-Received: by 2002:a17:903:1b48:b0:236:7050:74af with SMTP id d9443c01a7336-237d97674f9mr34363385ad.9.1750410882555;
        Fri, 20 Jun 2025 02:14:42 -0700 (PDT)
Received: from shankari-IdeaPad.. ([2409:4080:e3d:e62b:ab13:6038:4535:e5a2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8695000sm13147425ad.186.2025.06.20.02.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 02:14:42 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthew.gerlach@altera.com,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v5] dt-bindings: memory-controllers: Convert Altera SDRAM EDAC .txt to YAML
Date: Fri, 20 Jun 2025 14:44:29 +0530
Message-Id: <20250620091429.388981-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
.txt format to a YAML schema.

Added a 'reg' property as dt_binding_check flagged its absence. 
The controller is memory-mapped; address is confirmed from Intel's manual.

Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10, 
compatible with altr,sdram-edac but use two interrupts;
Schema enforces interrupt count per variant.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
v4 -> v5: Updated commit message, fixed placement of reg, added allOf condition per variant, fixed example section, dropped description as specified

Reference for reg address - https://www.intel.com/content/www/us/en/programmable/hps/arria-10/hps.html#topic/sfo1429889205804.html ,
https://www.intel.com/content/www/us/en/programmable/hps/stratix-10/hps.html#bal1505408006582.html
---

 .../arm/altera/socfpga-sdram-edac.txt         |  15 ---
 .../memory-controllers/altr,sdram-edac.yaml   | 104 ++++++++++++++++++
 2 files changed, 104 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml

diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
deleted file mode 100644
index f5ad0ff69fae..000000000000
--- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
-The EDAC accesses a range of registers in the SDRAM controller.
-
-Required properties:
-- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-a10"
-- altr,sdr-syscon : phandle of the sdr module
-- interrupts : Should contain the SDRAM ECC IRQ in the
-	appropriate format for the IRQ controller.
-
-Example:
-	sdramedac {
-		compatible = "altr,sdram-edac";
-		altr,sdr-syscon = <&sdr>;
-		interrupts = <0 39 4>;
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml
new file mode 100644
index 000000000000..652289c2c2f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/altr,sdram-edac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Altera SoCFPGA SDRAM EDAC Controller
+
+maintainers:
+  - Matthew Gerlach <matthew.gerlach@altera.com>
+
+description: |
+  EDAC-compatible controller for SDRAM error detection and correction on
+  Altera (Intel) SoCFPGA platforms.
+
+properties:
+  compatible:
+    enum:
+      - altr,sdram-edac
+      - altr,sdram-edac-a10
+      - altr,sdram-edac-s10
+
+  reg:
+    maxItems: 1
+
+  altr,sdr-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the SDRAM system controller (SDR) syscon node.
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - altr,sdr-syscon
+  - interrupts
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - altr,sdram-edac-a10
+              - altr,sdram-edac-s10
+    then:
+      properties:
+        interrupts:
+          minItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    / {
+        model = "Example SoC with SDRAM EDAC";
+        compatible = "arm-soc";
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        intc: interrupt-controller@0 {
+            compatible = "arm,cortex-a9-gic";
+            interrupt-controller;
+            #interrupt-cells = <3>;
+            reg = <0x0 0x1000>, <0x1000 0x1000>; // Dummy
+        };
+
+        sdr: syscon@f8000000 {
+            compatible = "altr,sdr-ctl", "syscon";
+            reg = <0xf8000000 0x1000>; // Dummy
+        };
+
+        memory-controller@f8004000 {
+            compatible = "altr,sdram-edac-a10";
+            reg = <0xf8004000 0x1000>;
+            altr,sdr-syscon = <&sdr>;
+            interrupt-parent = <&intc>;
+            interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+        };
+
+        memory-controller@f8011000 {
+            compatible = "altr,sdram-edac-s10";
+            reg = <0xf8011000 0x1000>;
+            altr,sdr-syscon = <&sdr>;
+            interrupt-parent = <&intc>;
+            interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+        };
+
+        memory-controller@ffc25000 {
+            compatible = "altr,sdram-edac";
+            reg = <0xffc25000 0x1000>;
+            altr,sdr-syscon = <&sdr>;
+            interrupt-parent = <&intc>;
+            interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
-- 
2.34.1


