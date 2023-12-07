Return-Path: <devicetree+bounces-22653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CB280854D
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F0601C2163E
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C46358A7;
	Thu,  7 Dec 2023 10:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IufPUEJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EC72A4
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 02:17:09 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6ce6f4d3dafso183852b3a.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 02:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701944228; x=1702549028; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b2I9/0XL0ViHhlrdNPuqjeyQxvqUWfeYLyYr4dBqwyo=;
        b=IufPUEJ6vb3eEe14429/n0wcbHnC4j/5Kh3FkpaX9kkvPQgAHI5lx7h1yVo+snpKG5
         MM0wJHbF/bj4CRvkeQvg2Scvd1u+boWLHvcIgbq9Tb1cx6Ub63e4sZyk3cZMfJcs4qF9
         chtFLjU9AkN6Irs0cFJQ85RPPoV/kgR8GmXRPNMU4LPV0RF1MWwyRqtLoywLaZnQ3BRR
         Gtx7G1I6FaPcH30J+7N2ewDFZS9ovLEfzY3mvL4tnsiucpHGKAwGiDN9Mh1WnjoJR+zQ
         mr/Ms05K73ZY1qvsrpwjZGBa6Z0YZowzc1qrUHFPOlCGTu54YtPQsBVTQ7c+RERCuiiV
         FpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701944228; x=1702549028;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b2I9/0XL0ViHhlrdNPuqjeyQxvqUWfeYLyYr4dBqwyo=;
        b=ZVb5UgV2N1+9OsqdI8/Hi84rr2/Zdwzbaii+0wgcIZZFlDUZVibJEAv8jbZ2G1Ncz8
         VvTqrMqBzZ7Zs1aKJ0nO3W91Btf+ESNPjgPjKzHHByBtjPn9Di7aOPCZQq3jgNErLTm6
         JpP9j3tgB8sV9E3c3BHJ/sFuKx21LMqwvT3V3hFiq+fxaSvWLYAhvLDOZXQb/GBUr+vc
         LTgB47TYHm1qs5fhAHJm7aAMkrGTrw1IyIThxPv252hBIVmw6ATip3dOqQKEqaQT7TSh
         8/6Zhrk9GKVozcIMX2MnmXhlmua8z+hty5yNVsQ3l9FD+l/datSI5k33iu8QbDEvF/IN
         UpLA==
X-Gm-Message-State: AOJu0YzQq2DxtkEkjXeBASaCEdzpcd1IJ/7kFtOL2umyvb+QPwKLj0oT
	+L11i8dSyZNwnJYBOS+XHfsFWJRZaoU=
X-Google-Smtp-Source: AGHT+IF5+6fe+3qe0hS/QYxMjC4XGS/7n0ksGDgezoqivyqpXVQ4wW3coDZoAPZEplJIFh6LbwhLYw==
X-Received: by 2002:a05:6a00:2d1b:b0:6ce:4c49:58e4 with SMTP id fa27-20020a056a002d1b00b006ce4c4958e4mr4727573pfb.0.1701944228381;
        Thu, 07 Dec 2023 02:17:08 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:492a:db3d:eb42:de92])
        by smtp.gmail.com with ESMTPSA id h15-20020a056a00218f00b006cb884c0362sm929143pfi.87.2023.12.07.02.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:17:07 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: srinivas.kandagatla@linaro.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Date: Thu,  7 Dec 2023 07:16:59 -0300
Message-Id: <20231207101659.2496154-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Both imx23.dtsi and imx28.dtsi describe the OCOTP nodes in
the format:

compatible = "fsl,imx28-ocotp", "fsl,ocotp";

Document the "fsl,ocotp" entry to fix the following schema
warning:

efuse@8002c000: compatible: ['fsl,imx23-ocotp', 'fsl,ocotp'] is too long
from schema $id: http://devicetree.org/schemas/nvmem/mxs-ocotp.yaml#

Fixes: 2c504460f502 ("dt-bindings: nvmem: Convert MXS OCOTP to json-schema")
Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v2:
- Added Conor's Acked-by tag.

Changes since v1:
- Added Fixes tag. (Conor)

 Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
index f43186f98607..d9287be89877 100644
--- a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
@@ -15,9 +15,11 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx23-ocotp
-      - fsl,imx28-ocotp
+    items:
+      - enum:
+          - fsl,imx23-ocotp
+          - fsl,imx28-ocotp
+      - const: fsl,ocotp
 
   reg:
     maxItems: 1
@@ -35,7 +37,7 @@ unevaluatedProperties: false
 examples:
   - |
     ocotp: efuse@8002c000 {
-        compatible = "fsl,imx28-ocotp";
+        compatible = "fsl,imx28-ocotp", "fsl,ocotp";
         #address-cells = <1>;
         #size-cells = <1>;
         reg = <0x8002c000 0x2000>;
-- 
2.34.1


