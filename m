Return-Path: <devicetree+bounces-236224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3075C4167F
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 20:16:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19FF3A3B9F
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 19:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD082FD1B2;
	Fri,  7 Nov 2025 19:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Po2QIYw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D022E54D3
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 19:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762542967; cv=none; b=mfbO/QcHzvLS+J1uDa/lEaAq2xEHM8mnY3rmmgMaQSCal9Xmwx9R/lEeaQeZ4hNl0QKDkK3TovGaMX97r5DsTMSBiv1Io3S6MJRAg3QDqwGwLnzWVTRyXsI0MSaa5Uugf1o1JysCOLhZStQMrB4KQd9H8CMzrjSiEgIhBowA8jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762542967; c=relaxed/simple;
	bh=YHBye0L9cMHXAeuikElziIHL0SY2EvFZooP/HwyaGbI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QzIcUrZTBPcCBru/NDRWj6bcbgfVdaJp7pfw7/NwJi980B4uxAfZoiB+XMsw40yU2egujCcMGj/gShmQBzGJXbUp18379Wyo8v33LF4FyznBNmdtkTB4qKYuLia17w4g+2P88/pHs9+qEryZS8PbjuWTxuTTLSPrSoA6x+Jph1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Po2QIYw/; arc=none smtp.client-ip=209.85.166.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f66.google.com with SMTP id ca18e2360f4ac-948673fdc47so35148739f.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 11:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542965; x=1763147765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ay3vJcZn8gR8uhIOX8xdTsiqp7cEn/zrhd4VkngAbaw=;
        b=Po2QIYw/tT5mVbbVOPa+SSXW9cr2xH6kDniuFpW+uQ7BEbNOqIm2w+wU6yDJ3B/A6A
         Jd97tKiXmYy8vI8WRsmQ+MmD3eliTgLnsKWMWqrywMzCXsfd7kx0i2syyH1dAvIKrwbK
         tS0y+59VBzx+fJpJ0zc5lld5H3YbKwz1qtcgW4PEwAf3+axkCCNrqHvjjEjx2DcbvH7/
         LwzGVl3AxkbvRhBBHdvEKSvL8OYyZHVk5UQEkECrVyRx4Cc/CErf3Z39rZr0qW7ZjKTy
         e5oD0RZGT+QQQIoR/nHcGLMhPsfVGw0GHAt9ByuOX7gttjjp2qeI7iwT3XycHAnOo2+L
         eNbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542965; x=1763147765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ay3vJcZn8gR8uhIOX8xdTsiqp7cEn/zrhd4VkngAbaw=;
        b=WaW/Q6ENGx4vIecZ+T1t97flcGmM/CGJ6dDFrZPo80cKJGPUUXpq6iR9W5CJyRGbwq
         9Tx9joRrY1sOOKnRecok8GgB4bz6T5dv78kFGU4LVlO+2nFqw8CtbtZJ4JC8otn7UXCF
         wnMgfEGKY1N4Ln275sjOlgKh3saoV0iaHnIxS98dZ22pxMVM615mAVerW/UHejT5fCV9
         CAy4RPcGfm0pUnt33UV5nT8KPIUmQsvr06IJbZ6gN9C+bbL8rVS7gldbnFiuaLkJyYW8
         mZfbQ0RenEzjmWchSaihChtYtLGbX/NN9dKTGVRV39jXzrEA51nT+R+MCHecovRxOEAW
         bpfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmtmzdirE9Tl9QX/w5YySUZTHLMXOxYo+KnzLB37QLswlK3RvVfirMoc/5QK+RplFzdPi48uYRqij9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1L/mwECdvzuiTCZcWvAvQY2/lPjZPo0D+RWoYIFhMsXonS31A
	XnQiH3+a6parGJa/7ZUsOaIt8gwxTmURNU63jm6gub9oMx+td4xwU0DUjMGmOgYxlWuTohdm61H
	u1kwNSHi6sg==
X-Gm-Gg: ASbGnctqEvilB7FlvqQLzExhpLWK2Rj8mctK6YW6Gjgw9R7/YjHFX1c5+a+96TzUPW7
	cxMJ9NVs0WUYo8u9iNukNrQ7B1BbNd4ar9xDVNQjlIMr4U2gRS19PME7CKy8Iynz93QNzMKvdYE
	9dcwz47CIdy0Gdnnb/kbe2x5IskjQPRgGUmsofIDcz2+192V8lkvAWyYpMabg34IrnzsQzBIDSR
	VGQrv65Rpo407Cg8swHDoBH1SHEbGrOMvzlL64xQoPrtx8/XdPfsTnuue/kppaCD++UI91Bt/xP
	z4cZ0NKwnOoy8uSXiqgdrmw5CpCW5JvDGHJ1KTFCmFh32dn+iPxO9B40glYKF+n7AxfWc2NEVnL
	w6KN7TL4Xjr7PhiXBWDt7MovxGAor+uHRhuu5cVCG76v9PHOIc4fDPUtt4a6cCj+y2mTiJF4aye
	KM01M1mNV+oLGAc9Fz4ylC7rkjsX3dSdNOSvkBjPONBPE=
X-Google-Smtp-Source: AGHT+IHCQMw8gkgpun15fOExG5Sy7WYN+BCNzSaipPURAOzJ4FqM/yDv4HIDN8wPjwaYW4Sy0gZ/Fw==
X-Received: by 2002:a05:6602:15cf:b0:948:7c51:1977 with SMTP id ca18e2360f4ac-94895f83afemr60413039f.4.1762542965062;
        Fri, 07 Nov 2025 11:16:05 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:04 -0800 (PST)
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
Subject: [PATCH v5 1/7] dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
Date: Fri,  7 Nov 2025 13:15:50 -0600
Message-ID: <20251107191557.1827677-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251107191557.1827677-1-elder@riscstar.com>
References: <20251107191557.1827677-1-elder@riscstar.com>
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
v5: - Wrap lines at 80 columns

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


