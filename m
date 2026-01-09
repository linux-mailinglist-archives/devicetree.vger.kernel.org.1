Return-Path: <devicetree+bounces-253269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C52D09059
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C71C3306CCC0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A304635970B;
	Fri,  9 Jan 2026 11:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="plcizixg"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B8C359FBA;
	Fri,  9 Jan 2026 11:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959293; cv=none; b=WOR6/B0SW3cwXAi2aZkXHh+QqMvBWXq68E51URUbWwHvd2/i8H6RgbGbi/qV8GHdcoBDHb5h741wTjBDruw5WlyrAActb4vwZcdpvInMeFEtP9qi7dgIyuPzFHjz2FEFbcieMp7if7/aYzW4ZUNs+FUa9paPA7aiNzVjnmCO6r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959293; c=relaxed/simple;
	bh=vXU6vQZw0NI2vmAmOn1U26+4VzWla83NiWQsK7QNa5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XVthF1CyT5UdRdHZaCZZEeeakG6zAn0Y0z+MW3sfMUNF4LrFZmGyCapmyYHfXrrqZcSntQ6pTo2S4lWUQ1ygO1Ym6vE89CC/eVO8AmTGnv87RDrhr4jqe/C5bVYY9H77AF8glpEzg/rd0hry65A2ElGBVAnkDl/d/H5gCBibg2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=plcizixg; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959279;
	bh=vXU6vQZw0NI2vmAmOn1U26+4VzWla83NiWQsK7QNa5g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=plcizixgQKcatHtQE5FrFr9uvZvmKnXux0/0vVILVRD+xvZRJE6oLKSC2RnzKuVak
	 Wwekwc7cZMIf8drpLJx0GzXORRkmuxmr3XdzDf3Uq/J/KVQumEBrb3k8dfnKbmBubC
	 YshiV8Lln8sFiqiKc659SD+PLX7ltMfUE+vnWS2l7wQmnu1kx/AyfCG2ojmj3mjKlg
	 8Uebq6GYjcvCj3AsE7kBEXs7xrsKfr+3Yo5gYG3XgqEfrfOPXcOZ/OQpptK+iW9VOj
	 e3S/eMY7zxByzC1Ofhne0xYAX96R/61FArjdWZuyfR73YR/zHH0jjCnl4Aziv4G78X
	 oXDxmafKf+lfg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3B6D717E151B;
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
Subject: [PATCH 06/11] arm64: dts: mediatek: mt8183-pumpkin: Fix pinmux node names
Date: Fri,  9 Jan 2026 12:47:42 +0100
Message-ID: <20260109114747.37189-7-angelogioacchino.delregno@collabora.com>
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

Change all of the pinmux main nodes to have a "-pins" suffix to
satisfy devicetree bindings checks.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index f60ef3e53a09..e47955602c83 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -241,7 +241,7 @@ &mt6358_vsram_gpu_reg {
 };
 
 &pio {
-	i2c_pins_0: i2c0 {
+	i2c_pins_0: i2c0-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
 				 <PINMUX_GPIO83__FUNC_SCL0>;
@@ -249,7 +249,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_1: i2c1 {
+	i2c_pins_1: i2c1-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
 				 <PINMUX_GPIO84__FUNC_SCL1>;
@@ -257,7 +257,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_2: i2c2 {
+	i2c_pins_2: i2c2-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
 				 <PINMUX_GPIO104__FUNC_SDA2>;
@@ -265,7 +265,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_3: i2c3 {
+	i2c_pins_3: i2c3-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
 				 <PINMUX_GPIO51__FUNC_SDA3>;
@@ -273,7 +273,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_4: i2c4 {
+	i2c_pins_4: i2c4-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
 				 <PINMUX_GPIO106__FUNC_SDA4>;
@@ -281,7 +281,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_5: i2c5 {
+	i2c_pins_5: i2c5-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
 				 <PINMUX_GPIO49__FUNC_SDA5>;
@@ -289,7 +289,7 @@ pins_i2c {
 		};
 	};
 
-	i2c6_pins: i2c6 {
+	i2c6_pins: i2c6-pins {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO113__FUNC_SCL6>,
 				 <PINMUX_GPIO114__FUNC_SDA6>;
@@ -297,7 +297,7 @@ pins_cmd_dat {
 		};
 	};
 
-	keyboard_pins: keyboard {
+	keyboard_pins: keyboard-pins {
 		pins_keyboard {
 			pinmux = <PINMUX_GPIO91__FUNC_KPROW1>,
 				 <PINMUX_GPIO92__FUNC_KPROW0>,
-- 
2.52.0


