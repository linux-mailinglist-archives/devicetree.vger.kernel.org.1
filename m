Return-Path: <devicetree+bounces-6238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E06167BA4AC
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:11:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 90B22281973
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0AD4347CA;
	Thu,  5 Oct 2023 16:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bja4xJPC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B7230F93
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:11:14 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FF3448E;
	Thu,  5 Oct 2023 09:11:12 -0700 (PDT)
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AA09A6607333;
	Thu,  5 Oct 2023 17:11:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696522271;
	bh=I2txkEvnu/MKP501CqRC09fArHHso7r5qQlX44V5U/4=;
	h=From:To:Cc:Subject:Date:From;
	b=bja4xJPCXX+3IjNN6av+ZzwBFfbJqowvhnre7vfnPmbr3LwXnl86b2trfV77Edku7
	 RiNYy+MxmW8sRPseLaP0qV48GMJ8Nnqt6m0B1agC15rOJz486V+EafHO3f/mQaYW2D
	 ZGOI9rDm2THSEjkMUgb9qfeRLdvmKGOzb3AX6Ea65/7BZia2MhiivbUoynANJFJJBD
	 nXiPXEYxZEm8aoKgAQB44NVpTjbW604g/ENWh3C4fJpBPG8JxObpP2A5S6KViJBN/e
	 1hku+vbu/6UwTTEhndHSKxjc0mGRJew0sro4jzUs62nuxuG34Z4AqnmRV7BDqq2kxs
	 VKrlPelRRA5vQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2] dt-bindings: media: rockchip: Add resets property into decoder node
Date: Thu,  5 Oct 2023 18:11:07 +0200
Message-Id: <20231005161107.269303-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

RK3588 AV1 decoder hardware block have resets lines and driver code
already suppport it.
Update yaml file to be aligned with this feature.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 2:
- Add description for resets lines
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index 772ec3283bc6..c57e1f488895 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -68,6 +68,13 @@ properties:
   iommus:
     maxItems: 1
 
+  resets:
+    items:
+      - description: AXI reset line
+      - description: AXI bus interface unit reset line
+      - description: APB reset line
+      - description: APB bus interface unit reset line
+
 required:
   - compatible
   - reg
-- 
2.39.2


