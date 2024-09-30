Return-Path: <devicetree+bounces-106325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E4989CFE
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1181CB2484E
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 08:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C02185B6F;
	Mon, 30 Sep 2024 08:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="T4leJ91l"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C51183CC2;
	Mon, 30 Sep 2024 08:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727685550; cv=none; b=A1lwaYfu8zGDtblIGBIGGxbYAHrcecI5g4NVfXC3wGxDrMkDQ1tmTVckcZPvMoI6h3UmneVWO4SzFgV4iUA1LhTtpZpdyzQU8iaePHfV+v2rUqd4rvI1lCxvE4sXKgV7rsvyoHJT+Lx3Bh2JhlkfS1z3g0Cg+/IBLZJXmoI+hIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727685550; c=relaxed/simple;
	bh=e8LjLPwmoUJ9jZ40nQv5/GfFHGuMy8RdcBozi3tZRTE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LLIcnzRTrJ8fvORowDDrWkgysGH/0SgrXn9YHxGQzoVRDuBAJWwh+HRH2lXQxYIpY22NOU7lgRAeDICO4dm9mWSIcgtMFTiUuFqNz1on2GTjAjCl4Yt1Vi4SOcz+W+O0MHtUgfiDOfoqUoskGnq2eQ1LSCXvN3DLzRd3xcH17ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=T4leJ91l; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 7251e9b27f0711efb66947d174671e26-20240930
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=xJ51bIMH4FsxYabGeTzOeOw98h2VfMLg1v5MjZNaur0=;
	b=T4leJ91lWKyYxhdoywASF0nwxTgFcMqXB7UjRXs6c/fRK24tVmj71JEiAs/o2+KK6TkCy4sAmxLYva/g39vQujHp8q+0pNdsvhrDRLiEhnWGa9L5aqFSIaMRkW8GW3++yOaJdaQg5a5I6VpYUB4Z2zcxW4eLTvyRZyQ5FSmjCS4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:d2f3604a-878f-4d5d-b34f-307d401a7aae,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:829f7818-b42d-49a6-94d2-a75fa0df01d2,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 7251e9b27f0711efb66947d174671e26-20240930
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1485669769; Mon, 30 Sep 2024 16:39:03 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 30 Sep 2024 16:39:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 30 Sep 2024 16:39:00 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yong Wu <yong.wu@mediatek.com>, "Joerg
 Roedel" <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy
	<robin.murphy@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, "Rohit
 Agarwal" <rohiagar@chromium.org>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <iommu@lists.linux.dev>,
	<linux-arm-kernel@lists.infradead.org>, Alexandre Mergnat
	<amergnat@baylibre.com>
CC: Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>, Macpaul Lin <macpaul@gmail.com>, "Sen
 Chu" <sen.chu@mediatek.com>, Chris-qj chen <chris-qj.chen@mediatek.com>,
	MediaTek Chromebook Upstream
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Chen-Yu Tsai
	<wenst@chromium.org>
Subject: [PATCH v4 4/5] arm64: dts: mt8195: Fix dtbs_check error for mutex node
Date: Mon, 30 Sep 2024 16:38:53 +0800
Message-ID: <20240930083854.7267-4-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20240930083854.7267-1-macpaul.lin@mediatek.com>
References: <20240930083854.7267-1-macpaul.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--3.706900-8.000000
X-TMASE-MatchedRID: wYKjk3ae4OLLmPsfsKViBzyQH9QLmFOgMZm0+sEE9mv/evmlVf9xZgxm
	8TLlhkMG2y0jybZAxqx7nZmSglxg9sJjog0sYBeSrDFtme53KvvvJY9pBzgg1GaBgvyiTOIIo8W
	MkQWv6iXBcIE78YqRWo6HM5rqDwqtE2g3s9gzxyXyxX428Cl+h2d8U+js/dFeqSdQdlq9mHxcSB
	jgFsq28+3XIPXXag5Nhnw0MBcoL2anTe9CgP5EDzRTfGTKVrWw4sOrsb4iT/K/bbEolHIgZUOc7
	GjOamnWv5a9cmIodEspRnLV2kwrLg==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.706900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	D45A9F6C55319F27E7981181201A189406106B8D4450AE29DFE1F1AE1E8CB1682000:8
X-MTK: N

The mutex node in mt8195.dtsi was triggering a dtbs_check error:
  mutex@1c101000: 'clock-names', 'reg-names' do not match any of the
                  regexes: 'pinctrl-[0-9]+'

This seems no need by inspecting the DT schemas and other reference boards,
so drop 'clock-names' and 'reg-names' in mt8195.dtsi.

Fixes: 92d2c23dc269 ("arm64: dts: mt8195: add display node for vdosys1")
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 2 --
 1 file changed, 2 deletions(-)

Changes for v2, v3 and v4:
 - No change.

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 2e1b41359b43..ade685ed2190 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -3331,11 +3331,9 @@ &larb19 &larb21 &larb24 &larb25
 		mutex1: mutex@1c101000 {
 			compatible = "mediatek,mt8195-disp-mutex";
 			reg = <0 0x1c101000 0 0x1000>;
-			reg-names = "vdo1_mutex";
 			interrupts = <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH 0>;
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			clocks = <&vdosys1 CLK_VDO1_DISP_MUTEX>;
-			clock-names = "vdo1_mutex";
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x1000 0x1000>;
 			mediatek,gce-events = <CMDQ_EVENT_VDO1_STREAM_DONE_ENG_0>;
 		};
-- 
2.45.2


