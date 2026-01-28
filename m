Return-Path: <devicetree+bounces-260514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJzoFTgyemlo4gEAu9opvQ
	(envelope-from <devicetree+bounces-260514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EC9A4DBD
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1FF13302986C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A9C3081A4;
	Wed, 28 Jan 2026 15:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q9piXpxh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089413081BA
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615742; cv=none; b=l9WhAEiedm1UA9b1y6UcFLqV1/wuRjT1VXSykI9WNkhbY9Klv3ImHlSpHG1u8Ua8cnU/bozwW/feeViy8b7+s+/qWsOLGkwFKbNs9MYIf8IvMn8KRIqsRfIvTpMEnUZQIKgLFw2IwH3s/OOZVd55wlgQOpUcqYFYQIayUlrewCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615742; c=relaxed/simple;
	bh=jPRhiQfxg8h9GkIArmifPxx4IycN1uG35LhZ2f1Ng3E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JqHIlr0HJ0845995l8Kir+WZtdtsp+W6CWe8wNiYPPfd+0oIdcCz5hA8TLrNZjAd9HQ0TjyHu3NAlu9Qswk26v6vCOcoavL6MBBIICbvmmC1XcsUaN6v+2sXwzsyF/PLvUIGXL7seygaX6fVWYjWHWP4VYpJYXrGJoVYa3YBk5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q9piXpxh; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-8231061d234so5929837b3a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769615740; x=1770220540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjUncjcLWPAdsY5AzwGqsgN5nsZqzSUVUhLs3CXNF+s=;
        b=Q9piXpxhoFIAzx8RFeykL4swn21hucvzGMGNHlvh7l6gjvg7x7SXV2nFSYSxf49GHr
         RKC7fZ9ZMOi8NOTJjwu1baePXh3KmGdptrs9owB2T/e4Txmbq1zHcZY1gPb0l0vV5Rzu
         oCmvwLGAfXkpTcNH68EcYVA5BCB33ibeY68i124a7dH+vrZmbKUvX+2diKWIkWRf8i0n
         mcv3WtP2P0xgVm7m1Zmbddrtbeak8YkPItlYWPlfcq4e4y6BCGfoFvYYwVts0jg2Ik6v
         on/chF+Tos0U3Nwj7c1/eLH70NYkH0CjufSGuukmQkWJYzGZw3sMcHdnIeh8GFlNHlzt
         7vmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769615740; x=1770220540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HjUncjcLWPAdsY5AzwGqsgN5nsZqzSUVUhLs3CXNF+s=;
        b=BmbTLzSgv8TY/hLDXDPz002k6uB9SMXKesFsVvGiE/5fuCv2r+tjIaBhQJD+vyEPEF
         zR119hKBXYZbbjhwhnZFLYkYV8tkD0Ls+vtcq17eaXrxCquPIC45beQX8knzPnUVNAWY
         xqmUiunWj12qr6csRQbCMbPhoJlANu922Q1nS92l1XdapctH+DLcNSwF3hQ/B41EHxAi
         0uYhEeA26rmL0hTlAdS4vqB4LyU+JMhMOg+Gb64CG8CLr/13V61Sg8THz0IyqaBD3CmL
         W79g2b0cw/w+9wLR6mUl6SPZzN1YH9xdufIl5kqCnb+avpxTz7d0JRuM4yjcHCEmhrsh
         mfCg==
X-Forwarded-Encrypted: i=1; AJvYcCU52Gxh4w3/riBLevHFJQbPmYh0P7QmSDf9BLgvCZVo2/Y1anL9WFpmlrjIyHpbxJasme3BuflNJLzx@vger.kernel.org
X-Gm-Message-State: AOJu0YwkVQHfgRJnkwypPkRXdinDbrY0oENgdlUYkrtCWvFjMoFfq4Re
	sXvw1JXNL5eKgQ02HX+R6ktlOYbyMS4YFj2+miYkrS4aeXVeEngKpL4U
X-Gm-Gg: AZuq6aKLJtErAJjgxYKh230QAg5sCk7vxCUImiPsoAF0Szk2B3Xa/Y9T+BMpHPV9OjL
	8OTif8CU5XaNC9z0sRCpxdx477YRetMe9ToIGj9NYMw4XRMmF/Nxoo/OJKTmXjDQIO0igiRHzC5
	hYfxjJIjdTEXusuIGJUHIZfv9F86Ft5kvaFqpSURBR3a6ZgIjaHAEHBV+WYVFwm9dLm+BkwwgCB
	XZeSWOymYGYTXk8Zm3qsV6dSOqcHR4xftIkmBSnMACqrEk0vkxTRxJPYd0uB7ilul5ZswpM8xYX
	qE7hP4dY/giwrUCkY5iCk1M7kzETW1bfK2/RnVy7+P3nHVkQTipuretmasMBsNJhvL7jnJJvT5A
	Zo6cvyIMaBUEBi/OR9VGCvJHhk2YhsBhtf5rmykBtApYCShh3g7bqyDiy6/IReKElswt4w4qhBw
	Ncv/9xg1/jSU27kYv7GlWqpbT50EDeszym7QCsqVH+zK4OrVqgyzyjBmA=
X-Received: by 2002:a05:6a20:3d05:b0:366:14b0:1a2f with SMTP id adf61e73a8af0-38ec655cb7fmr5809916637.61.1769615740386;
        Wed, 28 Jan 2026 07:55:40 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6427da845csm2621521a12.12.2026.01.28.07.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:55:39 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v3 1/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Wed, 28 Jan 2026 23:55:29 +0800
Message-ID: <20260128155529.3699599-2-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128155529.3699599-1-onlywig@gmail.com>
References: <20260127025740.2601841-1-onlywig@gmail.com>
 <20260128155529.3699599-1-onlywig@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260514-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: E9EC9A4DBD
X-Rspamd-Action: no action

Add device tree overlay to support the MayQueen PixPaper e-paper display
on the NXP i.MX93 FRDM board. The display is connected via LPSPI3
interface and uses GPIO pins for reset, busy and DC control.

The overlay configures:
    - LPSPI3 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
    - PixPaper display device with proper GPIO assignments
    - SPI frequency set to 5MHz for stable operation

Enable Open-EP Community pixpaper-213-c support on NXP i.MX93.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 51 +++++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index ce8f937c2315..c2727f8061e2 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -398,6 +398,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb-i3c.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm.dtb
+
+imx93-11x11-frdm-pixpaper-dtbs += imx93-11x11-frdm.dtb imx93-11x11-frdm-pixpaper.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm-pixpaper.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx93-14x14-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-kontron-bl-osm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
new file mode 100644
index 000000000000..a78284c10838
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper display
+ * support on NXP FRDM i.MX 93 Development Board
+ *
+ * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include "imx93-pinfunc.h"
+
+/dts-v1/;
+/plugin/;
+
+&iomuxc {
+	pinctrl_lpspi3: lpspi3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO08__GPIO2_IO08		0x3fe /* SPI3 CE0 */
+			MX93_PAD_GPIO_IO09__LPSPI3_SIN		0x3fe /* SPI3 MISO */
+			MX93_PAD_GPIO_IO10__LPSPI3_SOUT		0x3fe /* SPI3 MOSI */
+			MX93_PAD_GPIO_IO11__LPSPI3_SCK		0x3fe /* SPI3 CLK */
+		>;
+	};
+
+	pinctrl_epd_ctrl: epdctrlgrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO05__GPIO2_IO05		0x31e /* DC pin */
+			MX93_PAD_GPIO_IO06__GPIO2_IO06		0x31e /* RESET pin */
+			MX93_PAD_GPIO_IO26__GPIO2_IO26		0x31e /* BUSY pin */
+		>;
+	};
+};
+
+&lpspi3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpspi3>, <&pinctrl_epd_ctrl>;
+	cs-gpios = <&gpio2 8 GPIO_ACTIVE_LOW>;
+	fsl,spi-num-chipselects = <1>;
+	status = "okay";
+
+	display@0 {
+		compatible = "mayqueen,pixpaper";
+		reg = <0>;
+		spi-max-frequency = <5000000>;
+		reset-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+		dc-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		busy-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.43.0


