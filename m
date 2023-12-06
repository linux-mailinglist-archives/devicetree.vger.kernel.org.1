Return-Path: <devicetree+bounces-22237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F862806DD0
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:24:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF8A31F212EC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38F63172E;
	Wed,  6 Dec 2023 11:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BNzbCDOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B86D137
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:23:56 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6ce40061e99so562547b3a.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 03:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701861836; x=1702466636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mFCukuSdWsuRhvFe3mgqtOXnJmu9VjUJaxtlOP7dBQI=;
        b=BNzbCDOrsCsiP4mM9kEtiFntdNYcFYH9VjbBpi1mli9RYCgIs2riB6zN2d1Qr2NTpq
         zmEV77n1dLEimIb2ztJIBg9qiYgINzIQzKwn1mauZ+Nh53vvFW4hxRLC0Nl/uyPslOgy
         scClvg7y5G98G3BWuF5zaOmEX0zOPxa178KMOPv68xP7e1I4KkPblIAcg81bYt0FJX0W
         yFDpZ8LPcSDR0sn5O3hctxbi4SkIvA1MkGtHKVRLXW97hg+XJ8tt2lX5DhnbKYzPvZ16
         n4u4owSgF1pqJV09YGUhGZ9qla+6tYpxI1cufvwNj4mqGDk1JZnn7oWLt+9gczZteeeu
         qJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701861836; x=1702466636;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mFCukuSdWsuRhvFe3mgqtOXnJmu9VjUJaxtlOP7dBQI=;
        b=KhEGylG9G4DWNCW9/wSyy0rH0xQXW4FLnu/XedTpEqJOJI4MhYIKbAfnPw3xhY3l74
         IrT+ZZuQGWMNteYR8TukQqqmBEOveZD25i8G/WGXWXWlDlVmgLqvuqiFxqmOWhe85GZ9
         7YsYUBfEr7Xbi3lGrxiNoYBNd0TNGMrRxEKPUi/+iTU5a3/cvYve3ED2hBa5c/Zf3LpN
         dKlb83pPjjOU05U+2vm2RIfwfMj5xDagjk8XWC6Wpi9uJP0rpZgo7r83rpHwCGiH1WDU
         w8EiS1G78dfR0WuzZLo98NZfgk139r9j5YdvrccLBNWLmWYCG5mdlfyE3sCm9NlfeDe4
         MY8Q==
X-Gm-Message-State: AOJu0Yzd4jw22+QYc16CopPp1mjvtsK7CI7KC6c3DnlJ7EGYtzEwpSuv
	EMbQnHfbvTq3E74fkA/3dt0=
X-Google-Smtp-Source: AGHT+IErRb2I0j2INI9Zc3pcAIFqg2Ge+UJaxEcBqAcuwEjcZmUXjdWj53TzibB9k2rKIMD4NHNEOQ==
X-Received: by 2002:a05:6a00:2d11:b0:6ce:68a5:757 with SMTP id fa17-20020a056a002d1100b006ce68a50757mr1433588pfb.0.1701861835628;
        Wed, 06 Dec 2023 03:23:55 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:6764:e124:5ffc:3f5])
        by smtp.gmail.com with ESMTPSA id i128-20020a62c186000000b006ce5300ddacsm1876723pfg.5.2023.12.06.03.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 03:23:55 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: marex@denx.de
Cc: stefan@agner.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: lcdif: Properly describe the i.MX23 interrupts
Date: Wed,  6 Dec 2023 08:23:37 -0300
Message-Id: <20231206112337.2234849-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

i.MX23 has two LCDIF interrupts instead of a single one like other
i.MX devices.

Take this into account for properly describing the i.MX23 LCDIF
interrupts.

This fixes the following dt-schema warning:

imx23-olinuxino.dtb: lcdif@80030000: interrupts: [[46], [45]] is too long
        from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
        
Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Marek Vasut <marex@denx.de>
---
Changes since v1:
- Add missing else to limit the number of irqs for the other variants. (Krzysztof)

 .../bindings/display/fsl,lcdif.yaml           | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index fc11ab5fc465..1c2be8d6f633 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -51,7 +51,10 @@ properties:
     minItems: 1
 
   interrupts:
-    maxItems: 1
+    items:
+      - description: LCDIF DMA interrupt
+      - description: LCDIF Error interrupt
+    minItems: 1
 
   power-domains:
     maxItems: 1
@@ -131,6 +134,21 @@ allOf:
     then:
       required:
         - power-domains
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx23-lcdif
+    then:
+      properties:
+        interrupts:
+          minItems: 2
+          maxItems: 2
+    else:
+      properties:
+        interrupts:
+          maxItems: 1
 
 examples:
   - |
-- 
2.34.1


