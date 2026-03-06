Return-Path: <devicetree+bounces-272333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CDzOREyq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 868CE22750C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E09B30BE2FB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D3D43C046;
	Fri,  6 Mar 2026 19:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j3SJ6uci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D383128C9
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827124; cv=none; b=oT9H6Xg4/WxJXu7y8A81Zt7VI5XYqjIDLsiDm0VnMvjSzSVuosxo7/Jyur1ToRX4g78HTyvp1CJVpUTFFbAtf8gGQ+KJb/vmkx33ERegEPGyDJx7uxmKxoYHIkBTxaQSDDyQ/GfquhoDd/DoNyejNt0355Vf4B1VZnVPOSC5/rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827124; c=relaxed/simple;
	bh=WV327nTvYeKxsAK+km48/lyT8LcPjAemMVz29T66zrE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JIFtEFzeKxH1qFCeAQdq3AdMqwx/27dCVC5WeeYysU8ow/qbx/083UlcgLR7SRmZmroX7Pu+Lk7f2l6Zuk9Q/q5lELzHXe1PL8k5pbXLpjt+rudovSITvRnh6z95tvbTqDFOEf/hIlIr6IC0XpbZ3lAfp52m9Y9bio0Rm1LMgXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j3SJ6uci; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439c9eb5d36so3125004f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827121; x=1773431921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDz0WHVW2N4V2HWmoS34pFp7znP0+3/04WrwmBmNnZg=;
        b=j3SJ6uciZeIsVrBlkLysxNROJ86VoQpu7Z3eTeS2ayPhpwYYTBmusuDA7cWjaVSZwR
         GZ/i4RUV5e1TooIARM1I7FM++VzF1VdssRgDHkRNqlfudqPXIEiKQnerj5zz6yAmHTC5
         0jnBHPlgigVyIqXWiy2rp4ASBSjRJq8csq+hC8/e1EEsb2lMAez37Eh04V8bns1YVT41
         bzfFY9DX4/yYN/dp0M0ViOhRCS40xWLHJZvV3c5iMBE3XSeu24owk3vrOe+m3Rwwvdvg
         DhdOC3NeVSij1EEZTa1X+tiIyeaF77gyu0TRYMrR1xPkr2plr6Tw3VOpC15gNnb82JGm
         XTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827121; x=1773431921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JDz0WHVW2N4V2HWmoS34pFp7znP0+3/04WrwmBmNnZg=;
        b=TAigZYWFO3VgwzTtQloDNW0uOHbqWLHC07pTxgwy2x+c8OQhf/L+DhkY2rxtNPiMI8
         /BuxejX387y1RSdf9VSuqRSHehSTL2k4OWg5fRfJd4dkMUddoz7m+IEMuxjqkdRmgVVw
         Wy8CPLx4Cd1h+puJmytcjNV9YSCf+PQHqVBJAK1iJhpJtvycwiXoMzUTsiByX3FyCaQP
         7zXOucoLsi+g/AGKecWpDAiXiNKULYbdJqUdPk5nueBEhDNckWP2FTe+HXzuU81Bb9PU
         EAWrqoXgpE7HHsZTNr1RPvm973AYHWfHz5zusIYbMZGxjo15/aS8zIJpmp7vocLHHYfi
         w4qQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8cae87Aouuk5XGcyRQTBIKY26UAmz5t6JULboXsjl12xBXvu93HidN4IGDhEi4qfoUm3ZCZ6pFjxq@vger.kernel.org
X-Gm-Message-State: AOJu0YzNAsx072qYsNcUtvSglUm6NmpVZv/RCSk4HyDurlZ3kVM0dqRo
	A3QpE6w7Azy+y7wtIo2bi+UjoLyZ1oCF2KL5jLY75D2bA5WDVWCbmRK+
X-Gm-Gg: ATEYQzwqh81TaJfFvnzsuuPGYw68cWDyyXtkuXqPK7jutpPIPhm+FKLOgYMvayaBCM0
	WG5ddzIEk7Fk7iEqqnAGWG2dUzYFL8iexYbT1jzslaVo2a9ekaIxZQ/sOg9eNdglfzRP9a1Dn3y
	dsYUYivB+KkvZ1Dw+wRdpeTYwRYyFNtxMhAJOfV0YU26r6WnALpm5acCLWc2M84/XM74vqIgseK
	nc3F/ao+BIPxuZbgA11FD+MppgteznFoRjyNAIujAVPXMwIMTqCrc+zYWCHI5qfVu2OFwTNF6TC
	vIkO0xf51FtlNMhcy2DQtIxUfj3gf4HCFNb8AzW0z0QY3gEwIZh+hQ1GKfdqdBsQFJdUbNS8V4p
	XucW8xxGUdywGfT5pCF7kGokvxytE9MqJ4qzOgsmp9IXoXhivQR0UQscVUOmIqc+BOfiRbO1ZAb
	NoNJdxVDtaGQlWxik+SLdnj9QfAmF5pOq2TsfoI/na1F5OQ767R0dweDWKYF2/KIQv9jgzRvii9
	+MLwg8AMh3jYZfGUYKtxOXmM+3cXJPUf4K5afg=
