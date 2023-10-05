Return-Path: <devicetree+bounces-6164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF41C7BA0CA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:51:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AC1E11C209A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D022628E2E;
	Thu,  5 Oct 2023 14:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="fkjgfuYI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B942AB34
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:51:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AAAE64D7E;
	Thu,  5 Oct 2023 07:51:21 -0700 (PDT)
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 032DB660732D;
	Thu,  5 Oct 2023 15:49:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696517381;
	bh=CF7/KkgReu8FU2SkL3JEWvn04trO5qgnAMQhy/t48ak=;
	h=From:To:Cc:Subject:Date:From;
	b=fkjgfuYInamRq+lbhlWpcBOM/T8jkWBMMsSbwgIzXVaLZlb1uTmcLPA5Fyd5W1760
	 Syk95zka1pYfVE+7VRiLZ/VC5XvJptzGUm8Zb7Rd9meS0KiOAtpSls99L3oYO6TWQS
	 KaCR2DZ1kY/fNQNyMSDdDIfJ2/wWtrLpLCLpmVgZEh3KkAFYOrOfOnFfx3GY5jHesO
	 4VaSJ84386k0Xn3LxGrdeCs2wWsnMLF63JYfMohvzkcKhCkMBkeYhDRadUDBTqOYZC
	 2/hlmFGiYiu2T8Az0eJeEusJmUUy57/MfYY8nWW6nIvYtsFHKqETJOwBWsbiImKR9a
	 Ajqd9z5RU8zjA==
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
Subject: [PATCH] dt-bindings: media: rockchip: Add resets property into decoder node
Date: Thu,  5 Oct 2023 16:49:34 +0200
Message-Id: <20231005144934.169356-1-benjamin.gaignard@collabora.com>
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
already support it.
Update yaml file to be aligned with this feature.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index 772ec3283bc6..52c7c840455f 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -68,6 +68,9 @@ properties:
   iommus:
     maxItems: 1
 
+  resets:
+    maxItems: 4
+
 required:
   - compatible
   - reg
-- 
2.39.2


