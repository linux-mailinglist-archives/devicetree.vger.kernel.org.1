Return-Path: <devicetree+bounces-151183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF04A44B0D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 20:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 237CD3A8CC9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F51A1DC9BB;
	Tue, 25 Feb 2025 19:07:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 076EA1A08A3;
	Tue, 25 Feb 2025 19:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740510477; cv=none; b=CCdZYEPgtNmlWU4YtY+dwF1G3G/kw5mJ25/Upw8F3cOtSk1IvKXZp0ux8m9Xuo2b4bxrklS1FGckBlhT+oXhS8W77QLBzwp2EM5mlOsQf6vbV6TlOC411VwMX5i523pbxGm3RtyaKJdYfn/KEn20zJsFwOiGn0UrdurSZAcIgYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740510477; c=relaxed/simple;
	bh=FMvD3Pt50tgH6N7wnCK0kaflvWk6AhlDLon6ZFZmbGY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KYsiRpo2hn7ISn/+PYe8d6Kh+poPBL389AfX3BrZojtNS/jNstjEDPcOrQSlsvEp37FqYCDAZtk5DYxJ21CsFqMef/drSyfm01pzi1erc9bFMptvpz4+19aumq2SLVM31AJjneXiuwmqAKaSVSAYyLBjUz8aYPEB1eaQyKLZZfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69EF61BCB;
	Tue, 25 Feb 2025 11:08:10 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E07B3F5A1;
	Tue, 25 Feb 2025 11:07:52 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-sound@vger.kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Maruthi Srinivas Bayyavarapu <maruthi.srinivas.bayyavarapu@xilinx.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] ASoC: dt-bindings: xlnx,i2s: Convert to json-schema
Date: Tue, 25 Feb 2025 19:07:43 +0000
Message-ID: <20250225190746.541587-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250225190746.541587-1-vincenzo.frascino@arm.com>
References: <20250225190746.541587-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Xilinx I2S device tree binding documentation to json-schema.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 .../devicetree/bindings/sound/xlnx,i2s.txt    | 28 --------
 .../devicetree/bindings/sound/xlnx,i2s.yaml   | 65 +++++++++++++++++++
 2 files changed, 65 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/xlnx,i2s.txt
 create mode 100644 Documentation/devicetree/bindings/sound/xlnx,i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/xlnx,i2s.txt b/Documentation/devicetree/bindings/sound/xlnx,i2s.txt
deleted file mode 100644
index 5e7c7d5bb60a..000000000000
--- a/Documentation/devicetree/bindings/sound/xlnx,i2s.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Device-Tree bindings for Xilinx I2S PL block
-
-The IP supports I2S based playback/capture audio
-
-Required property:
- - compatible: "xlnx,i2s-transmitter-1.0" for playback and
-	       "xlnx,i2s-receiver-1.0" for capture
-
-Required property common to both I2S playback and capture:
- - reg: Base address and size of the IP core instance.
- - xlnx,dwidth: sample data width. Can be any of 16, 24.
- - xlnx,num-channels: Number of I2S streams. Can be any of 1, 2, 3, 4.
-		      supported channels = 2 * xlnx,num-channels
-
-Example:
-
-	i2s_receiver@a0080000 {
-		compatible = "xlnx,i2s-receiver-1.0";
-		reg = <0x0 0xa0080000 0x0 0x10000>;
-		xlnx,dwidth = <0x18>;
-		xlnx,num-channels = <1>;
-	};
-	i2s_transmitter@a0090000 {
-		compatible = "xlnx,i2s-transmitter-1.0";
-		reg = <0x0 0xa0090000 0x0 0x10000>;
-		xlnx,dwidth = <0x18>;
-		xlnx,num-channels = <1>;
-	};
diff --git a/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml
new file mode 100644
index 000000000000..3c2b0be07c53
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/xlnx,i2s.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/xlnx,i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx I2S PL block
+
+description:
+  The IP supports I2S based playback/capture audio.
+
+maintainers:
+  - Vincenzo Frascino <vincenzo.frascino@arm.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - xlnx,i2s-receiver-1.0
+      - xlnx,i2s-transmitter-1.0
+
+  reg:
+    maxItems: 1
+
+  xlnx,dwidth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 16
+      - 24
+    description: |
+      Sample data width.
+
+  xlnx,num-channels:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 4
+    description: |
+      Number of I2S streams.
+
+required:
+  - compatible
+  - reg
+  - xlnx,dwidth
+  - xlnx,num-channels
+
+additionalProperties: false
+
+examples:
+  - |
+    i2s@a0080000 {
+      compatible = "xlnx,i2s-receiver-1.0";
+      reg = <0xa0080000 0x10000>;
+      xlnx,dwidth = <0x18>;
+      xlnx,num-channels = <1>;
+    };
+    i2s@a0090000 {
+      compatible = "xlnx,i2s-transmitter-1.0";
+      reg = <0xa0090000 0x10000>;
+      xlnx,dwidth = <0x18>;
+      xlnx,num-channels = <1>;
+    };
+
+...
-- 
2.43.0


