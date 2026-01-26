Return-Path: <devicetree+bounces-259472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJwVA85Wd2nMeAEAu9opvQ
	(envelope-from <devicetree+bounces-259472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:58:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A97DA87E94
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:58:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56C2F301326B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D55633373D;
	Mon, 26 Jan 2026 11:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="gYCSFBey"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73EE33372B;
	Mon, 26 Jan 2026 11:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769428448; cv=none; b=Q5Fvq/zdtjL7WnuqBKggnVsNELT323BdVl+K4XZsgbJfxvfqTM/hlEjTtxeUn6N6cNCD0f6wchelUzXh6L0D66ZHdC1PiFtuUrAaDoOUNdNL995GLSUPU3qF/u5B/c3s+CbykZZRpF8TK0kc/Dy/V3LiSp/UsEyjpyUQPUp5Mbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769428448; c=relaxed/simple;
	bh=3LeOfdhz2qS68sxy8AG8wn3ZCZij7tSSfux2RUi0WNc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nzF/yMbDf2kHLUIiMNEJPh/6vGPIsAjlFS5lsJrptyOtjvLvzF7arnO1mcpSKF9Ta2Var5E9FSW+aOk/iE1ZUkKt/aqVnJPgdtRZDoWnBfe5qDOaBCMpEGR2Oaw1kMRPW6ZQzx4AXZyFdqak22wGxNi6iU1Alv4jThyevKDfQ5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=gYCSFBey; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B61A910944B;
	Mon, 26 Jan 2026 12:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1769428444; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=fzOWakw0ilbmP5m8MK9KCUTv8ewD8g8OYShpYckpwEU=;
	b=gYCSFBeyw+MOiw+PaWgpouqbTEtvrYYVD9jUkk9UjUTcGfbJWmRqN1nBV1enpMVc7YpJsD
	syrup/rfvVj09p3FwRCDHcQmot22lUJym8YrBO9z4vEVzFTDD3OWB2r2+VdsxckQCCTXMY
	rvpdKpZKI2572mYhoRPOqmfRYkXZ+9KSexaZOHsDF9P5EhNkY5H8yyo+G67fikyz9wmH88
	QJv/VF2j98LLD8JLq3CRh3uEkcJJL2eaXk3v3vzdpynKswUh7PtzUmv2mx0vI0mZTeC7Qw
	b0Y8IsBWdDREPXCttG1u5uZ9e6YbQyUGKCkW4HuRW7jzwVMcyabqXKlRbDmkvg==
From: Lukasz Majewski <lukma@nabladev.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Lukasz Majewski <lukma@denx.de>,
	Lukasz Majewski <lukma@nabladev.com>
Subject: [PATCH v2] clk: vf610: Add support for the Ethernet switch clocks
Date: Mon, 26 Jan 2026 12:53:49 +0100
Message-Id: <20260126115349.1750578-1-lukma@nabladev.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259472-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,denx.de,nabladev.com];
	DKIM_TRACE(0.00)[nabladev.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukma@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email,nabladev.com:dkim,nabladev.com:mid]
X-Rspamd-Queue-Id: A97DA87E94
X-Rspamd-Action: no action

From: Lukasz Majewski <lukma@denx.de>

The vf610 device has built in the MoreThanIP L2 switch. For proper
operation it is required to enable ESW and MAC table lookup clocks.

The MAC table spans from 0x400E_C000 for 0x4000 and it is necessary
to provide clocks for each AIPS1-"slot", which size is 0x1000
(hence four separate entries).

Those can be enabled via clock gating CCM_CCGR10 register (0x4006_B068).

This patch also adds VF610_CLK_ESW and VF610_CLK_ESW_MAC_TAB{0123}
macros definitions for L2 switch.

The VF610_CLK_END has been removed as its number had to be increased
when MTIP L2 switch clocks were added.

Signed-off-by: Lukasz Majewski <lukma@nabladev.com>
---
Changes for v2:
- Squash clock DT bindings to this single patch
- Replace VF610_CLK_END with VF610_CLK_ESW_MAC_TAB3 + 1
---
 drivers/clk/imx/clk-vf610.c             | 7 ++++++-
 include/dt-bindings/clock/vf610-clock.h | 6 +++++-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 9e11f1c7c397..e074442c12fd 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -110,7 +110,7 @@ static const struct clk_div_table pll4_audio_div_table[] = {
 	{ }
 };
 
-static struct clk *clk[VF610_CLK_END];
+static struct clk *clk[VF610_CLK_ESW_MAC_TAB3 + 1];
 static struct clk_onecell_data clk_data;
 
 static u32 cscmr1;
@@ -309,6 +309,11 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	clk[VF610_CLK_ENET_TS] = imx_clk_gate("enet_ts", "enet_ts_sel", CCM_CSCDR1, 23);
 	clk[VF610_CLK_ENET0] = imx_clk_gate2("enet0", "ipg_bus", CCM_CCGR9, CCM_CCGRx_CGn(0));
 	clk[VF610_CLK_ENET1] = imx_clk_gate2("enet1", "ipg_bus", CCM_CCGR9, CCM_CCGRx_CGn(1));
+	clk[VF610_CLK_ESW] = imx_clk_gate2("esw", "ipg_bus", CCM_CCGR10, CCM_CCGRx_CGn(8));
+	clk[VF610_CLK_ESW_MAC_TAB0] = imx_clk_gate2("esw_tab0", "ipg_bus", CCM_CCGR10, CCM_CCGRx_CGn(12));
+	clk[VF610_CLK_ESW_MAC_TAB1] = imx_clk_gate2("esw_tab1", "ipg_bus", CCM_CCGR10, CCM_CCGRx_CGn(13));
+	clk[VF610_CLK_ESW_MAC_TAB2] = imx_clk_gate2("esw_tab2", "ipg_bus", CCM_CCGR10, CCM_CCGRx_CGn(14));
+	clk[VF610_CLK_ESW_MAC_TAB3] = imx_clk_gate2("esw_tab3", "ipg_bus", CCM_CCGR10, CCM_CCGRx_CGn(15));
 
 	clk[VF610_CLK_PIT] = imx_clk_gate2("pit", "ipg_bus", CCM_CCGR1, CCM_CCGRx_CGn(7));
 
diff --git a/include/dt-bindings/clock/vf610-clock.h b/include/dt-bindings/clock/vf610-clock.h
index 373644e46747..5d94bd561a2e 100644
--- a/include/dt-bindings/clock/vf610-clock.h
+++ b/include/dt-bindings/clock/vf610-clock.h
@@ -197,6 +197,10 @@
 #define VF610_CLK_TCON1			188
 #define VF610_CLK_CAAM			189
 #define VF610_CLK_CRC			190
-#define VF610_CLK_END			191
+#define VF610_CLK_ESW			191
+#define VF610_CLK_ESW_MAC_TAB0		192
+#define VF610_CLK_ESW_MAC_TAB1		193
+#define VF610_CLK_ESW_MAC_TAB2		194
+#define VF610_CLK_ESW_MAC_TAB3		195
 
 #endif /* __DT_BINDINGS_CLOCK_VF610_H */
-- 
2.39.5


