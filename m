Return-Path: <devicetree+bounces-19457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 112527FAFA3
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 02:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C038C281B23
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 01:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A5AF186D;
	Tue, 28 Nov 2023 01:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="j/MfXWJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D8D1E4
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 17:37:58 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id EAF16379442
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 01:33:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oy_WrJYU1uDo for <devicetree@vger.kernel.org>;
	Tue, 28 Nov 2023 02:33:50 +0100 (CET)
Received: from werkpc.lan (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
	by mail.rnplus.nl (Postfix) with ESMTPSA id 437C3379439;
	Tue, 28 Nov 2023 02:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1701135230; bh=oZJLJBZAx0MsbUik85ITPZJyjd007ov2TZPI2l716ic=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=j/MfXWJgHTh0AtXvrXLnAe1itn7cYMb7NGAh1tII1aJIEz83V2lHg+ki4glL0fRbr
	 +ANvN1kFhezYBvoJs0HOYCFs3G3sz6aeP4BbF8ooWtTdoxOdDUfhD29Yk1pRZxzAEd
	 bOrakgBLjHchm570f05dJmQ5+Ol3tE6Dr1EjAl1g=
From: Renze Nicolai <renze@rnplus.nl>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au
Cc: Renze Nicolai <renze@rnplus.nl>
Subject: [PATCH 1/2] dt-bindings: arm: aspeed: add Asrock X570D4U board
Date: Tue, 28 Nov 2023 02:30:16 +0100
Message-ID: <20231128013136.2699317-2-renze@rnplus.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231128013136.2699317-1-renze@rnplus.nl>
References: <20231128013136.2699317-1-renze@rnplus.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Asrock X570D4U compatible.

Signed-off-by: Renze Nicolai <renze@rnplus.nl>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 749ee54a3ff8..81ed678905fa 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -36,6 +36,7 @@ properties:
               - aspeed,ast2500-evb
               - asrock,e3c246d4i-bmc
               - asrock,romed8hm3-bmc
+              - asrock,x570d4u-bmc
               - bytedance,g220a-bmc
               - facebook,cmm-bmc
               - facebook,minipack-bmc
-- 
2.43.0


