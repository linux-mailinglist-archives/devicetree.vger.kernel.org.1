Return-Path: <devicetree+bounces-61172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 183E48ABE39
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 822F81F2165E
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DEEC4A2D;
	Sun, 21 Apr 2024 01:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="TFDZWZ4L"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F35817F5;
	Sun, 21 Apr 2024 01:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661920; cv=none; b=MczRTIghWqMF3EzsgSVAzxS8N+5mmHnxLZ0g7V/hYMWPtc8fI+3SKt9m5FWMmRjEi5ssv05/LVLdcHnGJKOhiSwNAniLRVHlaHOAPHLVAwNN3u9qwqgz9yEga3BMil7BoH3MX8Y7nFaUoz1VDT4klwA+jo4ZprmJ9xTY5+qtPBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661920; c=relaxed/simple;
	bh=dbO5rAvrQSJWbWQBjrLFv/aoQtaQpow7bmVOVv2wkmM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YntZ4qRNCCQZKMV7OIKZRZb+5AOtXBNrdOVlpFHHQ66BSB96zMSTUMBt1CrMKP+1x/z7jW5pVdogXXLd6oppigNSwdfuLhrV1jH1/d/aU2YA1LPQ38DR9mZgh6NMQzzL/w+OudROM2W+Cn3fqTHMYlXXc/iuMoSRNc7vjU1N7YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=TFDZWZ4L; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1713661918; x=1745197918;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dbO5rAvrQSJWbWQBjrLFv/aoQtaQpow7bmVOVv2wkmM=;
  b=TFDZWZ4LVwecuxYWDI6ysAoreLvJXTPj+VylvsZCltduj7JlkFHG0I9L
   nO2JYpX4iBIqZ5s+5/nLnJUOwzoIL9tRgBCn5D0Fs4XlrfUesGu94D7uL
   2+uMngIb2YTw6zgtWK8RQyhqKD5dx+feN1Z5arvaHpYutnwIBT5kN//2f
   gGDnpQaswK5EXqlD9HEP/JcxcyYDJDvUGrMFoKQtrJgRqj0+NTHYQaPJ2
   X2h9DrYymMd60QpNzRB9pDKgdWhl9CbPdJi8xZNoS2U9wRxa8Ecfbj+mD
   aO9jSXku9X4riKEmMH//Qe+zvB6HLxt+N9u5EhqiTRdwA9xpgFdAZ3bcN
   g==;
X-CSE-ConnectionGUID: Z31Mwg63QjairJeGchYeZw==
X-CSE-MsgGUID: 9SNeaMcHSHG7FRnrHhMVCw==
X-IronPort-AV: E=Sophos;i="6.07,217,1708412400"; 
   d="scan'208";a="24025073"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Apr 2024 18:11:54 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 20 Apr 2024 18:11:38 -0700
