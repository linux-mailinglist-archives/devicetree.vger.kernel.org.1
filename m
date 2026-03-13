Return-Path: <devicetree+bounces-274939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JIQG4C5s2nbaAAAu9opvQ
	(envelope-from <devicetree+bounces-274939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:15:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DD727EAB7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 321CF314BD8F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFAF03659E0;
	Fri, 13 Mar 2026 07:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Vwa8XHAs"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7913659F7;
	Fri, 13 Mar 2026 07:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773385832; cv=none; b=CX2A+sNh7cDrdXGfy1RhhhttpRZeg58wtyKi+JSTopV53ZufsT2jSh80Yqx//XOJBai6XOGOQ67ZIDaBVylNh9cGizXacFUq1OhoBNWL8MQqmcNWrw9XrhrkB3uYiPI7bqNIv81TdH2DupEAfFLulTLdl4Esm8J6HuFzHw4gAhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773385832; c=relaxed/simple;
	bh=I00Z6pG53yvcKKC2L1tIq9a3kCy7YokfUZAQWxxhrEY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l6B3eKpMeWnvTW3g5Q/dErJtKDscSdUhZHxmDbZmY/kbGn6b8ZdDy7Igq4OIiHj3Zu/I40xxW0Io0LoyDhRj7lhsAqirXltD37AS3uNXc8mrLZFxMOPxne5cvjK6XrNyy6kQgO7Tsw6W60mYbQHpJaacyu1RLlLMM1T4498EvgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Vwa8XHAs; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=RUvP+PLVODb+ieOKtek0pZZYyg9UhY5kr3fWr/Wlssk=; b=Vwa8XHAsYt2p3Nlf4ZAfxZSjec
	sXXWaxButbpQ1XPmpw6glWoWj0lRdHtSlPpDACL/LMdCHveB9hd9PeEHA+l7DoUCiNr/idXpJaQvt
	YHVm43KZAHQHzPXeeDKDE5PajYQQqvj1nO3IojrZjKlEIgPoiSoSEpVYsUahrS+VY4+Y2LuTdWNd5
	j5+C+dlNyvQK7AGif6stLCPAou8Xh4PEmnRQh31rWOGeH6AphXK7Z/1Quute7TXzlee3dcsi+owH+
	IsKRmwr+og2x+1LOqezMJ93XU5/c7GIMYAVu3S+Iw8sNc0j5mtgGpE4RIkRS48ZIUBCfwPfOTQuS5
	oPaCs7Tg==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0wfF-000D0x-3D;
	Fri, 13 Mar 2026 08:10:30 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0wfF-000Eou-1Y;
	Fri, 13 Mar 2026 08:10:29 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] arm64: dts: imx8mm: Explicitly set DSI_PHY_REF clock as a child of CLK_24M
Date: Fri, 13 Mar 2026 08:10:23 +0100
Message-ID: <20260313071027.587992-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27938/Thu Mar 12 07:24:01 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274939-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid,32e10000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3DD727EAB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since commits a0deedcc0cf0 ("arm64: dts: imx8mm: Slow default video_pll1
clock rate") and 5fe6ec93f10b0 ("clk: imx8mm: Let IMX8MM_CLK_LCDIF_PIXEL
set parent rate") VIDEO_PLL1 is dynamically programmed by CLK_LCDIF_PIXEL.
On imx8mm-tqma8mqml-mba8mx-lvds-tm070jvhg33.dtso this results in a
VIDEO_PLL1 frequency of 68.2 MHz and DSI_PHY_REF of 17.05MHz (1/4).
Instead use the 24 MHz clock as parent for DSI PHY reference clock.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* None

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index f2e1854f38a0a..eb23ca27e8597 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1149,8 +1149,10 @@ mipi_dsi: dsi@32e10000 {
 				clocks = <&clk IMX8MM_CLK_DSI_CORE>,
 					 <&clk IMX8MM_CLK_DSI_PHY_REF>;
 				clock-names = "bus_clk", "sclk_mipi";
-				assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>;
+				assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+						  <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
+							 <&clk IMX8MM_CLK_24M>;
 				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
 				power-domains = <&disp_blk_ctrl IMX8MM_DISPBLK_PD_MIPI_DSI>;
 				status = "disabled";
-- 
2.43.0


