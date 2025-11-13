Return-Path: <devicetree+bounces-238344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80133C5A32A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF1B53B7353
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 106E6324B3C;
	Thu, 13 Nov 2025 21:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tK7rt++X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEBB2DC78C
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 21:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763070350; cv=none; b=U/J0FPWZOPhlL3J6mCA6d68rgGNYqZ0TVVYn3wWvduAsl57wDmguKRly9zlgKckJET0kGArfHTVpZ9t3ZZ0OBoJOCG43YQkcZC0jYjcwwMIGwChqXI7vtgdRWjV6nqGOzhTEE0iorciAi+pZM7u4Amtx0avz/VF3lUSRdavfwiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763070350; c=relaxed/simple;
	bh=AxniUDFPOEBa6Hk3PEu2qbO8OY5+iC7H8GeN4m2w6cw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sAmuhl5gahje13o8BBjCibIQC/idMVwtw+qwMfQYzT5YBhbDkTGG1vIaiFiyXjAOMkzszy2E2sR7/zH+RfwHSchd+pNpIjuPyN2tXDk5zFftEk0763kETvWuHt+nhlG7qo707C1mLw+F4w+vVCw7pBcH04apW3YVzBu9acpjJiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tK7rt++X; arc=none smtp.client-ip=209.85.166.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f66.google.com with SMTP id ca18e2360f4ac-948a6509f1bso54641439f.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763070347; x=1763675147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=tK7rt++XzN7M9/Xn0MTrNHVyKZH18Oirc7/q+qe77XZZCrbIsG7X6HExKzXpdgQ6ge
         GyfARBP4qpmGVnMXDEC0pSPTbjjpzjNAOKhTJdZm6YGbI+kPnAhFOojWS1JhM2JIj7FL
         Z0WQcwkxdSgnDHGWpTAOz2aJdqOjGpB5mkHzfwNgndt2qmh/4FDdWjVFdRcTAu53LZSl
         GVPgle2w7kBgp0CCLP9Sk+qzdEyckZRBG1+YG9mDmqy2zHaw/r1S9geiFXLJ+GCfL8QG
         htqPXftFsaIvCJw1Tuu3Ri7RzB4Fgyw6HYm/ed0UxRZVlKN4+bSL8PUT+YzH4u1uIe/n
         4Hxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070347; x=1763675147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gLTdLkz5qoTZ4VZft5RozafvHivyKGwCA/saZ7bnL/c=;
        b=JMYUoX1b1snn6+FoZC6ldIkYdDyEzCBV16D1ayqtWdymO9In32e4QyxNPFgJ5p1Jtj
         WbQuBdJlLrvJLAlxN3g0sAVTvldjqfOgIhRnx754MW1B1+CxxX2N//ysTtVMtg6c7kGs
         pBkKMKittfrJlwXAb2tp9GVoZ6Ejfw3qW1y5v/bjLtXB5/z99lclj5MBIyEe/FozDmwJ
         KtsSIbjHTSzY+Nx7ITUxrSaKjWqOgPejmVdD+JbsVTQJ1REctiLQPiXrzzESlaVJBTmI
         9oDgyisLXlkUrwalggL109lEmrYf5nSMx2EfTsVRSEwSwhyAEw7ItLJIVCqqpwoVw2Mf
         4c9A==
X-Forwarded-Encrypted: i=1; AJvYcCU17lz5ReZfvIFo9gB0EhELbPXZZefhZQsWMTXvdPFGLp3B9Js44mAGsRRGcnxZKs7bLvmTaQngNxfb@vger.kernel.org
X-Gm-Message-State: AOJu0YzprPfMKWiXdIabN7HugdmqG0EkvS6YoNzpbWzRExOxUMyXHxGT
	D/O9u4mgnXIN1gjOrJ8P1A86Bzbpj1vq8fVq0SOcGdMUmCvIKiexcPJMfZrQCA416UU=
X-Gm-Gg: ASbGncv7ql1fQbd6ih3I1NsA2jlatJR4iYs/wS9SPRL2nzHl6JfX+ESbLp8vTBbJCcm
	WMJ/7Mj+TEsqBZzFkrMoM5l7jsL1KkdWq/TT97OGCG3w4ELfLr9REpnTo/BpjLku1OUdXDF+9fj
	aEl6vtSpD6wwPl5c39RN6RC1mM58JOdDqjo34Ly0B6y/jMcCJ/E5/NY46va8W0WjcvL6CcY+0XC
	EqaYLw4os+52OXIbB59B1QdwUs+uC3ZTKIUpiaI/1dUpWyRxesnbhivg2KFq00eG3pPx2W2zmuG
	0JDWTsl7PxFfdBd2LgZJ4dPuR90HuPknibeu6O7YC32iM3dIVloQbDunynZB3WdcDzesqpV8LpO
	PQ9ttOgrTMXwrI36go+Tm+Sdrn3UJ/bRBi+F2o/777CgZFXBAt5xr03sGCW+GJQGPA4cASuRrir
	QDUb7C3qQdgcpRQUI7P+R/JWJVFMRFugNnUkTnoKwR3uRgCogUe7ZavMp7CeHGQgJB
X-Google-Smtp-Source: AGHT+IH0iaOFvKkFoSvyh+E7QrJE8ooJ0JLk+JkYQy9a2bR8btw1mCKtxexcV6NZgeMvAElxAUOLHA==
X-Received: by 2002:a05:6e02:c8d:b0:433:786a:5203 with SMTP id e9e14a558f8ab-4347c4c87d1mr64708185ab.10.1763070346997;
        Thu, 13 Nov 2025 13:45:46 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-434839a4ac7sm10877115ab.25.2025.11.13.13.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:45:46 -0800 (PST)
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
Subject: [PATCH v6 1/7] dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
Date: Thu, 13 Nov 2025 15:45:33 -0600
Message-ID: <20251113214540.2623070-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
References: <20251113214540.2623070-1-elder@riscstar.com>
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


