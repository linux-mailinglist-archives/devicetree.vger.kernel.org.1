Return-Path: <devicetree+bounces-266440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHY/M3C/lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:32:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34450156B17
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C342E301E960
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9C0329C4D;
	Wed, 18 Feb 2026 13:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="A9BtxREd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail2.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD64D30CDB0;
	Wed, 18 Feb 2026 13:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421469; cv=none; b=BO+gGYiUwtouQLjojmh+hBHO2iMsYFp5ns/i9sDJavHnhkNnSJs3dW93lFhgoW2YfV6syQoDt6zi9eUWD/ukYsi5l2SGGiog+xYVkfu7JiUHwOTB9BvBfD3bPljR3G2zoKWPdGYCPwuLk0jAu871xNNCz8H0GK3B1P/bj/1MUvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421469; c=relaxed/simple;
	bh=wLp8Vx2xDX3zudNkp8Sd58yem/MLCzlw3B6cs7yvBuQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hHwgprMeEnH2jkG46MX0JixyA7AMaPzICCgUTIghqKUacTfkMgzwfOrvErgRXMnpW+dI3TyPQlua6LOMVOS4Nfd4p5rYvpEaVRjbwcQwTyMYW7ZExQcVyQzNrOR7avgQafC05hBElvNWxU9tlVlwwBuJtSmL936HgBx2OJpCaw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=A9BtxREd; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1771421125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OkuqcMPgMhOvktAdO4R0HEr+0KhxRtMn3MM65yMphGE=;
	b=A9BtxREd6FMLfp7RNjEc2V3SW2Q/lX2PmWk1ZcrmL5SS9WRR/JrmkZ1Ni+as3fUyufn6lZ
	YLpJ3UgJhTvRACai4t//8PGHf3iJ0+QnQ7eqI9aCpSD2s/Vwcies8SfjZ5hyv6tVWKO+jw
	XdD777G9VAm+BSZOMaIIAebvMHQDieprpwFyreAdJcYdTbuXrcNnGK8D8S6Z6+TkZ+ulbG
	W2hxdUa1Za+LRFIt3XjOrE9Gh/WT1gXsc2vUsy35KpGO+N0/62uhUhRqLTlz6siFHfRfrt
	fcyN22mecKB7AhPv3wsE8Mj9T81K28+BHKYzUv/Kcm5XLOvXn4bYYMuSlV5+Ag==
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
Subject: [PATCH 2/4] arm64: dts: imx8mp-kontron: Fix SD card supply on SMARC eval carrier
Date: Wed, 18 Feb 2026 14:25:06 +0100
Message-ID: <20260218132519.74570-3-frieder@fris.de>
In-Reply-To: <20260218132519.74570-1-frieder@fris.de>
References: <20260218132519.74570-1-frieder@fris.de>
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
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266440-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,pengutronix.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kontron.de:email,fris.de:mid,fris.de:dkim]
X-Rspamd-Queue-Id: 34450156B17
X-Rspamd-Action: no action

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The SMARC eval carrier has a power switch for the SD card compliant
to the OSM standard definition. To use this as already specified in
the OSM base devicetree, stop overriding it in the board tree.

This fixes the power-supply for the SC card.

Fixes: 6fe1ced5ccab7 ("arm64: dts: Add support for Kontron i.MX8MP SMARC module and eval carrier")
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 .../boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts b/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
index 2173a36ff6917..74d620dd06b7b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
@@ -249,6 +249,5 @@ &usb3_phy1 {
 };
 
 &usdhc2 {
-	vmmc-supply = <&reg_vdd_3v3>;
 	status = "okay";
 };
-- 
2.52.0


