Return-Path: <devicetree+bounces-205174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D80AB28393
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 18:10:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DA135C7BBB
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FE1307AF6;
	Fri, 15 Aug 2025 16:10:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.grinn-global.com (mail.grinn-global.com [77.55.128.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0562C21C8;
	Fri, 15 Aug 2025 16:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.55.128.204
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755274242; cv=none; b=naYrIuC5/5TrKGme6eIivp1bVEKEFj63wIuvcW9dlvYStT4ELY55DKIEDVV6X1eppuiRyLqGpjbmgWXdOX0HjZQj4vZJbjh1P2sA0rwK6YjrNcAc1hmFlkIvqiM3nlRCFrUeuQpKid92gsWaoFzXVMfCbe+TtIKsFe9P0NNxQTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755274242; c=relaxed/simple;
	bh=hUSohzW7g5U1FeomQRedsBh7WHWHuaLyjPTp/UsmXsU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ATTcC38R+DBbeQBe3fkuV7dzMsln0uSwN8dVXbIR0GVBbm0c6vb2NVG5Tk+kTxkQ4tAu6dCw/WDE6M8lqyxtnP0M+0bMhGE0x0ZozdXkivvPtWh9WCyyN72sJ9hVV0hq/T3HX8OwkmOwdgbZ/YGpB8FR7KTlmU8IusNhp2pMSvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=grinn-global.com; spf=pass smtp.mailfrom=grinn-global.com; arc=none smtp.client-ip=77.55.128.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=grinn-global.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=grinn-global.com
X-Virus-Scanned: by amavisd-new using ClamAV (8)
X-Spam-Flag: NO
X-Spam-Score: -0.637
X-Spam-Level: 
Received: from mateusz.grinndev.ovh (79.163.192.75.ipv4.supernova.orange.pl [79.163.192.75])
	by server220076.nazwa.pl (Postfix) with ESMTP id 4442C1BBD46;
	Fri, 15 Aug 2025 18:10:35 +0200 (CEST)
From: Mateusz Koza <mateusz.koza@grinn-global.com>
To: angelogioacchino.delregno@collabora.com,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	marcin.czarnecki@grinn-global.com,
	b.bilas@grinn-global.com,
	Mateusz Koza <mateusz.koza@grinn-global.com>
Subject: [PATCH 4/4] dt-bindings: arm: mediatek: Add grinn,genio-510-sbc as a valid platform
Date: Fri, 15 Aug 2025 18:08:37 +0200
Message-ID: <20250815160837.371592-5-mateusz.koza@grinn-global.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250815160837.371592-1-mateusz.koza@grinn-global.com>
References: <20250815160837.371592-1-mateusz.koza@grinn-global.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-NA-AI-Spam-Probability: 0.48
X-NA-AI-Is-Spam: no

Add device tree bindings support for the Grinn GenioSBC-510, a
single-board computer based on the MediaTek Genio 510 SoC.

The new compatible string "grinn,genio-510-sbc" identifies this board in
the device tree bindings, enabling future board-specific adjustments if
required.

More details about the hardware:
- https://grinn-global.com/products/grinn-geniosom-510
- https://grinn-global.com/products/grinn-genioboard-edge-ai-sbc

Signed-off-by: Mateusz Koza <mateusz.koza@grinn-global.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index ad7fb85e3559..92ecc689430f 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -426,6 +426,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8370-evk
+              - grinn,genio-510-sbc
           - const: mediatek,mt8370
           - const: mediatek,mt8188
       - items:
-- 
2.43.0


