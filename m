Return-Path: <devicetree+bounces-269831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHqcJfdOpWnS8QUAu9opvQ
	(envelope-from <devicetree+bounces-269831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:48:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7691D4E05
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:48:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 613E1302A077
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 08:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8500238A2A4;
	Mon,  2 Mar 2026 08:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="CyD84n7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay10-hz2.antispameurope.com (mx-relay10-hz2.antispameurope.com [83.246.65.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39FD30F94D
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 08:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772441220; cv=pass; b=tRfWyOzb8qJTAiZ9nYZM3oBwENFlEwJb/Ptvynk95J3INHbqNlUAWuQTUaNP6oWfHFdxC0mqOFWWnIiRwPWzvTgWin0g3t1SFzX8ZfAz7i3S0etytuJ5wQPNdrciM9zqH5a9xQ5BlJ/DgcuOG7B8+aax+cGnH4yKMntQxpexq6M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772441220; c=relaxed/simple;
	bh=EmGrPF8y5VAi4F7tIRJSQyYpuHB8WLaG9sr0XTHtNVU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=kYMuKVBtpoeJNp8h6te9Ba0IRVi+DZbZ/uvNuZ+kioPFQoRTwH7kK7cXx8tBvTDkQpaWVscLVG5wXgfQ1fs8NliqKuywWtR3d4nXBBGQdpZ2rmjRzhIukVnkdiUEnX2k6F+/NVbPiPKSU/lOjEa/WU8hsfHAA4vDPbo6uPJHMzI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=CyD84n7G; arc=pass smtp.client-ip=83.246.65.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate10-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=S8KixDfsRAE0QkCkrj6ecFMAb3wezNZ0IVq81F5Gw8I=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772441181;
 b=Hm73/dyaNR8iy2jwmnU0GTELXkVzPOvNC97/3703OTm6AOXdpRKoTNxOFHQhuNHUdDKTG92t
 MrpeYDiTd+obaWQpO7126Mbg9N6V8oDl/jTYfqmmjfoRLREVeIvhIpaYKFoZib6VPtcylLk61jp
 V6ROZ9DauroIHkX4MTjBkNDEF6Wt3rPJttjMVJL66YkqHDMRFBshVVvDhmcax6Le7x5HFPIsH3C
 +khIFTQVOXc9may7iZphcqguic6zTWuzDHHeuQCwhzLnHb+CRfB8SsXZnAAugGBjRst35VcIacL
 4TOGJ6J7JNjzg066xvIXQV+49oMs4rbEhGOiLQt9pncZA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772441181;
 b=QuQwa10QW2JSjHIKpwEo9qc4sx6Ui2vRy2YoVyH+hkimBLINJc+SeV+JUhnW236xcqUtCfil
 X0QMz+0uXa6yc6eCPaK/rukCglirwrIKgczXoZO/K8K62Eq0DEk0lrE+0+GF3MIZlw6gXtMd/+0
 KrO8jr2pVEokOQNHv5fNTvFygHY1TSQMfGAs4TqPJr4fVtKi230dvyfM1A5tmUY2PsU10lfEFIK
 WnkVaf/vbDEsVpjxvBDen4ds+1ctmCN9WmHLM13VdxrvrujcCA6zM6nax81bGNNQ3/6FigV6/n8
 0gLlTzaCznw8pysx1htSw0eL5ASAQQ5pg+h3DAfpxoXyw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay10-hz2.antispameurope.com;
 Mon, 02 Mar 2026 09:46:20 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: nora.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4311E220F0C;
	Mon,  2 Mar 2026 09:46:09 +0100 (CET)
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v2] arm64: dts: freescale: imx8mp-tqma8mpql-mba8mp-ras314: fix UART1 RTS/CTS muxing
Date: Mon,  2 Mar 2026 09:45:48 +0100
Message-ID: <20260302084548.6471-1-nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:nora.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: nora.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay10-hz2.antispameurope.com with 4fPXb60bzBz4FL03
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:9d7a5410827e20c72befa8843b80a097
X-cloud-security:scantime:3.725
DKIM-Signature: a=rsa-sha256;
 bh=S8KixDfsRAE0QkCkrj6ecFMAb3wezNZ0IVq81F5Gw8I=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772441179; v=1;
 b=CyD84n7Gv3MRLPKDPkLAvDAUl3lNkn2qlUSkGy3nBDmLL+8SDy5nK9xkgZKupKCHwgmw07qU
 9IBn5DS1RK+RCIK0MocHrrQXSDNyWxzgxL0jPoexzIuzY2cC72PNKXCFR0g6usihLN3cijaoEHM
 DNNnsudvfXsWvVqTIfycRQG/3WD4T2jJVpzpv017VI6oVvahv1KnqGfQVKx6eIvxwxEYoywJWTi
 5+dKcTvi7SKYciphYsLIk6ZM5HPPigCRkGhqeBu+egHH15FSsrq4xlz5uxLuPmvINCEnxghf3fZ
 EMY9zqWaoZA63w7XTWjXPaKNAEE0vQW21QOl64zql5hCw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,lists.infradead.org,lists.linux.dev,ew.tq-group.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269831-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3F7691D4E05
X-Rspamd-Action: no action

UART1 operates in DCE mode, but the RTS/CTS pins were incorrectly
configured using the DTE pinmux setting.

Correct the pinmux to match DCE mode. Switching the RTS and CTS signals
is fine for this board, as UART1 is routed to a pin header. Existing
functionality is unaffected, as RTS/CTS could never have worked with
the incorrect pinmux.

Fixes: ddabb3ce3f90 ("arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RAS314")
Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
---

v2: updated commit message based on suggestion by Frank Li


 .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index b7f69c92b7748..1665a5030b993 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -848,8 +848,8 @@ pinctrl_tlv320aic3x04: tlv320aic3x04grp {
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <MX8MP_IOMUXC_SAI2_RXFS__UART1_DCE_TX	0x14>,
 			   <MX8MP_IOMUXC_SAI2_RXC__UART1_DCE_RX		0x14>,
-			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DTE_CTS	0x14>,
-			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DTE_RTS	0x14>;
+			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DCE_RTS	0x14>,
+			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DCE_CTS	0x14>;
 	};
 
 	pinctrl_uart1_gpio: uart1gpiogrp {
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


