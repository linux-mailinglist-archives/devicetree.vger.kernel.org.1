Return-Path: <devicetree+bounces-247349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2224CC7A88
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:39:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19D553074A07
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33FC36C59C;
	Wed, 17 Dec 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hI0Okw5M"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E3A36D501;
	Wed, 17 Dec 2025 10:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966792; cv=none; b=acwaBi7MLBYWL01N058cUKAbpaxq1nOY+GkbLHiwGfkPYW33opVNYYbUw889e9+2FvwBdkdkuh3a0spngX8fykN2KBS/Tevven6f8ljGpJ7vcn/OsR6l804Rvzsc6tuoswMjs99hJjHFhIp/9jK/T9f6lJovrxgQhb+zLoY4d2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966792; c=relaxed/simple;
	bh=egAszwG9tB/q++tDA1sT9mHPYlbOp6SzpoQMWzWwofQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VHwl+rUa/YBDLoyF7elPLY57x3H33XgbdDUTHS7bmC7lpNBPsq/FFcOIvJUIB+23j/nAedVfypM6rpWyhA+dzozF9c7I37PAbg5ycvC21yDjO5I8f19unSX1NLJ7W859hFV60ShQghSIZVt/4q0+SbV2+boIPhtqjf+pskc70+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hI0Okw5M; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966787;
	bh=egAszwG9tB/q++tDA1sT9mHPYlbOp6SzpoQMWzWwofQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hI0Okw5M8NBDptDjoVZWfelX4zUbpANDRgk5E8CtCepAf3hrvyDUMTg2MbfX9cxlL
	 aCwmEh2AX+qWiGnu1Sl7pZjbDMgzd9o609wA0VFqv+6mf1J37aeF5Rx0GBuP6hM1dA
	 3juuwu8NWQI/L7QmR4HrEvfA3TnUa4cHyWtid5zi/c7pK89ufSNsa9VptPvlV7vSty
	 KHw0GjbVKIQAUzYi2IQ+ZFzi13SYZA6o2yd7ZZeOuSN3QVg0KjV3bWms8w1rMdHsFN
	 8WdN/WnMZaWrR1tB5aPMzq5KC6k7yUbZzY4L0IRlARVr3ialCWyK1KkU5kjqaXPATV
	 kazRVD5JAP8pw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7964117E1154;
	Wed, 17 Dec 2025 11:19:46 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:11 +0100
Subject: [PATCH v2 12/12] arm64: defconfig: Enable Mediatek HDMIv2 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-12-a994976bb39a@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=792;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=egAszwG9tB/q++tDA1sT9mHPYlbOp6SzpoQMWzWwofQ=;
 b=7gtSv9z3v5G4gNkpdsay8zynkZN/QfDiWjrlhe9hMdCxd9fpyIgQPWM1Vwta1QWUBOilZO4oq
 jLMwG5Kbcb+BsTz9s2twbj9FZdOx4XQILA1pZLQPeVWLQXJjfOJ12Us
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
index 982b894a36d29ebbdda025a3ae9713ddfd7195d8..975297e8c01a28fe4fd90185635d654e970ae83c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1016,6 +1016,7 @@ CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MEDIATEK=m
 CONFIG_DRM_MEDIATEK_DP=m
 CONFIG_DRM_MEDIATEK_HDMI=m
+CONFIG_DRM_MEDIATEK_HDMI_V2=m
 CONFIG_DRM_MXSFB=m
 CONFIG_DRM_IMX_LCDIF=m
 CONFIG_DRM_MESON=m

-- 
2.52.0


