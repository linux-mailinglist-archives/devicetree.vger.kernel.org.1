Return-Path: <devicetree+bounces-228298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7B4BEB59E
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 21:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47D60740311
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36987225A23;
	Fri, 17 Oct 2025 19:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="XaqC+Gct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BE333F8C1
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760728069; cv=none; b=oZG3dCDDPRwR1HVZlAfDuYhLWm2+a/iKVgZgIqWyLc19XN6WlS71ForBGMfjqNrxcLdS4nXXOvfrnnje3t3421CEGDo8KOOfHIjhVfPhfHEqx196MBIhQ+nHcnJBwxpo7jjes0kBkMR3NRFAGAn6k4I82MGz3RqUNEW2mLCdjc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760728069; c=relaxed/simple;
	bh=7WrOPVM0gt+b/Q/c9vY/ADstDCH0ZLchyGhM1A9P4gQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YRaNm5Wjtw5WhukcIzDAWG8n97bCap7QJ+DcrpjPOMmApTaRJlFFtmfbVD6hZpQuQjXwjWbAQgFH4/3MvlSUxjSfqpf70P8Ktkg217KbbN+ZB/TrmMS4GB6w49UK3uSmnyKBBY2/0nRWU8ZIbjFt9tWvonDxXbMtorQloVd17GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=XaqC+Gct; arc=none smtp.client-ip=209.85.166.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f65.google.com with SMTP id ca18e2360f4ac-912d4135379so92562939f.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760728066; x=1761332866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nnj3ndeUMae3NyNArAGupVHJsLP7DcySgmrwpRjKSkM=;
        b=XaqC+GctWKHYCQ69QE3CSwqNingyyvxRnRKsuBSNjpwZ1/hXMUEQI391D3b+ozZc3R
         KjHkZXReEq5hdqHSGNAezlzaJkPe21TozjrjMNZuEsOfl2AXs3my4MgBCnuSbXqb6P+S
         V+/66dYUCXBoWX2ZHxaTl1RNGmPmg3ooFuzo6Hjyl801XK4u5ZWZv0WzLvRSWY38IxB/
         +Lz9OTTrqDBX8e5e1sd2oeVg718Sho7fjMLps3odM3U1GoeGP62BcHevRbU6aTEv6xMu
         AkcpsKYciYb1MaM1xCNXodd9U095CSzgyO6JSmSYGJgjVz7iI2c25ks8NxJ89m39ezgl
         mpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760728066; x=1761332866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nnj3ndeUMae3NyNArAGupVHJsLP7DcySgmrwpRjKSkM=;
        b=rlYaprIRB/97IfT6Z+juFcfQEdRoA8kp0Fi0UyKR+XStc0VZzCts3BIjlDEOX1Un4A
         Y7bECXQO24vrtQKR6v9KiGchTJDYUXnWzu0XPaJZuUVOe8N/sUGGQOJHeWlq6f48w/5n
         NY6Acnph8iuIFDYNEi8moUfwB1kK4EVIo1e6ct86XwQM4ObdLUxNos/R1WHncB9QsjGS
         9EuKcoIhDEYe46qRBPyw4KqJ1k+35BC4SQaxXlres6Jrd9t15UEoMtINFk5z8UKgOQUD
         JGBUlAQD2LecY4Oj6X3I3qrHcdqzqMCDLzN5RGJatAUMSurEOTR7558BC5PnDwmSnc7E
         qtrg==
X-Forwarded-Encrypted: i=1; AJvYcCVurSxWBKfjuyo5eXRKqJXUMEEGWm1c0qKPgwdWvW6zg1nqjDxoim7n8ChDLcXfDq1e0sl8n82lmTAp@vger.kernel.org
X-Gm-Message-State: AOJu0YwqQatvJts9DA4zK+lats30PeCKplRJRrO1jV9d/KUlE1RgvXKb
	MfNs6WEJLUv74t0DY+nFIPvIgZxHOI8SHAUkbigc9PA7Ey4cLKNWGHBJex04xmbVlSA=
X-Gm-Gg: ASbGncsom2agtk2EgDYBnvo+JEGmQnEr1IrIpt9O7Q2mZ7kZXsnGGUyL61Wl5yg2ZBf
	fZxw5rcI/hhfnBxdoyOFPCvDYfKU+NB1R3KwukORKP0xsyz8l05bdeTCStFrzEwCDGhObFwLlH+
	LuR54Y5kxvQPC+C7rVC/D/hQFEcVpThGvxCiJ/NupIdeMFqzr3KhqzuF741HgZSTGXyrSQc2EV8
	MHbqPNVTXHXmAJc3bCFHp0IBe677H2d2eQe9REPo1L60cYkGOYqMyn/lhjAjSALvFZf0UBd7PGN
	GgLVZmIPJwgxKZ7kNykBQhma/tTRPgZ7MJngJMFxguL9DoAEZjM9lnXOnpZ2KztkqGdIFUAdd+O
	IAKpAPp5Q1UvH7wPQKxB9KELt5Agtu9B/iAK3QFRkseG+AUwuR3Y8SKqPE/6t+DLxf/hQBVhImq
	pYAlbhnk8OdHp1Lu7metoWLG6F8veXBUEkgj3BgbeupuYbbQTwCV0fOg==
X-Google-Smtp-Source: AGHT+IHytZYPq3sSfMjOZfFYHMcFE2wOrzrpGR8N8DWI8WbrnQAptaEbQ6cEghvzh0pSWjDXYscmQg==
X-Received: by 2002:a92:ca4d:0:b0:430:b05a:ecc3 with SMTP id e9e14a558f8ab-430c525f528mr67642975ab.9.1760728065914;
        Fri, 17 Oct 2025 12:07:45 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9768b98sm153462173.46.2025.10.17.12.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 12:07:45 -0700 (PDT)
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
Subject: [PATCH v3 1/7] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
Date: Fri, 17 Oct 2025 14:07:33 -0500
Message-ID: <20251017190740.306780-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251017190740.306780-1-elder@riscstar.com>
References: <20251017190740.306780-1-elder@riscstar.com>
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
v3: - Added Reviewed-by from Rob Herring
    - The "phy" reset is listed first

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


