Return-Path: <devicetree+bounces-5507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B977B6785
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1DB321C209AB
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC82B2134E;
	Tue,  3 Oct 2023 11:14:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8284F2111D
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:14:16 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44D8ECDD;
	Tue,  3 Oct 2023 04:13:57 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 198696607327;
	Tue,  3 Oct 2023 12:13:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696331636;
	bh=j7Uw1isEhuefKTYB2JUZzHIL25LZ8i+zJVR9YMoREJs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jw/Xk/7p22aC4onGuFU6Mv/+lrzoWuBkoGIZ1YKd7wWhBDgdbuvgpvM94LJ+/yIMY
	 AYPi5zx8yXPzEw4tjcLZWxYr5NvkIW8nWMHxJ1ROXzeC6G8HO9c868tQLFiOg2/cKc
	 2iRoaE4zrkJrinM96enXlRN8BuzMun7Kdu8FPLCHz1fa/89XAzKEb1Uh4yR7sw8HCe
	 X+9znkMT7ubWQ3E0E/XM+6jBj6ILjz+ZW7KIEMjVp8cpjuKCCL8yYhrZy2uFr/7Qkt
	 cSHOyKTnYA1dxmma11Ai12IScKnZXK74BK76nVQYHj9ZWT5PcP7VVUlKjBaCf+Rdsz
	 4OtA+TIW/l7Qw==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Date: Tue, 03 Oct 2023 13:13:45 +0200
Subject: [PATCH 3/5] arm64: dts: mediatek: mt8195-demo: update and reorder
 reserved memory regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-mediatek-fixes-v6-7-v1-3-dad7cd62a8ff@collabora.com>
References: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
In-Reply-To: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Miles Chen <miles.chen@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Sam Shih <sam.shih@mediatek.com>, 
 Frank Wunderlich <frank-w@public-files.de>, 
 Jieyy Yang <jieyy.yang@mediatek.com>, 
 Tinghan Shen <tinghan.shen@mediatek.com>, 
 Seiya Wang <seiya.wang@mediatek.com>, soc@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 stable@vger.kernel.org
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2526;
 i=angelogioacchino.delregno@collabora.com; h=from:subject:message-id;
 bh=fmj9JCdJsykEJ4ILjg0BDPF2+rO6fiudNIe7PL2w/6g=;
 b=owGbwMvMwCU2y4zl/NrpLRWMp9WSGFKlv+ffSJ1lxD8loPuo0KEe+ZBZy/Tv7Tv84cxz/vZVKfOX
 zDo/u6OUhUGMi0FWTJFF/W5N9vM1KxmPtJ8tgZnDygQyhIGLUwAmclqA4Z+aianGty0W786nvX1sKl
 Lu8GexuFXR/6PpBzRO5T8xPpvJyLCqVEa05YrIttt3mBU7ciIW/Epw1v9tcPp6zgW7p7edOPgB
X-Developer-Key: i=angelogioacchino.delregno@collabora.com; a=openpgp;
 fpr=57152E620CAF29C5DBE574766833ABB5BEBAF7B7
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Macpaul Lin <macpaul.lin@mediatek.com>

The dts file of the MediaTek MT8195 demo board has been updated to include
new reserved memory regions.
These reserved memory regions are:
 - SCP
 - VPU,
 - Sound DMA
 - APU.

These regions are defined with the "shared-dma-pool" compatible property.
In addition, the existing reserved memory regions have been reordered by
their addresses to improve readability and maintainability of the DTS
file.

Cc: stable@vger.kernel.org      # 6.1, 6.4, 6.5
Fixes: e4a417520101 ("arm64: dts: mediatek: mt8195-demo: fix the memory size of node secmon")
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Link: https://lore.kernel.org/r/20230905034511.11232-2-macpaul.lin@mediatek.com
---
 arch/arm64/boot/dts/mediatek/mt8195-demo.dts | 37 ++++++++++++++++++++++------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
index ff363ab925e9..5d635085fe3f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
@@ -56,13 +56,8 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		/* 2 MiB reserved for ARM Trusted Firmware (BL31) */
-		bl31_secmon_reserved: secmon@54600000 {
-			no-map;
-			reg = <0 0x54600000 0x0 0x200000>;
-		};
-
-		/* 12 MiB reserved for OP-TEE (BL32)
+		/*
+		 * 12 MiB reserved for OP-TEE (BL32)
 		 * +-----------------------+ 0x43e0_0000
 		 * |      SHMEM 2MiB       |
 		 * +-----------------------+ 0x43c0_0000
@@ -75,6 +70,34 @@ optee_reserved: optee@43200000 {
 			no-map;
 			reg = <0 0x43200000 0 0x00c00000>;
 		};
+
+		scp_mem: memory@50000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+
+		vpu_mem: memory@53000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x53000000 0 0x1400000>; /* 20 MB */
+		};
+
+		/* 2 MiB reserved for ARM Trusted Firmware (BL31) */
+		bl31_secmon_mem: memory@54600000 {
+			no-map;
+			reg = <0 0x54600000 0x0 0x200000>;
+		};
+
+		snd_dma_mem: memory@60000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x60000000 0 0x1100000>;
+			no-map;
+		};
+
+		apu_mem: memory@62000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x62000000 0 0x1400000>; /* 20 MB */
+		};
 	};
 };
 

-- 
2.42.0


