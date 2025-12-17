Return-Path: <devicetree+bounces-247346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E91AECC7A97
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52D4C30E39F1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB78636D4FC;
	Wed, 17 Dec 2025 10:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Mob26nBG"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5426936C5B7;
	Wed, 17 Dec 2025 10:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966788; cv=none; b=leceLgQwt+CPmEq4HdsYl+xxzjIPvm2uYYuIOqpfc0KPHoOVagmgfJZUKApgseCAE5Pcoyl94hTqQqF8EO8CBrbzkcOki94TX3Y2fb8tdEg/jvZD8LArAO+flr3YVmjjUAvAdnrQx2sP+jCt2IxTHPEmVZIpJ0M5lYt1dVMmWY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966788; c=relaxed/simple;
	bh=GKcOSBIVFDnp+GUxDrITE/MDL4om5/OvUq+7HaEF0uc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q0nQsc7qSASWpeohicKq4ErMjK4t40ThFLMYAtFnB2lXOOzWj65p8oymBQwtVBrKa6bddyUEB0scjAhsuePkb7oxp5lEWMFvTos6G/yxDS6wuRo7n5WJKWUL4O1jrUxyUHLxsGNsHBBG8NARculS1yFqBgHYjQLEjcT0o0wR7LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Mob26nBG; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966784;
	bh=GKcOSBIVFDnp+GUxDrITE/MDL4om5/OvUq+7HaEF0uc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Mob26nBGj2lGKXDvE1y8Np9K1zSpPZSgbfLTHCDdhXW0DO6LKQEPodSUDHxGXRWo1
	 MnGo1UIxAYaHLNiA56cLZHfyRlr1SyPs5Wdq21bfyRDrir633a/llyWa87scqg9xpI
	 Px0W5/On43wgZWSjYco2DvDpNOY5LlLgt2TOEC0Gj5unwFqzQaUce2fgDh/95lZ36g
	 3KwYEaacRPqNf1O34tPF+Rl+y5L8rHZc/XlfCRiGrLj6tlo/n5WxvSr6s00iLyoAcq
	 JAg0iIVF/xY2mOXjkNHeaKEeThDBQmQ2UFH5K2Q+poez2lcU6WUvZefREDjt8q9Ax/
	 vWrZh5YfagyKg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D79A617E0506;
	Wed, 17 Dec 2025 11:19:43 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:08 +0100
Subject: [PATCH v2 09/12] arm64: dts: mediatek: mt8395-radxa-nio-12l: Add
 HDMI sound output support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-9-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=861;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=GKcOSBIVFDnp+GUxDrITE/MDL4om5/OvUq+7HaEF0uc=;
 b=DiWsci2ktePoDxP4wOEu5rgVoipXQeW7ZXO1Rys/kmVajV/S3m8/lF0QSCb0eEyQ/4eAeLXC9
 sKBZ9hONNeWAivruooZMPJRyB12pju0dy9/F5wG4WakejxhhocYgYe4
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add in the sound node a new dai-link for ETDM3_OUT_BE to add the sound
output support through the HDMI TX connector.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index b0e18876bd5d2341c6f17f47e9f11433be807ccd..1cd4b84e98615be6c5cb13d01b7baed0e017c3be 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -1072,6 +1072,14 @@ codec {
 			sound-dai = <&pmic 0>;
 		};
 	};
+
+	hdmi-dai-link {
+		link-name = "ETDM3_OUT_BE";
+
+		codec {
+			sound-dai = <&hdmi 0>;
+		};
+	};
 };
 
 &spi1 {

-- 
2.52.0


