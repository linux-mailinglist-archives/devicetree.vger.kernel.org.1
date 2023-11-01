Return-Path: <devicetree+bounces-13504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C87077DE609
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 19:36:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 676ECB20C15
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 18:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCFEF125D2;
	Wed,  1 Nov 2023 18:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="We6QoRo2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E85E54A
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 18:36:13 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87A8C109;
	Wed,  1 Nov 2023 11:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=FMtsaj3hwFOVJQfUsJEZAVJtfz0Fqva6KUM7oYWIIuk=; b=We6QoRo2rR+epEx1VvUm60RKMR
	oYD+o+iNOZMSiUuRmceuLgP3ox1B1oAWvKN3cgVVGD+xjDDL7A+nAB7H+NwiDTvjo6V6x9FmA5GDM
	Q7uQYWpesBBqvMD1pduubxvVztz7v3WgAGSXrsqdJsp+igZxa0WvK1swi6INFUYquybg=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:45840 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyG4K-00015L-Vz; Wed, 01 Nov 2023 14:36:01 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com,
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
	hugo@hugovil.com
Date: Wed,  1 Nov 2023 14:35:47 -0400
Message-Id: <20231101183549.2960083-2-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231101183549.2960083-1-hugo@hugovil.com>
References: <20231101183549.2960083-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add rve
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Add vendor prefix for Recharge Véhicule Électrique (RVE), which
manufactures electric vehicle chargers infrastructure components.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e48b0a02827a..8455d7f5cfae 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1161,6 +1161,8 @@ patternProperties:
     description: Shenzhen Roofull Technology Co, Ltd
   "^roseapplepi,.*":
     description: RoseapplePi.org
+  "^rve,.*":
+    description: Recharge Véhicule Électrique (RVE) inc.
   "^saef,.*":
     description: Saef Technology Limited
   "^samsung,.*":
-- 
2.39.2


