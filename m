Return-Path: <devicetree+bounces-180277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 891BCAC3271
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5084178854
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 05:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D283A149DF0;
	Sun, 25 May 2025 05:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XAnc3jSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957BC173
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 05:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748150215; cv=none; b=JxQaZz6aYnJz+AOCGBDnzO3JkwZ08/zn9ntWwWa4owPolI39hTz3oRlxDFEbAwzcGNZ/u9INaS3+C2xxuMsJNiK0fP+l4vy3ZSLIoovWwN0MCiaxObpqSmgE7V5yOjmsNg1T4uWkMmcI9qFdkHPU2SoS8IIV7f557j1kfIuH0dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748150215; c=relaxed/simple;
	bh=+5c0VEkCDydqP+dJvv5yWg3lhMM2EDfhOnBOrhDfWlw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=taSjVlVSDeyRTns4pzwxNakZpnpN5eDcHwI4y2BDg+pLC1zF3dTHo+YqAChAK38cJztbCzn9PbHU2qOD78GMOzM4wxwtlK/jYcZsxxkgpFRYnkof6wJ1LAh+P3vaJNW6/WxhcMnqsLjk5QcwipXmvGYSyCiBcIF+KbWZq/J65iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XAnc3jSe; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-441c0d42233so650995e9.0
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 22:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748150211; x=1748755011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=msz6xS+TXEWf8BCe56XVsqhhuQHPDAmqJV6W3BuHJYo=;
        b=XAnc3jSe2MjqDm4pxwwzZaoEBZxjIT3T/TqwBWEQ+m4KfalEGrf191VqSoRABGCV4M
         BUocT2zybtzrZSfieZgH9r/pHGoTle2Yym9mdvKf95GLV37Pg4RszeRflrJDTSzPQtIh
         R1Sh5FXnNvV/LJm/cN+qyVEoUlxqW3ZTxTZ4aVLNfO6BlhGIRX+g0qENpY1gxHG3W73l
         guvvXNS4ksJTXUjBWaABXQJdQ80X/B7WkeyscVWBNu2ggE3qnQCF1TSdy/lQl11+xvGD
         lTqvNaO58EQnbNiWv3zA5GpjblaLmX6/5j2wZTThV9CfqPQ5s2E4vmyTZGLrEiGOMNhM
         kXkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748150211; x=1748755011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msz6xS+TXEWf8BCe56XVsqhhuQHPDAmqJV6W3BuHJYo=;
        b=wwLBFw9KhxhuV5cfZRisgilLRbLqlOdbaocTGHJSgEwYrlOIq5WRtu8y5brff9TIgJ
         mL8+1YKD8FjIrk06y8+Re7nktHK3s+ot40NQBipdd0fZRGkyF4jwhOUbhv3lLSWPwxyZ
         cU/sYs37TFQEfKj2U5NHbNRyiOgEQXQ8v8CaVjoXsUa3PtQe+wVl14+tHDE405ZZph0A
         +JivGNsd/URSscTM+XTGruzIGAk64IedoFt2Hy8qIMIOWNKSUqGsTlZjWnNp3rUimXm2
         igvzRoGxmVFeh2LK7iDCc4GObyzMjQREnPseE6k//iYlZ80AmaGrQ6SY8jMMUCPy8ctY
         Q7ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXskOdbxCtSYc4JRr2KnWOb1iZM+lyeWBTj+sleqtCTkzCfZORQq60oux9ayaSbYknjObZ4q8wSEAQN@vger.kernel.org
X-Gm-Message-State: AOJu0YyJXxIxbJ5afSe2kyj/E6+FGOur/+NkR37tmqi9Lk8cDOQ0COMw
	T8WkUmzQ29PhryC0R+3B46Je03b4xZYLgm9/D3xHgsFeRPHCZM85oyUJl4UribfoJEQ=
X-Gm-Gg: ASbGncvj8cyzaNDu/6xeonnPHL31f1Dxfpe+FzA4SDRLSu9apCGbjh7TsNeXBtOOMJ3
	p+UfIKpwfRCrbflPW1l4F/GyTDgj1LAlHwv1O53yhVgZxm2Be77f6+sv6RZBQsnHmXzVeTtF8QC
	bCEGeuf9JYwL93tD66GaQEL9E0nPsoq89Hc2VrE5qnmZz3SvnMuhVojjBvbc6j3DPbFfGZ2IISX
	VErbjG2BLtKJBaL97TwWxJPTfvi6Dk5RPVLv3XKNIPPjPWdWVPlnoKdJpytp90xpr2r8YyI5ERy
	dGgLXtp9fnqHbWfe0I/rrnG0IK0oA1BXP1ZSdX+as5OjnmSemReMDv4nAUNiPg==
