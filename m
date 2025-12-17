Return-Path: <devicetree+bounces-247339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B19ACC7A55
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:38:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3182B30681A6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21D236BCFD;
	Wed, 17 Dec 2025 10:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cAk8INtJ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7109436BCCA;
	Wed, 17 Dec 2025 10:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966782; cv=none; b=KedzviFyNcPwiFYYFXYH0R5/lQJgOSU6QMvn6AiHxiT0Pem1OQysrHtAc3G8a2W3siht2ajOPsP769TW/dog6vgUVSIMF+q+Rkp6dC8CnuWDV6S57dzCp4S8pPBrwgdLuxfDeLDML6zHrz16bkT7mzT47O7I7hxKUhJwmAx977E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966782; c=relaxed/simple;
	bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p5NY4eLMxzNbFQe9n1MnCUWTnVy7KlTIXIs+H/jHmjVQ0m93guKsj31U9iRabHfjEqXZojhk09E9SjEvUIfjRHrm0CLA/9O1pL8/3ESg2ors35Fn/GC/r3EyRXWBaLk1DXxTZ9CP9aOB21zXaFPNwyuqnsCJac9/ZqH0LeLAx1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=cAk8INtJ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966778;
	bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cAk8INtJ10fE97TZGFrql0Q0hZPMTk7ue0iGSZvxa89bDF1dDNFQtN/LR2D0Zhk8y
	 HoCTUewfVkyXKd29lIAt8+kCZ35L/9m57cLmF1zhk/CyazUqPSX8VnBmXUMIW5Hgis
	 XCynkCw/FnHmIMuIp+TE9SwFyYbvTjGrkeshaiLHfgLF/IponcAaZI/6fgJgCYo0FP
	 W3XKLfVGiuYeD/3OUMSdPZULM3+AZR5o2+S+P3zUNIMMuA4Q8UDfGQJkUIAs9PZXd7
	 JlbkFXZa31THkABNFJhQHeHy9yhbg+RHVXJG8jnBY6PKbwZLLBlpJZJTouSmO9A7I7
	 svRNcCg40sGYw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B13E317E1146;
	Wed, 17 Dec 2025 11:19:37 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:01 +0100
Subject: [PATCH v2 02/12] dt-bindings: phy: mediatek,hdmi-phy: Add support
 for MT8188 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-2-a994976bb39a@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=1077;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
 b=dkjnWJXAfZcZC1z74WVh6/Lub5XXCFeWY01+Hrw1baZdaesZ+NuS8nHD8Kj2wq9Gb9IvzbMp4
 9fIBi+a/2tGCyy33u0jnukUSN7m3WEHEPW+IwQgXQ+P8FHjARn5jvqM
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add compatible string for the HDMI PHY IP on MT8188 SoC, that is
compatible with the one found on MT8195 SoC.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 10f1d9326f18dba85b92b4c88f4c0f6cdddc4c25..cd4ac42ee45e4648ed512f68f6f28d1f3f2e1116 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -26,6 +26,10 @@ properties:
           - enum:
               - mediatek,mt7623-hdmi-phy
           - const: mediatek,mt2701-hdmi-phy
+      - items:
+          - enum:
+              - mediatek,mt8188-hdmi-phy
+          - const: mediatek,mt8195-hdmi-phy
       - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt8173-hdmi-phy
       - const: mediatek,mt8195-hdmi-phy

-- 
2.52.0


