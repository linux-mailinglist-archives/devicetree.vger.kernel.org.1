Return-Path: <devicetree+bounces-18713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 218147F8780
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 02:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C412B2142A
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 01:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E182818;
	Sat, 25 Nov 2023 01:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="QnCxNViZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2945A19A6;
	Fri, 24 Nov 2023 17:23:13 -0800 (PST)
X-UUID: 30364fc08b3111eea33bb35ae8d461a2-20231125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=xrv0t8BsePColscuViX0CPUL+ADw51sZfmpfju2FfJQ=;
	b=QnCxNViZel3b+vzPaOo7B+bFu6unkDwEy2kd/QRlT4tokv70U8knaGrk8sxtoETto+Xenvbgd3ToPfycy9CI06VfeZTgJblOSjTqRKiydFZ8OByvseb/LErN9qA9zYpV1S/HTmGtw3+SksCIAWFh7p4u72VAhaDgAiOmRab962k=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:54086181-2dd1-45ff-b000-2d9aac5712df,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:364b77b,CLOUDID:13cbc995-10ce-4e4b-85c2-c9b5229ff92b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 30364fc08b3111eea33bb35ae8d461a2-20231125
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 55243000; Sat, 25 Nov 2023 09:23:07 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sat, 25 Nov 2023 09:23:06 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sat, 25 Nov 2023 09:23:05 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Macpaul Lin <macpaul.lin@mediatek.com>
Subject: [PATCH 2/2] phy: mediatek: tphy: add support force phy mode switch
Date: Sat, 25 Nov 2023 09:23:03 +0800
Message-ID: <20231125012303.760-2-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125012303.760-1-chunfeng.yun@mediatek.com>
References: <20231125012303.760-1-chunfeng.yun@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-MTK: N

this is used to be compatible with old SoCs, such as mt8195, which shares t-phy
between ssusb and pcie controller, usually, it's default mode is pcie rc mode,
and could use force mode to switch into ssusb mode, because pericfg layer doesn't
provide mode switch, also no efuse or jumper can be used;
Note: don't use this way on new SoCs, use pericfg layer's mode switch instead
(by perperty "mediatek,syscon-type").

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 05eab9014132..a4746f6cb8a1 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -185,6 +185,10 @@
 #define P3D_RG_CDR_BIR_LTD1		GENMASK(28, 24)
 #define P3D_RG_CDR_BIR_LTD0		GENMASK(12, 8)
 
+#define U3P_U3_PHYD_TOP1		0x100
+#define P3D_RG_PHY_MODE			GENMASK(2, 1)
+#define P3D_RG_FORCE_PHY_MODE		BIT(0)
+
 #define U3P_U3_PHYD_RXDET1		0x128
 #define P3D_RG_RXDET_STB2_SET		GENMASK(17, 9)
 
@@ -327,6 +331,7 @@ struct mtk_phy_instance {
 	int discth;
 	int pre_emphasis;
 	bool bc12_en;
+	bool type_force_mode;
 };
 
 struct mtk_tphy {
@@ -768,6 +773,23 @@ static void u3_phy_instance_init(struct mtk_tphy *tphy,
 	void __iomem *phya = u3_banks->phya;
 	void __iomem *phyd = u3_banks->phyd;
 
+	if (instance->type_force_mode) {
+		/* force phy as usb mode, default is pcie rc mode */
+		mtk_phy_update_field(phyd + U3P_U3_PHYD_TOP1, P3D_RG_PHY_MODE, 1);
+		mtk_phy_set_bits(phyd + U3P_U3_PHYD_TOP1, P3D_RG_FORCE_PHY_MODE);
+		/* power down phy by ip and pipe reset */
+		mtk_phy_set_bits(u3_banks->chip + U3P_U3_CHIP_GPIO_CTLD,
+				 P3C_FORCE_IP_SW_RST | P3C_MCU_BUS_CK_GATE_EN);
+		mtk_phy_set_bits(u3_banks->chip + U3P_U3_CHIP_GPIO_CTLE,
+				 P3C_RG_SWRST_U3_PHYD | P3C_RG_SWRST_U3_PHYD_FORCE_EN);
+		udelay(10);
+		/* power on phy again */
+		mtk_phy_clear_bits(u3_banks->chip + U3P_U3_CHIP_GPIO_CTLD,
+				   P3C_FORCE_IP_SW_RST | P3C_MCU_BUS_CK_GATE_EN);
+		mtk_phy_clear_bits(u3_banks->chip + U3P_U3_CHIP_GPIO_CTLE,
+				   P3C_RG_SWRST_U3_PHYD | P3C_RG_SWRST_U3_PHYD_FORCE_EN);
+	}
+
 	/* gating PCIe Analog XTAL clock */
 	mtk_phy_set_bits(u3_banks->spllc + U3P_SPLLC_XTALCTL3,
 			 XC3_RG_U3_XTAL_RX_PWD | XC3_RG_U3_FRC_XTAL_RX_PWD);
@@ -1120,6 +1142,9 @@ static void phy_parse_property(struct mtk_tphy *tphy,
 {
 	struct device *dev = &instance->phy->dev;
 
+	if (instance->type == PHY_TYPE_USB3)
+		instance->type_force_mode = device_property_read_bool(dev, "mediatek,force-mode");
+
 	if (instance->type != PHY_TYPE_USB2)
 		return;
 
-- 
2.18.0


