Return-Path: <devicetree+bounces-183431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3A0AD0843
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 20:50:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F9C83B3644
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 18:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 814BF1EB9EB;
	Fri,  6 Jun 2025 18:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="hgva45pU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9BB1E7C1B
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 18:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749235827; cv=none; b=iE9RCW7b9mqMBDHyvMuo/gwbP89cueESor4Lwsxse9dNtA+FOYNfuJg9SiwOUnpzrJISDKkwlbjoRRQiGx3BmHJnMJUoucVKMp2uWRAMq15ZMdwhA4oBYr2Ut5eLhke0/J1/p48WCZ7EkzYAS99nNzb+0HNu+bkPtg0Jl/scF2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749235827; c=relaxed/simple;
	bh=/dqd4gsiXRTcfp+0X9yq9B99EvZcupPMVZfAGuQtBNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=THuSh7X52NyJL9gLUPl3WOqv53p1kXQbBZdE5G5koP6F2/PNQnXLqz2zMvSKxCUoiYPIRWrN8skWWa4BSbmb23bDk+ZjuWB5TO/S+JhSgLPZqrIvbheJaX5PuZnD7x5d73OO1ivtZjX2xhzf5T3LR+feyuToDU67oEYmaMpAqO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=hgva45pU; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2349f096605so28523875ad.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 11:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1749235825; x=1749840625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zDvQKKxsfWnILy2mH3BQ9U7IfG3DuTu++rNRUJOw37w=;
        b=hgva45pUHIESQwyjTxWPRV7D6eWOGjPkUhuBheLqEpJbQCHtwSCf6KyyOpqrFasIbK
         LReRTNAK5m6bJ6v/RNCtY8OlOx1Jpf50lxbqsh3fpA6oLtuw6PTLbqk2rBJJuBzqPh2w
         oeuIkXU/YUtY2k3jMrxSD8DTu9qmt67q5h4Pr60H86GNf6w4cZ3dh58GGiaNwIHW9wGz
         aDnredw+MAgKRo8Cl5vD2vB2MHvs1cDuj3iHrV3TtUwr+a98FfFFGnBvLvVCHE/gCiPt
         41x1RFopobJqDapvQzntpb/BegrEUFKHu8CCGlzQ6izX4b89eoIHs9Yhw+Dd2i9xWN6e
         N7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749235825; x=1749840625;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zDvQKKxsfWnILy2mH3BQ9U7IfG3DuTu++rNRUJOw37w=;
        b=X4Us0H6fu+ptOqsWccNeWxn6F8ldge0SPbYhMY2plY0G9xBloXhF1xaJQ5St7O5ynB
         vg7Ntm+h3MmRuBzvSO67hauiSCLjLvYbfEfWfxmV6XhaOvh4WIqUIGwl/loCqez7gOjR
         TMlUXijzrk62Eo+X2DkcseC06nod1BQam/ReWO8Z5vZn2L4Eq/PYISGVLZJzS0Vl7eOi
         ShGNqNjNBsoGHrv0taMlKpPEl6Qcy2+tPLvJXdGfhH8c0vVcQuFtKrX83wQ8nlakdngI
         qMa22ikKKeS1I++7hPaz3wDj9RN3FdG6JFlJvwy8onxBsKneMip+ckPMxSs9Pob/8OKf
         w4cw==
X-Forwarded-Encrypted: i=1; AJvYcCWJOtaU+V14v+qa4+liqubKIXL706WUVXn35zcGmAh1yXYdXpJ9qnrHdTxD0VIaab1bq6pAiFdzdY5I@vger.kernel.org
X-Gm-Message-State: AOJu0Yw747LIRmJlZ2tI1LJZ/oaSb3ehc8569xnWMlHEg54LD5e9sjG1
	GvxvvSDLAkMbxC313n1D4f7PYrH0dNK4MbGoDiLcYlwcdN8Xw6qb3VKBx8HvJ5H2pGE=
X-Gm-Gg: ASbGncsYAiHZN3KBPp44HcjyIim6+H6ZtcyzzbhjHtOQsbodLclYYJ4neEhF6i3PK+L
	d/JS2R4DJpQFoUDecbQoZEQTcE8PLlpqqmBqbTd61i9bi5cfEjamcNL2HtOOva9gMl5U9097VJH
	4GyMx6rQ79qSkB1ZOHVGURC9ZnSbyzUsrA1af/YD3Wk7H2Lj5XsvEZ8HUOJ1pthLPFjCFnRpAyW
	ABnUSV8U9/Yd4k7c/2KdbvUkOvmpUbqmzfci1qzsoGlFzcRtJakrA6VLaTryfFRyi3XuSQunP2G
	mOHZJr2+16e6tOwLhZ9ZdaC65lK1/vCJDUI+5/Q6i2ZSqrzqf/NwYyNbfa4=
X-Google-Smtp-Source: AGHT+IHZJuISdaOQA9ORyw2q+y1x20F/e9MNZXHDSrwlivNtd8EgXD7EmYmmTpZQgthCiMV++qIcEQ==
X-Received: by 2002:a17:902:ce85:b0:235:f078:4733 with SMTP id d9443c01a7336-23601cf6f4bmr58352295ad.8.1749235825082;
        Fri, 06 Jun 2025 11:50:25 -0700 (PDT)
Received: from thelio.tailc1103.ts.net ([97.120.245.255])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5f782246sm1473617a12.51.2025.06.06.11.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 11:50:24 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
To: Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	nvdimm@lists.linux.dev
Cc: Oliver O'Halloran <oohall@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Drew Fustini <drew@pdp7.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3] dt-bindings: pmem: Convert binding to YAML
Date: Fri,  6 Jun 2025 11:11:17 -0700
Message-ID: <20250606184405.359812-4-drew@pdp7.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the PMEM device tree binding from text to YAML. This will allow
device trees with pmem-region nodes to pass dtbs_check.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Oliver O'Halloran <oohall@gmail.com>
Signed-off-by: Drew Fustini <drew@pdp7.com>
---
Dan/Dave/Vishal: does it make sense for this pmem binding patch to go
through the nvdimm tree?

Note: checkpatch complains about "DT binding docs and includes should
be a separate patch". Rob told me that this a false positive. I'm hoping
that I can fix the false positive at some point if I can remember enough
perl :)

v3:
 - no functional changes
 - add Oliver's Acked-by
 - bump version to avoid duplicate message-id mess in v2 and v2 resend:
   https://lore.kernel.org/all/20250520021440.24324-1-drew@pdp7.com/

v2 resend:
 - actually put v2 in the Subject
 - add Conor's Acked-by
   - https://lore.kernel.org/all/20250520-refract-fling-d064e11ddbdf@spud/

v2:
 - remove the txt file to make the conversion complete
 - https://lore.kernel.org/all/20250520021440.24324-1-drew@pdp7.com/

v1:
 - https://lore.kernel.org/all/20250518035539.7961-1-drew@pdp7.com/

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
index ee93363ec2cb..eba2b81ec568 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13798,7 +13798,7 @@ M:	Oliver O'Halloran <oohall@gmail.com>
 L:	nvdimm@lists.linux.dev
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
-F:	Documentation/devicetree/bindings/pmem/pmem-region.txt
+F:	Documentation/devicetree/bindings/pmem/pmem-region.yaml
 F:	drivers/nvdimm/of_pmem.c
 
 LIBNVDIMM: NON-VOLATILE MEMORY DEVICE SUBSYSTEM
-- 
2.43.0


