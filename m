Return-Path: <devicetree+bounces-245423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DBCCB0977
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E27033038767
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1181832E6A2;
	Tue,  9 Dec 2025 16:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Y5jvpwnG"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583EA32E69E;
	Tue,  9 Dec 2025 16:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298100; cv=none; b=Htn7tNRYyMQd/DubMXFojUUkOWM8kFQHig/GqBX20fG1lPaPolCaBBi3wfFYjzWVoMSErCH/nUNXpAoJpCKdi1yGOHRUxk0ZSr2isk2ZUdYpPZSRcIFeottm6i0sFTuoGhNzhdKgbB/Rz54m+te56t3NJD6Re9psM3GWblRi7Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298100; c=relaxed/simple;
	bh=KcsnWznaCJU8MOVAN1wmTGeLu//ZGdwoIZ+6tcgUhIE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GE3aAwu9YrzjnW/TmLUjozq1omlQL27SottUvTrS2Nn2+hewckcBhsM+SavNEnzKhM1PITmoQbHQWoJc4ExEebdm9dEUUCuuld0jbWJPSHJUzGvaLkWl5CnhNo3aEJCAogenDvT4HPww75O3/yrpNvuiEFGmKCQW6e7ohJ0gVoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Y5jvpwnG; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298095;
	bh=KcsnWznaCJU8MOVAN1wmTGeLu//ZGdwoIZ+6tcgUhIE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Y5jvpwnGObyceyDShDTX7w66eOP8zN97wJsEr60gjKcgeyTB0/gAW1RfFxzvEtAXQ
	 jOh0Affa3ZBBamJKOvASGwD8VmWVnECKUBa29lX9gr+1LepbPAuvpLvQ1Si0i0TYSZ
	 MOV7CcrtyJWGSd2vT5D60D3cpG56jgvZkegFOfdIcScPTpQXdGH9tzOFQHZXN1yllu
	 sVgQs6wXYSi2HdGO9Tu+PzQSDVTE1qxH1PGCtTbEuE/S6qa5agejIPkATvp6xy8y6R
	 ShzKndAMD7ZttSN94Ay9Q7iGtcf3pD7UjM0NuqjH1jngLfcWF9FSlpBRNOidizlhwj
	 lp4AA05EgzcUw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8ABCC17E1541;
	Tue,  9 Dec 2025 17:34:54 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:42 +0100
Subject: [PATCH 12/12] arm64: defconfig: Enable Mediatek HDMIv2 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-12-9a6106effba6@collabora.com>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=792;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=KcsnWznaCJU8MOVAN1wmTGeLu//ZGdwoIZ+6tcgUhIE=;
 b=oIVEXIknM/gDRvQKglYE1HyEGdUXUQRTBpy8aFDzYu1FlRQMCNRqtRtxbE9YHNCd3Ymc1Zzlv
 ssH9z75vXp6A8Uyh+ccCpIk/d3bMbAiFpgyordgKieCT3sakZxys0xo
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

In order to enable the HDMI output support on Mediatek Genio 510-EVK,
700-EVK, and 1200-EVK boards, enable the driver for it in the default
configuration.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cdb7d69e3b248975557e141481a88fd86115cf40..24c1670e5bfd4ed0902d5440d43fdb4e5dd676f1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1015,6 +1015,7 @@ CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MEDIATEK=m
 CONFIG_DRM_MEDIATEK_DP=m
 CONFIG_DRM_MEDIATEK_HDMI=m
+CONFIG_DRM_MEDIATEK_HDMI_V2=m
 CONFIG_DRM_MXSFB=m
 CONFIG_DRM_IMX_LCDIF=m
 CONFIG_DRM_MESON=m

-- 
2.52.0