X-Received: by 2002:a05:600c:6085:b0:479:2f95:5179 with SMTP id 5b1f17b1804b1-4852692fec0mr57882155e9.15.1772827120909;
        Fri, 06 Mar 2026 11:58:40 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:40 -0800 (PST)
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
Subject: [PATCH v2 02/11] arm64: dts: freescale: imx8mm-var-som: Align fsl,pins tables
Date: Fri,  6 Mar 2026 20:58:21 +0100
Message-ID: <50ac6fc845dbfeae428c89f35eb3d42b2ced9489.1772826534.git.stefano.r@variscite.com>
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
X-Rspamd-Queue-Id: 868CE22750C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272333-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,variscite.com:mid,variscite.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Reformat the fsl,pins tables in the i.MX8MM VAR-SOM device tree to use
consistent column alignment across all pinctrl groups.

Align the entries to match the formatting already used in the
pinctrl_fec1 group, which contains the longest pin definitions,
for improved readability and consistency.

No functional changes intended.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 170 +++++++++---------
 1 file changed, 85 insertions(+), 85 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index b6560c03639e..da3c7332ec34 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -368,171 +368,171 @@ MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
 
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL		0x400001c3
-			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA		0x400001c3
+			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
 		>;
 	};
 
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL		0x400001c3
-			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA		0x400001c3
+			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
 		>;
 	};
 
 	pinctrl_pmic: pmicirqgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD1_DATA6_GPIO2_IO8	0x141
+			MX8MM_IOMUXC_SD1_DATA6_GPIO2_IO8		0x141
 		>;
 	};
 
 	pinctrl_reg_eth_phy: regethphygrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD1_DATA7_GPIO2_IO9	0x41
+			MX8MM_IOMUXC_SD1_DATA7_GPIO2_IO9		0x41
 		>;
 	};
 
 	pinctrl_restouch: restouchgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x1c0
+			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x1c0
 		>;
 	};
 
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SAI3_TXFS_UART2_DCE_RX	0x140
-			MX8MM_IOMUXC_SAI3_TXC_UART2_DCE_TX	0x140
-			MX8MM_IOMUXC_SAI3_RXC_UART2_DCE_CTS_B	0x140
-			MX8MM_IOMUXC_SAI3_RXD_UART2_DCE_RTS_B	0x140
+			MX8MM_IOMUXC_SAI3_TXFS_UART2_DCE_RX		0x140
+			MX8MM_IOMUXC_SAI3_TXC_UART2_DCE_TX		0x140
+			MX8MM_IOMUXC_SAI3_RXC_UART2_DCE_CTS_B		0x140
+			MX8MM_IOMUXC_SAI3_RXD_UART2_DCE_RTS_B		0x140
 		>;
 	};
 
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x190
-			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d0
-			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d0
-			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d0
-			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d0
-			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d0
+			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK			0x190
+			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD			0x1d0
+			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0		0x1d0
+			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1		0x1d0
+			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2		0x1d0
+			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3		0x1d0
 		>;
 	};
 
 	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x194
-			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d4
-			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d4
-			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d4
-			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d4
-			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d4
+			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK			0x194
+			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD			0x1d4
+			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0		0x1d4
+			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1		0x1d4
+			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2		0x1d4
+			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3		0x1d4
 		>;
 	};
 
 	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x196
-			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d6
-			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d6
-			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d6
-			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d6
-			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d6
+			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK			0x196
+			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD			0x1d6
+			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0		0x1d6
+			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1		0x1d6
+			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2		0x1d6
+			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3		0x1d6
 		>;
 	};
 
 	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10	0xc1
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0xc1
 		>;
 	};
 
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
-			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
-			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
-			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
-			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
-			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x190
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d0
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d0
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d0
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d0
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d0
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
 		>;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
-			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
-			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
-			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
-			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
-			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x194
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d4
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
 		>;
 	};
 
 	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
-			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
-			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
-			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
-			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
-			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x196
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d6
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d6
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d6
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d6
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d6
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
 		>;
 	};
 
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK	0x190
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD	0x1d0
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0	0x1d0
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1	0x1d0
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2	0x1d0
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3	0x1d0
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4	0x1d0
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5	0x1d0
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6	0x1d0
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7	0x1d0
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE	0x190
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
 		>;
 	};
 
 	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK	0x194
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD	0x1d4
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0	0x1d4
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1	0x1d4
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2	0x1d4
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3	0x1d4
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4	0x1d4
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5	0x1d4
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6	0x1d4
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7	0x1d4
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE	0x194
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
 		>;
 	};
 
 	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK	0x196
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD	0x1d6
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0	0x1d6
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1	0x1d6
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2	0x1d6
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3	0x1d6
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4	0x1d6
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5	0x1d6
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6	0x1d6
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7	0x1d6
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE	0x196
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
 		>;
 	};
 
 	pinctrl_wdog: wdoggrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x166
+			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0x166
 		>;
 	};
 };
-- 
2.47.3


