Return-Path: <devicetree+bounces-184347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0E7AD3C66
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 17:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB47B175B7A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3F4238144;
	Tue, 10 Jun 2025 15:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mpO7o5IR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9FF238143
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749568276; cv=none; b=sONFVwscvsK6Y02+aE8AOIlJKM0e0+EiVwo96yEerGmU/D5aUpJ+ipMI8zR0FhzydvVLGKkOC7HpJi+cWyc1+hCiD5woLH5HmqsxT1QI2UYv4q0tkpzS/H8aBS7to2YDNiRfzk5bOoCt0teM72CfZRP+sc9bEjAstCyEVuthuFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749568276; c=relaxed/simple;
	bh=u4vc+v5Fz9O/MYhCPULElhld1nyWHGPPMgiN0bipu8o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=c84P97gaVuBCagbj5JvtlqxqMXRZuf3x231jcuhTg9c+WZPoeCdhs9NWsdR7IqlamXEpWfOENWVwbmDdwW39tX15ekUDnQWZJkxMA4DrW4jqoVCpFk8Ovo/qv3so9RSx9oaJXp2j/NGysyITIPsdQNTv2T6vfsN5DPXbg8w5aXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mpO7o5IR; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b2c49373c15so3879071a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749568274; x=1750173074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cQcueqzZnFK32zi9dDUNjBa1UB19iwsLgXKjnnX46Qc=;
        b=mpO7o5IR6XY8SDFmJl8lLm1tCq1YlZ3dXumP+1j14eezhBPWrAVbpd+Ni9+1afiEmE
         XACMnfvTYaygUnExuGQkEgn72+E+3rFQtOOsA6w5OD1ZHe/Sin8KOgRR7j+cJrnVpYbL
         0NOjNGqtmQwHQxapq4Lh8GGT2wlny4ZcbLB1m4I9vtgt7FyUAom75wiBUeWpedxJXRTX
         MIJ80OleX9kNGP5mDkauoGwsMCI+PodZILoVn26XyYjMGIttgToTKG3SAefw5o8qiZj2
         nYFP2LDjnKJ/As04ATzXXpcItXG2DsTNyvB9CTnOFIJhnqSE3wvYfbM4DR5YswtCw3Cu
         NFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749568274; x=1750173074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cQcueqzZnFK32zi9dDUNjBa1UB19iwsLgXKjnnX46Qc=;
        b=iHk5tfrwpXLGG9BhmKmgagWzFDTo655tonhWi4iuaNZHCTaxGHXfn1lm8F3ir8L1LW
         2gBZAYWumoC31G+6UncBFpQgZVx/xH6MT9XZ+Fg949I5eqadDL6aDscnpnbC08pM7t+j
         qSzEwGVOHeQyoKAUA4ll98XyVgrzWUxfhwjrKk4KdmDUNIqNeTZW8eUCdgJR3FZ/lkMt
         EcMyk7wZVpQvsoEWqab9qOs2LT17/6+/SLR89L13MGI9rV612KqEjg1MKLheBxI88hdD
         X2CmRoSuxTGBDVWEmm2/zTFF7OOzfIR1WTGNldjnKc4mOydeiCckAox29yMppAiC1DA8
         E9TA==
X-Gm-Message-State: AOJu0YzPxJbjMVvyfigQVTyXMDvceEQSU8Y790uP1pGk0wF9ga6LJR1a
	cpPCHioi4ZGg1ILGXWTYXWh4fRlQWYjfCT7X3Ei6GtzOJzFNTQAXKkrzyNu3bgG6
X-Gm-Gg: ASbGncsVi6CTRYTLBo1UXz8ymo0+2IW+/nCdrcUuKlmX8e/9PBxrsZ9x0gIXc3UVtoB
	fN8d2nj8S2qmZ4T8lBF7a50VRuVtMvEzO8MWX3vgi0lVAKJ9KRMkMWKT6nspyXga+oLXdfyiawj
	AkV1l5sGbL9PTOvMxQEA3u49n/CW5TiE0Xl5gHJFpatjgBm/CpNoFsVLluUToMnwaPR3Oq681op
	xoUnrkmDDCcPLN1AYV5x0IXGK5I73XdqypIKdSoIUy8mlze2mfsKVgHJBS7oI1kzGLOW/CEOwbG
	md4YHQ8ag1Ht64ZUNDkzoDHJrDmpB/Et5JgnzqysVeBcv/zsDpEtAMWBcfFkmCfQCaZO+lQEA7i
	kOOuvjJRhwInFsw==
X-Google-Smtp-Source: AGHT+IHzueOBw/Fmnc1LTdu0YGcZGcNu/TUDZetnx1r7SyMVJ4u0x12DtC4xExMLrt1rUgsnJCeFZw==
X-Received: by 2002:a05:6a21:3398:b0:1f5:97c3:41b9 with SMTP id adf61e73a8af0-21ee250cc5amr23235893637.5.1749568273467;
        Tue, 10 Jun 2025 08:11:13 -0700 (PDT)
Received: from shankari-IdeaPad.. ([49.128.169.113])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5ee70090sm6988829a12.28.2025.06.10.08.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 08:11:12 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v4] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to YAML
Date: Tue, 10 Jun 2025 20:41:05 +0530
Message-Id: <20250610151105.393011-1-shankari.ak0208@gmail.com>
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
 .../arm/altera/socfpga-sdram-edac.yaml        | 79 +++++++++++++++++++
 2 files changed, 79 insertions(+), 15 deletions(-)
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
index 000000000000..f41e949f8ba2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#
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
+  altr,sdr-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the SDRAM system controller (SDR) syscon node.
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    description: |
+      One or two interrupt specifiers for ECC error interrupt(s).
+      Arria 10 SoCs use two interrupt lines.
+
+  reg:
+    maxItems: 1
+    description: Memory-mapped base address and size of the SDRAM EDAC controller.
+
+required:
+  - compatible
+  - altr,sdr-syscon
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    edac@ffb90000 {
+    compatible = "altr,sdram-edac-a10";
+    reg = <0xffb90000 0x1000>;
+    altr,sdr-syscon = <&sdr>;
+    interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+                 <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    edac@f8004000 {
+    compatible = "altr,sdram-edac-s10";
+    reg = <0xf8004000 0x1000>;
+    altr,sdr-syscon = <&sdr>;
+    interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    edac@ffc25000 {
+    compatible = "altr,sdram-edac";
+    reg = <0xffc25000 0x1000>;
+    altr,sdr-syscon = <&sdr>;
+    interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


