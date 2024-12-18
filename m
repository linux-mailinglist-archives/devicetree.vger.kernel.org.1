Return-Path: <devicetree+bounces-132247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 193319F63FA
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 458AF160556
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B99319FA92;
	Wed, 18 Dec 2024 10:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bfjgeqSy"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389119D898;
	Wed, 18 Dec 2024 10:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734519255; cv=none; b=Ryy9YlQanEgLci9QEE6eoHOZBpGUzVQaBQVu7MoLcpGhlJXxacl76hy/iKeJ0Fg7Lb6qiYFlqfft/xgzG/K3TzJToWq/dlD607+1zxs9cEHhiM4N/OJhGdNnJbttUB2g9RBEZXlLDFgIcoZhx9jCZB42hitrNVSm/ReRaS9H/Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734519255; c=relaxed/simple;
	bh=epCoJXcqUsYqi+GYIyzyKTK3DIPV97DI5SVng2FaHf8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Eq5mTvWO/+RQiDHb6N1613C6CwcHeeYozp3vz/nLwiQN3jgNZBXV1VTvLTfL2HEZpEVgOeyjCL2ISH6yWdW1iML62hPTnL2ctsXfsC2BUw9X/+T/LiE9bbXuJa1sjs/XRtbBEcWrn8+ynJd+KK6OYEzWKfv6QpnWq/R2ozoWsaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=bfjgeqSy; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734519252;
	bh=epCoJXcqUsYqi+GYIyzyKTK3DIPV97DI5SVng2FaHf8=;
	h=From:To:Cc:Subject:Date:From;
	b=bfjgeqSyW/uGw9JxWiBq+jSZqZRyO7uk584FpPu5zgkQz4mc2DImn+xCrOvVnkRAP
	 yorGbIT5n7nGMKDjpl9G8VLfDPjORwZi8LisnQ7s5kGD1v2Gg4p+5DTk+JYb8rIne7
	 CSMs3gilUCf6fezlqpuXR+XYeHOTeVfbvsNPY/icHPIxcjV1t+/QcrN3k5Piovy9TS
	 7c5JCkzHl8mtIP0Ej2x8pAMslnDnpXjm/vM78hueiHWRvm7WsG9Eqqw+lOBA1TrN81
	 bNlXamfKfmMQYg8wWnDlSVxqxwTAVq7f1YY9NH43+vUTOPdKg/AsvaErhlBBbLexQK
	 3fp/nnFC2x7/w==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 15FA917E3612;
	Wed, 18 Dec 2024 11:54:12 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	macpaul.lin@mediatek.com
Subject: [PATCH] arm64: dts: mediatek: mt8188: Add tertiary eMMC/SD/SDIO controller
Date: Wed, 18 Dec 2024 11:54:09 +0100
Message-ID: <20241218105409.39165-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a node for the third instance of the eMMC/SD/SDIO controller
found on the MT8188 SoC and keep it disabled.

It is expected that only boards that are using this controller
instance will configure and enable it.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 6ef385072c9f..f2d71da50ea3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1794,6 +1794,20 @@ mmc1: mmc@11240000 {
 			status = "disabled";
 		};
 
+		mmc2: mmc@11250000 {
+			compatible = "mediatek,mt8188-mmc", "mediatek,mt8183-mmc";
+			reg = <0 0x11250000 0 0x1000>,
+			      <0 0x11e60000 0 0x1000>;
+			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&topckgen CLK_TOP_MSDC30_2>,
+				 <&infracfg_ao CLK_INFRA_AO_MSDC2>,
+				 <&infracfg_ao CLK_INFRA_AO_MSDC30_2>;
+			clock-names = "source", "hclk", "source_cg";
+			assigned-clocks = <&topckgen CLK_TOP_MSDC30_2>;
+			assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL_D2>;
+			status = "disabled";
+		};
+
 		lvts_mcu: thermal-sensor@11278000 {
 			compatible = "mediatek,mt8188-lvts-mcu";
 			reg = <0 0x11278000 0 0x1000>;
-- 
2.46.1


