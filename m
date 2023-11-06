Return-Path: <devicetree+bounces-14042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 062457E1D7D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 234CB1C20A7E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62DC9168C2;
	Mon,  6 Nov 2023 09:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="kEHMFNAz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCC1168A6
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:52:10 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC291F1;
	Mon,  6 Nov 2023 01:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1699264329; x=1730800329;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=jd6MUcWKRJ1RmTUfwIIEw+3tKFwk7+0cW8fgrk+BS8c=;
  b=kEHMFNAz2vPiW5P2BOLKH1/bhkYuwuatBRwgIBZQYCo+5B75VpxGn/Hk
   ispph5H2OA/MKxixsmIRTWBdONOZt1FVfHwg7RGDTG5Tw3zs7j7Q3QICh
   AMQ4UbEfejrkFKE2oqi4no14utVkUQ1E/vmB+kO6njsE1WoE3x6EMxR3T
   kc0LbQhrIsRVeY1TFviTOR/UOXN7UKs0azv+ZChwyQTmJ70qdOrDgmRex
   2+AGk1bF+vgPUZs+P9PO4L4aGK5/dl3rdyppJGMXL2sejDn9Nvzx9HWuc
   X3ySm2xYhWAt+x1V01V6DT2AVo/SGpOQsL6F4qcufGIquw/WZYj4uRSJV
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,281,1694728800"; 
   d="scan'208";a="33823100"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Nov 2023 10:52:05 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 34F5F280084;
	Mon,  6 Nov 2023 10:52:05 +0100 (CET)
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
	Philippe Schenker <philippe.schenker@toradex.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: pwm: imx-pwm: Add constraints for #pwm-cells
Date: Mon,  6 Nov 2023 10:52:03 +0100
Message-Id: <20231106095205.231210-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231106095205.231210-1-alexander.stein@ew.tq-group.com>
References: <20231106095205.231210-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Only fsl,imx1-pwm comptabile devices use #pwm-cells = <2>. Newer SoCs
supportinverted PWM output, thus #pwm-cells needs to be set to 3.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/pwm/imx-pwm.yaml      | 20 ++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
index c01dff3b7f843..59a981c0f39ab 100644
--- a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
@@ -9,9 +9,6 @@ title: Freescale i.MX PWM controller
 maintainers:
   - Philipp Zabel <p.zabel@pengutronix.de>
 
-allOf:
-  - $ref: pwm.yaml#
-
 properties:
   "#pwm-cells":
     description: |
@@ -74,6 +71,23 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx1-pwm
+    then:
+      properties:
+        "#pwm-cells":
+          enum: [2]
+    else:
+      properties:
+        "#pwm-cells":
+          enum: [3]
+
 examples:
   - |
     #include <dt-bindings/clock/imx5-clock.h>
-- 
2.34.1


