Return-Path: <devicetree+bounces-245411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D262CB0965
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3855530088B9
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AAB0327C1E;
	Tue,  9 Dec 2025 16:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="JPNCr2Tp"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636B4322C6D;
	Tue,  9 Dec 2025 16:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298089; cv=none; b=Mv3obuqLD93/CmrOfDbXL059bJJd6pf07d5phvvxgwIZikghZtsoH4CSkbAzfW3IknWVCXA/ak82hbkC9WcEXPSrS1two7XoJHILPpdF6O8ZOVzrs1yxLNvLikGnQWk9nSZYHuIGKDIB6AnXQ4Y+/9vnAmkVLLg/ijTgZFevYLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298089; c=relaxed/simple;
	bh=UAgQYJMonNyvABFQUCYGTv0h55DLB+kYqjP0l6avOdQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=olUA4nFn2kbi+BtfXHbul1mQr9aptffiPGwB73fFQIsfnsizSZbVsRtDI/4jjQCfpj/iAb6pHbM1njr/Fz2d86HHwDUlAB4+kS3iZoyUQjLRg0egH4u+b3jO7i7AGeg2DSjZvfZaaQHk7AkVyjnBYUpNLAVis77BdXKUJbCBPCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=JPNCr2Tp; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298085;
	bh=UAgQYJMonNyvABFQUCYGTv0h55DLB+kYqjP0l6avOdQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JPNCr2TpBi2kaRVdpAZ/5/A0y/zmB6QfWQqtyig711HC4dgg7kgGyulVjB+Ba72Sq
	 a3hi0bFzpe3zsXMmXoQaRBlR34J/NyrqYHSSmmz1EQ6ZDoA+bptntsVNvCfFvJpA7b
	 wrtzsUVpweFL74f9OlqSFgxXRifTUVUVOV+PGYScAxNncl9ogkS4zmlk52qdNYvvkp
	 sV/V0x8SYW4lyKxBVHVezVU9of77FZWo8ykEI6Dd14mxt9jGni/dxfEE4n6QcvbAct
	 OmrEfsLyOvoThTYLmrePb8GTH7Vpd/t0Jl3yM3zo2nkgiyBCvi8TVww6EzV7KBZiik
	 4ma6b6GWRPIoQ==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DB83A17E13CD;
	Tue,  9 Dec 2025 17:34:44 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:31 +0100
Subject: [PATCH 01/12] dt-bindings: phy: mediatek,hdmi-phy: Fix clock
 output names for MT8195
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-1-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=1455;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=80k4rA+yIjkX5sofkMjaL77NjvPABi7qoBPmKhwouPs=;
 b=98URLzBi+Ca0Vc4b04hGBVXS9zCB3FEsgOuTkNSoMBlCimncBF8/pZtMFCRPQ04tSwgmicV9b
 2A1tPriYlmBAMxfhSIZAdcCzMa/dEyEkuvzCjD1/ABh/oQysT6fq+1R
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

For all of the HDMI PHYs compatible with the one found on MT8195
the output clock has a different datasheet name and specifically
it is called "hdmi_txpll", differently from the older HDMI PHYs
which output block is called "hdmitx_dig_cts".

Replace clock output name string check by max item number one to allow
the new name on all of the HDMI PHY IPs that are perfectly compatible
with MT8195.

Fixes: c78fe548b062 ("dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
[Louis-Alexis Eyraud: splitted patch, addressed previous feedback from
mailing list, and reworded description]
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index f3a8b0b745d13ffc55d391570bff20830d925ed3..10f1d9326f18dba85b92b4c88f4c0f6cdddc4c25 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -42,8 +42,7 @@ properties:
       - const: pll_ref
 
   clock-output-names:
-    items:
-      - const: hdmitx_dig_cts
+    maxItems: 1
 
   "#phy-cells":
     const: 0

-- 
2.52.0


