Return-Path: <devicetree+bounces-240668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AF3C73EF7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CA2894E2735
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A443432D0F5;
	Thu, 20 Nov 2025 12:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="CjX8K0Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8626A1DE4CD;
	Thu, 20 Nov 2025 12:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641104; cv=none; b=eCHtbvGWN38W7+1qNPfmJdjMbrYqmvXtAMHYO1IGW7z0t5LcjmHATmgioL/q7Zt83g1GrvnGhwIFdGhcpQHF0vfwyenEJ7NZA7fOlJJzEQz+TmBNd9uZcZLyTMm0nZJiz0VBzMnxriqYkbunbC/WdSJEVv2IU3IkXhytVLCn94g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641104; c=relaxed/simple;
	bh=5USmu8aFaf1Yk5LNqVzpSRcXZ4HV87WY1hSaqD8iItY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mWL+qpXRSb+JStRemmd+cpzwlHmKqvUCkUBxgft0Is6PTlPTATPI9ZtY03xHoiFrWucpNCxBtb5v/ZwB0ImBbjRXuDSB+Txz94W3PrUoqtaa9Fb5AqmJI/RHvsuElgMXrUCgVxdt9r2vcMM8opkeOw31+Mjd+AruPV8Ulv9DE30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=CjX8K0Cg; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: fe08e79ec60a11f08ac0a938fc7cd336-20251120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=fGdPK3RrezBbVwSc0ssaDkQ74p9HJyqRG5LTP1bNyGk=;
	b=CjX8K0CgUZ4h7u5MXSTx20NFTcQSxmnNhMyHmxEO+bUxOBskMpsCmA5X24qlk3L5CVHJdpmeY9ZqPkjeMrafmcJUEOcv+xG1HBlT7BEP76W8NOypF48zUPWZy2DAN3GeZC149b2YBlsL5bCdOYxtMdp/c8pLO7WS8aKRn2PhFvA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:6ee2c1f9-d174-43ab-bb0b-c947dcf00051,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:695d1d58-17e4-43d2-bf73-55337eed999a,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|123|836|888|898,TC:-5,Cont
	ent:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:
	0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: fe08e79ec60a11f08ac0a938fc7cd336-20251120
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <ot_shunxi.zhang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 778364173; Thu, 20 Nov 2025 20:18:16 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 20 Nov 2025 20:18:14 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Thu, 20 Nov 2025 20:18:14 +0800
From: <ot_shunxi.zhang@mediatek.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Eddie Huang
	<eddie.huang@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, Lee Jones <lee@kernel.org>, Shunxi
 Zhang <ot_shunxi.zhang@mediatek.com>, <Vince-WL.Liu@mediatek.com>,
	<sirius.wang@mediatek.com>, <Jh.Hsu@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v2 3/5] rtc: mt6397: Fix formatting of platform driver structure
Date: Thu, 20 Nov 2025 20:17:59 +0800
Message-ID: <20251120121805.6775-4-ot_shunxi.zhang@mediatek.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
References: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>

This is a cosmetic change to improve code consistency.

Signed-off-by: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 692c00ff544b..b8f44a00de5d 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -345,7 +345,7 @@ static struct platform_driver mtk_rtc_driver = {
 		.of_match_table = mt6397_rtc_of_match,
 		.pm = &mt6397_pm_ops,
 	},
-	.probe	= mtk_rtc_probe,
+	.probe = mtk_rtc_probe,
 };
 
 module_platform_driver(mtk_rtc_driver);
-- 
2.45.2


