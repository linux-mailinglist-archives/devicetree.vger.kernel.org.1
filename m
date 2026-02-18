Return-Path: <devicetree+bounces-266446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CAbOH7FlWmTUgIAu9opvQ
	(envelope-from <devicetree+bounces-266446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:58:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52594156EB2
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 932F9300F5EA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05464329E69;
	Wed, 18 Feb 2026 13:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="SILDrjQp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay97-hz2.antispameurope.com (mx-relay97-hz2.antispameurope.com [94.100.136.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9BC32939C
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.197
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771422964; cv=pass; b=C/OOhloUHStWKxNXnrLCdVtUqQ3RgBhQxGlbRBQLeo5ptH1JnbIWxw6DKRzqETjI+qoTOQvJvqs5WnZuQ14CkpGLxFrCz4aSL+qtF2fGN2fpwo4d+DeJm9BZXZxpMwR/JBmhG1W4gNxhcL40WoLbhF7FfhAmlRR2Kn6OCY8KaJw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771422964; c=relaxed/simple;
	bh=U81t+y2wIrVWwluXE/5ubQBk+/JYkkVQKwvYIUsAC8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q7eZYPN+6QZufWEajgD7D3n19CgXEpy6EZ9fcEvQqd4f8Rsmg4ymltFFBolLO2oFdbxQqZ5tZdfVrOneO+BqNYu3V9q7ETqiVARjv9KsoHU/bapMzBmT8f0lq/oYJGfKTFA/L7uGFFPrW8YJmoNZC7ITc52VTtbhX/Hi2ywxKUU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=SILDrjQp; arc=pass smtp.client-ip=94.100.136.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate97-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=TvFkedKwU7Tki1WJjhUdJTuzQZqOqROBb2WWlOoeJHc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771422876;
 b=BTtTp9BSHffwXemC59BnlkauEF/algJAJtS+kuvar/a1g5tAHzX7HW9JCnmPJLmpRMCiC6ln
 Woml6Yn9gmabgRWCVgR97viNo2f2ymu6G9rf/aZxT346d9FGRVeFFWBdRwVnjMkW+UWMflMoeki
 TPKDohErtJTvX2jVzMlk+707mEFA8gedqp3hVwhpolySGrMghf++OyGgqr/xkAyOd6zFDt6YhzM
 TXzS9rWw2lTqDeXaajhnxeteXlj0WLeJ0uDIymhB+at06WUsNhs/NNLr8ZC/dhDXkIJru0tnSWt
 5GyHzTsHx+Y5O+dR4RVHvEi8+rtL/tL0SN9T7sTBAlKdA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771422876;
 b=bSq4vLF2uLdvFmkZCW15WBCG81ZMW1ELP6c8hfvaBptwm0/6bO4Ez0qUnWmsZr8mRyAEX2Dd
 JWAA4dkTBllqA7HcELECGW7QWf/qiZe9RdQlxR+cjRF5zLeWb3bNzMEujWOldb+YXSy//kZvVsN
 Z3F6X049vFtDSoIu9bNkT1C5mPIzqHA937g7Z35fGf8vMAAFhAUrUv124ne6pXCKTRir2V4zvZJ
 18d1NQMbRsszFcG9wVnGVccb8UyCgdD0p+zMJsL3HM4pcPZjCfWaOrQ62ZoymJZXrZe2Pq9PCAu
 zTWsWra7W8dvIuMF6AYKTI8Apn/wXnqPFVdeERRRB3rYA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay97-hz2.antispameurope.com;
 Wed, 18 Feb 2026 14:54:36 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 8B61D220714;
	Wed, 18 Feb 2026 14:54:27 +0100 (CET)
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: linux@ew.tq-group.com,
	Alexander Feilke <Alexander.Feilke@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: tqma7: add boot phase properties
Date: Wed, 18 Feb 2026 14:54:13 +0100
Message-ID: <20260218135415.204974-3-Alexander.Feilke@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com>
References: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay97-hz2.antispameurope.com with 4fGJ0N5DXnz1yKnb
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:3ffff1d6d88180f557de01e140f7d817
X-cloud-security:scantime:2.271
DKIM-Signature: a=rsa-sha256;
 bh=TvFkedKwU7Tki1WJjhUdJTuzQZqOqROBb2WWlOoeJHc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771422876; v=1;
 b=SILDrjQp+Zb/3ODC6U9It9L3w2O5eBibbTlm5fd1Cm2ArrqASrM09lTMGzQnEX4Td90zDE3t
 4MQdXoOvD/Bdtpdm4b2JNTmDGKBN1IL9qEx+YL5kfVjJJuA7cRpb8URsr2QYLnAAh+2Mafj5Te6
 hkmJc54Nt9b2mz2PyATk+fuUSpm1XEnbeAAiU/WKJbIuEnATaHw4DeZYD/YFBsxt3RRipOJE+fh
 FxOVuZtd59R/xvr13g9XPIQmpEkiaB+FHTPzxkawu8KZV1AtUbMU+iyNfbeWaBUH2pFjo8lHfHO
 JT5n3+uXcqvndCd2W4+P3iunyBzF4+aCkt4V8NjrhWEgg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266446-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 52594156EB2
X-Rspamd-Action: no action

Adds boot phase properties to essential resources in
tqma7 device trees.

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi  | 4 ++++
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 2 ++
 2 files changed, 6 insertions(+)

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
index 2966a33bc528..3a01b1cfb5fa 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -214,6 +214,7 @@ pinctrl_usdhc3: usdhc3grp {
 			<MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59>,
 			<MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59>,
 			<MX7D_PAD_SD3_STROBE__SD3_STROBE	0x19>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_usdhc3_100mhz: usdhc3_100mhzgrp {
@@ -288,6 +289,7 @@ &usdhc3 {
 	no-sdio;
 	vmmc-supply = <&vgen4_reg>;
 	vqmmc-supply = <&sw2_reg>;
+	bootph-pre-ram;
 	status = "okay";
 };
 
-- 
2.43.0


