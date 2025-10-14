Return-Path: <devicetree+bounces-226665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FD3BDA643
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 029283B1F5E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63689302CC7;
	Tue, 14 Oct 2025 15:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QvDrx9aW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84648302755
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760455558; cv=none; b=lPGedc1L+mX4Qz1eEQGdKzJVa0wL7TiGxnVd/s7qECml0stYVICXcWhc7WmW2unLZmDSNKjbsKZE1rLr+qsMVI0ne6Qmw0gWy0DGenbTEwABICnFHwA+AjLZsJbnH8imrruEFp9cjCaOi+RJkCo25hL1R77/uZhujdrIUIsfkhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760455558; c=relaxed/simple;
	bh=6C3Wt0uF2of/JuozjsoPyyV6fS+gbf9acU5v6U8/B4w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rwmlnyEZQTVKX1yRFFBX1RQldmyyoeXTWL+12VxxAOgEmBrRBtwJmyKsYrEfLIYK9w22NsPe25NYUmvhGOVjQmObJdyfJIKEUlMP4y2XpqNbwlHPDjiyUpRDZmaxwd4CInxX5cEfN8C+Mf7w3EblhQcU1Fo3wc1iYZs/m+w8kpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=QvDrx9aW; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 006CDC09F96;
	Tue, 14 Oct 2025 15:25:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0B0A0606EC;
	Tue, 14 Oct 2025 15:25:55 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 047F7102F22B3;
	Tue, 14 Oct 2025 17:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1760455553; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=t9uhUZLUO1xtva49wKLTR6cCYNQXY1i7HwxH90xJvFk=;
	b=QvDrx9aW6kzLXvN4McWQJYxc7ZwJkwv1lSm2xb4U9JAW22dVDUOz40twAEVjesg0m43fDp
	Wla1uJNKbcpQxp11pC+e2i6FXzuEQVW5NKKT/PJwt92+Fw23qKrU9r5PFqyWeHqrieodqJ
	egcjHMhZ0SBT/kBeXG3ifVOmzomrGcFZsmfWFmst85CRUmzioE+9gLgWUaelBlTyOWJRDH
	HpofZynmBDjv1p9os5oBYDdhdnthflNA3qrjaaDFx78EHxdoY0XD0BNxsQ4AZYn+tJwkzz
	AQ80W4Qnd9c/h8XUsHl/EyHTr6fdzmd/4DplhVUWcklRT3SkZxU9FIDg4alHYw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 14 Oct 2025 17:25:08 +0200
Subject: [PATCH net-next 07/15] net: macb: simplify macb_adj_dma_desc_idx()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251014-macb-cleanup-v1-7-31cd266e22cd@bootlin.com>
References: <20251014-macb-cleanup-v1-0-31cd266e22cd@bootlin.com>
In-Reply-To: <20251014-macb-cleanup-v1-0-31cd266e22cd@bootlin.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3

The function body uses a switch statement on bp->hw_dma_cap and handles
its four possible values: 0, is_64b, is_ptp, is_64b && is_ptp.

Instead, refactor by noticing that the return value is:
   desc_size * MULT
with MULT = 3 if is_64b && is_ptp,
            2 if is_64b || is_ptp,
            1 otherwise.

MULT can be expressed as:
   1 + is_64b + is_ptp

Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 7f74e280a3351ee7f961ff5ecd9550470b2e68eb..44a411662786ca4f309d6f9389b0d36819fc40ad 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -136,19 +136,13 @@ static unsigned int macb_dma_desc_get_size(struct macb *bp)
 static unsigned int macb_adj_dma_desc_idx(struct macb *bp, unsigned int desc_idx)
 {
 #ifdef MACB_EXT_DESC
-	switch (bp->hw_dma_cap) {
-	case HW_DMA_CAP_64B:
-	case HW_DMA_CAP_PTP:
-		desc_idx <<= 1;
-		break;
-	case HW_DMA_CAP_64B_PTP:
-		desc_idx *= 3;
-		break;
-	default:
-		break;
-	}
-#endif
+	bool is_ptp = bp->hw_dma_cap & HW_DMA_CAP_PTP;
+	bool is_64b = bp->hw_dma_cap & HW_DMA_CAP_64B;
+
+	return desc_idx * (1 + is_64b + is_ptp);
+#else
 	return desc_idx;
+#endif
 }
 
 #ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT

-- 
2.51.0


