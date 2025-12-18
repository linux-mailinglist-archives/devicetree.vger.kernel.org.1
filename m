Return-Path: <devicetree+bounces-247891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C871CCC69B
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADD57303C2BF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91CA134B430;
	Thu, 18 Dec 2025 15:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="h+pcOVic"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE10F34B410
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070764; cv=none; b=vFtAfhgu45kC1rEDj8o1cjfZvgQ7diGNqF294vskWeqbhCCYucRQfI2XBmxzhh7U/XxJMRHsehvBhhiHL8O2ro3iUf4Fz6smDCNy1YPJ8rbTRb0HeHiirR7SYpM8AL90BECVDxhtBfC9TCyEpuoqA2Tkx+FoStNzD5eu7bzEHYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070764; c=relaxed/simple;
	bh=AxniUDFPOEBa6Hk3PEu2qbO8OY5+iC7H8GeN4m2w6cw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m08NGkM2DUtJvK/y3Md3gNLWGj00/Krw3OGWFr30WLY61S2zDJ5qIDYlqzaiqvn57M9qOAOMCwlLcx+cU42mOOJ12NTilccQ62j2hH0YSlIrxtFliSYDMmFYdfkWPj2pe/79nsHZ/yd2IFSfFu1/4Bh6YAkpeYUlKnuoPdfO9Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=h+pcOVic; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8b25dd7ab33so55179185a.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766070761; x=1766675561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=h+pcOVichRfbjRAvWEjQOjdzp9sn0ga+6m4ElqcLr3XgI1HPDDQqDVHpN0OuzNU658
         44+zxnapCG36rImgJ4uqWQQ/9+G929hGBJlSzMP+ddOFjXwpdDKE2DpP3uxiB6yfrZ3W
         LgfrxiXDXFEQNY4LLjanyV56cQl+G8tpdxjLEvPDWHyGLBoYrliWEYXSeNkR3+dMM4i1
         2an5Y9rp6s8/vlJpyrjFIuTY7L0KPjH55llw5ZGjPcROasW2LveZSsYlJW+oz7bF7Frz
         SbatZg2r9NxWbStqGe/hwAN8I3wwzQe8G+p8Q3LJEyKiTyEXAG8NpCdzoKVYqoMWyI6q
         xcpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766070761; x=1766675561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=sTWvk+Oz/73L2KK7TJiOQkjSPwfoosNjFwMBDI2NDWMnSliYHfUGlYVwUs7yRIKHqi
         p+eE7R+V1+qz0MOQOcjZ/TLbozxAGAB5bFwT9GRu027LgpzpTepuCP8DH48eUtC9VSua
         BDkGR3Et1nP8F5G9GeIHAI5er06eon085doB+049m8bG5QsNX/3mQ+WjAQmX2pssnPr/
         x7Aa4dJoSbpIWirWIAlIgkZMqGB52feFOmQB5nmqIgLgq0o+KQlg4uJONamFMzS2x00n
         zN9HyU5XaxJNm3A+GlEVdOL+b4UIQYs32WGkY2fO2kuPbopV+QPL21tcdq/ZaSjKKeJd
         UmMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIDNf1Oc+2Nv2CPBbl9DK4bLJ3UO+/bsg+8hliELqmf+yE3/RwjoIzVYnPAjWmy9hbs3VixZPqsUwd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz442vD1J2CTN/uUDZ5qNT2TXzDwr/+PKVDuwRC2OHLpx+f8YNy
	/Ua/1Ebx9P+nrrZNRcnsJpHajDEAuRHf+d4xM+zjvrPzVp/eTr246Y+JBJvhGYJEiro=
X-Gm-Gg: AY/fxX45O0DjL2g/ux9JMfdhjNk04rAUWH7NXXrzaeBLc2ZfKbK1blFLsJ5Goq0lhSX
	OH0mLFxpT6X4lhINgmwQkj8eHTI9YhPVBU3OZFDy5ClztHnNPzPPp/oe13hNzJMfYQdIlIcOKnX
	ZstgguP6Ib2jlSnwFHUgsPXVCFDWHlvGFjlhY56g1KDCS6MPt/SAd/lh7/XkxMXg1VviV+eA5ID
	L5qYLWdy7PbKbNFaess8rtm9uJ47dIDUekpCROCl6KrH6q5axCvL+qYk9jmjeJlcxfopJsoMWFa
	JUw14GfUTQS8IMmHP6Nvl3MGctfga+Nvc4zuMUV7qcQ3G4h+7pP6sE9lSxPpzoqvC70grv56E9s
	kuxwPOjea+/8EKXPhnZmS6H/RCMHDNvcvWu8o2STfyao2WsP0EZQPU6c9NLGyRTjMdWmz63eVwG
	S7gnlpjwo4nvhXGT5cuEi8WVerihVd7sThcTvt6jwRdaqrsFouV8J5Hg==
