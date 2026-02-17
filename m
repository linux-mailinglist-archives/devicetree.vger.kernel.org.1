Return-Path: <devicetree+bounces-266260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AApbNra3lGlmHQIAu9opvQ
	(envelope-from <devicetree+bounces-266260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:47:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4C014F528
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:47:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A88130A350E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C9237417B;
	Tue, 17 Feb 2026 18:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kdfr56Yu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CF0374743
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353825; cv=none; b=sGY3WVWKD/KHef1jcf+q+fBaPLve/LlTdOY+IsMqGPPG4tYDkDi7M7F68YtSfcuYmyr4AFqwtXEOFz0jX7hfX+rX2gkz+Umt/hpZ7yKqW5OzvLg+KJ9cEsUt2uM0EV0x3Db3nBjijNwl2f84Y7WPjTpenXwh73rbNyDSS1CzB/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353825; c=relaxed/simple;
	bh=jr4LTkn52z5QWAEcJ21KwMaQSIYkNkR2Mn04H+8sPrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hDnkCtakTD/dU5Uy6ZuVBdYUyAcU4TQsyAW4MeYGTA6iiIHm37BOWIUnoDfvm0qnS+MCdiQEg25ERv5M8gOk/U6s6nmrIe5PXBMFPIpp7EVLekFE0I9Jqxq38hIGJg+kV/XDKzbNG4o/PH5YxPXGIYx0fmYZKKojPBtiw7YTcEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kdfr56Yu; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48372efa020so33405595e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353815; x=1771958615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vYsU7UyOcFO6rtK6/iQ1Qf2xKJGmW7ahDM2xNeH4+nA=;
        b=kdfr56Yuqp3pnuJTRUjBVT4supJpySuZKJFCSKPCTzsQ/kQBnYSmLo7IP+DgzvvZ9C
         riapotMtrvfPfqgtKj2nTXBVpnT4covFG2Pk7TH9lhH+DSszmUwZyvCfjrILxpjyruLP
         b/pEbeyUopil43C8KZwQGNz+FQVIrgYyrQxlZmxz0oZWbXLr5DV7bRB0DDeCyLAlx0Lo
         tlsIsMYRAH7Qvf2GCE19m/JLhtN2+mGB+TRoWCZxPPsF6+yOPLhGcEQ0XZmDi8nE1Hov
         ERoNDUPd6Dgi/wD7c3nFFVdeUJolU8FiFZudlg4ernu1zDB7pY8ju6Ao5oESwA49mtx1
         mDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353815; x=1771958615;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vYsU7UyOcFO6rtK6/iQ1Qf2xKJGmW7ahDM2xNeH4+nA=;
        b=HQOXt1dAf53PCq8gW2kZTHRBQmy2OTsonbkQZlv1duBFv6XSsjAhFtpvnMA77dYCgU
         uNg1Y9l/zz837/oYM9nMYQzskNXpPO0jGT4bZZc1pAZlkPJqsWkVlcLPHNtk3fpXVRpD
         xacbISLLoKOomDuL0C/RChwCgtAGmePs63Fmwnc8DwzeOwrszWr4aRH90ETK9qqjTUj9
         1IMwA2GWtJIAfXEmgdr/ilpABxqrXfh1am+Hv6bEQlp3UVE1pF0L5Is3V2mM/S1dN2dq
         D2w41xpUmN5YdtLvzyzBpqyRsAHFp5bp01mKxJrKCbi4KC9QSgWmD72tDoIxIREVjOQ2
         d2aA==
X-Forwarded-Encrypted: i=1; AJvYcCXfjrOfViUskxXAIxVUUHwlrJsgTvsmANkjup6TQ+o0GqNtyIJ2izjfIa2pmbkNcEugvuTJBSLM4aoC@vger.kernel.org
X-Gm-Message-State: AOJu0YwwHm5z/KsguL+oOA67JE15P4wBGahXwgEzXTZa7DlcI7qr9dVM
	qx+tFKF/jhciD9kAUwwDPiJgqEfS9Mi/1LhWW7rNDOSJNa8bGECTdDco
X-Gm-Gg: AZuq6aIO/1dYrQNlpmRhvrl2l37XC0q/RPgvtHwMlC+OKi1k4QRGLK8xjT82YXkT00I
	HLYlZwHuhRAIqYE9fCXaH0V1nXKIe/ZOYbNPtXkB92RkTpFT0DRk54cRckMES8HdN5Wa2CbQvd3
	TvOUKblBwf/0MpGJyFsJ6oYqJ3YdJU3XLUpAR1S1lo9QXb9KtyMIiUWYiLgy5ogLAL0vOqC4RDM
	6xwwNNoD6kmcaAdvK/QN7cPjxYnFeTEBKFmTxMv5S1QRqyjWowOaLbjyIZrU1InuYbma59H6mYw
	+bXhoUpgisMxjVimalwRC34eV3YyOhvc5TQxfn1ru/zRSxhcOLvQ0SgAE6j2HedpAjbv3s0X3EM
	6Ly9jx87ibTU/hetQt2TbG0x/8D+Z4J1tPWPpfv7+0Ffsdld4nBor6A+UBbqFOt8AjXANBabzG3
	itDG+yz5uiLrKR0UUnPj6WRMhr00gyaxE1l2b59xc2cs8neJZKzKjBcyjczn5PgbLG1FTgs4b/k
	Y0Hk3VofGL7yJ7Np2T0rp14AgFPTvP2OUg0tfXm
X-Received: by 2002:a05:600c:1c07:b0:477:561f:6fc8 with SMTP id 5b1f17b1804b1-48379bac86bmr242020185e9.5.1771353815118;
        Tue, 17 Feb 2026 10:43:35 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:34 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 08/11] arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
Date: Tue, 17 Feb 2026 19:42:42 +0100
Message-ID: <4b23da4592f50a49009fa59e45fbdc12d277eef9.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266260-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email]
X-Rspamd-Queue-Id: 3B4C014F528
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Enable the microSD slot on the VAR-SOM Symphony carrier board.

Configure USDHC2 with card-detect GPIO, pinctrl states for the supported
bus speeds and the required VMMC supply.

Update the VMMC regulator to match the latest carrier revision by moving
the enable GPIO to GPIO4_IO22 and adding the required off-on delay.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mm-var-som-symphony.dts | 59 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 3242a0b739f6..40ffa1f36b2f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -22,7 +22,8 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		regulator-name = "VSD_3V3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 22 GPIO_ACTIVE_HIGH>;
+		off-on-delay-us = <20000>;
 		enable-active-high;
 	};
 
@@ -204,6 +205,18 @@ &usbotg2 {
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
@@ -264,7 +277,7 @@ MX8MM_IOMUXC_SAI3_TXD_GPIO5_IO1		0x120
 
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
+			MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22	0x41
 		>;
 	};
 
@@ -288,4 +301,46 @@ MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x140
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


