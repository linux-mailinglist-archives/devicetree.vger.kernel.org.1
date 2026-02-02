Return-Path: <devicetree+bounces-261724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B4wImV7gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:24:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BC5CAD61
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:24:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2C0A302658A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A964357A34;
	Mon,  2 Feb 2026 10:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="t5h3FX3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA3D357738
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027603; cv=none; b=gh3MFFM8Fv942RZs7MOV5noDP2X3BqPabSIxxoCHg2LI5DtKzoKEk7iksuaG8B0x3AaLuOmNicJGtt3TJJui+SwfgzTZ/bRjtSDepz3LVKdBWWq29Hduk31o1HUngSA7qfgeiRXEvzNWuqP1oF88vy3cnn2GDKhQP6o8NLKTQXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027603; c=relaxed/simple;
	bh=C6tL7FYsC2S48kjUFSWWfir6UcX4lpdzTixbElYtGXk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=LYNkV+9SxasNaBpM8Mkuq1YI/Hra8A/Qm2eXb8WUJIlkSqEZb3Z7/TJ0hyZysuxsLmPxLKh9xM0f+pejV8g1Ui9o7W7tCB5GzkwzAC6kUbMrKiKkjS7KCtvmP8LbkuJCmFO3nGMLsa4bvK0QKzI8IMZFnIpkPgIEVOQsEzrZEJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=t5h3FX3d; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20260202102000epoutp01bba18d19b4c730dfb84dd1f948ab444e~QZrl30g-c2745927459epoutp01o
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:20:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20260202102000epoutp01bba18d19b4c730dfb84dd1f948ab444e~QZrl30g-c2745927459epoutp01o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770027600;
	bh=s4HVsaW21NBJ1yxRDmOXRttOAA45F2suCXv9URGuPoM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=t5h3FX3dLP0CJ6wcylMQvS6crv8MW3nQxW8nJ0RWLCiQXXpyWfdw8lHTK2vVmKrUY
	 qdtT0H66wAehId1m6n4uL/6KrwIdZnksGoUL9L9rU38SMqoQSdP06cMxDCtdSOmdsT
	 PSW3m6pRpNGai+rlrZxhCZEdLRpU3gRJB0ZcFXf8=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20260202101959epcas5p3dbca50509ffff5c290d8ac24269216cc~QZrlTKHqP0463704637epcas5p3J;
	Mon,  2 Feb 2026 10:19:59 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.95]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4f4N0G5Sbfz6B9m6; Mon,  2 Feb
	2026 10:19:58 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260202101957epcas5p224b18e84c561e542c39096b2bd7f29a7~QZrjdPMz70827008270epcas5p2B;
	Mon,  2 Feb 2026 10:19:57 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260202101955epsmtip19544b13693357c191df1fa79e02a89a4~QZrg-_XPW1761017610epsmtip1Y;
	Mon,  2 Feb 2026 10:19:54 +0000 (GMT)
From: Raghav Sharma <raghav.s@samsung.com>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com,
	shin.son@samsung.com
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, chandan.vn@samsung.com,
	dev.tailor@samsung.com, karthik.sun@samsung.com, Raghav Sharma
	<raghav.s@samsung.com>
Subject: [PATCH 2/3] clk: samsung: exynosautov920: add block G3D clock
 support
Date: Mon,  2 Feb 2026 16:05:54 +0530
Message-Id: <20260202103555.2089376-3-raghav.s@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202103555.2089376-1-raghav.s@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260202101957epcas5p224b18e84c561e542c39096b2bd7f29a7
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260202101957epcas5p224b18e84c561e542c39096b2bd7f29a7
References: <20260202103555.2089376-1-raghav.s@samsung.com>
	<CGME20260202101957epcas5p224b18e84c561e542c39096b2bd7f29a7@epcas5p2.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-261724-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email,samsung.com:dkim,samsung.com:mid];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raghav.s@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E3BC5CAD61
X-Rspamd-Action: no action

Add support for CMU_G3D which provides clocks to G3D block, and
register the required compatible and cmu_info for the same.

Signed-off-by: Raghav Sharma <raghav.s@samsung.com>
---
 drivers/clk/samsung/clk-exynosautov920.c | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/clk/samsung/clk-exynosautov920.c b/drivers/clk/samsung/clk-exynosautov920.c
