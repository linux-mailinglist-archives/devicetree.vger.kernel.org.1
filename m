Return-Path: <devicetree+bounces-266997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KOiAep2mGlrJAMAu9opvQ
	(envelope-from <devicetree+bounces-266997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:59:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759B168943
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C3957300D1E0
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D76534D93C;
	Fri, 20 Feb 2026 14:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TvGJ+1Zl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA043358D2
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599591; cv=pass; b=Az8uz0scBeAkEY5KNP7fNX+xEj7WHLBrfnrAeuXyWBcxizKUPOuLYG5TxrOy78RxVMCj+3THljJOuoFg7puza1cTFO3Ulw5TBAzZpR32kncFAGX5x2ct1gUZxYRajJRCjLnWwi1JuQj38NijTuSSFdUf+TmiOWU7wPKCjXqVjCs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599591; c=relaxed/simple;
	bh=96Wz/bkNndSvc3WlFxoHebFEUYaCxPJDd4qW6WhIAT8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TQ4ywyRFvcUpnVjZd5Aj9z3L3lLTTcDJPDJWi3cL6xP+0NijUPgpxbziAR88Nb+yE67GZLPOVPxTrH6Xp7WkYoLXLdKqmaV2kLjdtbSijg+a+Qcuw6v4veE/9F7O+4Cy0yc6x9i96kTv6rZF+oLN1f+aoV4OjGZT9X4E9uAJhGc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TvGJ+1Zl; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=/lSimGn8R/KlKdPR732stuvnpUl5cin/7RFYylcQ41o=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771599570;
 b=EPD7/AsfCNio4JNXthDOjEXMhE8+IlHqD/r3pgsuuQ0qirvHjmfJILFJ0c2/jY8tnmKobVpP
 RIkz14/JcVhDFMDVbIslV2jMDBC/QbwTAmNMmpUIzyTw0LQrYq3CLH7brlLzete0ie2dYAAGDiL
 NNxd1u6oD7JWXNeSotvM4Hq90bijgxfIv+V5xW2klLgWz5+WqxXHEihNaCCpZPM7a7qZOv4slAM
 qL6Xm5lVxNBdt/cle7XNztUQ4Fy51I7xAPgkiPTHjdRzQly2xlYuUfaaIlODCIPnYP1gamsNrqF
 TLPPcOZ0zZ21CDitskikO9I48bt9a58lipmB2w/+CYDeg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771599570;
 b=M6R55gZQdjDwk51W8TT+j/vYx5WPwGqa1E3H1OovnVxSEkOjWp4ZUrFKdUDIxA61v8emxBoz
 VTjHjyA74+app2gUncdLE44VioKJF5VXKvpeQHd+tiA7kdWN+v80jo12jUt3j7qz8qU/n8qR3Bz
 hGNCxij9FT82xaipAM7fIOosXOsCQK47ecTE2mIRlnCXH8ccIdsicjWSfa9wLDrG2mMSS7SHzDt
 weCVaE16+NCS18sJQtQdmBOgDlUonnVz9boTtYyFxq77K2HXyEQKtcYFxKd4KQQs86ALJogF5DI
 198wG9ZLVG8IlYVYvinchYNQOf3aCAAkaxNiSBKbtLT1Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Fri, 20 Feb 2026 15:59:30 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 08E0B220B97;
	Fri, 20 Feb 2026 15:59:22 +0100 (CET)
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alexander Feilke <alexander.feilke@ew.tq-group.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
Subject: [PATCH v2 2/3] ARM: dts: tqma7: add boot phase properties
Date: Fri, 20 Feb 2026 15:59:08 +0100
Message-ID: <20260220145917.1797286-3-Alexander.Feilke@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220145917.1797286-1-Alexander.Feilke@ew.tq-group.com>
References: <20260220145917.1797286-1-Alexander.Feilke@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.feilke@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.feilke@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fHYLL4ymKz3yZPl
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:49a31fb894d709dca0bc3171073ce3ec
X-cloud-security:scantime:2.031
DKIM-Signature: a=rsa-sha256;
 bh=/lSimGn8R/KlKdPR732stuvnpUl5cin/7RFYylcQ41o=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771599569; v=1;
 b=TvGJ+1Zly51njHbQMCWN9jN0bfPssgeN0P7qiA+SxBX+n8PEhQuHPAKeMhzUG84WKVcdqfAD
 pGDolMNH3ucS8ODJEWS8ASi7Ylw0UjF0SRFNAVJTj/4s7kZ5Y2Ahqtb1TjzlAfLCdgXD7TXaqze
 yucpvVC4bVtU15WSVQlbeAzW2LzUH+sE5GVdUl34ZD/c2IBVom7AkYWOw3s6RcwKFP+ipJMnZR5
 /jPNjVpIQQCECAzcIycG0VELm+A5kOSreqJbSo/4Mv69OeHCLI/H5O+Qz9dTPoIwql1d48TNV1V
 siQ9oVrGyUVnOj7ocT9jdr+4aQMEpPQPMU4PJifa1ohSQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266997-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.0:email,tq-group.com:email]
