Return-Path: <devicetree+bounces-236161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A6C40BDC
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 877704E4797
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70AF32C92D;
	Fri,  7 Nov 2025 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fgisYtNG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA3D261B67
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762531401; cv=none; b=fZ0iiG5LTGvSL/jR945GbBhy68QlC8nmbZxv+m/IVltKvfZ5flVGaZeZjHnv4ML7HmWqwofn+27uqC2/OAVUboSJO2HEXzbeIa/xqxfNklM/kuhQiqmE6eZRhDHfqtCo5KiOafpuidY6YKm11FDWdpPvhZeCnwmBcCTKyatx2DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762531401; c=relaxed/simple;
	bh=Mq+pgIrFVh3/1ByhZxXql+KF2fVkdYPoiizIqFlwkyI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtZ0jKL1rnAdgagzkuXBkMEGdmFKUciLRRstTqYgPCh3rqzdZZCx6x5Ij4mlNaDP5+zPuZZ29wqZbFhugjyGW8i1DR4VhHeuSiG6c/QFrLdbz2ndBXNa/7HbZ6+hMKJ2IGTPgK85ZBEm67sCg6q81+oZYbnxHNH74fZEdhoiZgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fgisYtNG; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-429b7ba208eso540892f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762531398; x=1763136198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzaa9BMZZ9jLpC9lScxxEevDvh6b6Ryte1oOB44LidE=;
        b=fgisYtNGDwd7oVej66x167ibmjBtfFpfxJW2Anfq3kOaDSsfmCsgCEooqTmOtQlq91
         SSJLuE9YL5Hv07mXrUjdkdZvYriCjz+lCw91RgaHSpCFaCKFtLDuqAKhah36D2iBHwzd
         1Y9k7CbSE9Zo5VT+t1tI+U5VZL4ZYJGoqs8FUUkH+E3GuCEXYClz9sA1M5dcHtJXt+lu
         TCA5QA1xqaYDSq1r6j3/ZhxMlUH/LsgihE42AnuPvHg+V/7Vu1OuJA5zJvkiTqC+tBKs
         LR2B7CBAdvPfhVNM4wce0LR0xNcGYV1/QDQQCbyWWGAQPo2AJK038niGyti5i71SzGun
         7wCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762531398; x=1763136198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qzaa9BMZZ9jLpC9lScxxEevDvh6b6Ryte1oOB44LidE=;
        b=cWAqdEf/+yG1TNNxlxkYaRHS82f8aUQI/5CvYNZviSW/R3UHtNrhx6UIcnSKsCbfs5
         1e7R3w0jIMwS7KChWPCHecO05KL0KTn8N0xnMyoOZ2NZg47K3Sz9O8qlQeEMxGjyyv7k
         AfCtrLUaSyy1WrLz4a1IPqFLD49MWvilGOOS8Xsc22k16e5FHRA2xxDVWN0T7vKAFS/N
         L/rNjQnF+Lscrvrm5pmltGr65zlZO7EKRsw6LcIRJ6j6I1iKiJMR67jlJ+IfeJ4iOUGT
         aftI2j1jgjaoKeAc9cqltMbotUsVq+hcvgGAUog7B2yY+n6B03x8yeZ0EUo5Mc6kGxrF
         BvXg==
X-Forwarded-Encrypted: i=1; AJvYcCXFcjQTq/ProJbPqq+uS1HL/yIy+tmWmPCPS9oTkDv2fNRkTyWztekul6FFkEUVJ+gIIe4ncYFHvbW7@vger.kernel.org
X-Gm-Message-State: AOJu0YyVpVAQjUlOBttBeWt9v498XSR7ihCxOie2CEdsVKPD434YNRs/
	Ld5zLypNv+3HpLXXkmfV3C5L1SaI/wG5BCKmRXmkBvVoWADMp9256QvM
X-Gm-Gg: ASbGncuDyeOpEW/eckqisypTf/UWWsLsgxQJADvYcV9g013+TOWbHyFDrqMnEMCTFP5
	UjpLtRGKgYC1Sz1JZ34jJJI4BKkmZDwchoiukuvoNS6b9LMo1vkdiLw9/WSDqW1JgMYYbGyWIqP
	395Ce9VXbWNgh2KD18Tebg4+PMgEpk/gb1totS4pG+zuzGDVKd+ZOemhFgu5SF5jJGIu2F+3jLh
	sypPFKx4tezY4tyNTmdUHHc0b8m5RHf4K3Nxt2sypt5+8LixAPKIP9DwchOe6YF4fMglRVog9nv
	sXzx4ObX4lBDfKtkN2BU8GU1LDMenNXgB1P5xAxvuoTAVsNVk7Hk5NjRMUS39ddMP083nr5lREu
	I3Hm9j/CoVCF2G4btzQwaouM7VsrgscYDUHFlg20eEq1yoWOVibKkvfJnvHLqCqGHxre+fza3EZ
	Cixxe4ks71/MpwVvHQf4+1G+fWCjuPDg==
X-Google-Smtp-Source: AGHT+IGdev4kxanwwHINTFxMNLbZq8tVFAx4f+6eN5jOnIKPA3pJTeCx/EUTxYzn8RJNEOu19VtFkA==
X-Received: by 2002:a05:6000:4403:b0:429:d528:649f with SMTP id ffacd0b85a97d-42adc689675mr2303523f8f.2.1762531398016;
        Fri, 07 Nov 2025 08:03:18 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm6058016f8f.19.2025.11.07.08.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:03:17 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Fri,  7 Nov 2025 17:02:44 +0100
Message-ID: <20251107160251.2307088-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251107160251.2307088-1-ansuelsmth@gmail.com>
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, the
"airoha,usb3-serdes" property is required. This can be either
AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 and is used to identify
what modes support the PHY and what register to use to setup the
requested mode.

The first USB port on the SoC can be both used for USB 3.0 operation or
Ethernet (HSGMII).
The second USB port on the SoC can be both used for USB 3.0 operation or
for an additional PCIe line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 71 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..ec467fb7f971
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
+
+  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  The first USB port on the SoC can be both used for USB 3.0 operation or
+  Ethernet (HSGMII).
+  The second USB port on the SoC can be both used for USB 3.0 operation or
+  for an additional PCIe line.
+
+properties:
+  compatible:
+    const: airoha,an7581-usb-phy
+
+  reg:
+    maxItems: 1
+
+  airoha,usb2-monitor-clk-sel:
+    description: Describe what oscillator across the available 4
+      should be selected for USB 2.0 Slew Rate calibration.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  airoha,usb3-serdes:
+    description: Describe what Serdes line is attached to the USB 3.0 port.
+      Can be either AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 as
+      defined in dt-bindings/soc/airoha,scu-ssr.h
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  '#phy-cells':
+    description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+      as defined in dt-bindings/phy/phy.h.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - airoha,usb2-monitor-clk-sel
+  - airoha,usb3-serdes
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/airoha,scu-ssr.h>
+
+    phy@1fac0000 {
+        compatible = "airoha,an7581-usb-phy";
+        reg = <0x1fac0000 0x10000>;
+
+        airoha,usb2-monitor-clk-sel = <1>;
+        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
+
+        #phy-cells = <1>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 3d599e8b8b00..8c152daa8f8a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -763,6 +763,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
 F:	drivers/spi/spi-airoha-snfi.c
 
+AIROHA USB PHY DRIVER
+M:	Christian Marangi <ansuelsmth@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
+
 AIRSPY MEDIA DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
-- 
2.51.0


