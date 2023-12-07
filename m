Return-Path: <devicetree+bounces-22778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BE22C808B62
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6811E1F2146C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C224439A;
	Thu,  7 Dec 2023 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="Pe4EjwmE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 772A810E3;
	Thu,  7 Dec 2023 07:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=NV4Ft8tgE/n7rRjHBFr+1bS9Hz3GemYx6sUH+a6kFUU=; b=Pe4EjwmER42KqT/iuwaSLwu9x3
	Maj53hIQ+oplOr1EybYZxUOTcu+RXtCuw3PGKYmYn2YZiM09CSCmrGto/Y192/p9VUEZzprCWnROC
	F1A2wHvcwR5X4BDdMdmqfKWTa6mqxVFVCsJD3RVWeslxgy29hvrfQevmpAShdZnAkQLU=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:59044 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rBFwK-0006Zh-NV; Thu, 07 Dec 2023 10:05:25 -0500
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
Date: Thu,  7 Dec 2023 10:05:18 -0500
Message-Id: <20231207150519.1264808-3-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231207150519.1264808-1-hugo@hugovil.com>
References: <20231207150519.1264808-1-hugo@hugovil.com>
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
Subject: [PATCH v2 2/3] dt-bindings: arm: fsl: add Dimonoff gateway EVK board
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
index cd87d1afe7b7..9fc2d73ed8d6 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1025,6 +1025,7 @@ properties:
       - description: Variscite VAR-SOM-MX8MN based boards
         items:
           - enum:
+              - dimonoff,gateway-evk # i.MX8MN Dimonoff Gateway EVK Board
               - rve,rve-gateway # i.MX8MN RVE Gateway Board
               - variscite,var-som-mx8mn-symphony
           - const: variscite,var-som-mx8mn
-- 
2.39.2


