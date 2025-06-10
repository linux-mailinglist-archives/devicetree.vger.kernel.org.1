Return-Path: <devicetree+bounces-184108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45761AD302D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E09B87A236B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4D9284B4A;
	Tue, 10 Jun 2025 08:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E+XBRwsc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14FA288512
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543879; cv=none; b=TvM/HoLzlvESs5+kCjTayFUob9Q/agGOUXJnMnQ5C4zNWszjw4Pj+uB64Ssp1upgs9zvTTGA/FCzrS2t6av/o4ybDtYSf9KkVW1R9X8ynRTn4wdQZ/YhafQ7xug5DqDTx92xFTDdUjTu82+RGXMxHZVrvWIPiC2WHvGMQ8WVsoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543879; c=relaxed/simple;
	bh=UVMsrOYVWgzj+N8I791ZfdW7df1Whpr4LC8BgEEPEUY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZJDsfHGaBEOUytxl6dCyMry+BHjzMrjFVD3XUSp6sqSxWFd+fAbq2hzlRb3Bw3T1hcJS5wF9d/nvcnfCYyNT6XvT8fqtU9vzIBlghQkK7Zo6UKTTjAyWPDwfYda7LOndv6qKyJ78AhS52Kn6EAlOYnFUz2HIDoZJsWpeLtbr4gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E+XBRwsc; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2352400344aso44700335ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749543877; x=1750148677; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvJb8Wmmmp0fIsEisoM93f7os/oTyVJG3S5yuzRo0nA=;
        b=E+XBRwscdBztxdjsPeocggiRh+S189lKrHICa7sm3VmjM/smEKDqHeP5Q5j1wYbvDA
         qWpfJHWmcFsTOwPCqVOiAIqfuU4ufeqPJBiN7ZA1XeA1uWES8kcHvP7YjEE06c5Y65aj
         GDnHMybVqJ1ikni/Md/6K7k0G3y3OsgukL1KWuacFkaN8VcQBLbj/rQcASZhNtF86GWc
         hcQ0nLo17+ru5NDzwFh/+aGGj8h1MnUksU/Y1Qq8YFXYkhzjJRDRxCjzxE8R+80mZ9Re
         rMTzt6eApxpV4mLh3B5TnpZY5XDwyHo5KX8WN5BVidfvhLGOqKJqWOf6wmYBilU+lmhF
         vnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543877; x=1750148677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MvJb8Wmmmp0fIsEisoM93f7os/oTyVJG3S5yuzRo0nA=;
        b=lbW3ROlWFYD3NGCWncPFzfDCiTh7yz1UTTSP353MNePfAAojgk8iQkWhu2BZzsgAS3
         6uvcW7b5hyWUaenST6j2MW4qFvo+eK8TlYqOh1nPVCSX0/xwoBxiYBNpa+Qj+eZul8je
         T7BzILioYsYeZNit62EHeNPVYyFo0DVhnDMNMNrCiQCUqaKAKSzVjhyy20SrBP4rDJSr
         oNyLS5yJyNXN2jqbVlTNgDWF7P/tF8YO5ZzZZJB6oy+gYmmZRCmdYmK3R66nfzDF0aUk
         siQyEO6bAJciqOIzlPkrJcL+BIWPlIqjL9s1tDCBLfe67TFpmY3YIsc1Rl5Bda+/XlYF
         lxHQ==
X-Gm-Message-State: AOJu0Ywltjvox3BFtNHqsxgC6l6yNXAXaAOoHrSu0ARF4G3YJIRGQdWo
	Cy0PvHitedjW0xO7AB/ERQJ5xR2+2Q6oLrQbQ9eY1nU0LAU2AsN++U5u18r3LRpU
X-Gm-Gg: ASbGncvlH1WWsH0lIQMHS6tz7nXYp8B6JNmyYmEjzNULYpUCpUc0awlx2rfrngyZD1Y
	C1XmBfAmt88jBMgpiKMOLHQDFUP1iPEN1EZV7kHjKWubb5wW3ghl4EI1VurWWzt5MFOZU8Cg4Cf
	lHtus3vjSLJDAdOECvMksK2KezXoij1bEMpCO8zlvaeOUYQ7jNC6CWrpIjQB9IZInJkZ2ud84xW
	K/dxbSp8sPxG5P0K4UuV3OUuG0LeDu+24cQs1JMoCxEROglgKJxlgf7O6GFW6Fl2RF8Ebv9XbS2
	MJauz7tL09K7b0A3rbqxUMmPynWbHVU0zGw2b8/WxK9u8gPAk9tfDy7uRoYstYKpgEdNRPMz8TY
	klJ/P1Q==
X-Google-Smtp-Source: AGHT+IGI5SKXIPewKLfpGZmJOOZq8vNLZNUE6XBIoMJqyY7PRcGGAffzMT4iiQNMVK0aPMTl4c7DSA==
X-Received: by 2002:a17:902:f688:b0:233:d1e6:4d12 with SMTP id d9443c01a7336-23601cfcfd8mr176151685ad.13.1749543876621;
        Tue, 10 Jun 2025 01:24:36 -0700 (PDT)
Received: from shankari-IdeaPad.. ([2409:4080:e18:fab7:ea36:a19d:241e:1b27])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2360350689fsm65808275ad.229.2025.06.10.01.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:24:36 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v2] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to YAML
Date: Tue, 10 Jun 2025 13:52:20 +0530
Message-Id: <20250610082220.273518-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <08b51022-b65d-4c33-9f01-d5e6f5bcffe9@kernel.org>
References: <08b51022-b65d-4c33-9f01-d5e6f5bcffe9@kernel.org>
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


