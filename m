Return-Path: <devicetree+bounces-43484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAD085A784
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 16:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CB951C214DA
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C157B39ACD;
	Mon, 19 Feb 2024 15:36:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BCF039840;
	Mon, 19 Feb 2024 15:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708357013; cv=none; b=mm+s3jUWNcAoljFcVThBGM4EyljpuPEXzPtc9X//SsnIUf9PEpjll1C3z7KbBIqiamVTVHUXZ6oGvXIMRkdm/wDpc9q2mrSHImMo1eVBE3EoPK7Ndf0Al1icrj6qxGGjGe0PYtUOJnSllxKrnCqBWQfdb4aAqAvDVmh2c7Rt34A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708357013; c=relaxed/simple;
	bh=/MEcMiGKCbf3yYUzt/GsZWLM7re4x3gIcacqQZ5kJmM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=O8Ag167fITkGOBQ0d5xwh1dOl0R+yZP7OAdxEDjgQc5WivM6FvXIKVlVFc+1H9mTATIhcSwmZtTOZZ/wdO3D473PoBhndYGNZ4XcemKW70/VTBKA5ZuIjZfPILwMsv0rqJkg0benzXuVASXuhrupem6ZApJezBZDIIgxB66JhlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A7911042;
	Mon, 19 Feb 2024 07:37:31 -0800 (PST)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 274EC3F762;
	Mon, 19 Feb 2024 07:36:49 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
	Yangtao Li <tiny.windzz@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Martin Botka <martin.botka@somainline.org>,
	Maksim Kiselev <bigunclemax@gmail.com>,
	Bob McChesney <bob@electricworry.net>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v5 2/7] dt-bindings: thermal: sun8i: Add H616 THS controller
Date: Mon, 19 Feb 2024 15:36:34 +0000
Message-Id: <20240219153639.179814-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240219153639.179814-1-andre.przywara@arm.com>
References: <20240219153639.179814-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Martin Botka <martin.botka@somainline.org>

This controller is similar to the H6, but covers four sensors and uses
slightly different calibration methods.
Also the H616 requires to poke a bit in the SYS_CFG register range for
correct operation, so add a phandle property to point there.

Signed-off-by: Martin Botka <martin.botka@somainline.org>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 34 +++++++++++++------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
index 9b2272a9ec15d..6b3aea6d73b07 100644
--- a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -21,6 +21,7 @@ properties:
       - allwinner,sun50i-a100-ths
       - allwinner,sun50i-h5-ths
       - allwinner,sun50i-h6-ths
+      - allwinner,sun50i-h616-ths
 
   clocks:
     minItems: 1
@@ -50,6 +51,10 @@ properties:
   nvmem-cell-names:
     const: calibration
 
+  allwinner,sram:
+    maxItems: 1
+    description: phandle to device controlling temperate offset SYS_CFG register
+
   # See Documentation/devicetree/bindings/thermal/thermal-sensor.yaml for details
   "#thermal-sensor-cells":
     enum:
@@ -65,6 +70,7 @@ allOf:
               - allwinner,sun20i-d1-ths
               - allwinner,sun50i-a100-ths
               - allwinner,sun50i-h6-ths
+              - allwinner,sun50i-h616-ths
 
     then:
       properties:
@@ -82,6 +88,17 @@ allOf:
         clock-names:
           minItems: 2
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: allwinner,sun50i-h616-ths
+
+    then:
+      properties:
+        allwinner,sram: false
+
   - if:
       properties:
         compatible:
@@ -101,17 +118,12 @@ allOf:
           const: 1
 
   - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - allwinner,sun8i-h3-ths
-              - allwinner,sun8i-r40-ths
-              - allwinner,sun20i-d1-ths
-              - allwinner,sun50i-a64-ths
-              - allwinner,sun50i-a100-ths
-              - allwinner,sun50i-h5-ths
-              - allwinner,sun50i-h6-ths
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - allwinner,sun8i-a83t-ths
 
     then:
       required:
-- 
2.25.1


