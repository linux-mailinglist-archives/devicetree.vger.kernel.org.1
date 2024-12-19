Return-Path: <devicetree+bounces-132812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 439749F8304
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A8FF1885F7A
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAED11A265E;
	Thu, 19 Dec 2024 18:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="d+vqPZPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19E71A2543;
	Thu, 19 Dec 2024 18:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734632143; cv=none; b=Tj9LJo+yKT+seTFsNAy04p/iPQUaWfcaC9y1CMJuFFkFs3kAEKdhqPTRmUq6VWg63+mNK/RTrr+Nqlne8GxCODUk70JSpv9+646FG01YVO8/Fr4EM2uhswNqQge8wfS/lEzfuwpQvfBWij7yQBItmcqGoSPFfKUzzPE0RI0x7OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734632143; c=relaxed/simple;
	bh=Ohq7xj3lrgKHBAvsVdwR9x/J1FThe79tztM8YSPVZpc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=afgag2XsyuXl8v9fvV8yD/1aSoCtaKeg9ZxoufQj3PvCtL++1Tb1PcGDGxKVSuZp+EidXF5C1+O6QRQS/bs0qsy3e/s7HM7+xdMdhCyj/4RDSJLlS4Fs28vE0pvV0hLoxB/s7cZDIn7L4qU9QEIjhiWILHGGh3GfIxp6D8hMZXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=d+vqPZPb; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 3e71c8d4be3511ef99858b75a2457dd9-20241220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=FRbG0f5kte1BepZCeGBelDDv1/lxzWd1EpYxUMD2Tg0=;
	b=d+vqPZPbxaAFBi2ndb8QXG0xxhkEyz1gx9MymNOm0aDnV/7YT0Hyo+Su4XkiIjQDzFT/Md18shWzSwx1OCkf1Nkii/FTmPR1+Ti6Sj7aRjfHn+q14nJmAGOGFIlcNwRMB61kXOC4qHtQXoYmgX3s42gI9S0HDHplj2+oX43wTQ0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:f1e06e12-34f0-4646-af73-ce710a9beefd,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:7220cc28-d2eb-4de2-b5c9-495d1bc17256,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0,EDM:-3,IP
	:nil,URL:0,File:nil,RT:100,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,
	LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 3e71c8d4be3511ef99858b75a2457dd9-20241220
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1744387835; Fri, 20 Dec 2024 02:15:36 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Dec 2024 02:15:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Dec 2024 02:15:34 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "Jason-JH . Lin"
	<jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy
 Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Fei Shao
	<fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v3 4/4] dts: arm64: mediatek: mt8195: Remove MT8183 compatible for OVL
Date: Fri, 20 Dec 2024 02:15:31 +0800
Message-ID: <20241219181531.4282-5-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

The OVL hardware capabilities have changed starting from MT8195,
making the MT8183 compatible no longer applicable.
Therefore, it is necessary to remove the MT8183 compatible for OVL.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index ade685ed2190..137ee8929e01 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -3138,7 +3138,7 @@ larb20: larb@1b010000 {
 		};
 
 		ovl0: ovl@1c000000 {
-			compatible = "mediatek,mt8195-disp-ovl", "mediatek,mt8183-disp-ovl";
+			compatible = "mediatek,mt8195-disp-ovl";
 			reg = <0 0x1c000000 0 0x1000>;
 			interrupts = <GIC_SPI 636 IRQ_TYPE_LEVEL_HIGH 0>;
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS0>;
-- 
2.43.0


