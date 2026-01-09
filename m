Return-Path: <devicetree+bounces-253265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03764D09056
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0331C30D2814
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2CA35A92E;
	Fri,  9 Jan 2026 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Z8Ru9qqB"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B02359F8B;
	Fri,  9 Jan 2026 11:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959288; cv=none; b=UVy/WFOKf+RluuH/LSDyGQ6lUqF+PC489WR6pqfymOx4hk8MeYnZlk+4iXziaYSmlgpcCNdUi12aP224A8tJ5cwwcOzgZ2vIV9xis/9tOsZg5RQ353qxgE0ugjbg61JZ1GLH30/KplNuUEp5D6nZZdZYn2sJy603Bo74CKWUc5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959288; c=relaxed/simple;
	bh=ubUoeKoK4MOEGAAlYGLs/9BWIBNNB4y4zBKteUG+WSc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Er/PEstW7YQzwhYTnPp0779d/pPDQKNHRVXdpjhKL7wR3eOgeUlLx7+TNPLwZ8W6FowCtcbeHN6LPsaHoURIaoMsq41bDVU5Mqp0yq6IfVpRQMZTczGthUQvjhI/TIhkJL/unVPyzpzc3StKL5U/dKY4WeZserhQV7pISaWkJKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Z8Ru9qqB; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959280;
	bh=ubUoeKoK4MOEGAAlYGLs/9BWIBNNB4y4zBKteUG+WSc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z8Ru9qqBDaW9nUs5mvn8SsTT6aLmL1qAYx+xr+3/n/w7kj+WiXXul+eDwSq9SvLSa
	 y/uDoUeNuusDCdeoh7jUp9hvrgTZxKj/AE/KtD8TegkROXcIJgieGeGql714UDHswo
	 TPj+XTqrFL6amlLy56x7uTFgz2sCQ3LX6zp6bN2cNGQpQmbWIYgXC03wHHKc324SM/
	 kHU3ZB/A7zC1rM4MhASkTIzMNl15iZSdNbGo8ukY/RVpBn3LmUTiQKPx82iPEr1rbS
	 3Mg1vkv0pS3FPyEPo5LIFD2A8V0ZXC+3F9grb8h9NdkP8SLpZxQJrI4Pt2KmmmuaWb
	 P0cP8u8V1ZLKQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E615817E1523;
	Fri,  9 Jan 2026 12:47:59 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 07/11] arm64: dts: mediatek: mt8173-elm: Fix bluetooth node name and reorder
Date: Fri,  9 Jan 2026 12:47:43 +0100
Message-ID: <20260109114747.37189-8-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the node name for Marvell SD8897 SDIO Bluetooth from
`btmrvl@2` to `bluetooth@2` to fix a dtbs_check warning.

While at it, also change the WiFi one from `mwifiex@1" to a
generic "wifi@1" and reorder the nodes so that wifi@1 comes
before bluetooth@2.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 9ec930058b92..59813fff7833 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -432,20 +432,20 @@ &mmc3 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	btmrvl: btmrvl@2 {
+	mwifiex: wifi@1 {
+		compatible = "marvell,sd8897";
+		reg = <1>;
+		interrupts-extended = <&pio 38 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = <3>;
+	};
+
+	btmrvl: bluetooth@2 {
 		compatible = "marvell,sd8897-bt";
 		reg = <2>;
 		interrupts-extended = <&pio 119 IRQ_TYPE_LEVEL_LOW>;
 		marvell,wakeup-pin = /bits/ 16 <0x0d>;
 		marvell,wakeup-gap-ms = /bits/ 16 <0x64>;
 	};
-
-	mwifiex: mwifiex@1 {
-		compatible = "marvell,sd8897";
-		reg = <1>;
-		interrupts-extended = <&pio 38 IRQ_TYPE_LEVEL_LOW>;
-		marvell,wakeup-pin = <3>;
-	};
 };
 
 &nor_flash {
-- 
2.52.0


