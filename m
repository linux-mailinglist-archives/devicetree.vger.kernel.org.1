Return-Path: <devicetree+bounces-274941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKW8KYK4s2nbaAAAu9opvQ
	(envelope-from <devicetree+bounces-274941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:10:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B49727E8DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2BA5C3029C2E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2968366DA5;
	Fri, 13 Mar 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="NYOlbBWY"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698443659F1;
	Fri, 13 Mar 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773385834; cv=none; b=BIHDTJ1IOqP1ihB6Rz3OpyDcWAIQUH24QjEYHzMYaBykDkUMDmByD4zxwXtit1/8Bxka2aDIboo9rcVH4lW+alHCbfl60LLmkysJiYQINKBGSMjX5ETw80wICMqlxMdILpvYoaKdOK0YmKxBDT4bvUhfLh526drVbuWxDjBIWpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773385834; c=relaxed/simple;
	bh=SRd47l4+Y6Ms8cBYqEgtyvie9tgfa7VWiEtFKcLHORc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rLeprKZGhveyZ/KAsTlRVMXyezPaUrPgBVv0lLNZmZyO8Ty6c7hCC/l+3Ub3XVZjdwqUIcs7xvJRskieDkexmQ1u2BjleBDV4oNS9b0ZWjkwXdnmmHUOuprzh1oXSzg21CRhA0Xgxq4qC2VqW0zSiem3NvbPQDLAIppTYoFJ1ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=NYOlbBWY; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=7M94y6ilQsc8nLgZ5GB5cv6AO62Bh3J+z1BgOUeMqnI=; b=NYOlbBWYGx3P2OykMDnYF9KrhF
	Hjg298j+nAt8JKwoGfm86xCqFwCgR9NGHLVZzovikXB46phEN7SQ965Uy/4O6m1D/W48KU5XfhZdq
	plSfYUjAzkHqoxoTiuMkuUi0w28X39RcjyrlEhQaesgLL3VCkFDwvWTLOZTesbtCr/dAN6Js6J/3U
	fFpFSZnKd0B1cjOJVRYv/VKBAqyO2jBivmDniSZSURViaBoYANtezIo2l4B3lKLqUNCVNbBuNkLas
	KKQWjzsyvWmX7cBbFDfCbkRJUhf3chtyv+rSDqsOiIomxb+UC6e3c+YiKwwLz5EOdNligZpPoHbms
	ssioTG8g==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0wfH-000D1H-2y;
	Fri, 13 Mar 2026 08:10:31 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0wfH-000Eou-1L;
	Fri, 13 Mar 2026 08:10:31 +0100
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
Subject: [PATCH v2 3/3] arm64: dts: imx8mn-tqma8mqnl-mba8mx: LVDS overlay: LVDS overlay: Reduce DSI burst clock to 600Mhz
Date: Fri, 13 Mar 2026 08:10:25 +0100
Message-ID: <20260313071027.587992-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313071027.587992-1-alexander.stein@ew.tq-group.com>
References: <20260313071027.587992-1-alexander.stein@ew.tq-group.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274941-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.27:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:dkim,ew.tq-group.com:mid,tq-group.com:email]
X-Rspamd-Queue-Id: 2B49727E8DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DSI burst clock frequency is too high resulting in flickering. Reduce
the frequency.
While at it, remove the burst clock from board configuration as it is
display specific.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Improve commit message and fix typo

 .../dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso  | 1 +
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts        | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
index 0f4cf1855bf3a..046399a455ba1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx-lvds-tm070jvhg33.dtso
@@ -32,6 +32,7 @@ &lcdif {
 };
 
 &mipi_dsi {
+	samsung,burst-clock-frequency = <600000000>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
index 664f4a6950a82..01d565cdbfea0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
@@ -65,7 +65,6 @@ expander2: gpio@27 {
 };
 
 &mipi_dsi {
-	samsung,burst-clock-frequency = <891000000>;
 	samsung,esc-clock-frequency = <20000000>;
 };
 
-- 
2.43.0