X-Rspamd-Queue-Id: 9759B168943
X-Rspamd-Action: no action

From: Alexander Feilke <alexander.feilke@ew.tq-group.com>

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

Adds boot phase properties to essential resources in
tqma7 device trees. This includes UART, SD-Card, eMMC and QSPI.

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi  | 4 ++++
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 5 +++++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 4d948a9757f9..03f2f2cbdfbc 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -477,6 +477,7 @@ pinctrl_uart5: uart5grp {
 	};
 
 	pinctrl_uart6: uart6grp {
+		bootph-pre-ram;
 		fsl,pins =
 			<MX7D_PAD_EPDC_DATA08__UART6_DCE_RX	0x7d>,
 			<MX7D_PAD_EPDC_DATA09__UART6_DCE_TX	0x75>,
@@ -511,6 +512,7 @@ pinctrl_usdhc1: usdhc1grp {
 			<MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5e>,
 			<MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5e>,
 			<MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5e>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_usdhc1_100mhz: usdhc1_100mhzgrp {
@@ -602,6 +604,7 @@ &uart6 {
 	pinctrl-0 = <&pinctrl_uart6>;
 	assigned-clocks = <&clks IMX7D_UART6_ROOT_SRC>;
 	assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
+	bootph-pre-ram;
 	status = "okay";
 };
 
@@ -646,6 +649,7 @@ &usdhc1 {
 	no-1-8-v;
 	no-sdio;
 	no-mmc;
+	bootph-pre-ram;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index 2966a33bc528..f3d7a2d0cb7b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -193,6 +193,7 @@ pinctrl_qspi: qspigrp {
 			<MX7D_PAD_EPDC_DATA05__QSPI_A_SCLK	0x11>,
 			<MX7D_PAD_EPDC_DATA06__QSPI_A_SS0_B	0x54>,
 			<MX7D_PAD_EPDC_DATA07__QSPI_A_SS1_B	0x54>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_qspi_reset: qspi_resetgrp {
@@ -214,6 +215,7 @@ pinctrl_usdhc3: usdhc3grp {
 			<MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59>,
 			<MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59>,
 			<MX7D_PAD_SD3_STROBE__SD3_STROBE	0x19>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_usdhc3_100mhz: usdhc3_100mhzgrp {
@@ -257,6 +259,7 @@ pinctrl_wdog1: wdog1grp {
 &qspi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_qspi &pinctrl_qspi_reset>;
+	bootph-pre-ram;
 	status = "okay";
 
 	flash0: flash@0 {
@@ -266,6 +269,7 @@ flash0: flash@0 {
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		vcc-supply = <&vgen4_reg>;
+		bootph-pre-ram;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -288,6 +292,7 @@ &usdhc3 {
 	no-sdio;
 	vmmc-supply = <&vgen4_reg>;
 	vqmmc-supply = <&sw2_reg>;
+	bootph-pre-ram;
 	status = "okay";
 };
 
-- 
2.43.0