Received: from che-lt-i70843lx.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Sat, 20 Apr 2024 18:11:24 -0700
From: Dharma Balasubiramani <dharma.b@microchip.com>
To: "dmitry . baryshkov @ linaro . org" <dmitry.baryshkov@linaro.org>,
	"andrzej . hajda @ intel . com" <andrzej.hajda@intel.com>, "neil . armstrong
 @ linaro . org" <neil.armstrong@linaro.org>, "rfoss @ kernel . org"
	<rfoss@kernel.org>, "Laurent . pinchart @ ideasonboard . com"
	<Laurent.pinchart@ideasonboard.com>, "jonas @ kwiboo . se" <jonas@kwiboo.se>,
	"jernej . skrabec @ gmail . com" <jernej.skrabec@gmail.com>, "maarten .
 lankhorst @ linux . intel . com" <maarten.lankhorst@linux.intel.com>,
	"mripard @ kernel . org" <mripard@kernel.org>, "tzimmermann @ suse . de"
	<tzimmermann@suse.de>, "airlied @ gmail . com" <airlied@gmail.com>, "daniel @
 ffwll . ch" <daniel@ffwll.ch>, "robh+dt @ kernel . org" <robh+dt@kernel.org>,
	"krzysztof . kozlowski+dt @ linaro . org"
	<krzysztof.kozlowski+dt@linaro.org>, "conor+dt @ kernel . org"
	<conor+dt@kernel.org>, "linux @ armlinux . org . uk" <linux@armlinux.org.uk>,
	"Nicolas . Ferre @ microchip . com" <Nicolas.Ferre@microchip.com>, "alexandre
 . belloni @ bootlin . com" <alexandre.belloni@bootlin.com>, "claudiu . beznea
 @ tuxon . dev" <claudiu.beznea@tuxon.dev>, "Manikandan . M @ microchip . com"
	<Manikandan.M@microchip.com>, "arnd @ arndb . de" <arnd@arndb.de>,
	"geert+renesas @ glider . be" <geert+renesas@glider.be>, "Jason @ zx2c4 .
 com" <Jason@zx2c4.com>, "mpe @ ellerman . id . au" <mpe@ellerman.id.au>,
	"gerg @ linux-m68k . org" <gerg@linux-m68k.org>, "rdunlap @ infradead . org"
	<rdunlap@infradead.org>, "vbabka @ suse . cz" <vbabka@suse.cz>, "dri-devel @
 lists . freedesktop . org" <dri-devel@lists.freedesktop.org>, "devicetree @
 vger . kernel . org" <devicetree@vger.kernel.org>, "linux-kernel @ vger .
 kernel . org" <linux-kernel@vger.kernel.org>, "oe-kbuild-all @ lists . linux
 . dev" <oe-kbuild-all@lists.linux.dev>, "Hari . PrasathGE @ microchip . com"
	<Hari.PrasathGE@microchip.com>
CC: Dharma Balasubiramani <dharma.b@microchip.com>, Rob Herring
	<robh@kernel.org>
Subject: [PATCH v8 1/4] dt-bindings: display: bridge: add sam9x75-lvds binding
Date: Sun, 21 Apr 2024 06:40:47 +0530
Message-ID: <20240421011050.43265-2-dharma.b@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240421011050.43265-1-dharma.b@microchip.com>
References: <20240421011050.43265-1-dharma.b@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add the 'sam9x75-lvds' compatible binding, which describes the Low Voltage
Differential Signaling (LVDS) Controller found on some Microchip's sam9x7
series System-on-Chip (SoC) devices. This binding will be used to define
the properties and configuration for the LVDS Controller in DT.

Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changelog
v7 -> v8
v6 -> v7
v5 -> v6
v4 -> v5
- No changes.
v3 -> v4
- Rephrase the commit subject.
v2 -> v3
- No changes.
v1 -> v2
- Remove '|' in description, as there is no formatting to preserve.
- Remove 'gclk' from clock-names as there is only one clock(pclk).
- Remove the unused headers and include only used ones.
- Change the compatible name specific to SoC (sam9x75) instead of entire series.
- Change file name to match the compatible name.
---
 .../bridge/microchip,sam9x75-lvds.yaml        | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/microchip,sam9x75-lvds.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/microchip,sam9x75-lvds.yaml b/Documentation/devicetree/bindings/display/bridge/microchip,sam9x75-lvds.yaml
new file mode 100644
index 000000000000..862ef441ac9f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/microchip,sam9x75-lvds.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/microchip,sam9x75-lvds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip SAM9X75 LVDS Controller
+
+maintainers:
+  - Dharma Balasubiramani <dharma.b@microchip.com>
+
+description:
+  The Low Voltage Differential Signaling Controller (LVDSC) manages data
+  format conversion from the LCD Controller internal DPI bus to OpenLDI
+  LVDS output signals. LVDSC functions include bit mapping, balanced mode
+  management, and serializer.
+
+properties:
+  compatible:
+    const: microchip,sam9x75-lvds
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Peripheral Bus Clock
+
+  clock-names:
+    items:
+      - const: pclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    lvds-controller@f8060000 {
+      compatible = "microchip,sam9x75-lvds";
+      reg = <0xf8060000 0x100>;
+      interrupts = <56 IRQ_TYPE_LEVEL_HIGH 0>;
+      clocks = <&pmc PMC_TYPE_PERIPHERAL 56>;
+      clock-names = "pclk";
+    };
-- 
2.25.1


