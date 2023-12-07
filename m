Return-Path: <devicetree+bounces-22645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2248A808518
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 861791F2223E
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398AA35287;
	Thu,  7 Dec 2023 10:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gz4ZqZBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D79EA121
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 02:03:13 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3b9b5b254e2so104723b6e.1
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 02:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701943393; x=1702548193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a/6NKxYPfPBd6UjlWEZ+IDHt+KKqu6eYK0FQHf+KHN4=;
        b=Gz4ZqZBZz/UjGt1ungC0RdJKX9Lea+iuKskzv8kevISTKN9atD6Cec/uj4BHwberaE
         NAICI5AgqTrI0kmPz0RuzKuQDRNYft5Nxiq+81TtRvbtGvAwrG6aDbVdk1zGpSDVODve
         EoFKdeF+FbK06TcYzcXH2uDms4We3ifNE5pEZfs7DcJNUt+abMUmjT67j2Kne3aEPV9z
         zJbtbo1cv85vxWvIWTAlzWHvF71czc9H05Qq5g4VAhXHCFmVqenlXtgWoG9mcgq0EPex
         f/HrGMGHkpgh5MbxXx6Ch3z1Wok2EGfcHsPgQUirDDdCMC9Sku3X2mBrYeRDKTmoB1Pl
         ITXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701943393; x=1702548193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a/6NKxYPfPBd6UjlWEZ+IDHt+KKqu6eYK0FQHf+KHN4=;
        b=pJKdDc/ugL/LoI/ZJFxkwaD0+/erV0ecf6HtC4ymnXH+XA6j+DfbbYnP0KUnfT61LS
         gGH0lB/sdLuHgna+2Rx8+efmBPYigv5KEEhVhIxPCin+tbRnCPnUIK7a6cTeIfR3Vwa8
         tmkaokGByvmAYeQILvVDw97xBRfohvmMF91F+b6S33vP9lOXYsRYelTXVCXIyfks6Xb0
         R4QbhGlwIkM3n+y0SWwdnrgJHBczq/WhVpy0q30AkkjkbtfdqlIi2buiC+efGZn9KpYw
         Iv1tEUhzYBAoCxzy68ihKOu498gaZbF84xcMjiFp/ngpfySneU0CHSLJMt+eZEuqZwEi
         wUOw==
X-Gm-Message-State: AOJu0Yy0rP/kvuHF1Gkbp1NIuUaBt2UyR0Z+hP75JPN2p1n+b6EqAp1p
	ugbhFzJjPCJpmt9RQJWN36ygrSGaF+k=
X-Google-Smtp-Source: AGHT+IEyIEl4zWGvugAdqRQLKUaF7IeMFFhcBz2gO3aAaRaaqJ5WQxPoSEUK1IZOkgBs7R91kOaYNg==
X-Received: by 2002:a05:6358:5925:b0:16e:b5d:43ce with SMTP id g37-20020a056358592500b0016e0b5d43cemr5036859rwf.0.1701943393073;
        Thu, 07 Dec 2023 02:03:13 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:492a:db3d:eb42:de92])
        by smtp.gmail.com with ESMTPSA id t8-20020a63b708000000b005b4b70738e5sm781385pgf.8.2023.12.07.02.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:03:12 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: srinivas.kandagatla@linaro.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH RESEND v2] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Date: Thu,  7 Dec 2023 07:03:06 -0300
Message-Id: <20231207100306.2492505-1-festevam@gmail.com>
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
---
Resending it as it was sent two months ago and it was still not applied.

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


