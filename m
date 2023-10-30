Return-Path: <devicetree+bounces-12774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A40F97DB691
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 410ECB20B66
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A77DF4E;
	Mon, 30 Oct 2023 09:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="OpaTu8zA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8273ADDD3
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:55 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D603010C6;
	Mon, 30 Oct 2023 02:48:47 -0700 (PDT)
X-UUID: 82cc5748770911eea33bb35ae8d461a2-20231030
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=qlsxU4ZooKcN6eVk2EdmfuYn54VZr8B5QvuOjrY8Ego=;
	b=OpaTu8zA/MLhv4Yko5W6dUUtMjb+f+XMWNIz9ay6iIX/F9nrKPJ8EtLx8VrsAcLDo7rDCm4aUcnMhhhvxfT7gDqErM1Mr8D8iJTCuOm+mVvgIFK9X8lqUeOkvzgKTafPOrM4al7mFrJXeQ0YC8ZBgJreGw93sN5EnnvQVnbgAqU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:1cb61265-ce68-4c1d-9bb2-ba695e02825d,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:5f78ec9,CLOUDID:3ceeeefb-4a48-46e2-b946-12f04f20af8c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 82cc5748770911eea33bb35ae8d461a2-20231030
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <moudy.ho@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1891174666; Mon, 30 Oct 2023 17:48:42 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 30 Oct 2023 17:48:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 30 Oct 2023 17:48:41 +0800
From: Moudy Ho <moudy.ho@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "Nancy . Lin" <nancy.lin@mediatek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, Moudy Ho <moudy.ho@mediatek.com>
Subject: [PATCH v8 0/3] Add support for MT8195 MDP3
Date: Mon, 30 Oct 2023 17:48:37 +0800
Message-ID: <20231030094840.2479-1-moudy.ho@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

Changes since v7:
- Rebase on linux-next.
- To align with the display naming conventions, change the compatible name of
  padding from 'mediatek,mt8195-mdp3-pad' to 'mediatek,mt8195-mdp3-padding'.

Changes since v6:
- Rebase on v6.6-rc5.
- Add SoC-specific compatible string to the nodes inherited from
  MT8183, such as RSZ and WROT.
- Add required property to PAD (padding) for its integration into
  the existing binding under display folder.
- Add patch to standardiized DMA related node names, such as VDOSYS RDMA.

Changes since v5:
- Rebase on v6.6-rc2
- Add the required property - interrupts in components
  AAL, COLOR and OVL.

Hi,

The purpose of this patch is to separate the MDP3-related dtsi from
the original mailing list mentioned below:
https://lore.kernel.org/all/20230912075805.11432-2-moudy.ho@mediatek.com/
Introducing more components for MDP3 in MT8195.

Moudy Ho (3):
  arm64: dts: mediatek: mt8183: correct MDP3 DMA-related nodes
  arm64: dts: mediatek: mt8195: revise VDOSYS RDMA node name
  arm64: dts: mediatek: mt8195: add MDP3 nodes

 arch/arm64/boot/dts/mediatek/mt8183.dtsi |   6 +-
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 416 ++++++++++++++++++++++-
 2 files changed, 412 insertions(+), 10 deletions(-)

-- 
2.18.0


