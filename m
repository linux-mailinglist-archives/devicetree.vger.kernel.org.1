Return-Path: <devicetree+bounces-188761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D74D0AE4DCD
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 21:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C42CC3BC04E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 19:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CB9E2D4B55;
	Mon, 23 Jun 2025 19:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hDTpjWU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A30229CB39
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750708671; cv=none; b=DCvkR4MeaN5w12HoLs7TMRoXICJVI3NPmo7/4GmRfNCf9X62RFRFUlK+HLJXfFH3MbEGEUgHB0+Z92L1LxNnpInhFOmJSmVhVhsJVUoqwGxc4G3Ko9YURSR6uvZhWWUMEqHL4rszR5RBAKNsjQlJ9OYQ3cWIGv1i38c2s2hwstw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750708671; c=relaxed/simple;
	bh=ulSoXPT0xwFlB+a6jRZVxSx9PK1jeRiHxAJJ9iNk2vs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qwI16fsK1dyEza1WNdEVf44k8b6YnNWeHAcDfgvEXIj2BNbSaX3K+GJ0iw77wLi1ivmhDRnEhHO937P0M6sm1T8oV6XdfcS0TC8EF8ejeDDf6qQWDeI8Y49OHHV6XSvjqVmCV5qoUDBrbwi2JBfc6eGBXLt0XqU/B3OxLmKvpCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hDTpjWU8; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7425bd5a83aso4039455b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750708669; x=1751313469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rq+W4JVszAwG6nnQKPSGmQOD0n1ELpkSjNOfiksU/bQ=;
        b=hDTpjWU8xhvuAKJbkPNLHN1m/NTHVyHnIlt6aWiX2uf7/G5F4psGlJ8sxoaUaKX/cU
         XKHDaaDByyggBFweTakRBLtHD0AAV23xUtSGqUONC4KrrKfoVl6lJ1QBf3WeoMCUDYME
         4xQRKT5u94s7Q+4yGCRjr7J7Fxff/PQk4/D4GpWaUSs5VDalMrjFfjNMNpVzT5jB2qnx
         0pHBR+jZyWgzzhzXzXKh7zSePFkJ9yV19uL8ay5FyooHY2fBZuONxaR53AceBk9ByXE/
         5QuMXhJpw0UxZbcGwwaSjJdnew7tsxSNzjpOB2xxrrOsc2Iewk2nMTo3S7y8NlH8AUAB
         9A6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750708669; x=1751313469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rq+W4JVszAwG6nnQKPSGmQOD0n1ELpkSjNOfiksU/bQ=;
        b=U/LQgDctwq+UxxWre+/xYwlH4ie7b0ECCWDNDKtUJbxpfw80ZJ91Ajl4KYuLH8yD04
         wjo14mT2HHxiZKoozioRY5P9USuGLKcPhZjLsyP1O/OqE1ncxeOib2KzR4eINya1UzYS
         sKSafU0j1asJ18SWTwKVbMxs0hHLj8xh78LRzc3X7MyX6quIazBLN9e8xC0elhUqAQ0R
         /BA0JkcjBhzoDpd6+A3tF6FMDLf2KRkZvVJlHkNFozOZqixnUgfa3C/YqnpA1bSQT3AA
         TOEOI2VB0O0o4s5of75TEOs2cyHdREzoNgV2HuvXplDOI32F4Qw2wX2pTI/Tr7wpO5YX
         h0bQ==
X-Gm-Message-State: AOJu0YxYnuLiuCTfpP9BLlVbdcEKe3b1Y7Bx/Q5zKfCMwxCAhZUqmR7S
	TbG0xkXj+xPUD2HwucvbF72O8MZD4psgDtq1Nj2tlEEYQk+j9XWz3zajTwlnMYix
X-Gm-Gg: ASbGnctETss/4Xa62jiUaT++5ipgnsihb+VyoogiHzNsKb/0uMxzbZLXOPjZwtjm/qy
	OM4MM6JfYNLZxYXIhtl+9xFrad8qwjxYJYPxHbioJZCQxV51E4w/6+ZTaQoramgz0NhF+7LaQTP
	HcIrX/Eg11ZSskT4NmNgJysHc9kYQIb1fpqeaE/uo3vopT/juC0lZTsLyRuLjf7yo+p+i5jtLsz
	SOcIaJT5rQzU+zIdpaUbRNVi+y/e88ph+Cj/N1BQ0n320jU/dPuYsJilSZKk66v+ZAzSgRr6H70
	mGPuZNl2t1mYZ+F2ITaTxOW6i6do6bNAPxaEH/g3wYBUnnv2AxXJslQM+w653YgbpsNLjwUaTEZ
	9nR0=
X-Google-Smtp-Source: AGHT+IH4KKDzI2UpJ+1MY7KALcvwfHtbKnFK3zKnaraQXha0SvrpIcwOKOdsx/rhHSy/DGJP+lmA/g==
X-Received: by 2002:a05:6a00:1817:b0:742:a0cf:7753 with SMTP id d2e1a72fcca58-7490d5c187dmr25054468b3a.3.1750708669509;
        Mon, 23 Jun 2025 12:57:49 -0700 (PDT)
Received: from shankari-IdeaPad.. ([49.128.169.113])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a48daecsm9063207b3a.43.2025.06.23.12.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 12:57:48 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthew Gerlach <matthew.gerlach@altera.com>,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v6 3/3] dt-bindings: memory-controllers: Convert Altera SDRAM EDAC .txt to YAML
Date: Tue, 24 Jun 2025 01:27:41 +0530
Message-Id: <20250623195741.300644-1-shankari.ak0208@gmail.com>
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
Dropped it from required as it causes warnings in altr,socfpga-ecc-manager.
The controller is memory-mapped; address is confirmed from Intel's manual.

Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10,
compatible with altr,sdram-edac but use two interrupts;
Schema enforces interrupt count per variant.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
v5 -> v6: 
- Drop dummy intc/sdr/model/compatible from examples
- Make reg optional to fix warning with ecc-manager binding
- Reduced the examples to one
---
 .../arm/altera/socfpga-sdram-edac.txt         | 15 -----
 .../memory-controllers/altr,sdram-edac.yaml   | 65 +++++++++++++++++++
 2 files changed, 65 insertions(+), 15 deletions(-)
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
index 000000000000..96677fdfa7f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml
@@ -0,0 +1,65 @@
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
+    memory-controller@f8004000 {
+        compatible = "altr,sdram-edac-a10";
+        reg = <0xf8004000 0x1000>;
+        altr,sdr-syscon = <&sdr>;
+        interrupt-parent = <&intc>;
+        interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+                     	<GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


