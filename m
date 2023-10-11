Return-Path: <devicetree+bounces-7593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F12F37C4C4A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:50:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E29A41C20E66
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1866119BAA;
	Wed, 11 Oct 2023 07:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="KZZDsMIY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71305199DC
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:50:45 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6BDD9B;
	Wed, 11 Oct 2023 00:50:42 -0700 (PDT)
X-UUID: db8eb780680a11ee8051498923ad61e6-20231011
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=uIIHqi30PoZOPWI6f23EZPfgJ7kfJrkJHQPKD5B9bfI=;
	b=KZZDsMIYzfp/wSbotQXkffUI7mqlT7LFjp1ecul6RK3EE0Jd/ODuGrnh88dOeSQmYWVrW0hI/H2WOPzdtMjRgrj6AFsuGt68SumTBaJ45haSBz5qWhTxRJRX9AHV9M9cv7wX/gJkykFx0nNUXK1bstHQrqsJz+8hZLMfMJQcgLc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:010e6c4d-9a5a-44ea-b738-0315c419b443,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:8fcce614-4929-4845-9571-38c601e9c3c9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: db8eb780680a11ee8051498923ad61e6-20231011
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <moudy.ho@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1987408879; Wed, 11 Oct 2023 15:50:33 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 11 Oct 2023 15:50:32 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 11 Oct 2023 15:50:32 +0800
From: Moudy Ho <moudy.ho@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: "Nancy . Lin" <nancy.lin@mediatek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, Moudy Ho <moudy.ho@mediatek.com>
Subject: [PATCH v7 2/3] arm64: dts: mediatek: mt8195: revise VDOSYS RDMA node name
Date: Wed, 11 Oct 2023 15:50:30 +0800
Message-ID: <20231011075031.30660-3-moudy.ho@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231011075031.30660-1-moudy.ho@mediatek.com>
References: <20231011075031.30660-1-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,
	SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

DMA-related nodes have their own standardized naming. Therefore,
the MT8195 VDOSYS RDMA has been unified and corrected.
Additionally, these modifications will facilitate the further
integration of bindings.

Fixes: 92d2c23dc269 ("arm64: dts: mt8195: add display node for vdosys1")
Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index a9e52b50c8c4..0bfaa6db59de 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -2868,7 +2868,7 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 		};
 
-		vdo1_rdma0: rdma@1c104000 {
+		vdo1_rdma0: dma-controller@1c104000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c104000 0 0x1000>;
 			interrupts = <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2876,9 +2876,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vdo M4U_PORT_L2_MDP_RDMA0>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x4000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma1: rdma@1c105000 {
+		vdo1_rdma1: dma-controller@1c105000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c105000 0 0x1000>;
 			interrupts = <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2886,9 +2887,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vpp M4U_PORT_L3_MDP_RDMA1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x5000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma2: rdma@1c106000 {
+		vdo1_rdma2: dma-controller@1c106000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c106000 0 0x1000>;
 			interrupts = <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2896,9 +2898,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vdo M4U_PORT_L2_MDP_RDMA2>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x6000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma3: rdma@1c107000 {
+		vdo1_rdma3: dma-controller@1c107000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c107000 0 0x1000>;
 			interrupts = <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2906,9 +2909,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vpp M4U_PORT_L3_MDP_RDMA3>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x7000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma4: rdma@1c108000 {
+		vdo1_rdma4: dma-controller@1c108000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c108000 0 0x1000>;
 			interrupts = <GIC_SPI 499 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2916,9 +2920,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vdo M4U_PORT_L2_MDP_RDMA4>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x8000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma5: rdma@1c109000 {
+		vdo1_rdma5: dma-controller@1c109000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c109000 0 0x1000>;
 			interrupts = <GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2926,9 +2931,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vpp M4U_PORT_L3_MDP_RDMA5>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x9000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma6: rdma@1c10a000 {
+		vdo1_rdma6: dma-controller@1c10a000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c10a000 0 0x1000>;
 			interrupts = <GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2936,9 +2942,10 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vdo M4U_PORT_L2_MDP_RDMA6>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xa000 0x1000>;
+			#dma-cells = <1>;
 		};
 
-		vdo1_rdma7: rdma@1c10b000 {
+		vdo1_rdma7: dma-controller@1c10b000 {
 			compatible = "mediatek,mt8195-vdo1-rdma";
 			reg = <0 0x1c10b000 0 0x1000>;
 			interrupts = <GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2946,6 +2953,7 @@
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			iommus = <&iommu_vpp M4U_PORT_L3_MDP_RDMA7>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xb000 0x1000>;
+			#dma-cells = <1>;
 		};
 
 		merge1: vpp-merge@1c10c000 {
-- 
2.18.0