X-Google-Smtp-Source: AGHT+IF/jwowPMNweDb/B2JPyAKFGWGQxdc3mLIKIM4NNW5whKHA8bo7N+3jJruEbrSaU/3hrj+bdA==
X-Received: by 2002:a05:6000:40e0:b0:3a3:62e1:a7dc with SMTP id ffacd0b85a97d-3a4cb434a24mr1333037f8f.1.1748150210738;
        Sat, 24 May 2025 22:16:50 -0700 (PDT)
Received: from kuoka.. ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4d67795eesm372940f8f.86.2025.05.24.22.16.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 22:16:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] media: dt-bindings: mediatek: Constrain iommus
Date: Sun, 25 May 2025 07:16:40 +0200
Message-ID: <20250525051639.68753-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3619; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=+5c0VEkCDydqP+dJvv5yWg3lhMM2EDfhOnBOrhDfWlw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoMqe34zQlzL+mH8sYednrPzCB+DkOTefFX/gsg
 CPcqSp2phOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaDKntwAKCRDBN2bmhouD
 1+d+D/wO4XWtaSL5Qb2EZcmthSwwShwp2UkTqt4aV2OtyA/7xavezOOZEsI64ORhN+e6aSKIJjt
 8aV5tclmOA+GGI92SpVK3nLJUWcuV1gn87alc+VfrGqU8UfrsDB/lMef5fNZIaqIHJhW3uXoEyK
 jjSdxY2nwJS4tofa8kjxqmuAkmjv/wZasaEbDfw2YiTLu2wWCjmlmO3OsYM9z6KA3j8q1dnW7Dw
 e7tf64cBf5FP0xdNNxBNNWpqggwSqwryvr+6Vxp7GefHghXl/luFwh/31n4jhV5twJXdFX4w6O5
 BIFyepFm4VuMoDeHOXqQsnhUGEob2rU1GSpDzRHtodioeou+G1qQu6RZcRaXILpSMPMY8XTjKfd
 jVQA/q0nNLYctkBfycPA5OiavcADRTUJ5I6a7zUY+7nf689HDwiBzyF9DV6N9djU0jug4Qe37Le
 zzRBlrazoQT2FuQJY9YZiJWwXCG6lv83lYsMSkgHyL98/yTXdy0aHZl08HjdyICYGaHFJ4VnrOy
 0TsfjR0sbuBvtGme9HmCnlehtrp2kRR/gvMEGGAjNWaFb1ANYblR/W0BGN9CsWyiSQoW0Hzq30n
 kxEL8vcOovz7A3QtUcXlvRmkvPf56Mua848yvHoIncqJFWv3t+Ls/bLbqjXzxoH940UIYc7UC1F +hPx0ET/ieWU3Gw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Lists should have fixed constraints, because binding must be specific in
respect to hardware.  Add missing constraints to number of iommus in
Mediatek media devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/mediatek/mediatek,ovl-2l.yaml           | 5 ++---
 .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml   | 5 ++---
 .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml  | 4 +---
 .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml  | 4 +---
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
index bacdfe7d08a6..ac0d924a451b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
@@ -45,9 +45,8 @@ properties:
       - description: OVL-2L Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    minItems: 1
+    maxItems: 2
 
   mediatek,gce-client-reg:
     description: The register of client driver can be configured by gce with
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 4f110635afb6..c0fd0a91c4d8 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -65,9 +65,8 @@ properties:
       - description: OVL Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    minItems: 1
+    maxItems: 2
 
   mediatek,gce-client-reg:
     description: The register of client driver can be configured by gce with
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index 878f676b581f..7e5234def39a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -64,9 +64,7 @@ properties:
       - description: RDMA Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    maxItems: 1
 
   mediatek,rdma-fifo-size:
     description:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index a3a2b71a4523..276868c0fde7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -43,9 +43,7 @@ properties:
       - description: WDMA Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    maxItems: 1
 
   mediatek,gce-client-reg:
     description: The register of client driver can be configured by gce with
-- 
2.45.2


