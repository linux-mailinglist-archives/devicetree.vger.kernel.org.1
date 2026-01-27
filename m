Return-Path: <devicetree+bounces-259708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II9RCbEpeGl7oQEAu9opvQ
	(envelope-from <devicetree+bounces-259708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:57:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AD78F476
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 16CF03005AAF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE192E6CD8;
	Tue, 27 Jan 2026 02:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mFRfb4Jq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9905427FB2E
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769482671; cv=none; b=KrPRQOMkhRL/IV0rE1xonk9LuuVE9vkGVr3+iB+lw2QjJcWUqSVfCPoXG/NQjjrKE84T6mDDO83WQti/nR2ww0Qbcs1FqF/az/FHMxXrJ1xNUznoDBCzKkXaG8wDZfyN5rLMGqhxIZ+mkCk+eFdjP5rb1CsUiaSOXQdruTjnoks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769482671; c=relaxed/simple;
	bh=d1VHDVebQSNXHoW6XV8lMhvcEBYBfFeC8Xqm1U156IQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nW+386EtZmgFaKxBAaKu7n/sDFpJ4Efyi1R2A86joUzbStQS/5ydM9Y5ZVJB1MA9W8JQ6AmL2EZYKRhIbduAVSYA8smdLjw3nR+Yz5trf1qaSHU+Q6Ut0flM/Ej6pj0xl5i6XPOxMFdVKpqj04lYzgnrwL7KRbvLsEJ8V6zk2Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mFRfb4Jq; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-81f5381d168so4800052b3a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 18:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769482669; x=1770087469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/DD7IDM1AVvzDLxHdmpY/RwCTTEssQcwyPgw/b+OZhM=;
        b=mFRfb4Jq65v2fAqXRyUeEN/JVcMOr+KwDwWqnCPql2F6W8aPPSri74h76SVlkxlKog
         /rkx2NLkiSnecqptiqlPUQ5MXcfUeV5ayb7gdqR4rboYRrH4jLLUKd5Miv/3yO7+hvs1
         TDkVBatMqqcOvk1wsRelaMU0pECfB88Cyo/sn7Is5EpQVkf3lhr6mgceZ/IQBxWri2dN
         awdk20tCqASjmPiLcekSfa9G5r6Yd6CfFbzCuTQyUChELhy9BtmiF6Jtew6/l/5tgi/g
         YaPLncUZfm9SnOjKHFoNxPGVAauxp9+SEdDZyE0eDBwnD1ygTn1+ZBxiEpvz+aeHFl7/
         j07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769482669; x=1770087469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/DD7IDM1AVvzDLxHdmpY/RwCTTEssQcwyPgw/b+OZhM=;
        b=cC19nMJrJJH1Zsu6Az8PiCPSsc3Lct5hA/FmmA5GMZo1MfQ4WiRFv/BOhlUk3IOqHv
         hw3f+z9PQi+fgmkaNMUeAANUxSkpW0V22vLAgPw1oAzZKqsIu6JkdeB4cO3fY0/cAftz
         5iyBmqIY37m4JTzPvgxhh+0dj80tJ3FutDWvz5SxKER9etnYmZrjEm3e604I03EnFruE
         Uw18YoqxR/S/oboGzg9pOWrZTpNAnzqUuP+d7p32uFb1Hf/AvjXPs4reotwOWqVdkbDQ
         S7j1m/Z1oBR6YSSXBrFxD/9HKtp7qp1WDA0544gvKKXAzcpKKCh9S0udFeNlMRyMvUB6
         zplw==
X-Forwarded-Encrypted: i=1; AJvYcCVkplo9g6PDVLxv2I8ZXVxqh2jOoL+1QpXKQeoJz24QsxjuvrWUtf070IvTIkDyZFBEFNNyvpl48V0i@vger.kernel.org
X-Gm-Message-State: AOJu0YxqKQ3WcohTNPgADNmRZJF0CUm6ctT1wdJ3Q7+9J2j6Y0btmYT9
	WbI9YhW1VIvl5RWOTokSbTni1RaTEY+hqoJQD4OH3qNyCAUwn9Q+oaZ4
X-Gm-Gg: AZuq6aKF2n3yj5JgMjitecE/qNNpCdIh4Ns37LWP0OWbvieRqv8HKUjXhNURVdDrmAP
	6bgzdBHbaEiDM1usctBsIqM0pBCttoK7lxJyTGB39cI7OpIrtcM7KPm1QldCexl8gN6phusbI26
	9RElmy7Lckg8n+fEhF+StybZZpT/Kr2f98AA1q4K1NMQ521t5VdcCmDKjj2mdSHeOZNhIZlbLdy
	yNx+M4Ka3ViXGzx/nIldRJ9Skcf5M9NAnUFbhF1YXBx8UsYbB0Eofb/BYLdFknHAF6pKzCZIKkj
	oS1TRn4Pjdozf2EWE9Na78s8dr09eBgLlGvUeMbOlapBkUwCDpnPRt9HUueGt9Mt/gZsyAKimMB
	ao4zBRWh0h2k3QO6It1lunm/YEcqcb1jZnjRdwX4C/mZxhzCVUCpWk/6wyRVXHEZxpN95+rFKo8
	TOcqcgGbvN6fs224vmDmUL/N8kG4BVPgn2arAjvVXqIHaB5y0ZwiFBaUo=
X-Received: by 2002:a05:6a00:6c84:b0:81f:50ea:5da1 with SMTP id d2e1a72fcca58-82369173d44mr399025b3a.2.1769482668965;
        Mon, 26 Jan 2026 18:57:48 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-823186467basm10495006b3a.10.2026.01.26.18.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 18:57:48 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	zaq14760@gmail.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Tue, 27 Jan 2026 10:57:40 +0800
Message-ID: <20260127025740.2601841-1-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,kernel.org,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-259708-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,i.mx:url]
X-Rspamd-Queue-Id: B6AD78F476
X-Rspamd-Action: no action

Add device tree overlay to support the MayQueen PixPaper e-paper display
on the NXP i.MX93 FRDM board. The display is connected via LPSPI3
interface and uses GPIO pins for reset, busy and DC control.

The overlay configures:
    - LPSPI3 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
    - PixPaper display device with proper GPIO assignments
    - SPI frequency set to 5MHz for stable operation

This enables support for the Open-EP Community pixpaper-213-c module on
the NXP i.MX93 platform.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  3 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 51 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index ce8f937c2315..fedd3552b577 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -403,6 +403,9 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-kontron-bl-osm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin.dtb
 
+imx93-11x11-frdm-pixpaper-dtbs += imx93-11x11-frdm.dtb imx93-11x11-frdm-pixpaper.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm-pixpaper.dtb
+
 imx93-phyboard-nash-jtag-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-jtag.dtbo
 imx93-phyboard-nash-peb-wlbt-07-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-peb-wlbt-07.dtbo
 imx93-phyboard-nash-pwm-fan-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-pwm-fan.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
new file mode 100644
index 000000000000..38e0c5dd82f9
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
+			MX93_PAD_GPIO_IO11__LPSPI3_SCK		0x3fe /* SPI3 CLK*/
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
+	fsl,spi-num-chipselects = <1>;
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


