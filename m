Return-Path: <devicetree+bounces-136098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E56EA03D13
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34F33165590
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649CB1E8850;
	Tue,  7 Jan 2025 10:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="nTKfpDYs"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E981F03EC;
	Tue,  7 Jan 2025 10:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736247291; cv=none; b=ms8RnmJ2tdRT6mKS02Tt+wOsl1b9tCmf/bpVkc1xayZnqEIi6Lk7tFKWqke9wxOZnsAf2i5liqfBHrT8B/mHhrK5nYtPQGptiRIxF5SQQ2UKEMJEMZiaIPmu/gdt0b8Sa1TiLyfaIDxqmLF4hbgQ56XQV212EeZHvyTl9SGfK4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736247291; c=relaxed/simple;
	bh=DRBV35AVAu7Oa4TULq8GWZetL0Wb16E0vd8UENIcrKs=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=BdpgQ2IMJakzCTSPV/PxtBDkLCqJb5ca5SiPYS2ekaqkTPHUj2UBLtZL+7Fa8qrZ06MjkAXBiHkSYjZd1SGp2yUME4XEnKTYbGabPfxwOP73+gyWYuVpyKXjvnuauOPC0MHdolPqC3nuX5rV0mg+kbEV8gdd1wJn7RUcqetmlfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nTKfpDYs; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736247288; x=1767783288;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=DRBV35AVAu7Oa4TULq8GWZetL0Wb16E0vd8UENIcrKs=;
  b=nTKfpDYsy7Jdbc1tL4eSGbZRnO41KTZQnRbkWZBTsSK9QcoQzXD9V1TX
   J8hz2pAeWHfkCMdmviTiU+Nt/62KkOnuJ16B1hlkYrQYaj7/28a8xtPv9
   g/lQeVAkuXbgrEwnjdl1lWYAJjEQRLfrIVUFjv3iJjcWLmouPdqT+n7OM
   rLZviTKQjSoTVf6H3iyUTflQKxWwYkW4yXCre1LEseYVZemQyx3ix+vju
   poRlWlVVybR6nIWqVonWWAd5OPjGn7IF1M6nj9s9HZioff7jRjNLPo7DQ
   /0Ps+I+BZWgWFvSqyaMa+rp3sOoYRWoyzZiHlRjn3DIU1wLQaogUIZKUO
   w==;
X-CSE-ConnectionGUID: RtFV6HfhR6Oyef9qHaT95w==
X-CSE-MsgGUID: uRf6pJvlSjSnLoFlCPvdGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36542140"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="36542140"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2025 02:54:48 -0800
X-CSE-ConnectionGUID: HfXw7UZtQbaLe/li96s5wQ==
X-CSE-MsgGUID: +ql6hS0fRRCPv21xPbOHSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="140074840"
Received: from pg15swiplab1181.png.altera.com ([10.244.232.167])
  by orviesa001.jf.intel.com with ESMTP; 07 Jan 2025 02:54:46 -0800
From: niravkumar.l.rabara@intel.com
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	niravkumar.l.rabara@intel.com,
	Dinh Nguyen <dinguyen@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: soc: altera: convert socfpga-system.txt to yaml
Date: Tue,  7 Jan 2025 18:51:29 +0800
Message-Id: <20250107105129.2784203-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Convert socfpga-system.txt to altr,socfpga-sys-mgr.yaml and move to
soc directory.

Add platform names in description for clarity. ARM(32-bit) platforms
Cyclone5, Arria5 and Arria10 is using "altr,sys-mgr" compatible,
while ARM64 is using "altr,sys-mgr-s10" compatible.
Removed "cpu1-start-addr" for ARM64 as it is not required.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---

Changes in v3:
- change to altr,sys-mgr.yaml file name as per review comment.
  v2 patch:
  https://lore.kernel.org/all/20231017192131.GA2531944-robh@kernel.org/

Changes in v2:
- Added detail description of changes in commit message.
- Moved coverted yaml file to soc folder.

 .../bindings/arm/altera/socfpga-system.txt    | 25 ---------
 .../bindings/soc/altera/altr,sys-mgr.yaml     | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
 create mode 100644 Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml

diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-system.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
deleted file mode 100644
index 82edbaaa3f85..000000000000
--- a/Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-Altera SOCFPGA System Manager
-
-Required properties:
-- compatible : "altr,sys-mgr"
-- reg : Should contain 1 register ranges(address and length)
-- cpu1-start-addr : CPU1 start address in hex.
-
-Example:
-	 sysmgr@ffd08000 {
-		compatible = "altr,sys-mgr";
-		reg = <0xffd08000 0x1000>;
-		cpu1-start-addr = <0xffd080c4>;
-	};
-
-ARM64 - Stratix10
-Required properties:
-- compatible : "altr,sys-mgr-s10"
-- reg : Should contain 1 register range(address and length)
-        for system manager register.
-
-Example:
-	 sysmgr@ffd12000 {
-		compatible = "altr,sys-mgr-s10";
-		reg = <0xffd12000 0x228>;
-	};
diff --git a/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml b/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
new file mode 100644
index 000000000000..d56ff4c05ae5
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Altera SOCFPGA System Manager
+
+maintainers:
+  - Dinh Nguyen <dinguyen@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - description: Cyclone5/Arria5/Arria10
+        const: altr,sys-mgr
+      - description: Stratix10 SoC
+        items:
+          - const: altr,sys-mgr-s10
+          - const: altr,sys-mgr
+
+  reg:
+    maxItems: 1
+
+  cpu1-start-addr:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: CPU1 start address in hex
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: altr,sys-mgr-s10
+    then:
+      properties:
+        cpu1-start-addr: false
+
+additionalProperties: false
+
+examples:
+  - |
+    sysmgr@ffd08000 {
+      compatible = "altr,sys-mgr";
+      reg = <0xffd08000 0x1000>;
+      cpu1-start-addr = <0xffd080c4>;
+    };
-- 
2.25.1


