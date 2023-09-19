Return-Path: <devicetree+bounces-1245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D9F7A57B5
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C599281272
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AD634188;
	Tue, 19 Sep 2023 03:04:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC1C6FBF
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:04:01 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11935111;
	Mon, 18 Sep 2023 20:03:56 -0700 (PDT)
X-UUID: 2860a90c569911eea33bb35ae8d461a2-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=WGjBoJYnR1kVIpbxrbGHxAgOJzvmfo0ll/XCDEcIALg=;
	b=MEMwhuOBmMU2fJTKpNGMfDH8n2fPlyhT0BjZBQndAQyyP5lkjdidhEqNMsEGfpkLbwRaY1myinvuvOomVcCeP6xmr4uysLMHuysuIu3QySWsoYyyEiS6c0BLzdKcGZZ6UKmRms3ZoNCmgPJc7nEyzKkhTfgxrAr6RWrr4qXsxJ8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:a745d1ed-2528-4b94-95f9-4bb9df3f7886,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:74b6daef-9a6e-4c39-b73e-f2bc08ca3dc5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 2860a90c569911eea33bb35ae8d461a2-20230919
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1561888699; Tue, 19 Sep 2023 11:03:50 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 19 Sep 2023 11:03:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 19 Sep 2023 11:03:48 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <dri-devel@lists.freedesktop.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>, "Jason-ch
 Chen" <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>,
	"Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang
	<singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung
	<shawn.sung@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH 10/10] arm64: dts: mt8195-cherry: Add secure mbox settings for vdosys
Date: Tue, 19 Sep 2023 11:03:45 +0800
Message-ID: <20230919030345.8629-11-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--0.944900-8.000000
X-TMASE-MatchedRID: jhJi18RLqAIXSulpnju2H4v2/i8VNqeOVBDQSDMig9GbKItl61J/yfJv
	ocwUrWp7FBpuM64i9KELbigRnpKlKZx+7GyJjhAUv0JtLkwvi+TlEia5mF0xy2GydH1PWWkGVLm
	Ver/b24Hk2xj/ZDiZX9vog4407EN2Ao4SqiHDYOxG4EO0LZphCF3Q67CC3BgxSZrfNhP3sgUBh9
	AgBSEFrJm+YJspVvj2xkvrHlT8euI+kK598Yf3Mg==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--0.944900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: BF3C41FD9BD06197E1AD41D85EEB90B548B8A490ABBAAE1C1744A2E35120BF2A2000:8
X-MTK: N
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a secure mailbox channel to support secure video path on
vdosys0 and vdosys1.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 37a3e9de90ff..9b838b2cdb3e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1147,6 +1147,16 @@
 	status = "okay";
 };
 
+&vdosys0 {
+	mboxes = <&gce0 0 CMDQ_THR_PRIO_4>,
+		 <&gce0 8 CMDQ_THR_PRIO_4>; /* secure mbox */
+};
+
+&vdosys1 {
+	mboxes = <&gce0 1 CMDQ_THR_PRIO_4>,
+		 <&gce0 9 CMDQ_THR_PRIO_4>; /* secure mbox */
+};
+
 &xhci0 {
 	status = "okay";
 
-- 
2.18.0


