Return-Path: <devicetree+bounces-260696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCxfNk3GemmY+QEAu9opvQ
	(envelope-from <devicetree+bounces-260696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:30:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E094AB268
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 03:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 946ED3028ECC
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 02:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B40A3559D2;
	Thu, 29 Jan 2026 02:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lfIsZ1vn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DC83563C5
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769653765; cv=none; b=JYtt0AvVEPHtr9RdOaUZl8dOR1jBvvDl2+qC1coRxxD6hGgixd1dVDhTsjReeZP2jmMSlQSfSveetUp9DI8m1KhuQtSsTDIntGoh7A91RZ4xQHky2GbIqmNw6rEgmUjKXefDEzO9TmTAr3K3W/w/NUO+lKzNZltP+6txmVu21VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769653765; c=relaxed/simple;
	bh=Ux4yXdcrD7sWaWrJxWfS5yeD2Dtq6BEm/InYgyeESXM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AHirV/KrtojyjpCc9zmL/dv9EmQmzbAubYXBEtGbpZ08LmQ8XXnlGpv70HUuJHtXX0hQerKoBfz+F9lPn2lE+gPlopqu3upkP5XmGKm7wpHGIFbllz7x1VXDXm/DD2BzJT6w5xjcTG92+E6AcPO3C6YyAGP37itGjwUZtMeGx80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lfIsZ1vn; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c27d14559so232696a91.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 18:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769653763; x=1770258563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jyw7q0/YQsMTgrYvASBDoKvdAbxjjEM7hz6Ka6xcckU=;
        b=lfIsZ1vnOLJCPEjEU9CqiAX/zuEyPGaYMj9rbunL605RupowduJ2T5sl7YerLcNjPp
         93QR7Mun+IgFwXVid5HqWJiO66aWA3S+vT9GDGIalGiw4CW9ivrPLmwYJURrAUILCAj2
         Y5zstfpSD5AQEyCwBcNyaq/mWEuNMRlputhF/KacwcLF0JbzXsK4hyE5N2rqkiQXKCoc
         UtS6gEynfVgl6hTdP63Ku3dzoB+amW+R0wghp1cOUHG+2sbGQg33r+zDe5RyWSOZxVdb
         3PfyMyE9+gU4qLQbjhgZ+uhl1A2OEnXGz2D/vnAyTWnzKMBcvY7lliL9IZOSfetX29Va
         BUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769653763; x=1770258563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jyw7q0/YQsMTgrYvASBDoKvdAbxjjEM7hz6Ka6xcckU=;
        b=PLy0lh/1ZunnatuqDzE2o9L0v+GbPVxe0Emnc8toFHaqFo1Z5/IhDSNyhVSodfNw1D
         yfB76nhQ8m+iDT9tANr6XU/k+ywvqH6reB9H2VqcClELXF7UNHvtFiKJdF0wNHmTw1+s
         cWaY3IDT7bD4F+UDQYnfvz0zxNwEqYcQ3e+2+aEjOlIQbQWRSIFM8Yt46wBbPjLw2V6J
         sy7IZ1FZGkWFeO/lXuS/wFup+G4MhmM19avcJ0DTCV/lK1o+Pljc0P2pvh5YwzsAbXSi
         Sjx5kGYpFrF54NsgLrEb5eNss88jDEMaY+9GwQdydKyxBHWarUE3rJ+LPTOGUzNhySgk
         aOYA==
X-Forwarded-Encrypted: i=1; AJvYcCUQr6YSZ0dzzkkMC7buodBq521by2W+wGNsdrXBmAV6BDt44Z2Xb/YGn6Dtr62lB6dK71XtcbpgQ46+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8Wxx7WCNpoRbrpFACBTnhB3m6xOHuRvdRf8wi6/RreCc5kGNV
	pomuVmqMFeovIQveJJlrav7wZEaGXYcgVtmPZZvyFwHtYeBeTEKxuZ9x
X-Gm-Gg: AZuq6aL9EP6BkdDsV/AHCPQBoQmyqy0V6+Pfetur+fyBx+jsf33A2c2Wa8SAoLUEXQ1
	FB9eAeMQ4+HD0f4Az9463Tf4QuKW8WjcOg0A45lgddjQ2a8pofz8AiRefH4HDPijaVsJtZq8hlj
	nlC+t0SIQhAWSQiFXSu7hQxjqJwoOMo4Z1rTpaaHBvdPi8Bok5R/VAh1m9eaplAhyVJE4kXt2tu
	w44yt/O1VhFTvGNTNRwEPSmlJgDJzPXbN3fB1JNYcwGsq+bubn4aZB8nVhXxZqcx5xh0N7wFYdQ
	cmnKT1v28FkgahKYjNuwWHEqJ3rhjh0FOXnjLkSNdw/km++TeRG1WUuOH5JeBqyQcuSCOy6Ebn5
	g9/z9TFa8droZQyb2O85M37h+eeuSmc8z0dStTrgPiek7an90MB0At1w1L9JGPPCDQxr75h6CG5
	7DMC2I7alX16Je0s6EK3LCBLZwrmCqp3Vz//+j1XL4asQ8/ijIMwR08IM=
X-Received: by 2002:a17:90b:1d48:b0:32e:a8b7:e9c with SMTP id 98e67ed59e1d1-353fed8ac13mr6667239a91.29.1769653763199;
        Wed, 28 Jan 2026 18:29:23 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f2f0283sm4380542a91.5.2026.01.28.18.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 18:29:22 -0800 (PST)
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
Subject: [PATCH v4 1/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Thu, 29 Jan 2026 10:29:10 +0800
Message-ID: <20260129022910.3942028-2-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129022910.3942028-1-onlywig@gmail.com>
References: <20260129022910.3942028-1-onlywig@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-260696-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 3E094AB268
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
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 50 +++++++++++++++++++
 2 files changed, 54 insertions(+)
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
index 000000000000..5fee27a589b5
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
@@ -0,0 +1,50 @@
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


