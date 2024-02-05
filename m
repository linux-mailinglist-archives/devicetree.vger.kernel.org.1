Return-Path: <devicetree+bounces-38652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F1C849DEA
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 16:23:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 313FD1F213CC
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 15:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FD62E629;
	Mon,  5 Feb 2024 15:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oltmanns.dev header.i=@oltmanns.dev header.b="Pb7PTvOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9272D046;
	Mon,  5 Feb 2024 15:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707146585; cv=none; b=qFfMtxPg90nwJwuLF5ueDITSSGRDuSjI0h4yIvPTzLk6oItd//Q6igj3YnZnzpHRmYzSAXIunoBgjD9JzYwUqGKFtHu5qP2/Qqe6tnRZEU+pCjk1pWkwjfGtRLdiAk/1FoyTIcaydQczsmkOxS5wJgxRxJb/BkZAAbHQyF6W968=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707146585; c=relaxed/simple;
	bh=sZRQlV2c4BS8M6XigJWtt6aYtH5u38JavT1jr/9e9vM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jhFBf/YDf6M1Dii9mepN6uYyoEAKnmfmbU+uD3yXPVEwA7To6bfMJMvupMzOdgttcaYy0mwwBOrgWuK5KhFxCuX6+Ng2Bek/9aeEvZ3sVJnwM4brCkiHEENswGAcLn4CSd/b81494We7JbyZ1oC6CnASFDWelkwwKB9t8u10iRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oltmanns.dev; spf=pass smtp.mailfrom=oltmanns.dev; dkim=pass (2048-bit key) header.d=oltmanns.dev header.i=@oltmanns.dev header.b=Pb7PTvOt; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oltmanns.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oltmanns.dev
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4TT99t2YpRz9t3t;
	Mon,  5 Feb 2024 16:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oltmanns.dev;
	s=MBO0001; t=1707146578;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PGwJiBi4FWl+Hj92FEhx+IKZwGNvNuswqgy6NGKOs3Y=;
	b=Pb7PTvOtBoF0YCt7t7yc/FR+uBaYL4E0cGVHAiuOx/bbWVQJgYduuxBfdYWjNQpwXqNqTJ
	GZXjovPTa6me6Od0SPDbLLymfKeVVbW8Ptd5NVMX0EKAmVKmx/SFN6E5h+g1VlJspltNJ0
	altR293r31BcKwFcgnqIinPraY4LtxKW1b8cMrVq9CmpLHEPsUElItE+iVgAXDZ0POcU0q
	uvYrbJ2hVPNq/RyW1tHG1Cntu12rdHcPVU6tMDL8d8ev2qgKmjLUTPxMy1GMxhKNa5/Dsn
	Xc12u8FSBsr7PxlhzlRP0cgRP6i4OGRFebZpdNMOJ1iPHHpp6KXQfcOpNERubQ==
From: Frank Oltmanns <frank@oltmanns.dev>
Date: Mon, 05 Feb 2024 16:22:25 +0100
Subject: [PATCH v2 2/6] clk: sunxi-ng: a64: Add constraints on PLL-MIPI's
 n/m ratio and parent rate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240205-pinephone-pll-fixes-v2-2-96a46a2d8c9b@oltmanns.dev>
References: <20240205-pinephone-pll-fixes-v2-0-96a46a2d8c9b@oltmanns.dev>
In-Reply-To: <20240205-pinephone-pll-fixes-v2-0-96a46a2d8c9b@oltmanns.dev>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 =?utf-8?q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, 
 Purism Kernel Team <kernel@puri.sm>, Ondrej Jirman <megi@xff.cz>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Frank Oltmanns <frank@oltmanns.dev>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1203; i=frank@oltmanns.dev;
 h=from:subject:message-id; bh=sZRQlV2c4BS8M6XigJWtt6aYtH5u38JavT1jr/9e9vM=;
 b=owEB7QES/pANAwAIAZppogiUStPHAcsmYgBlwP0/QMs40wrSKAWsSNGJOA7nyoav8bTj6AaMP
 eS7Ec9O7k2JAbMEAAEIAB0WIQQC/SV7f5DmuaVET5aaaaIIlErTxwUCZcD9PwAKCRCaaaIIlErT
 x1qbC/9s2mCUwVcw3RzsoClXh6EIF3rndAidiRIOU3Ntt0A6E40+v4Q+fAvsxkui09AzvmaEtoh
 p6r394Intis9B1C+QQpXcN2jxVEu6i9wXi9ZKkwSwjhGbqXigueaySui7WqHPOWap9EtlXF6UCZ
 zAd7FU8s4d4JUFWLaRLoNAKKDO896cVYd7PnC2QOTTr1Xjm3ki0rK5RuV1LVGMOAY1JwlQ1kl6Q
 +wznvE9A//AvK+UYPGU+qHhHHN+vR6s9xqULHs41kfUpBnOsFeuERrD/n3hG2aoVg4Hd41IEXPg
 alaPtj3RqFjD4sQimgz1HuqbXEIz1U3l0LtTdsuIGuDKB6Nmr/tG+Gj5JCD7aBG33g4oQRXymHu
 hF+jlpCfqFX3qhGk9nBfyr5qLDlO7+GNY0yCEwf4Y4Ik0VM/zrYuXMP3hOBGkbp5F+rrz10AdZ+
 fPMPhm2l5qne684CNYQ7usOOZROuEUsiIbgXSm28wy/eJL76J/ETfOBfv6djpJtaI1f1w=
X-Developer-Key: i=frank@oltmanns.dev; a=openpgp;
 fpr=02FD257B7F90E6B9A5444F969A69A208944AD3C7

The Allwinner A64 manual lists the following constraints for the
PLL-MIPI clock:
 - M/N <= 3
 - (PLL_VIDEO0)/M >= 24MHz

Use these constraints.

Signed-off-by: Frank Oltmanns <frank@oltmanns.dev>
---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
index 8951ffc14ff5..df679dada792 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
@@ -171,11 +171,13 @@ static struct ccu_nkm pll_mipi_clk = {
 	 * user manual, and by experiments the PLL doesn't work without
 	 * these bits toggled.
 	 */
-	.enable		= BIT(31) | BIT(23) | BIT(22),
-	.lock		= BIT(28),
-	.n		= _SUNXI_CCU_MULT(8, 4),
-	.k		= _SUNXI_CCU_MULT_MIN(4, 2, 2),
-	.m		= _SUNXI_CCU_DIV(0, 4),
+	.enable			= BIT(31) | BIT(23) | BIT(22),
+	.lock			= BIT(28),
+	.n			= _SUNXI_CCU_MULT(8, 4),
+	.k			= _SUNXI_CCU_MULT_MIN(4, 2, 2),
+	.m			= _SUNXI_CCU_DIV(0, 4),
+	.max_m_n_ratio		= 3,
+	.min_parent_m_ratio	= 24000000,
 	.common		= {
 		.reg		= 0x040,
 		.hw.init	= CLK_HW_INIT("pll-mipi", "pll-video0",

-- 
2.43.0


