Return-Path: <devicetree+bounces-22403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ACB807470
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FAFC281FE9
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD7F46451;
	Wed,  6 Dec 2023 16:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="tDob0Ktv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CFA31A5;
	Wed,  6 Dec 2023 08:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=7xYPkJqMk8P8vw8H/AAH9ojAU0rwJue/lAnswVrUCEU=; b=tDob0Ktv6Mo3G7rDgSex0gZf2S
	olJpQPsliBVrXU0NwTidsY3a7OjgRCNrhOIhiSym8b1Vg7Ti52F68j46rHayUXjZqVb//qQOIzRae
	N+FPf9t1a48zJBQEsRtLSyQtH+H7PiHu66zZNIR7yk0yNH3PFMWEdn3F4ZkgFMwgE8Tk=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:39388 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1rAuMf-0005Bw-RX; Wed, 06 Dec 2023 11:03:10 -0500
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
Date: Wed,  6 Dec 2023 11:03:01 -0500
Message-Id: <20231206160303.33185-2-hugo@hugovil.com>
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
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add dimonoff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Add vendor prefix for Dimonoff, which provides
IoT smart solutions and custom engineering services.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 71dcd6240a99..338ad15a7ab2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -352,6 +352,8 @@ patternProperties:
     description: Digi International Inc.
   "^digilent,.*":
     description: Diglent, Inc.
+  "^dimonoff,.*":
+    description: Dimonoff inc.
   "^diodes,.*":
     description: Diodes, Inc.
   "^dioo,.*":
-- 
2.39.2


