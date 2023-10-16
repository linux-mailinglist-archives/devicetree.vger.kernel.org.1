Return-Path: <devicetree+bounces-8960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF49F7CACE1
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:05:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60598281552
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D783628E0E;
	Mon, 16 Oct 2023 15:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dh-electronics.com header.i=@dh-electronics.com header.b="O+DXTNnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6348E28DAB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:05:17 +0000 (UTC)
X-Greylist: delayed 562 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 16 Oct 2023 08:05:14 PDT
Received: from mx2.securetransport.de (mx2.securetransport.de [188.68.39.254])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 88AB1EE;
	Mon, 16 Oct 2023 08:05:14 -0700 (PDT)
Received: from mail.dh-electronics.com (unknown [77.24.89.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx2.securetransport.de (Postfix) with ESMTPSA id D24DA5E8E7;
	Mon, 16 Oct 2023 16:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
	s=dhelectronicscom; t=1697468113;
	bh=Tf8nOfbtKfWYOFbWdHje3ndT0ZLjeTdxnZ+BtAhUWc0=;
	h=From:To:CC:Subject:Date:From;
	b=O+DXTNnJ5AoZBgALEOYFpU4aV5+Lvb3LAkMJLL0Iov0Zdi6fjmIJ8ugd8iZUbUhTI
	 pMYCqXU+7+AHYCexwp5uxV1ATCoO/l8XRC9qa2GefcA67kJWwoQfuLG64h34N7Fv6W
	 w0ybVCj0Z9PAnrGwsVpS+HhHRhqbyNRLDqlLMhzQYBf8SAcJJEqLh/h0xXDiapXHTk
	 uDEfKT5EjpWUxLec6nvOeurF49x1XT5UV/wH/jaTwxeXaS7ACKABk0TFMUhskzRJxq
	 ZMAnFqtuyzOZcv2fBf20jvmXRdjXH9+EVaEL1YOl/4eAOsMaK82k1F4ArMoPlPWmoJ
	 CnFI0TNflwvlA==
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.27; Mon, 16 Oct 2023 16:55:08 +0200
Received: from localhost.localdomain (172.16.51.3) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.27 via Frontend Transport; Mon, 16 Oct 2023 16:55:07 +0200
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
To: <inux-arm-kernel@lists.infradead.org>
CC: Christoph Niedermaier <cniedermaier@dh-electronics.com>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Marek Vasut <marex@denx.de>, "Fabio
 Estevam" <festevam@denx.de>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH V5] dt-bindings: Add Marantec vendor prefix
Date: Mon, 16 Oct 2023 16:52:58 +0200
Message-ID: <20231016145258.2877-1-cniedermaier@dh-electronics.com>
X-Mailer: git-send-email 2.11.0
X-klartext: yes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add vendor prefix for Marantec electronics GmbH.

Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
V2: - Add this patch to the series
V3: - Add Acked-by tag
V4: - No changes
V5: - Rebase on current next 20231016
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 7ff33cf10fcc..e91787ded3fb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -819,6 +819,8 @@ patternProperties:
     description: Mantix Display Technology Co.,Ltd.
   "^mapleboard,.*":
     description: Mapleboard.org
+  "^marantec,.*":
+    description: Marantec electronics GmbH
   "^marvell,.*":
     description: Marvell Technology Group Ltd.
   "^maxbotix,.*":
-- 
2.11.0


