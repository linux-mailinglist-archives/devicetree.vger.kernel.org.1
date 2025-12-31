Return-Path: <devicetree+bounces-250865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C39ECEC9D9
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 22:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55D023005086
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 21:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816B530EF90;
	Wed, 31 Dec 2025 21:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="N7t1u1/e";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="a8F4uhby"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBFB219A79
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 21:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218301; cv=none; b=HA43xnJGcv33sk8raoC2V0Dd/3UZjXZfz3IZeUJ04bY17jZa+IReZVa48OtFsD89ZWy7LFIJ1mwLtT1W1OWLcE+NF8o7pGeDDYVfdIjTL1SpcBhdSW8oOzJ0KvOIK0f/rhRJbBzwDV0aLV8nshZEDcZVK+OAwyl+AL2dRditAtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218301; c=relaxed/simple;
	bh=m6gNIGhK7toImZVqMZtJJKULpHHlQQeBki++9hHqtC0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EARWLZieIC8wUXPU1kKbO1mLhWo69R3E5ABpo0Qr3IGuv83h9mR+0djrMVUbYpAHNCgPakFYYOVm98FCUIbmhPn7h94zUIl33jeExGWZpcbCMtamn0dTMthqGe5ntKau0YPGw3OjvMwhoS+zwBuifR067dnqY+iybYtcD54yDFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=N7t1u1/e; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=a8F4uhby; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218298; bh=m6gNIGhK7toImZVqMZtJJKULpHHlQQeBki++9hHqtC0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N7t1u1/e6Bew0SFmjtBB7aP0l77s+ltdieHLeT2Q2fLuI2MzPKoZC3/cHRs0997D7
	 /E8g1YPrzcTwDGd+vSDd+2qnFDwLAaKbBHAcxhb3iwWSuS+SCRV670901ZYmrKHIMx
	 qw161Wy5+dTp512UNeaJUxJi8kEDHk1y+s9VP/NTj4LBFyYWPpOXnE6MnYQZp2CBYz
	 lywNykYqQG9KjAi1HX/ITPDeqbd3kXeQgqz2tETbOpfEMJeQqbNa11VngJGJ0dEVkl
	 fb32PcqBHHW6Idu8IVd+c1HIQ/GhcJQWp/IDRCWVISLEJmE/leS5hW7RqdMK97ZHwT
	 U6ovMltryXy+Q==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id E25483E97E3;
	Wed, 31 Dec 2025 21:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218297; bh=m6gNIGhK7toImZVqMZtJJKULpHHlQQeBki++9hHqtC0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a8F4uhbyJ2inAJPpdUDByB/Rcs4ax3bkNbRA9mAxokL9uE6/4+GIpKr+9MvynfFpV
	 SK+5TWzrBsqo+aujuuAQIe6ISX/wLT5DO1qKhpyQOsFya6bZoO3yA81HpXsElIw4Ot
	 Up6Q4xDzzbhXzWmqfnDq7PHwyuNlgCPln+cNTX3bzIt8sWNKl6G0Id5jlanYNMR+X1
	 +aOFdFqNeMTDSYBtkz+6rM1YkEKE51bN6Q6vsKDp1nIb0Yz4eduN2y6R457hqQx3G6
	 aJ71tVqDTWmPwZq94Pie3VAD1Ac6VmKUp718kq8OQoEIbOBI3e8kT3H30fpaliMfQX
	 wf4XkcEJSx1Vg==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 5BF403E99A3;
	Wed, 31 Dec 2025 21:58:17 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: mfd: nxp: Add NXP LPC32xx System Control Block
Date: Wed, 31 Dec 2025 23:57:50 +0200
Message-ID: <20251231215754.2222308-2-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251231215754.2222308-1-vz@mleia.com>
References: <20251231215754.2222308-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251231_215817_946966_951EA89E 
X-CRM114-Status: GOOD (  12.80  )

NXP LPC32xx SoC series contains a System Control Block, which serves for
a multitude of purposes including clock and power management, DMA muxing,
storing SoC unique ID etc.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 .../bindings/mfd/nxp,lpc3220-scb.yaml         | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/nxp,lpc3220-scb.yaml

diff --git a/Documentation/devicetree/bindings/mfd/nxp,lpc3220-scb.yaml b/Documentation/devicetree/bindings/mfd/nxp,lpc3220-scb.yaml
new file mode 100644
index 000000000000..b993dd15135a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/nxp,lpc3220-scb.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/nxp,lpc3220-scb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC32xx System Control Block
+
+maintainers:
+  - Vladimir Zapolskiy <vz@mleia.com>
+
+description:
+  NXP LPC32xx SoC series have a System Control Block, which serves for
+  a multitude of purposes including clock management, DMA muxes, storing
+  SoC unique ID etc.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - nxp,lpc3220-scb
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^clock-controller@[0-9a-f]+$":
+    $ref: /schemas/clock/nxp,lpc3220-clk.yaml#
+
+  "^dma-router@[0-9a-f]+$":
+    $ref: /schemas/dma/nxp,lpc3220-dmamux.yaml#
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@400040000 {
+        compatible = "nxp,lpc3220-scb", "syscon", "simple-mfd";
+        reg = <0x40004000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x40004000 0x1000>;
+
+        clock-controller@0 {
+            compatible = "nxp,lpc3220-clk";
+            reg = <0x0 0x114>;
+            clocks = <&xtal_32k>, <&xtal>;
+            clock-names = "xtal_32k", "xtal";
+            #clock-cells = <1>;
+        };
+
+        dma-router@78 {
+            compatible = "nxp,lpc3220-dmamux";
+            reg = <0x78 0x8>;
+            dma-masters = <&dma>;
+            #dma-cells = <3>;
+        };
+    };
-- 
2.43.0


