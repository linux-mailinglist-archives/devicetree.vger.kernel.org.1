Return-Path: <devicetree+bounces-245414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68160CB0950
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B28B1301BCCE
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B7C329C52;
	Tue,  9 Dec 2025 16:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="j+qrwXrN"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102DC3277A4;
	Tue,  9 Dec 2025 16:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298091; cv=none; b=H6p/VCspv5kfRXODemyX0QmGo/WY7cDWoW06NgelkwIXbifODZSUd6Rls/GGfWZQ7+KsOj37GM0rU97KaW0nj2xpI65TqFoeyO1Sc9MvYZeXQ3magNsmIfnBBmDt+kFwaXUkGh3ANL1+pR7e4+Hd0TWU0ww2UoD59VvMcPXEB0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298091; c=relaxed/simple;
	bh=D155m0dMAjWiokZAY7tsZUWjRlmivh1T9mFpxqvCODE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cqon+biiNwbs2n4tzWiZiYGa4pkIMuJT5FE5E5je26I/VK911+DLH3I00KNhwGGh6Y0aeBhWdCWy+CQaT3+cjwRXhKOE7RwgSgXWjnRRdb9Hu5+KoGxaQwt0Rh5p/sbMId/6IUmKGIkBQ4j0w3FyNyVdeXTXOW12q+eDtIdFjro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=j+qrwXrN; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298087;
	bh=D155m0dMAjWiokZAY7tsZUWjRlmivh1T9mFpxqvCODE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=j+qrwXrNQGYEoW43YEXq6se8XNSsAjnX/kixuXIUDU74/DHpALB71ZkSB06ZZIAY9
	 szeoeb5GGVMSFik8Zs2Sq3xGh4yBTJAoD3AdKqzjaTZvU+k1vOut0xLTMyXAQNN8fz
	 BMRxU+zemYTlvYeUndmN3trp9Vt+kH88W3SmQ5MaDJF506lmiA5weqyBMmdTiJEmIF
	 LYXv21ATFzyRiFHxy81WrSDcM8trrrfKvBQCeBn0z21N1fpnQ7fcJVAnMqFyOj1R5e
	 w4UMYIBxBMvvLSo5MyPgfal1XLwkY3/HqOJZYDP5lD3RaSGvc+av9Hou7D2K5njXsV
	 IxCY9kjfeA2sg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A4D2B17E153D;
	Tue,  9 Dec 2025 17:34:46 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:33 +0100
Subject: [PATCH 03/12] dt-bindings: phy: mediatek,hdmi-phy: Document extra
 clocks for MT8195
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-3-9a6106effba6@collabora.com>
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
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=1906;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=5hUKertYPrurznVcSH8uzvnKUCkTlAWRfoUyf3tOLDw=;
 b=yGTBS4qBLe2IPVOGk6LE9R661NMRTP144cZHShDIwPCuvjh95qxcTz+VZsNYzgulRenfyG7SE
 74uO8BYyyHYAxUnZ99zDWC4K8/g/eIfRbkDcR4GcrbTI6Oe1jkPRzJK
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

From: "Nícolas F. R. A. Prado" <nfraprado@collabora.com>

MT8195's HDMI PHY block has 4 clocks instead of just a single one.
Describe the extra clocks for it.

Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 36 +++++++++++++++++++---
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index cd4ac42ee45e4648ed512f68f6f28d1f3f2e1116..91f8118689d5e838c4d75264822bb09a00fea21b 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -38,12 +38,12 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: PLL reference clock
+    minItems: 1
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: pll_ref
+    minItems: 1
+    maxItems: 4
 
   clock-output-names:
     maxItems: 1
@@ -79,6 +79,34 @@ required:
   - "#phy-cells"
   - "#clock-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: mediatek,mt8195-hdmi-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: PLL reference clock
+            - description: HDMI 26MHz clock
+            - description: HDMI PLL1 clock
+            - description: HDMI PLL2 clock
+        clock-names:
+          items:
+            - const: pll_ref
+            - const: hdmi_26m
+            - const: hdmi_pll1
+            - const: hdmi_pll2
+    else:
+      properties:
+        clocks:
+          items:
+            - description: PLL reference clock
+        clock-names:
+          items:
+            - const: pll_ref
+
 additionalProperties: false
 
 examples:

-- 
2.52.0


