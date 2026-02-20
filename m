Return-Path: <devicetree+bounces-266900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INh8JoE5mGmFDQMAu9opvQ
	(envelope-from <devicetree+bounces-266900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:37:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB853166E20
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13E06307AA7E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C2033EB02;
	Fri, 20 Feb 2026 10:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="rv53oPSt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail2.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5727B33DEF9;
	Fri, 20 Feb 2026 10:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771583813; cv=none; b=Woay29RInz4GfFYh3wzSzuYalwEjNZcYQJabL+RhV9MAZXLuT7VrW20OMIOrpuEL5n5No/+z4CnNCpFov2nqQ3s0KUbsrspuZLroSYNnlxdAOqxp4vnKl1Dau4i82CEcDn9SX/RSRT6IBJB4wQ4JsTN6i+fJ8M1l6cCKvz187oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771583813; c=relaxed/simple;
	bh=e2pzlk6qVPYwZHocTIzfk8PbIyHJb3+KeyuuAZOUzlo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BhD6dLprP6lC5qYF19kTszvitY5Ry330lSJxoYW7UwUvpWoUjsBef2pw6TXwML0cD7xNkW2haDQypWFIzBhOKTa9gKBFIDmZUcaO1NKaTkfGU+waGX1Oxx95U8QAvOYx1c/x/1JiZwOruDq+JAy/LTPWwiGv6+asHDon4MgpL4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=rv53oPSt; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1771583803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9nxwdodsmrJqTCjHXzmc8/KE3pVW+pHuR2vrlazu10o=;
	b=rv53oPStcRBBnD19zX4ntmMyBkvFbDD/j16JjHt09rFTQ2GoDktQAhkTYC6HsDFNiirVyj
	2TRkJ42Ohs4UG82UwaZokthgNDpqJdDBmvkx5xLDTPT6JxQn0Bgu3AfanvyW/EtnPwOqM+
	/ify3VhcGxkyUbKUA8vDLKPa0RDiLxEgu666h2XNSA0NWwSc+AZZ7M+Vi7DGXAM7QVoujL
	NE/kt9o/gtA0a+lQchbwfsaO32AdXMjlzTMc5mTmAV8lXGOS6weAwr2QRH+pn4HnmQU5G6
	DkEtnQKGEKUM8wj5pIrrH45l1Jt79KI7jDpSa/dBicRETMzAYJ2Mx7cwERfh5A==
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 1/4] arm64: dts: imx8mp-kontron: Fix touch reset configuration on DL devices
Date: Fri, 20 Feb 2026 11:36:16 +0100
Message-ID: <20260220103636.9697-2-frieder@fris.de>
In-Reply-To: <20260220103636.9697-1-frieder@fris.de>
References: <20260220103636.9697-1-frieder@fris.de>
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
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266900-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fris.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,5d:email,kontron.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fris.de:mid,fris.de:dkim]
X-Rspamd-Queue-Id: EB853166E20
X-Rspamd-Action: no action

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The reset signal needs a pullup, but there is no hardware pullup.
As a workaround, enable the internal pullup to fix the touchscreen.

As this deviates from the default generic GPIO settings in the OSM
devicetree, add a new node for the touch pinctrl and redefine the
generic gpio1 pinctrl.

Fixes: 946ab10e3f40f ("arm64: dts: Add support for Kontron OSM-S i.MX8MP SoM and BL carrier board")
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 .../boot/dts/freescale/imx8mp-kontron-dl.dtso | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso b/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
index a3cba41d2b531..7131e9a499ae1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-dl.dtso
@@ -77,6 +77,8 @@ &i2c1 {
 	touchscreen@5d {
 		compatible = "goodix,gt928";
 		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touch>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <6 8>;
 		irq-gpios = <&gpio1 6 0>;
@@ -98,6 +100,16 @@ &lvds_bridge {
 	status = "okay";
 };
 
+/* redefine to remove touch controller GPIOs */
+&pinctrl_gpio1 {
+	fsl,pins = <
+		MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00		0x19 /* GPIO_A_0 */
+		MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01		0x19 /* GPIO_A_1 */
+		MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05		0x19 /* GPIO_A_2 */
+		MX8MP_IOMUXC_GPIO1_IO08__GPIO1_IO08		0x19 /* GPIO_A_5 */
+	>;
+};
+
 &pwm1 {
 	status = "okay";
 };
@@ -108,4 +120,11 @@ pinctrl_panel_stby: panelstbygrp {
 			MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x19
 		>;
 	};
+
+	pinctrl_touch: touchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x19
+			MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07		0x150
+		>;
+	};
 };
-- 
2.52.0


