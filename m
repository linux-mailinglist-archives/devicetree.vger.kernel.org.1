Return-Path: <devicetree+bounces-178678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8784EABCD29
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 04:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B6C41894192
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 02:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0D5211A00;
	Tue, 20 May 2025 02:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="blEKiG6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF1F1A2C11
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 02:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747707441; cv=none; b=jtC8ponRwgOdr/MSeJvMWznbiEiAgCS0AlpzATlb86JK0R1IOoZYZ26nkvmIcAxsBkk/fhAprq1aIwxwiUyWcSp3Kux2VL052yVwntfV+kqq/0BUxfXO35DclON7TMMjmTXokDhnMFl7kwQgCDs7VsiAFIFd/pYEs1Zxz9mr6mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747707441; c=relaxed/simple;
	bh=0ELGpuT6X196vDWFxZcQyQLTCIT3NcPHZVI0ad0L2tU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=o2nDaGVxx3/TtAWdmO21qtZd5P6fY1LFI1G8TziiHBptoPCbiawLzqYYMzBJ0jaSXamcrLAvUsSh9OS8SLdXzs1fiMiiXUkoGydkR9oHmpLbsUMuU7b4YRE255yKTPEjost8m61SoIQZSO1PK33GhA/AdG9ES8BA6ZoiKnVOikA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=blEKiG6S; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-af51596da56so3721713a12.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 19:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1747707437; x=1748312237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qgc1WWyAa4IDJXeZMlquPom4mmmQ18LfyHJ9MogW4mM=;
        b=blEKiG6SpqCLBtjghxT5NAgvhZhieKpNdlgX5smT8ZbUcTaROo8ghLIw5txeIQLPpV
         pjGtgGpPmRCQsNq1+Aw5sdontUtUswGqkOP/rC5aoGanD08hD9SlBhoRJlsWQZXiWVFm
         qitIw0GVUpNGsy51d/z/LiKr+VwbZoUhZhBvnEMoweVwDhGnu6qcrXcFMo5LTrBtCo8m
         fdu9tVsa32QOuwo0in4i6BXWsn31lvrzrV7sTzs7Ej1XplqCzK1lRTEglX4pE94r2gR/
         jES+e4EIq2XQKEDV+C+A8Y3/RC7PQGc25zJi3+nmIcfZbAguYCwJFixX/+TR4vLGq/ys
         GjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747707437; x=1748312237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qgc1WWyAa4IDJXeZMlquPom4mmmQ18LfyHJ9MogW4mM=;
        b=qAqUaVjJF5EFA+XA9IRIaFmLw5XXwc1Kb18AbmHsTNLyEuscmeFGb8WZKFHbmPOyEt
         doxNSjyU8xpswccF1ZqaNtF4+QNQfc0ACExOzWTIZf6cQvUubEtu0qxig/uXualFHBgU
         x4DYtmEJrz2S4be7+iY13V9uXqkNu8fF3boKuwWRvIOqReb2v1D6dmDu6aHb0PhDhPt9
         m5LRuQ6iHTaiV7SGZIFAyrHRZ3LtcIQLzwx1vurTZ8NghTQSsAp+3R6NKV0rRysQGO6s
         r7B9CI2hn5VNfbKfc/xOkq1AnoMIdGmcLn4a+F/bEBgFnJLRYKPtkKqwf4Np+3FvyPmn
         49gw==
X-Forwarded-Encrypted: i=1; AJvYcCWdh0vD9VvQKrXYEQJn9yM/WE3xQ0RuQWmGXvJEYQlSTQ1Q02bzhUNSTpT18eXCJUW0mvmBYnt7A7//@vger.kernel.org
X-Gm-Message-State: AOJu0YxV0z0U6orNltMeD10bI1JZ4ULcaMOHIY6VyHNru1v2EGdk4MBn
	bHUsCIvAioYeXFpCRPKwhjaNvqlzp6lXVSXYeHvQQI0wmsyQQap1qs3k7euohVwWQ9UD0iqlVXi
	SNivK
X-Gm-Gg: ASbGncsMqrd/23kPYmmZwK128RzoiHrQrGgX59pkr2c+sXroo4Tc/6RMiRxapcMTrHP
	QXa0KORCAe52Srea5Hf0r/RqOCDaNBLMDnAsShNz+rG5jHJ9ahHWej2fxnMeCBLJ5lHij2Wyl4P
	QwZPJkZJaC2ylCiUt6euzdreoeAIZrB1exrw83gphAhh/mDzvX8QDnm4SpOHpEdYQJQ1YFg1kXO
	gvcCvgVmhIe61MYBJ0POer0YYeUOTqRgqm4bkCEflbiU79FQYggWo0+QRdhTY+0QkOFlTKPV419
	ppYrtT7gKDIru+HiGfOQMeVXT64Sb3ORSS7qbawORwy31L/f+DSQMjjillCA6+b4i+NSmJDTbeG
	ubkRWD6HUHg==
