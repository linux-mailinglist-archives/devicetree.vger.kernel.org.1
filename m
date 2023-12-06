Return-Path: <devicetree+bounces-22402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA03480746F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63E471F210C1
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6BB346446;
	Wed,  6 Dec 2023 16:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="V0l520Nj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1599D5E;
	Wed,  6 Dec 2023 08:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=w1FWOxmqNm3Xknp9mTXwtPYHfk2i+1/bVnWICDzLaAI=; b=V0l520NjoP71COyAYhI+fxEAp3
	Ji36CObcrEcKbN7vmsdkLgqlGMH7vuXr8ma3IJGFDpfPhClF4b5kHfBEfTLjogpK9hAOKSvJGy1FG
	phrBlJsceFHrAh5xjFwPG+3tMXPyU0nXyGOcThPF49GG+hjkzLKb2ge5lekh8xyDMku0=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:39388 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rAuMh-0005Bw-JE; Wed, 06 Dec 2023 11:03:12 -0500
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
Date: Wed,  6 Dec 2023 11:03:02 -0500
Message-Id: <20231206160303.33185-3-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231206160303.33185-1-hugo@hugovil.com>
References: <20231206160303.33185-1-hugo@hugovil.com>
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
Subject: [PATCH 2/3] dt-bindings: arm: fsl: add Dimonoff gateway EVK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Add DT compatible string for Dimonoff gateway EVK board based on a
Variscite VAR-SOM-NANO with a NXP MX8MN nano CPU.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index cd87d1afe7b7..e445d65d6f17 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1025,6 +1025,7 @@ properties:
       - description: Variscite VAR-SOM-MX8MN based boards
         items:
           - enum:
+              - dimonoff,dimonoff-gateway-evk # i.MX8MN Dimonoff Gateway EVK Board
               - rve,rve-gateway # i.MX8MN RVE Gateway Board
               - variscite,var-som-mx8mn-symphony
           - const: variscite,var-som-mx8mn
-- 
2.39.2


