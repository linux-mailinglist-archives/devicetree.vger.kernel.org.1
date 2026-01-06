Return-Path: <devicetree+bounces-251972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E7CF90C9
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:26:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D744230230CF
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8963E345CBC;
	Tue,  6 Jan 2026 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iJAwN0gR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CCD345733
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767713153; cv=none; b=ej80nKP/2WHuemM/bIcEloy/bUcc1faIxsTh7kLftQmgV2FBgdKCz30xzNoWMcraDpj7+ct08RYot4z1n0uUrOWxARyvdULI4TH0sM121nu2Y2GEi0zbJeBZu6nm6m5Lxko9wn04A3FVtGcWAbYgbHRHPR0lypQ5E73vk2oSX+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767713153; c=relaxed/simple;
	bh=wSvUVpkYwfclBUHPQH/z06N2RxpwoeEByRIetHbneu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=csSyjaV1VSs8XvOHf9bJ3TwiBbWvLsQvdURU3oQTUCIo8YIvZV2Mdrq/bhkRjK2R18JrU0CtgNHeT6K4blLG8KQXOfTiVCnEc5h9NydwPr1oVqMRQS0FLffz3xUckcTX+/+CX8fGE0ERBhFeeHBs2pFwsZwKXld/TmQP8D3YS84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iJAwN0gR; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso1207100b3a.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767713150; x=1768317950; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtdXmTl9NRpLLoEu93y7W7YPxZRLcRxHS6BPm4Q5c0o=;
        b=iJAwN0gRjUDUTFFMwQxhOas4lo8gSfnBKW2c4bNYqFgMG2lvETAB/cfaL/KyVrx0uI
         PE4JTz94qMO5DBg52Ni38juyteFSZCEVZUgYjQyI+ZgQg2oVoehy5jbvX/5oRbAe1GzS
         qTQKDn5e/UnZ5J6X40BBXD3KqC7JAfBh+VThl43/p5j9Kd4tYlKkavcvzjii+VA8Y2dn
         1wJkA8q7TRFQEnUYBEYGax+XWNln70qWqJq6U1FY8suBy8cGsJ3Yi/3kmKTLncoWJLxg
         pxStg48Eut2kwb2dm0w6Jsh2x1QDF3itGlxNiHMjwFmmnGkxX1vlDQRN++E61zt/xhnW
         GWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767713150; x=1768317950;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZtdXmTl9NRpLLoEu93y7W7YPxZRLcRxHS6BPm4Q5c0o=;
        b=qe1GONZZ3PBV1/BACEVtv7TRh3LqgrvS++Qo7utv9eRR5vCzo+XtWA1ObOa6/K9s4u
         1aoQwjBaf3tFwIguORTlZk2wG+Scpd4HHYQh91H9ytYmaXl851DiuQ4i8+uw9jJ5ULSs
         Eoh6gX9CSEuNDiQRUkfbOyHVGhbeAI9QFtInaskTzZzEPQGrLRvTU2G9aYFI+M57xvPn
         v/gleaEO7+BpVsgAT4vopXTMezq37HaB8jfzQepZRCSBSINQRezGTkxDfyCLXhYPE4F1
         rvF+nGtHslF/E6lKl3e91mQcrZI/tKqsqY0955HAoVrTtuy4dA5UuYeCb1PlcRGeoNwv
         x5Vg==
X-Forwarded-Encrypted: i=1; AJvYcCWW8YUGq3sFiP4Ys6VWWpSv0Pjim9MYXw7/IV/JmAatrOo2YC2/r/W4B5URpx+nq3IRUBet8CJ9R32E@vger.kernel.org
X-Gm-Message-State: AOJu0YzpE7c4AJewsA4r/OfjMycoPVQgbeMk362SAcl4nLWZf3CBo6cJ
	A+0npFKXkaeuI4PR98v02DMHqWghO3qVm50IWR5WzoHcSl0hQpEBVT+M
X-Gm-Gg: AY/fxX68jGnhjvHex9BtSxR8NWwJK01dMAina5Q2OnYJcDTqPrpQ6UHOEc+CBkznfMn
	g+0aRtyohIHWhMZqfLn6LCwjl6tYmjxUvkEtnhdiD3s2JMdA8yWxGdjHISjSXH5afcjPFM6BHJV
	r/BfMIAWEprPhurSL91EYvNr65inMUnxtlIMz88lM6K4wBh27VanxUNxb2HkKr3xMQynbv6Jb6m
	le69C5htHYCL1MjqLHZz0ok+6HGlRBcxEkIvS4XM2tgKywssp412UwWGL9g1/6kDBshcaP+aDo6
	Wc2Z4wmlLZxXG8f3plBKD65qDpi2Wmztz5lsq9u2cLO6bDm0/rJGWbd30T/cgIZc5l4hz7OF1X0
	Z8r9bY6qnE2jPHZi6BIx3FPcoxqxvOE5CXB+zeeZ9tgGIcO/0Z30kQ8NSQIYfZ3gXnlL7iYQNfy
	7Oylq7EGlDa0A3D9KPgWdo/CsMAUIOA7oUl78CbQ==
