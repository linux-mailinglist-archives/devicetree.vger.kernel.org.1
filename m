Return-Path: <devicetree+bounces-253263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1936FD0904D
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A91230CDE60
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0093133987D;
	Fri,  9 Jan 2026 11:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="C4cFJP65"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C1D359FBE;
	Fri,  9 Jan 2026 11:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959287; cv=none; b=bC72haQ+/ZuNsTOou57undL5vV90J/gYOjYEX1dzo6z82n/PULAFyNXF0Hi1SK3kryiiejeSt76uRrpYWvVY7qgbVv4dzOTRYlTAYlVeRuFz8FD4BviRzmwSaYvhT8QmMiF1BnUMQ79oWG2+3qJncCzQiIunwQbUi1gERMJjRUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959287; c=relaxed/simple;
	bh=IiHlkRaUYC1xMqmP8zbNGMQQRpV7g2G84fXDM1/h9E4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sX3BJF4Ei8KHuMTSTA9IBCRPPk4x1Zr3jk5NGc9PC6DX/yKjfMdb356luyalg0qdJm2WARxkJA1hJSdWpVsWDHqDcSPvO7PQTDClheMOF5HIakLLkPY9rNe7KyjGg4YZ4YtdepaZuBAbA3veR8spYdEn/K/5vOz99yaKMYzDlu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=C4cFJP65; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959279;
	bh=IiHlkRaUYC1xMqmP8zbNGMQQRpV7g2G84fXDM1/h9E4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C4cFJP65tGmHJQXop5NeElYaWRURkScFOBeoUaNisD/Ha/aesK9eLThdAbyO70pVJ
	 I6NI2XC2WM9Ygd7c/bL1OZN66MIR8ZlEIGDfsjAMfx+67IcXKP30xADH4l/dpDd1ee
	 E76PXcc6CHlR/658DYSgMYHWq9ZOVzqCIkglQM2aoqKUz/LY+OIe6vAdJzRvV2QWQX
	 YJjaR4ZvRX9v/XsJnbJm+mBlZ1CVDzRJAwrQtS5vUr37bePnoFNaE6QWeXeXAzptwI
	 D+PtS6DOxFpVa0jUMYXAMT6HanlFe4hEefTSeYju/ZUDJagv+IFWghzOBUL/BpagDs
	 hzZJApNTPWgBw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7F65117E1513;
	Fri,  9 Jan 2026 12:47:58 +0100 (CET)
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
Subject: [PATCH 05/11] arm64: dts: mediatek: mt8183-jacuzzi-pico6: Fix typo in pinmux node
Date: Fri,  9 Jan 2026 12:47:41 +0100
Message-ID: <20260109114747.37189-6-angelogioacchino.delregno@collabora.com>
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

Rename "piins-bt-wakeup" to "pins-bt-wakeup" to fix a dtbs_check
warning happening due to this typo.

Fixes: 055ef10ccdd4 ("arm64: dts: mt8183: Add jacuzzi pico/pico6 board")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
index cce326aec1aa..40af5656d6f1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
@@ -91,7 +91,7 @@ bluetooth@2 {
 
 &pio {
 	bt_pins_wakeup: bt-pins-wakeup {
-		piins-bt-wakeup {
+		pins-bt-wakeup {
 			pinmux = <PINMUX_GPIO42__FUNC_GPIO42>;
 			input-enable;
 		};
-- 
2.52.0


