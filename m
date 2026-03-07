Return-Path: <devicetree+bounces-272484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMMbMR5LrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:58:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6464222C9AE
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9DB030810BE
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4883A63F2;
	Sat,  7 Mar 2026 15:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jmc82a+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AD7359A9E
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898928; cv=none; b=igoshNhyPNRe6/xUBBq+yLvj37TJ7NDlm6FWE0CmSPtQ5e3Z+UtET8eIYKyHtcZHvILbiOuNb4Lq8/NkMiAEHYvqPPKd+uG0Gr5uTu7NumuQ34f2BIhe/6uG5IsXNLXxr/q0/+oD8RxDV26+H++IN5yRfn7wJJ1wQ4U/7bNtIOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898928; c=relaxed/simple;
	bh=WwcnzTDrYZrReBeFBRi/rGMg2hr6XWFysYmo4wdipsk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Jb/RZDfx1ZCUkfTqOK12am3S0c++/R5w+i6g537rsRgiU9elWYTs4Yke4xDhL2OAaAms52+XY/p77gRyVqNZXt0aIcCP2t8Z0FUCOYBFMrSGgiVjWUYTzWHDeABeNPTr/M+cwRhk31Oyx/i4HVcQTMK+5v8bmVdMHlgKbQBVnxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jmc82a+H; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439a89b6fd0so6873363f8f.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898920; x=1773503720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tAEe+cuuDHuRMfbZjHa6/1YpDdum6v0UhYvwnCVfMAE=;
        b=Jmc82a+HjvcVLhEX8PhEevHjTezMxaBm8abjXyeh6uJZwutWuw2EYdmhtPyu96V+R7
         OnbPdHP60IrJoJiADT1CiBn3+D7wDBaLCK3iXIi7NDv7LnXW6WrfrJU9fdx5SAuYiN5o
         rtrxeGkl6hDGglZ2vGn2uePehYnM683JBxY3Cg4L2hg3JYojWNnwx/d9X3/OeF3s4CPB
         2i62F21TDQeW/ZtUlnDusAANRlHCBD0EQfbK11YTSnxSNePcPyjSG3HpxDnkBt7NKiRz
         QLgVadM4UHRT9o+KlL0Lsef8/2i3Ol6DHQwyJ/YIZiuR+x9NmK3qjQe51euhjggu5/ld
         zDBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898920; x=1773503720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tAEe+cuuDHuRMfbZjHa6/1YpDdum6v0UhYvwnCVfMAE=;
        b=wCVbWxbLr//1SkChDmRvefCooH4HgCXGvjDr8WIllsNwWOXdKrS670OXjeDOPRiv1J
         yMBs8fL9OYg+daH1/JVd886q/NBg+dBqAhJA8psLtjiA/VAcUClHdk6jCfH8C1ZEBcY8
         Pj6zF+iVX+BDrpQnN21WpnKGWno4HaWkwU/kKbqHimO+BlWSmyh60GpNsV/905YTDGGo
         kDxK+yyDOlaeb+5F0KczfuW76aTkrdPFbEjwzwrvJVafPIUNQGgfdWtUw/tcSUuopSnr
         BMiAdHFK4qTc13FvP0wpdD6M8Y8MBTHrBh/wknf07+41ihtjS88QudtVk4HNz1V35hwG
         abkA==
X-Gm-Message-State: AOJu0YxZDOGzKJETUNe4vFHloXFGoEDyIK/UVV1irup4gGRFjK/lktBO
	yyO0fjYx4EAOKYLCcg7OIjLkI4oMMiqT6jDzyW0t+OR4+h07465gGzfAZvTxkQ==
X-Gm-Gg: ATEYQzzN/24S+8HAkrOwVKKTF4Ew6SaLo+Sd6pnwgdNxZn00KtyV4Q22SfeJqH8lAJm
	ICR1fz+VgbIynAp2TOJQXbmeQ2AdRbaEiLu3MfDAWV0CxtqOyBiQyFrkwVr3sZnRkhkZ1CsZYzd
	2hLIMvhwRvGknyo5CHVD001W6qNccJi01WKaYYVGGKQ66RQaCNEBv4MxZ/TPB06SKrjrc7HzDbO
	8go+8Jw9dHr1AB6A0MscAuFoCLkUkzPvJdjm/5dtRpsj9C+q91NYe28lXj2An0X2EAzSbPI0aeX
	5KeWCXmF0d28OIvaZj3TlPH+2tog0rOzQlzqD+7cujGYFXNWqf4ThmHqe6rdJ6WlVC/UAGXnpQe
	8+l1Hxhof/CKm0QBDavTU9jlH0fKF4bhyMvO0+2UWOmRoGI/Fx2tbib0bMbZ6nhB37IdLQEQZ73
	3250MDhmQ2kgfXRBjIZc4gSHOULAzz4D7IofIU5TznrlWUBN5GBZpWgOVbwEL8SJUuSvUge6u71
	g1kNC9XsLgW554riELMHbEJOg==
X-Received: by 2002:a05:600c:8b01:b0:477:9814:6882 with SMTP id 5b1f17b1804b1-485269198bdmr97014915e9.5.1772898920009;
        Sat, 07 Mar 2026 07:55:20 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:19 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
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
Subject: [PATCH v3 08/11] arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
Date: Sat,  7 Mar 2026 16:54:44 +0100
Message-ID: <852dfa2a90430b3f43dca70d3fae18c6df953250.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6464222C9AE
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
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272484-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

Enable the microSD slot on the VAR-SOM Symphony carrier board.

Configure USDHC2 with card-detect GPIO, pinctrl states for the supported
bus speeds and the required VMMC supply.

Update the VMMC regulator to match the latest carrier revision by moving
the enable GPIO to GPIO4_IO22 and adding the required off-on delay.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

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


