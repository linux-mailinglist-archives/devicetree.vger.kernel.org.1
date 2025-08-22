Return-Path: <devicetree+bounces-208363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B69B32241
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 20:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE05F64004B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD91D2BEC28;
	Fri, 22 Aug 2025 18:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="xRTKwQBd"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4CBF19DF62
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755887050; cv=none; b=Z/Ljop4H+GjMp6dgXzOH7XoII90k0RKq+GxCWU36LM3T92TIlgcex1utawRuRj5l3FEN5kA1ghnIg8Xmwa6XZuffHjBJbntOYgpsY5xMWGPOPeUkLlnSCc5Tiyw2toHKQ5tKnTQ9v+Ikr92yyA9cbDsXvf0Jolwv9aqv5tmAWb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755887050; c=relaxed/simple;
	bh=bmlBKG1nUnyNfFlVBS6NKwxZXr+giUgB9G+8aS2gJwM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=okSWqe8sae2x8O6rBBxTHEqPMV6ocO2lqGMMLzPgpLte7N6zqVkwEJ0N/CVZ3ItzQm4q9gCVtmTMuyAv6j+y5PwIsoj8V45j88eJGkcnRGr+mVDVzv+E7YK81RMNIp+FKpBhdUJyWu+TGpXFdxUHHHvrp3dQzQD1QnNQ+tRNcos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=xRTKwQBd; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57MINvRm306643;
	Fri, 22 Aug 2025 13:23:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755887037;
	bh=3vp4u9E91bDnJI9ZnVKLu6phUXs9zAW+YqhtjTBNiYA=;
	h=From:To:Subject:Date;
	b=xRTKwQBdq9BI5pFShYGPstDI1bwkM5B/kufPKGUIDLZB1UJpD8eYID+JzSz6pLJMc
	 YA4sEAvvyQ2sAE/yLA14cOf0uGy159kXle/x4qnO1kyvNJVue2wxs72PaNbwZvB3iM
	 cKH3eOXN0nUk/i0EGAoypC+RaH1xDgzwym/NLOpY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57MINvYc3099791
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 22 Aug 2025 13:23:57 -0500
Received: from lewvowa02.ent.ti.com (10.180.75.80) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 22
 Aug 2025 13:23:56 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by lewvowa02.ent.ti.com
 (10.180.75.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2507.55; Fri, 22 Aug
 2025 13:23:56 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 22 Aug 2025 13:23:56 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57MINqVp3948777;
	Fri, 22 Aug 2025 13:23:53 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linus.walleij@linaro.org>, <dri-devel@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH] dt-bindings: display: dsi-controller: add bridge to patternProperties
Date: Fri, 22 Aug 2025 23:53:52 +0530
Message-ID: <20250822182352.2006834-1-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This patch extends the binding schema by adding a new `bridge@[0-3]` to
represent any bridge devices attached as DSI peripheral.

Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---
 .../bindings/display/dsi-controller.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/dsi-controller.yaml b/Documentation/devicetree/bindings/display/dsi-controller.yaml
index 67ce10307ee0..d7ca700070a9 100644
--- a/Documentation/devicetree/bindings/display/dsi-controller.yaml
+++ b/Documentation/devicetree/bindings/display/dsi-controller.yaml
@@ -73,6 +73,24 @@ patternProperties:
     required:
       - reg
 
+  "^bridge@[0-3]$":
+    description: Bridge connected to the DSI link
+    type: object
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+        description:
+          The virtual channel number of a DSI peripheral. Must be in the range
+          from 0 to 3, as DSI uses a 2-bit addressing scheme. Some DSI
+          peripherals respond to more than a single virtual channel. In that
+          case the reg property can take multiple entries, one for each virtual
+          channel that the peripheral responds to.
+
+    required:
+      - reg
+
 additionalProperties: true
 
 examples:
-- 
2.34.1


