Return-Path: <devicetree+bounces-247340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDA5CC7A46
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 016B5305BEC9
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4C836C0BA;
	Wed, 17 Dec 2025 10:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="I/SZ7qU7"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F4336BCE4;
	Wed, 17 Dec 2025 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966783; cv=none; b=rKfvtXmcjFlntp4p5TshiaIG00JpBDKWQk/H0mkvs3vwcTj1rNy7pgGGnCT/aGlWXngb6t6kT94dxlrUXa+uZkv3aQ42kTi2iSzPdryAK8SgFZbkQi/jw/1cx3pfVmlX/qXqztSVt6dZu9v4a3jbsyeB0nIeryPY5Mz8IWvhjfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966783; c=relaxed/simple;
	bh=/iHY6Ek9NZv6NH4I47nsOrQqEuFHwaSUHvBiqk85d20=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nMrFGgTY9C5NTe+dpsae+xFuG2LHM2AIDHkBgTfK1tx13vXXLv14toTfYT3NAIciYT2VbZNlG8PSkpvaFMc3hfNcL0QyV2/KKm31QJXz7ZSR8hn+Y+/FBF39CbpIZbGP+1mBwDE1nVpNJA0Bo05VN0gYav4YtiX98QEIimyVO0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=I/SZ7qU7; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966779;
	bh=/iHY6Ek9NZv6NH4I47nsOrQqEuFHwaSUHvBiqk85d20=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=I/SZ7qU7VSj6SCADkIyQuFrB9d48rdPfCmOLWaL41fH735Wu8o2DPTfZkt+OT6Ya1
	 ZiQ/WdZRA4p5UC+Q4qTTl3y3lMNoDbG0qaYTvzkKhCwJ5FkKOraPOrB+WWz5tyfq03
	 TjDeKnKBzt1JIZEVIqODZ9j1IjZ+51JIeuX6CTAWREP/HvBuXD8qSLkQ04gjcT/QV0
	 frYqmE0LAxw8AM6eBCHWsRCRCotlHwd9lLrtatV2eVCiDDFyUrIYBH72xhQde9aFYJ
	 5NWBciA+YpaIEvSSARRMvy8KPwx8T4tNLxPYVY36Z1QGV2ht7tyNXB5q+xlucLdxSx
	 kSvkjfUiaufvQ==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 92B9917E1149;
	Wed, 17 Dec 2025 11:19:38 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:02 +0100
Subject: [PATCH v2 03/12] dt-bindings: phy: mediatek,hdmi-phy: Document
 extra clocks for MT8195
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-3-a994976bb39a@collabora.com>
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
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=1648;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=uBqYbsllwSAgfx3yFUqteOM6qhanU+ngECKB88ov1So=;
 b=mduR62ASYwH+iiccWNUlf5O1GlcYwUlq8FuJbjpMYx1h5b5vGjXRGAnq5gB3T5rwZN24QpXgq
 Xfa8pphygFXDpIY/gjvDUIJ21E0RTdZ+25sFLMncIqvoqLsb14yeHz/
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

From: "Nícolas F. R. A. Prado" <nfraprado@collabora.com>

MT8195's HDMI PHY block has 4 clocks instead of just a single one.
Describe the extra clocks for it.

Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
[Louis-Alexis Eyraud: addressed feedback from mailing list]
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index cd4ac42ee45e4648ed512f68f6f28d1f3f2e1116..ac93069f48013b7f082f1b64ee0a6a60a3a912eb 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -38,12 +38,20 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 1
     items:
       - description: PLL reference clock
+      - description: HDMI 26MHz clock
+      - description: HDMI PLL1 clock
+      - description: HDMI PLL2 clock
 
   clock-names:
+    minItems: 1
     items:
       - const: pll_ref
+      - const: 26m
+      - const: pll1
+      - const: pll2
 
   clock-output-names:
     maxItems: 1
@@ -79,6 +87,20 @@ required:
   - "#phy-cells"
   - "#clock-cells"
 
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: mediatek,mt8195-hdmi-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:

-- 
2.52.0


