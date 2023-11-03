Return-Path: <devicetree+bounces-13756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A687E04B0
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 15:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA0F51C21041
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 14:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58911A27F;
	Fri,  3 Nov 2023 14:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="vkh41IBA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6919BD9
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 14:29:28 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F48DD43;
	Fri,  3 Nov 2023 07:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=k4/cDjpb9d77VWiAZ2ThzasCg6BFN7pRSjC5XbAMJoc=; b=vkh41IBA3TUMSyrWc/NSq7pDj8
	muIYsdgJVAZPo8QrfqQuutChL7440jusWNttF1rfaVNC1Qux5h7lgvlKouyYJlnjnu8neZ0H7DRp7
	g1B9x1/P3Id8jRieX9Z1lazSpw/8y94ARmFhbepQuaPfnh7jJNE9M4yBD7vtj7yZj3xg=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:53152 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyvAj-0005If-K1; Fri, 03 Nov 2023 10:29:18 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	leoyang.li@nxp.com,
	robh@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Date: Fri,  3 Nov 2023 10:28:30 -0400
Message-Id: <20231103142831.2116163-3-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231103142831.2116163-1-hugo@hugovil.com>
References: <20231103142831.2116163-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH v4 2/3] dt-bindings: arm: fsl: add RVE gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Add DT compatible string for RVE gateway board based on a Variscite
VAR-SOM-NANO with a NXP MX8MN nano CPU.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 32b195852a75..5b98a17b65b5 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1022,7 +1022,9 @@ properties:
 
       - description: Variscite VAR-SOM-MX8MN based boards
         items:
-          - const: variscite,var-som-mx8mn-symphony
+          - enum:
+              - rve,rve-gateway # i.MX8MN RVE Gateway Board
+              - variscite,var-som-mx8mn-symphony
           - const: variscite,var-som-mx8mn
           - const: fsl,imx8mn
 
-- 
2.39.2