index d0617c7fff3a..c38b103721f0 100644
--- a/drivers/clk/samsung/clk-exynosautov920.c
+++ b/drivers/clk/samsung/clk-exynosautov920.c
@@ -30,6 +30,7 @@
 #define CLKS_NR_M2M                     (CLK_DOUT_M2M_NOCP + 1)
 #define CLKS_NR_MFC                     (CLK_DOUT_MFC_NOCP + 1)
 #define CLKS_NR_MFD                     (CLK_DOUT_MFD_NOCP + 1)
+#define CLKS_NR_G3D			(CLK_MOUT_G3D_NOCP_USER + 1)
 
 /* ---- CMU_TOP ------------------------------------------------------------ */
 
@@ -1942,6 +1943,54 @@ static const struct samsung_cmu_info mfd_cmu_info __initconst = {
 	.clk_name               = "noc",
 };
 
+/* ---- CMU_G3D --------------------------------------------------------- */
+
+/* Register Offset definitions for CMU_G3D (0x1a000000) */
+#define PLL_LOCKTIME_PLL_G3D                    0x0
+#define PLL_CON3_PLL_G3D                        0x10c
+#define CLK_CON_MUX_MUX_CLK_G3D_NOC             0x1000
+#define PLL_CON0_MUX_CLKCMU_G3D_NOCP_USER       0x600
+#define PLL_CON0_MUX_CLKCMU_G3D_SWITCH_USER     0x610
+
+static const unsigned long g3d_clk_regs[] __initconst = {
+	PLL_LOCKTIME_PLL_G3D,
+	PLL_CON3_PLL_G3D,
+	CLK_CON_MUX_MUX_CLK_G3D_NOC,
+	PLL_CON0_MUX_CLKCMU_G3D_NOCP_USER,
+	PLL_CON0_MUX_CLKCMU_G3D_SWITCH_USER,
+};
+
+static const struct samsung_pll_clock g3d_pll_clks[] __initconst = {
+	/* CMU_G3D_PLL */
+	PLL(pll_531x, FOUT_PLL_G3D, "fout_pll_g3d", "oscclk",
+	PLL_LOCKTIME_PLL_G3D, PLL_CON3_PLL_G3D, NULL),
+};
+
+/* List of parent clocks for Muxes in CMU_G3D */
+PNAME(mout_clk_g3d_noc_p) = { "oscclk", "fout_pll_g3d", "mout_clkcmu_g3d_switch_user"};
+PNAME(mout_clkcmu_g3d_switch_user_p) = { "oscclk", "dout_clkcmu_g3d_switch" };
+PNAME(mout_clkcmu_g3d_nocp_user_p) = { "oscclk", "dout_clkcmu_g3d_nocp" };
+
+static const struct samsung_mux_clock g3d_mux_clks[] __initconst = {
+	MUX(CLK_MOUT_G3D_NOC, "mout_clk_g3d_noc",
+	    mout_clk_g3d_noc_p, CLK_CON_MUX_MUX_CLK_G3D_NOC, 0, 2),
+	MUX(CLK_MOUT_G3D_SWITCH_USER, "mout_clkcmu_g3d_switch_user",
+	    mout_clkcmu_g3d_switch_user_p, PLL_CON0_MUX_CLKCMU_G3D_SWITCH_USER, 4, 1),
+	MUX(CLK_MOUT_G3D_NOCP_USER, "mout_clkcmu_g3d_nocp_user",
+	    mout_clkcmu_g3d_nocp_user_p, PLL_CON0_MUX_CLKCMU_G3D_NOCP_USER, 4, 1),
+};
+
+static const struct samsung_cmu_info g3d_cmu_info __initconst = {
+	.pll_clks               = g3d_pll_clks,
+	.nr_pll_clks            = ARRAY_SIZE(g3d_pll_clks),
+	.mux_clks               = g3d_mux_clks,
+	.nr_mux_clks            = ARRAY_SIZE(g3d_mux_clks),
+	.nr_clk_ids             = CLKS_NR_G3D,
+	.clk_regs               = g3d_clk_regs,
+	.nr_clk_regs            = ARRAY_SIZE(g3d_clk_regs),
+	.clk_name               = "noc",
+};
+
 static int __init exynosautov920_cmu_probe(struct platform_device *pdev)
 {
 	const struct samsung_cmu_info *info;
@@ -1981,6 +2030,9 @@ static const struct of_device_id exynosautov920_cmu_of_match[] = {
 	}, {
 		.compatible = "samsung,exynosautov920-cmu-mfd",
 		.data = &mfd_cmu_info,
+	}, {
+		.compatible = "samsung,exynosautov920-cmu-g3d",
+		.data = &g3d_cmu_info,
 	},
 	{ }
 };
-- 
2.34.1


