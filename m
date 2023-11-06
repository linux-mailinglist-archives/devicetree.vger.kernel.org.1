Return-Path: <devicetree+bounces-14171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0057E285C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9006BB20E83
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E8728DD7;
	Mon,  6 Nov 2023 15:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="gdlytETR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB807156F4
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 15:13:32 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2DC8107;
	Mon,  6 Nov 2023 07:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1699283611; x=1730819611;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UOcqh7XEcNQ+w0d5dBR9IVF/Lbthrrvs8GT3OePqTPE=;
  b=gdlytETReufO+ZzwqXzrQQ4hI1a9i7PyA2HBuN+NW1/V5My8Eb5gyai3
   CtwGfp3ISrKyuGO16WGJEkapkHDy1dxoyAZkC4Y8CRdCu2IFW6n/8icUk
   Tsl9zqhcdqjy2e06IRsD1G+x9AHaImtK9wqOf90jisrFMt8brk9J5Z1+g
   kyJGTa1zeKVZcA/jgvi+oV4GDYNyxQpZPnbcn3D4jWywjs/TGifwkDyYI
   FL3QaczL01QN85lg1a2TWYq7FyCEktDdRzYYX6rlp/CqPMPGeUQ2wQvh4
   /rKdCB8Y8swJI5EB2DFDtl7qmBnOPJauqObqPHbHvJo0BeP+uv2YMEbEf
   A==;
X-IronPort-AV: E=Sophos;i="6.03,281,1694728800"; 
   d="scan'208";a="33832044"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Nov 2023 16:13:27 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 227C6280084;
	Mon,  6 Nov 2023 16:13:27 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: pwm: imx-pwm: Unify #pwm-cells for all compatibles
Date: Mon,  6 Nov 2023 16:13:24 +0100
Message-Id: <20231106151326.812099-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231106151326.812099-1-alexander.stein@ew.tq-group.com>
References: <20231106151326.812099-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use #pwm-cells for all i.MX variants. Only fsl,imx1-pwm does not support
inverted PWM output. Keep it the same for consistency.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
index c01dff3b7f843..a84a240a61dc1 100644
--- a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
@@ -14,12 +14,10 @@ allOf:
 
 properties:
   "#pwm-cells":
-    description: |
-      Should be 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
-      in this directory for a description of the cells format.
-    enum:
-      - 2
-      - 3
+    description:
+      The only third cell flag supported by this binding is
+      PWM_POLARITY_INVERTED. fsl,imx1-pwm does not support this flags.
+    const: 3
 
   compatible:
     oneOf:
-- 
2.34.1