X-Google-Smtp-Source: AGHT+IHSKbVF665YqEXD6O7jBmj3jVOl2qS/oc2FAj0GURakfZVq9yDRUofhfwxuBkxQ2pFqUC7fSw==
X-Received: by 2002:a05:620a:6919:b0:8b2:e88e:a518 with SMTP id af79cd13be357-8bb3a384dafmr3194221685a.68.1766070761282;
        Thu, 18 Dec 2025 07:12:41 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8beeb5d6952sm186866985a.3.2025.12.18.07.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:12:41 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/5] dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
Date: Thu, 18 Dec 2025 09:12:27 -0600
Message-ID: <20251218151235.454997-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
References: <20251218151235.454997-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Device Tree binding for the PCIe/USB 3.0 combo PHY found in
the SpacemiT K1 SoC.  This is one of three PCIe PHYs, and is unusual
in that only the combo PHY can perform a calibration step needed to
determine settings used by the other two PCIe PHYs.

Calibration must be done with the combo PHY in PCIe mode, and to allow
this to occur independent of the eventual use for the PHY (PCIe or USB)
some PCIe-related properties must be supplied: clocks; resets; and a
syscon phandle.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
new file mode 100644
index 0000000000000..b59476cd78b57
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k1-combo-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCIe/USB3 Combo PHY
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description: >
+  Of the three PHYs on the SpacemiT K1 SoC capable of being used for
+  PCIe, one is a combo PHY that can also be configured for use by a
+  USB 3 controller.  Using PCIe or USB 3 is a board design decision.
+
+  The combo PHY is also the only PCIe PHY that is able to determine
+  PCIe calibration values to use, and this must be determined before
+  the other two PCIe PHYs can be used.  This calibration must be
+  performed with the combo PHY in PCIe mode, and is this is done
+  when the combo PHY is probed.
+
+  The combo PHY uses an external oscillator as a reference clock.
+  During normal operation, the PCIe or USB port driver is responsible
+  for ensuring all other clocks needed by a PHY are enabled, and all
+  resets affecting the PHY are deasserted.  However, for the combo
+  PHY to perform calibration independent of whether it's later used
+  for PCIe or USB, all PCIe mode clocks and resets must be defined.
+
+properties:
+  compatible:
+    const: spacemit,k1-combo-phy
+
+  reg:
+    items:
+      - description: PHY control registers
+
+  clocks:
+    items:
+      - description: External oscillator used by the PHY PLL
+      - description: DWC PCIe Data Bus Interface (DBI) clock
+      - description: DWC PCIe application AXI-bus Master interface clock
+      - description: DWC PCIe application AXI-bus slave interface clock
+
+  clock-names:
+    items:
+      - const: refclk
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  resets:
+    items:
+      - description: PHY reset; remains deasserted after initialization
+      - description: DWC PCIe Data Bus Interface (DBI) reset
+      - description: DWC PCIe application AXI-bus Master interface reset
+      - description: DWC PCIe application AXI-bus slave interface reset
+
+  reset-names:
+    items:
+      - const: phy
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  spacemit,apmu:
+    description:
+      A phandle that refers to the APMU system controller, whose
+      regmap is used in setting the mode
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  "#phy-cells":
+    const: 1
+    description:
+      The argument value (PHY_TYPE_PCIE or PHY_TYPE_USB3) determines
+      whether the PHY operates in PCIe or USB3 mode.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - spacemit,apmu
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    phy@c0b10000 {
+        compatible = "spacemit,k1-combo-phy";
+        reg = <0xc0b10000 0x1000>;
+        clocks = <&vctcxo_24m>,
+                 <&syscon_apmu CLK_PCIE0_DBI>,
+                 <&syscon_apmu CLK_PCIE0_MASTER>,
+                 <&syscon_apmu CLK_PCIE0_SLAVE>;
+        clock-names = "refclk",
+                      "dbi",
+                      "mstr",
+                      "slv";
+        resets = <&syscon_apmu RESET_PCIE0_GLOBAL>,
+                 <&syscon_apmu RESET_PCIE0_DBI>,
+                 <&syscon_apmu RESET_PCIE0_MASTER>,
+                 <&syscon_apmu RESET_PCIE0_SLAVE>;
+        reset-names = "phy",
+                      "dbi",
+                      "mstr",
+                      "slv";
+        spacemit,apmu = <&syscon_apmu>;
+        #phy-cells = <1>;
+    };
-- 
2.48.1


