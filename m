Return-Path: <devicetree+bounces-138744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 788E4A11F6A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1392A3A4F2C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897662419E2;
	Wed, 15 Jan 2025 10:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="djgOIrOc"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6267B24168A;
	Wed, 15 Jan 2025 10:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936990; cv=none; b=lK40L2HrtedN/INIoKKeIIdN7Hm0/O60sIrVrIMAYkW3hIWOAw+nAEGdISQr9kken7yGF0IbSRzqkdgR18BghJOsTVgNhFcbD4t0RFIpZhXLKDSWRmJVshVI2GxOr5I4BveNygAxcOCB1mAQ0hMgbHckTCvLIcciAt/C7l1xMhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936990; c=relaxed/simple;
	bh=vYUmyhuOJQnrwxQ2P5C/EI1ew8zRUHoQg3KS4baBR74=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NROKY73By/XJcQBRrIR6heEB3tsf+Uhex6ZE4HeiIMYHZ+sA5oSxcbwoiTMA9fSZKwCXDkkg7JFUmIg1VGeO2aqbncvlVdzPJOzN+v/J8VhMqlUnHf2prNg3nAW0IFLZm1CGWx95VM/vK4ypQjZSXbb4+3bolyS4IN2sBkVlWPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=djgOIrOc; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736936985;
	bh=vYUmyhuOJQnrwxQ2P5C/EI1ew8zRUHoQg3KS4baBR74=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=djgOIrOcLiVwasesRTZNQpAs4hVgVKS0zHYXue5+lf29NLcas8sBhBvJPNRGDW/5s
	 +bbyrHKzvTzfLL2SACRot2KcU67oO+gZJ3c9f4E09g9d7m+xp10Pl513/opkCgrxO6
	 0c51eKEj150W88npDkjegjZCn1DwktW7/4UBEX0aDv8frtHK1X2Ev0O3RSR1q3s+0d
	 7YAgDlYPZeWP+S17T6ofLb2Ojy87rdWsahXlfFwaEcXlR4z8KPaLo/PRljNDHjX47r
	 61flSStPXMPVrv96a5fFfHxY2brde+Gd348GjGS+9KWnM60GU0TOuVefo9x79kk7XP
	 F5FBJXIY4nNvw==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 054E417E0D9D;
	Wed, 15 Jan 2025 11:29:43 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 15 Jan 2025 11:29:05 +0100
Subject: [PATCH v2 4/4] arm64: dts: mediatek: add device-tree for Genio 510
 EVK board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-dts_mt8370-genio-510-v2-4-fc9b01d08834@collabora.com>
References: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
In-Reply-To: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 kernel@collabora.com, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736936976; l=2890;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=vYUmyhuOJQnrwxQ2P5C/EI1ew8zRUHoQg3KS4baBR74=;
 b=8dXxL1PAcD6gY53ZeZi5gctjQ99oX4rNPm+G8jlUv6Hx86p0hL4W753jV7Gm6UBEwAXmqZbej
 vzeLhFtml/lB3iBQizjVVWnoa0XaKBv0Ag2RLQTe7t8Pv4xQEUlUuzm
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This commit adds a basic device-tree (mt8370-genio-510-evk.dts) in
order to be able to boot the Genio 510 EVK board, based on MediaTek
MT8370 SoC. As being very close to the Genio 700 EVK board, the dts
includes mt8390-genio-common.dtsi file to use common definitions.

The Genio 510 EVK has following features:
- MT8370 SoC
- MT6365 PMIC
- MT6319 Buck IC
- 4GB LPDDR4X
- 64GB eMMC 5.1
- 12V DC Jack
- Micro SD card slot
- Push Button x 4 (Power, Reset, Download and Home Key)
- LED x 4 (Power, Reset, System on and Charging Status)
- USB Device Port x 1 (Micro USB Connector)
- USB Host Port x 1 (Type-C USB Connector)
- 3.5mm Earphone Jack x 1 (with Microphone Input)
- 3.5mm Line Out Audio Jack x 1
- Analog Microphone x 1
- Digital Microphone x 2
- Gigabit Ethernet with RJ45 connector
- HDMI 2.0 TX port with Type A HDMI connector
- eDP port
- 3x UART with serial-to-usb converters and micro USB connectors
- M.2 Slot x 2
- I2C Capacitive Touch Pad
- 4-Lane DSI x 2
- 4-Data Lane CSI x 2
- I2S Pin header
- 40-Pin 2.54mm Pin Header x 1

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/Makefile                 |  1 +
 arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dts | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index b763b73788a45af0a4ea773d308734fa128272f8..ae1147eca9a915f117487101e2ad4acead97adfe 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -95,6 +95,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-cherry-tomato-r3.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-demo.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8365-evk.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-genio-510-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-genio-1200-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-genio-700-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dts b/arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dts
new file mode 100644
index 0000000000000000000000000000000000000000..71a8cbed1df6a1d976e7dc8ccafac3c21b04614b
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2025 Collabora Ltd.
+ * Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
+ */
+/dts-v1/;
+
+#include "mt8370.dtsi"
+#include "mt8390-genio-common.dtsi"
+
+/ {
+	model = "MediaTek Genio-510 EVK";
+	compatible = "mediatek,mt8370-evk", "mediatek,mt8370", "mediatek,mt8188";
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0x1 0x00000000>;
+	};
+};

-- 
2.48.0


