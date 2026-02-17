Return-Path: <devicetree+bounces-266252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHaMGgK3lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C5114F4AF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCDF3301455E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D63037417B;
	Tue, 17 Feb 2026 18:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hiDr9NBn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8004372B3C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353811; cv=none; b=A+mZolUoyncj17xZq/btpD7SwNH42u30FchV16HxV5/IbktES+APr9OxeyKPTXx3AXFFm79YDCkD5h6QFp3Ed1l40qLkm6HJnGXQkKblzN1riD1OxcDt2/vW/3R+4X64X1O/dceaJYTMLSO5ddC/Ev7antCKTT08Q8nddDpyZLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353811; c=relaxed/simple;
	bh=sbHNcN2Bbj4HYsJgLt7fugRb/fLH2nX3kw1v4r1MRCk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rnUfUSC6XbdRstGoI5UfqtWagRzCejxbF+Q1/AZWVQA7si9ZMxCRHB0exJwW48op38sMw3DEoK8hWoojnZWNqX8amiD9USQBiVPkvDkEbAPon0H//+lsVDigNaL4xOt4GYLYlSnijdBS2x2wgUz5WR/KXTNgBGwuK/1d/BjV7j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hiDr9NBn; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4834826e555so45541775e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353808; x=1771958608; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqDW5bvRJG+SjNFVb5h14Dt3aX1bSc+/h5FUJFYpvew=;
        b=hiDr9NBnt+41HzhV5diiDW2FtlL5SuAGD3h87s9TSIdYd2qTwL4dXs6cH/PWeGZg5C
         0jiaEBpYuBs3sqpjpkPBFbeLY20xxhEbvdMFSy9wNLhNTq60wVWpQ91wZ+pXLOKRbopz
         Wqg5gxq2OLCFUvOCmNMWbmfFucM9aTyyUhJAlpiCDPWQC7RpyczbuENiWN4e3VxSYHia
         ufxg2V9ut7MwWD2OKVdZ93I8R7clpotzuZ1PFl6jyragEVkZCKLn8Z/scUbJOl4vvt0q
         GWken1h3JpoH7lVqrjsXVl0vb1jfOjxzRAJO5Gvc/UIknUrOaKend5f1kv1X5ELy5HOp
         wPwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353808; x=1771958608;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BqDW5bvRJG+SjNFVb5h14Dt3aX1bSc+/h5FUJFYpvew=;
        b=coHYYO81ix/SUzIO06ZszZP2hwgDc7p17fhW0C08JC+BAuBbvwT+tToqO3/WPBdJ3e
         q6FFnu5iO+dVpxQgwGhcf370bYWVX04M3nMK25/keg7x9Hx6Iegv5ShfzQ3YAPDnxDoB
         kLnBMWt53WiFJz9dEIt0hkMf+lLApMcGzyds0MRkYKFy1cNXBtfWXEQ9M0e3CNSVnFLw
         4FlV2tyNXa9zOUtgMnp7bP+rzjAka0xZZa+ueYhxw+KXxc6bYmvHRp605ufO3PY2I15B
         NU3pGTHAtmVnhg5nZTdN+nAF6uReMiRoT3HfcNUe4DUs74yT/pf+Cx2HnWzdorTg31dM
         yi8w==
X-Forwarded-Encrypted: i=1; AJvYcCWLAtCyfLEjlap3eecjSF67JByNwquXrzFgftnPm4C/hPdELYSjrePzLX16Af6Ov/4O9dp2N4mbISlq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqtrgwe2k975C40W8ETToFrB2/1piCBvBcvWTUXAvO06ZuRN6G
	30/chZaaodjo+Z+Jnc9znClTJvTvbsXRv2sXOqaUdJLbbsokfVBO1Bj3
X-Gm-Gg: AZuq6aKWgOHIS8yDQkh+qr49kzwRNNzhamYNMwhTe9Ae4dznumGmlzIafBucbi8Uhmy
	NME6v3L4WDRz8pPSFfeGGIN9zbp1Hej5DB5U+QSUFQav3dOKt0UatrRiUZNjY0Amox7yYZYssCq
	xZ/24Y0H5wkT67WPXCq6y6HNVFqxLWCADKhbd7T98u46WSF93HGnx90TuEjFkaRr7xbMDhxQqXv
	3ysh8bkdS3g3bINf6uvr9IiuW/lqds2kCGDC7JHKo3iEzTy/RbFpaiGJrRiYtJ/396utqi2BF5g
	f+BcDSEaWpD8vhzslWDYrf5AdbAcKNrivP+PNp3mIl0wgl598i7AkWWVI/r21F618MNu0h2LyZL
	sRA8O/aVtFJIZ0RaduRcdeHeKPers/9nS9Wb9bhBcZEooZalS0WEGuElKq8bNazE7kKDANl+oj0
	dDK3XbP6GC/lbGvpG8P+ehqtgKIOiBpWI9UmtrEWvOns2QK5sySddOOXrRE3ljHE6dkTLsuJuTO
	iLFzupjcWFomlEPXn4/pqVhsC5DSfYUi5Bgs6xP
X-Received: by 2002:a05:600c:6814:b0:483:612d:7a5c with SMTP id 5b1f17b1804b1-48379bf5d3cmr209802405e9.25.1771353807738;
        Tue, 17 Feb 2026 10:43:27 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:27 -0800 (PST)
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
Subject: [PATCH v1 02/11] arm64: dts: freescale: imx8mm-var-som: Align fsl,pins tables
Date: Tue, 17 Feb 2026 19:42:36 +0100
Message-ID: <320b2e50752e1a7b76327547695b8c4b01fafd27.1771353301.git.stefano.r@variscite.com>
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
	TAGGED_FROM(0.00)[bounces-266252-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 02C5114F4AF
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