X-Google-Smtp-Source: AGHT+IGIdIH2mqsPlYNb8bZRO78i8ULrukpluljyciVMskkMfers0XHXo5DCyjiVjVUdhAJ/Ropdmw==
X-Received: by 2002:a17:903:18d:b0:220:c4e8:3b9d with SMTP id d9443c01a7336-231d4596b26mr191179295ad.37.1747707437566;
        Mon, 19 May 2025 19:17:17 -0700 (PDT)
Received: from x1.tailc1103.ts.net (97-120-251-212.ptld.qwest.net. [97.120.251.212])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebaf5esm66904945ad.194.2025.05.19.19.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 19:17:17 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
To: Oliver O'Halloran <oohall@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	nvdimm@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Drew Fustini <drew@pdp7.com>
Subject: [PATCH] dt-bindings: pmem: Convert binding to YAML
Date: Mon, 19 May 2025 19:14:40 -0700
Message-Id: <20250520021440.24324-1-drew@pdp7.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the PMEM device tree binding from text to YAML. This will allow
device trees with pmem-region nodes to pass dtbs_check.

Signed-off-by: Drew Fustini <drew@pdp7.com>
---
v2: remove the txt file to make the conversion complete

 .../devicetree/bindings/pmem/pmem-region.txt  | 65 -------------------
 .../devicetree/bindings/pmem/pmem-region.yaml | 49 ++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 50 insertions(+), 66 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.txt
 create mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.yaml

diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.txt b/Documentation/devicetree/bindings/pmem/pmem-region.txt
deleted file mode 100644
index cd79975e85ec..000000000000
--- a/Documentation/devicetree/bindings/pmem/pmem-region.txt
+++ /dev/null
@@ -1,65 +0,0 @@
-Device-tree bindings for persistent memory regions
------------------------------------------------------
-
-Persistent memory refers to a class of memory devices that are:
-
-	a) Usable as main system memory (i.e. cacheable), and
-	b) Retain their contents across power failure.
-
-Given b) it is best to think of persistent memory as a kind of memory mapped
-storage device. To ensure data integrity the operating system needs to manage
-persistent regions separately to the normal memory pool. To aid with that this
-binding provides a standardised interface for discovering where persistent
-memory regions exist inside the physical address space.
-
-Bindings for the region nodes:
------------------------------
-
-Required properties:
-	- compatible = "pmem-region"
-
-	- reg = <base, size>;
-		The reg property should specify an address range that is
-		translatable to a system physical address range. This address
-		range should be mappable as normal system memory would be
-		(i.e cacheable).
-
-		If the reg property contains multiple address ranges
-		each address range will be treated as though it was specified
-		in a separate device node. Having multiple address ranges in a
-		node implies no special relationship between the two ranges.
-
-Optional properties:
-	- Any relevant NUMA associativity properties for the target platform.
-
-	- volatile; This property indicates that this region is actually
-	  backed by non-persistent memory. This lets the OS know that it
-	  may skip the cache flushes required to ensure data is made
-	  persistent after a write.
-
-	  If this property is absent then the OS must assume that the region
-	  is backed by non-volatile memory.
-
-Examples:
---------------------
-
-	/*
-	 * This node specifies one 4KB region spanning from
-	 * 0x5000 to 0x5fff that is backed by non-volatile memory.
-	 */
-	pmem@5000 {
-		compatible = "pmem-region";
-		reg = <0x00005000 0x00001000>;
-	};
-
-	/*
-	 * This node specifies two 4KB regions that are backed by
-	 * volatile (normal) memory.
-	 */
-	pmem@6000 {
-		compatible = "pmem-region";
-		reg = < 0x00006000 0x00001000
-			0x00008000 0x00001000 >;
-		volatile;
-	};
-
diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.yaml b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
new file mode 100644
index 000000000000..a4aa4ce3318b
--- /dev/null
+++ b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pmem-region.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Bjorn Helgaas <bhelgaas@google.com>
+  - Oliver O'Halloran <oohall@gmail.com>
+
+title: Persistent Memory Regions
+
+description: |
+  Persistent memory refers to a class of memory devices that are:
+
+    a) Usable as main system memory (i.e. cacheable), and
+    b) Retain their contents across power failure.
+
+  Given b) it is best to think of persistent memory as a kind of memory mapped
+  storage device. To ensure data integrity the operating system needs to manage
+  persistent regions separately to the normal memory pool. To aid with that this
+  binding provides a standardised interface for discovering where persistent
+  memory regions exist inside the physical address space.
+
+properties:
+  compatible:
+    const: pmem-region
+
+  reg:
+    maxItems: 1
+
+  volatile:
+    description: |
+      Indicates the region is volatile (non-persistent) and the OS can skip
+      cache flushes for writes
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pmem@5000 {
+        compatible = "pmem-region";
+        reg = <0x00005000 0x00001000>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 96b827049501..68012219f3f7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13564,7 +13564,7 @@ M:	Oliver O'Halloran <oohall@gmail.com>
 L:	nvdimm@lists.linux.dev
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
-F:	Documentation/devicetree/bindings/pmem/pmem-region.txt
+F:	Documentation/devicetree/bindings/pmem/pmem-region.yaml
 F:	drivers/nvdimm/of_pmem.c
 
 LIBNVDIMM: NON-VOLATILE MEMORY DEVICE SUBSYSTEM
-- 
2.34.1


