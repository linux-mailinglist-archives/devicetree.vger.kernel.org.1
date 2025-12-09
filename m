Return-Path: <devicetree+bounces-245413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CDBCB096E
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2410D306114A
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 292F7328B4B;
	Tue,  9 Dec 2025 16:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hoiYuOoy"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388743271F9;
	Tue,  9 Dec 2025 16:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298090; cv=none; b=WUuGf21Jzd+taQlzi6pBq0q0Vg2IAqhrAAXliqyaR4qjJgyXV/zDBA/FWUPJivK1xo4HHC9YwglykGYKB29mfY4itBkrc85vcSjpJZSsMZhEkRyEqWIU9tMvfmWh3RiP6fkpgndcHYwhjBZXkE7YHhLZPzy+6vqi+wDcX7h2uys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298090; c=relaxed/simple;
	bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PT+kfheX1K/lx/fae2lCxDRmmvaLRmkX3a6aGjMXUx4wbBhlz9AsBLVz6Dz1i0qts6iS7yuK+2WFm+PTkuPbSQFLht7PciJixwHf0QuPo9AznJunApR9vceNiT9YQjckogKRtNYphzeiUIykxP+x5pXY3fzbAjnP5PJDeekXz4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hoiYuOoy; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298086;
	bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hoiYuOoyLqL6xAKb/eGloUZW0rgaXDOWn9naijZzU9wxN4zfy3TezY8kQu0GM/ZJi
	 eCsdCpGachIr043l0y1VVY1owNPDcd3D+5IQrn6r67nLi3MRbEWWwioM6BlqkNRt6l
	 VnLFrQWQqSWEs991rgEWHD8Yf2ov8vQMNiycPb6ZtF3L1XLmxsNODNV2GJiCzNq3wm
	 GiZsR1JcISmCifTubXG9f/q67gUdPprDrKyO3uP/xGj9lQO7Ws9RREeym82HsVdNy+
	 SsXKyztcWU37bwuIxkRX+Vyf376g4My4SretPVUGia11xmuzteCBsF4SXpgRH+gYxk
	 pUZeND86TJQ7g==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C0E6317E1423;
	Tue,  9 Dec 2025 17:34:45 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:32 +0100
Subject: [PATCH 02/12] dt-bindings: phy: mediatek,hdmi-phy: Add support for
 MT8188 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-2-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=1077;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
 b=fer9FkO+XrowLR4YEuqt7iBG+3fk7ZyZYU96wXwqlJ2UxJvixW7A+x4m4NQpNvUegaSk+b4ou
 agp6+jrhneHCBe3tc4ViofZNjzsCpl+Dk9oa4DkUdewr27teW6cABGR
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