X-Google-Smtp-Source: AGHT+IFdf/FdCRxMGmLvrAXo1i5iIX1Eb7ltcmx8n4wRRcmotOUjW0iOFXIRwmsPQLkT4On14GhzVg==
X-Received: by 2002:a05:6a00:439b:b0:7b7:5066:7f9 with SMTP id d2e1a72fcca58-81880494b45mr3168256b3a.7.1767713149800;
        Tue, 06 Jan 2026 07:25:49 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.106.200])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm2529469b3a.27.2026.01.06.07.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:25:49 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 06 Jan 2026 15:25:43 +0000
Subject: [PATCH v2] dt-bindings: mtd: st,spi-fsm: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-st-fsm-v2-1-7e0a2e18127a@gmail.com>
X-B4-Tracking: v=1; b=H4sIAHYpXWkC/zXMywqDMBCF4VeRWTclk0tvq75HcWGTUQcaLYmEF
 sm7Nwpd/ofDt0KiyJTg1qwQKXPieaqhDg24sZsGEuxrg5LKotIo0iL6FMTFPLXRFs9SW6jnd6S
 ePzv0aGuPnJY5fnc347ZuxEmitH8io0Dh0furts4RmfsQOn4d3RygLaX8AC7tPnycAAAA
X-Change-ID: 20251231-st-fsm-84b343517035
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Angus Clark <angus.clark@st.com>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3

Convert STMicroelectronics SPI FSM Serial NOR Flash Controller binding
to DT Schema.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v2:
- Modify commit message.
- Remove "pinctrl-0" from properties.
- Delete maintainers list and add "Angus Clark" to maintainers.
- Link to v1: https://lore.kernel.org/r/20260105-st-fsm-v1-1-d1dd935ccee4@gmail.com
---
 .../devicetree/bindings/mtd/st,spi-fsm.yaml        | 68 ++++++++++++++++++++++
 Documentation/devicetree/bindings/mtd/st-fsm.txt   | 25 --------
 2 files changed, 68 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml b/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml
new file mode 100644
index 000000000000..77099dc0fe53
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/st,spi-fsm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics SPI FSM Serial NOR Flash Controller
+
+maintainers:
+  - Angus Clark <angus.clark@st.com>
+
+description:
+  The STMicroelectronics Fast Sequence Mode (FSM) controller is a dedicated
+  hardware accelerator integrated in older STiH4xx/STiDxxx set-top box SoCs
+  (such as STiH407, STiH416, STiD127). It connects directly to a single
+  external serial flash device used as the primary boot device. The FSM
+  executes hard-coded or configurable instruction sequences in hardware,
+  providing low-latency reads suitable for execute-in-place (XIP) boot
+  and high read bandwidth.
+
+properties:
+  compatible:
+    const: st,spi-fsm
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    const: spi-fsm
+
+  interrupts:
+    maxItems: 1
+
+  st,syscfg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the system configuration registers used for boot-device selection.
+
+  st,boot-device-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Offset of the boot-device register within the st,syscfg node.
+
+  st,boot-device-spi:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Expected boot-device value when booting from this SPI controller.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - pinctrl-0
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    spifsm@fe902000 {
+        compatible = "st,spi-fsm";
+        reg = <0xfe902000 0x1000>;
+        reg-names = "spi-fsm";
+        interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+        pinctrl-0 = <&pinctrl_fsm>;
+        st,syscfg = <&syscfg_rear>;
+        st,boot-device-reg = <0x958>;
+        st,boot-device-spi = <0x1a>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/mtd/st-fsm.txt b/Documentation/devicetree/bindings/mtd/st-fsm.txt
deleted file mode 100644
index 54cef9ef3083..000000000000
--- a/Documentation/devicetree/bindings/mtd/st-fsm.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-* ST-Microelectronics SPI FSM Serial (NOR) Flash Controller
-
-Required properties:
-  - compatible : Should be "st,spi-fsm"
-  - reg        : Contains register's location and length.
-  - reg-names  : Should contain the reg names "spi-fsm"
-  - interrupts : The interrupt number
-  - pinctrl-0  : Standard Pinctrl phandle (see: pinctrl/pinctrl-bindings.txt)
-
-Optional properties:
-  - st,syscfg          : Phandle to boot-device system configuration registers
-  - st,boot-device-reg : Address of the aforementioned boot-device register(s)
-  - st,boot-device-spi : Expected boot-device value if booted via this device
-
-Example:
-	spifsm: spifsm@fe902000{
-	        compatible         = "st,spi-fsm";
-	        reg                =  <0xfe902000 0x1000>;
-	        reg-names          = "spi-fsm";
-	        pinctrl-0          = <&pinctrl_fsm>;
-		st,syscfg	   = <&syscfg_rear>;
-	        st,boot-device-reg = <0x958>;
-	        st,boot-device-spi = <0x1a>;
-	};
-

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-st-fsm-84b343517035

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


