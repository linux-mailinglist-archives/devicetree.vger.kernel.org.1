Return-Path: <devicetree+bounces-6176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E727BA208
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:12:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 73E24281BF0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284CB30CEC;
	Thu,  5 Oct 2023 15:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DAEtMdH+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DAC26E12
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:12:04 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D6647A9C;
	Thu,  5 Oct 2023 08:12:03 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A2DE7660732D;
	Thu,  5 Oct 2023 16:12:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696518722;
	bh=VBFKTjiNCnNwwAoFy02bMZNOemRQrfnC/BPWmnBVK3o=;
	h=From:To:Cc:Subject:Date:From;
	b=DAEtMdH+XM4LZP5BEIsVoqnN4SZGGBi66jbaSvzqPi2OdC1uq2t2SEhy4gzJvTxyX
	 7wYc841bLGO6ucBQvmh4ItMWVIs7/CwUfVaewl14Sm+d6TnOgIV13mQmFbru3t3GX0
	 BhuosJlMH3twywFe62sZjf36HmuyyHfGp0GWLybrF/I9tCPgrSpPFSnIEoNb7Nk1uU
	 ghzFVc30ItxgIMIyJzgF7z/tazGiuDMX9PMphlRcO23irAwnSy1CkyNMb3l2UQn4mb
	 AKIi3ZSZj83MIpcuRe1AEzcpWcOyxFmVXzRInNsBaXAzdraGyiUqla+24yr3DJj0UV
	 ZYPKCDxVuuiig==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: mediatek: mt8186: Change gpu speedbin nvmem cell name
Date: Thu,  5 Oct 2023 17:11:50 +0200
Message-ID: <20231005151150.355536-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

MT8186's GPU speedbin value must be interpreted, or the value will not
be meaningful.
Use the correct "gpu-speedbin" nvmem cell name for the GPU speedbin to
allow triggering the cell info fixup handler, hence feeding the right
speedbin number to the users.

Fixes: 263d2fd02afc ("arm64: dts: mediatek: mt8186: Add GPU speed bin NVMEM cells")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index af6f6687de35..bfc3669141f2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1659,7 +1659,7 @@ efuse: efuse@11cb0000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			gpu_speedbin: gpu-speed-bin@59c {
+			gpu_speedbin: gpu-speedbin@59c {
 				reg = <0x59c 0x4>;
 				bits = <0 3>;
 			};
-- 
2.42.0


