Return-Path: <devicetree+bounces-185099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D7DAD6819
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 08:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52B9217E2F1
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 06:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFDA1F4616;
	Thu, 12 Jun 2025 06:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dtLKphoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16661F12F6
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 06:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749710249; cv=none; b=jOJasYPKcexV6jRtkharctIjkXGGURYBdJ5LlVruyy9r4CQhJrxMM0DPqhgzOrieaLwl+09Zmzuj1kzvb6eZjUQ6Rw6TJ5NzABhTurq2G27S3AD8o34BHYFueNfNeX7Fw6nJt+yr44Pd2I2H5C7vo+8rDTKFK+XH/grLB1vWARw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749710249; c=relaxed/simple;
	bh=N2ctzhKzVQBgcGWXIXcdJ+/+B2MIUCTxmQFbnzQtO5I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WkC40yU6jSx4iWtAKA78TrYQ+Qz7bkb6/9xtGm67qWO1dO5ItqPn9I2+jyIWoLfUquPi6mAbWSuOwEm4XrLLZXRUsTLyLtaJQscX6k5Ojmg1RRvGxx+tnwsTha7SGqPZxyVh6EPO/cH60guQCoCDcCazHyce3UyPeTxgG+0st5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dtLKphoC; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-311c95ddfb5so498160a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 23:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749710247; x=1750315047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BV+Fher778ThfMqfY1K4KBquj6381WgPqsse9p1aIXc=;
        b=dtLKphoCOcfMqttljSmMQgTVd25cvEbMzflZFIqzPSCd8Bg2NdVO5LoXc1xNcRBa+2
         hzXTlHCYGAp4DJBPaJwtVHDqjkxYPmguQsoEJuemxmkC2TpCR8+TLo7ZVaA/1t3O2RqT
         VJhoXHO5xarMjKZNZfCxPulmHhVtvTjXFeEm0ROK+xQM0XU8X15dmPiHpNODPdMD/Ici
         aM8VBNRWymImuMp69vjFtvaxV1KIypg+sXiQzDhOS7nr8zc5Ef9wXXoJEGu+wsXPsYlT
         XoJ6HJd/Jv7nmoESXqx3qlLR3/MIYzQSY16slS+uP0PvONLMMUAhsvDcZcXtSaAUuOll
         QKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749710247; x=1750315047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BV+Fher778ThfMqfY1K4KBquj6381WgPqsse9p1aIXc=;
        b=SXN/EdNJpSgFuswmro6v1Z4gpknDloHt8b03DBw2ZnIXFT2ood17CWjLBxF6hBqzRN
         BYEsCdc5YYS4MWiirZZSEL7iptn+1JXftIDq6FhaAZUXZZr6Kv93g8SG/U5QI1tlJSM4
         Gxai7CSyVQR7WOjH7DnRxo7ur+so5HXkIVFBNuGV2MAbQ8KR6AGmyUSn5Do9+oe60w7i
         Pb7UWcehCrPe8RJmK3jACGNlHd9hY09X9tqel/5t3I2yH9rQbnfqIJmaEZueG5a5Sw+L
         rtfG0KOQeY5CXH78Az8KvNzk13JJcPIFdWMg1HHijhi7NXiK+M4SBbRJWz6N6mzevdOH
         IpKQ==
X-Gm-Message-State: AOJu0Yyn2SFT4zowYDt3vtzDMwfhQNCIKD8f4OrJlotXOkIGjgs8ywD+
	aGGQBJau7idHzxF/uptSx/fcyBuGqCV76meKRgAOwPK/4PtE22ifShrwGJYex1xo
X-Gm-Gg: ASbGncun93l7z3/kBehus1Tq++TXMBO57e/0sNUwsumVfNlUqgRgAyKiswMl5XwH/MU
	mCF9jfQDC8HV9WiisjedxeIrEarDCofLW+zKOUOEBzngD7DKnr5Rp1NktpzCB8oRiixVtixMPs/
	AsKXEvYYES50UsEG9kBHBSe5I3ReG3FG2KwTQNRGtGSWVnpv8ZAx5gCt7B9bV/jTpkCybsRd+gw
	gAVajHB+WjpinlD3aoT5DCVjiqjWno+MxkRM/qWza8hlH0AHzZrBS2ra3ZZmWgelwkq5gpi+BA+
	9IMHqx0Qru05yITg1LmbeOPTXGVeiuu9rK36ezXltik6LHNavUXOjUYIeFmyobWtrZ1e+i1kE9p
	oWE2y9g==
X-Google-Smtp-Source: AGHT+IExnYVudTA4MUOfNtBSSyFngE2H3cWZL/yWOxvvVI85QMbTMcOJbaGeLKrZGu1iU19ANFPz4w==
X-Received: by 2002:a17:90b:2e84:b0:313:28e7:af14 with SMTP id 98e67ed59e1d1-313bfbd0171mr3410821a91.19.1749710246789;
        Wed, 11 Jun 2025 23:37:26 -0700 (PDT)
Received: from shankari-IdeaPad.. ([2409:4080:d3b:b88c:ada6:2fb9:4645:ee3c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e61b608sm6530795ad.19.2025.06.11.23.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 23:37:26 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthew.gerlach@altera.com
Cc: Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v4 1/1] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to YAML
Date: Thu, 12 Jun 2025 12:07:00 +0530
Message-Id: <20250612063700.874830-2-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612063700.874830-1-shankari.ak0208@gmail.com>
References: <20250612063700.874830-1-shankari.ak0208@gmail.com>
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
v3 -> v4 : Changed the location of the file, fixed errors and warnings
v2 -> v3 : Fixed node definitions and example includes
v1 -> v2 : Added s10 compatible string, Corrected interrupt definitions, Deleted old .txt binding, Changes commit message
---
 .../arm/altera/socfpga-sdram-edac.txt         | 15 ----
 .../socfpga-sdram-edac.yaml                   | 79 +++++++++++++++++++
 2 files changed, 79 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml

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
diff --git a/Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml
new file mode 100644
index 000000000000..320eb7fbcbff
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/socfpga-sdram-edac.yaml#
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


