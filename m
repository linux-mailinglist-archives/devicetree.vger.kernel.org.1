Return-Path: <devicetree+bounces-184345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E7DAD3C46
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 17:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47B161896990
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15FE235073;
	Tue, 10 Jun 2025 15:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IjXcYFl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A884235064
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749568205; cv=none; b=itGmqcvKX19z7yIpZX3RHpavlHhWoIRL8tZFWjLhtt6bs4ss8ANvN7gdCnq52xuatk2d9VFVGQG69nPFItI3ZEBO92mbz1G+zdIlpnRMviKpLRa3NC0K44J58CyieUntfHgx0LGfziGYSNXcHB2ZZ8zl/wCpeV3pVPlx6pSKzC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749568205; c=relaxed/simple;
	bh=UVMsrOYVWgzj+N8I791ZfdW7df1Whpr4LC8BgEEPEUY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lJe+UOi3Oyet+TCz8UjsquLmFz9txwRyK2naMOb6GjC32uIt3dMOJq+mO8xLA9iwgvNsglnH6ivYNSFhjFHNgzeTlUnEaHt0+aHYr34/tsg2Ixi7I0ekD02KPD7rvmhZCjWB5RANO2XRSvkC/OPDvr1DJcGBR4muqNXHA0sEQkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IjXcYFl2; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2352400344aso48665765ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749568203; x=1750173003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvJb8Wmmmp0fIsEisoM93f7os/oTyVJG3S5yuzRo0nA=;
        b=IjXcYFl2jfsfi2O3At4cHbRzT6cij22QZbTzXlo+DoqtFlPNy6UmEcOaYYukiD4blC
         AERM7nJM9YCaZd3qgkczTEL8C048G1uJlSc2zg9TRQWZ6fVvus3HVNnxKNcVax8GCfj1
         z1j1Bfq5hfsIXTWQeOCHwjHBSglnnDPDii6wclEDs9X0jft3Z9slfPxZliRV6qDR/LXi
         msEjAFMCBoA8dPZDrX7nKnUEdTWWj00Nz/Iz/UnsWkJTCd5Ni727e+XwfRETh6LHQS8d
         CzyLOY/o5Tn7+QCWKDhs3QQX6Ao3P2ftWytFSDTVqt5Vc9BkHGwOS9JeyYKSCyDvF5nq
         M8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749568203; x=1750173003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MvJb8Wmmmp0fIsEisoM93f7os/oTyVJG3S5yuzRo0nA=;
        b=Ku4X73LD1VM/hgi5tpfBDwy07aGc0F7vQnPjqCUOYxJZEbe/+EC7r6kQvN+XkNu/nB
         nVRwy4BJkfoqGfThiM+6z/yvCNZ/SfGi6Q/m2MBPNfKjSZKfguB2KEShoDIMJdk7atLA
         K/A4um24767s0VxJVUHUNahPCG8T3TOSAYJH7eeg+9H8Q0KLwzUggEk5M7diTEcBai5t
         PqtbtzsuEXhkreBeUZ6MZrprAm7iUGBxKNAgskR125PhaBkqqY2R6aTNqS4ViwBbU2+7
         959i1nMU2w9EweopstLllr365YKPm7ZaysA2IrCWOk2RimYonlPoBhgbpXRGmvjJg9JI
         xiQQ==
X-Gm-Message-State: AOJu0YyC8hR8zZ2xO2JeJ0Nrn6Gufqu/EvsBR0q9jTde0FLG2zmlcExh
	qovqj4QBbhP3ysx6iurZlIQE57+eAaYfmzJWTn7dEHI6MVJ8onwiH7XKXYgEVpXU
X-Gm-Gg: ASbGnculpsFJiHp2pl+bzAZ6VVZWkKWWVNFoJYpxm9l8iAITQZjfnvHqzh+gMP60iER
	VKKdt6NPFLIGpVa8y+Hf5ZpL+A35IaVCj/U2a3n72oJCetDuFq1BHtzKUSUb/70ysni9hzJYdRH
	SYv68y51gI9mxogRHF2RMI0pVgUzSIEsgZQjeWmD7d98dRDzRLCw3ijkGiYOEj6XnQ5SUWVDak/
	K9K2jdZ9D9Tpyf5n+SAi3ghj+YLG56oge/Mpttbl1PIYIMunm3eVT0zcLHFPNRSI9lAMrqZtb8g
	F6jCAR9ncwIe1MIcfbnpSY97L9B0OkdLP2wWh++kLGyol/+6a5SiN6rQwMKCEx1R5gONILW8YCI
	81BADr2TL0dn1jA==
X-Google-Smtp-Source: AGHT+IEmLaf9ZUrgGYPWC/+MNiZRcuh1HALjgfo07oz+wUC0CaBxpLmUfxksMdAAIjrZDHDH/+NlZg==
X-Received: by 2002:a17:902:f70c:b0:224:1af1:87f4 with SMTP id d9443c01a7336-23640c937e6mr3437095ad.22.1749568202965;
        Tue, 10 Jun 2025 08:10:02 -0700 (PDT)
Received: from shankari-IdeaPad.. ([49.128.169.113])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603097091sm71854055ad.69.2025.06.10.08.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 08:10:02 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v2] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to YAML
Date: Tue, 10 Jun 2025 20:39:55 +0530
Message-Id: <20250610150955.392612-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <174954801086.147754.9306389006765920749.robh@kernel.org>
References: <174954801086.147754.9306389006765920749.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
.txt format to a YAML schema.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
 .../arm/altera/socfpga-sdram-edac.txt         | 15 ----
 .../arm/altera/socfpga-sdram-edac.yaml        | 76 +++++++++++++++++++
 2 files changed, 76 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
 create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml

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
diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
new file mode 100644
index 000000000000..535a5d66e4e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/edac/altr,sdram-edac.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Altera SoCFPGA SDRAM EDAC Controller
+
+maintainers:
+  - name: Dinh Nguyen
+    email: dinguyen@kernel.org
+
+description: |
+  EDAC-compatible controller for SDRAM error detection and correction on
+  Altera (Intel) SoCFPGA platforms.
+
+properties:
+  compatible:
+    oneOf:
+      - const: altr,sdram-edac
+      - const: altr,sdram-edac-a10
+      - const: altr,sdram-edac-s10
+
+  altr,sdr-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the SDRAM system controller (SDR) syscon node.
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    description: |
+      One or two interrupt specifiers for ECC error interrupt(s).
+      Arria 10 SoCs use two interrupt lines.
+
+required:
+  - compatible
+  - altr,sdr-syscon
+  - interrupts
+
+$nodename:
+  pattern: "^edac@[0-9a-f]+$"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    edac@0 {
+        compatible = "altr,sdram-edac-a10";
+        altr,sdr-syscon = <&sdr>;
+        interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    edac@0 {
+        compatible = "altr,sdram-edac-s10";
+        altr,sdr-syscon = <&sdr>;
+        interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    edac@0 {
+        compatible = "altr,sdram-edac";
+        altr,sdr-syscon = <&sdr>;
+        interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


