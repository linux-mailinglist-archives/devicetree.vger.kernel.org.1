Return-Path: <devicetree+bounces-272339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA+YDBkyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7307622751B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 24A5F3022C1B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACBDC466B7B;
	Fri,  6 Mar 2026 19:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HaSu8FiH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15C9449EC3
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827134; cv=none; b=rCAghKFmc4OKLVXNvqq7AYHWmmzvHCxdO2B0qO4m1sMKjJr1qXDO3L+Tq/kxGHlC3zjIqRJ7Pcm6IweOX4Tw46Y5lFpYsmRE2HzEeDSyU/aND/u0qObuZreo7q+Ww1iftlV/WnL8fPlYPdzgYabD7GqlaVKDmkOD+IdlFwSQViA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827134; c=relaxed/simple;
	bh=u4X5+DI91wbkbi2KLD4hT90jM52B2TkovsBJfJswZb0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pru84ZZMxvIxBFQgp9XDCCeogPcw6vErjGdQzDexNE2ckaX54PN25fKkb/lN9xP1TbXl0RNusSEViPYOIENJ3JJqbVcMIA0Q/Ese1pEX5xqQftpIa7WJkOSMUo/izXWOsZaB/M77SyIMWKNoEux4D+vZcP1qkFdOxYkSrOXno1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HaSu8FiH; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4833115090dso99532905e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827128; x=1773431928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aNK1v/PEn41q4OPJG8Vn10SgkMQvYdWa3Iwstjk7m/s=;
        b=HaSu8FiHOaK4jDtG/xZmxY703arneDO6VfSb8HkCUyjVdbTTVc5Mt0AvtQ4NEbDOf6
         CYiNm4NYKVmUxqvuOercmX2/8SGT48UN4ZhWq7FzaORasLUn1ivV9Dsi0HrNRvonW9/C
         eX1+b/88T0yYqi5R7II2DhnQ+yZdMF9sHlHBH/yYYseFleJf6VC5VIcTffT1wCrr7lb5
         pO/vFlD8LSGxTuMxbzgbQPJbGMYjR5sfKmXO93IrWioEjfQZpIC+5p5c8pyZuJ7Fy3Ke
         ofJG1TUpIFmnM52C07FjsIUbVWA2aoGZF2HKfsEkzrD6Ie7pg+a/GVL2oG7wnJ2lNFfD
         eDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827128; x=1773431928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aNK1v/PEn41q4OPJG8Vn10SgkMQvYdWa3Iwstjk7m/s=;
        b=Tn0AtFhZpxz9KK66TXGYksB0kf89kkA/CJJbJkFs12Fnzmb+pxTgbU7aimBcGXiePU
         ACdK+tHanR7unIcS/jhDO+ge5yVHctGpIEQCS7I1Vv1KAEeGlUEiA1ttO32WvdEGCjW7
         smk7VDAYufa6TK/KJvooAJdJKPODYwSEIB4SFSJ2lUzk5NCtv5ytYlk1JAcJ5tKXbA4D
         JaPx8Vayw9kLD3pW/5HfA6xv3BBezGidh5GgA0wkEv8kgx6jbZGjAbLti4sIO9tv1YGq
         kbzr70sMgIwQTGglVjlMUITMwt98kjZeWbvSHryVhL64Pb3vvilTli2H3NpDprVpZICF
         0SxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxCUEUX3MUxYKpOjrI9vDUz9r9oKRZPbXCkAWjb9TUNVQgr7itggUrYpjVJ+l2iFBptPZFxE8d48Ru@vger.kernel.org
X-Gm-Message-State: AOJu0YwJn3PZ8r3Oy0OwCZ1MD2KJKxvj4i0xSLklexFmvZ49OqyjJwN6
	lAZfXd0QzpVjPdKzy8IzzFc6tFGnnDxNOmk8OyHqq8hpdtJpkecn33fI
X-Gm-Gg: ATEYQzyWkLqQ92oBLMlrGci8lY4OO7fTDStRA7OvoN7yPzm5+s/UjOnFq9SbBgLp+jT
	TK53u9wuXpHe2i0abfp7byVpnjYNzksg8dgX0LWbUTh3B3l5jZ2a6C5SRq/H0hJVo66ZvNw0S/f
	gTm1lHYwTm7DBo1Z3CPNSJcRIDV82D8Q0MrTLQeDhBgTRCqS/fE8gwnaYuWXE0Edn3qMIYOG6W1
	dbujlzRqjv57nn9lcnNiF7USWz1vSkMvEZD24V7EW0OHv9APvUnwLi+Zj3ynzYPJX+MsOLSDRDx
	0ZRQ549cjDy5A/lnIkLPm/mBOje59uQqggai76mG07iPWUAkwiP6E4SggbgQou28kLsSn+1/Cjt
	UhBFI4ypIO80sd83M1yycIs9WEOwzCAnwxEmUYfWDTfrCWfKDaEbRRXAeEmR27Itd4KtALJqhV5
	/vgYDf4FzY3uD4oPBl0g7dGlMrO+nddkkJkldp3wnpq8Mp6Q+8qhfKdGMsqBzle9pZ94UusquVi
	9dG/yLEzSuqOcDHWeuM2DYFRxvU3LKXIyS7Okw=
X-Received: by 2002:a05:600c:c10d:b0:485:2af3:3f8d with SMTP id 5b1f17b1804b1-4852af34027mr19015335e9.14.1772827128159;
        Fri, 06 Mar 2026 11:58:48 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:47 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 08/11] arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
Date: Fri,  6 Mar 2026 20:58:27 +0100
Message-ID: <852dfa2a90430b3f43dca70d3fae18c6df953250.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7307622751B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272339-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Enable the microSD slot on the VAR-SOM Symphony carrier board.

Configure USDHC2 with card-detect GPIO, pinctrl states for the supported
bus speeds and the required VMMC supply.

Update the VMMC regulator to match the latest carrier revision by moving
the enable GPIO to GPIO4_IO22 and adding the required off-on delay.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 59 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 86246de8f36f..66c306f755af 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -24,7 +24,8 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		regulator-name = "VSD_3V3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 22 GPIO_ACTIVE_HIGH>;
+		off-on-delay-us = <20000>;
 		enable-active-high;
 	};
 
@@ -227,6 +228,18 @@ &usbotg2 {
 	status = "okay";
 };
 
+/* SD */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &pinctrl_fec1 {
 	fsl,pins = <
 		MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
@@ -287,7 +300,7 @@ MX8MM_IOMUXC_SAI3_TXD_GPIO5_IO1		0x120
 
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
+			MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22	0x41
 		>;
 	};
 
@@ -311,4 +324,46 @@ MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x140
 			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x140
 		>;
 	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10	0xc1
+		>;
+	};
 };
-- 
2.47.3


