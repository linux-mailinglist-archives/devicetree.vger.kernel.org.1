Return-Path: <devicetree+bounces-15693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 988B47EB553
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 18:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 393EB1F251B5
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 17:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1553F4121E;
	Tue, 14 Nov 2023 17:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76578405EB
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 17:04:56 +0000 (UTC)
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1ECB8;
	Tue, 14 Nov 2023 09:04:54 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r2wq5-0000hS-39;
	Tue, 14 Nov 2023 17:04:38 +0000
Date: Tue, 14 Nov 2023 17:04:30 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: watchdog: mediatek,mtk-wdt: add MT7988
 watchdog and toprgu
Message-ID: <4d7db8786dce35273db516f3d41228bc27a08fe9.1699980962.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add compatible mediatek,mt7988-wdt.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
v3: no changes
v2: Drop adding include/dt-binding/mt7988-resets.h as that header is not
    actually a binding header.


 Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
index cc502838bc398..8d2520241e37f 100644
--- a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt6735-wdt
           - mediatek,mt6795-wdt
           - mediatek,mt7986-wdt
+          - mediatek,mt7988-wdt
           - mediatek,mt8183-wdt
           - mediatek,mt8186-wdt
           - mediatek,mt8188-wdt
-- 
2.42.1

