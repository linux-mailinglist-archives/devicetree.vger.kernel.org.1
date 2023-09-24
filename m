Return-Path: <devicetree+bounces-2872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9410B7ACC9F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A20021C2081F
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7769FC13;
	Sun, 24 Sep 2023 22:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA81DF54
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:31:27 +0000 (UTC)
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD90DEE;
	Sun, 24 Sep 2023 15:31:25 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-273e3d8b57aso1205970a91.0;
        Sun, 24 Sep 2023 15:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695594685; x=1696199485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BH2fpi3BgA4AHIjTpm3Zg5g6h30kc6erTrSmzdfpxUc=;
        b=eD0wrnATphDNrF9VpTj1iiOfzaVgTAJEdc6CB9exaQdEeE6mVL3Zp5j7UIhO5iJ/zB
         vxkQ9ALV7SFCRj7O7fAn3nnrrXwut6wgl8CPzB5UKlR1wd+APKXqJ/XXLu8mxknUaxHK
         D8xlq8QYOWkh1ec2L8g4tEXmFoM9MIfcipPuAHjhLALgnzaoQIfEh/FmOkoMAiWZc9Xe
         iEhO7ko2PtzKP2tLoJNY96FL8IcMIxby2Mv9Jl4nZmhpegSezxrCIacpYkIuCWLxXDPE
         CzotZKAqrS325cZ0ZyL28nW79txEf4FfoMJv/b7ikru4t88G4HwxJPSG6AHgIyANBS3A
         /odA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695594685; x=1696199485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BH2fpi3BgA4AHIjTpm3Zg5g6h30kc6erTrSmzdfpxUc=;
        b=H1uNugP7M9L1LEJtAE7xD6UdZbZk3GZslrjfcU5RGsKjFQfYxJw6Mx5hjCjnjuEbEB
         AI9a0nlYlxi1DAG11Dzvc/P9LgRLZgc/J7T1p2Xbso5c6Kv5xSHkAdpBuNAZPLicefJB
         PNJfDvwNr41+tYCJekB0lo4iEYzXDcrKX64C/Vnwk8kUsxs53qAcB6Y/qctEmNa2KusM
         IrEYWK8uYGiLWy7Zr1Zs8iB/swgceUUgdUbtM1GAQ/oGkg7Ct/tBoMgULry5gPr/558Q
         evrPVOTm/3Rfh32amBabT2nO9JmbOGqgLsQ/NQlcVjx34khWVw04ieDGYTmD6MeZL67W
         KnOA==
X-Gm-Message-State: AOJu0Yz51u1ethdzlSe5JL5gfLizRZtOOCJO6ngTYHTO/eIvjaso/g74
	A7/zTgHGJsOxRVN4g5rPCFU=
X-Google-Smtp-Source: AGHT+IGTnhwVkul1Mjqmsi7LHiFHi9OTLDffugTC+2hsPj1N3XewEXelpB0tr+lRvLiwR/PyNT6lxg==
X-Received: by 2002:a17:90a:394a:b0:263:730b:f568 with SMTP id n10-20020a17090a394a00b00263730bf568mr4483507pjf.3.1695594685130;
        Sun, 24 Sep 2023 15:31:25 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:ce8e:216e:1d92:cabc])
        by smtp.gmail.com with ESMTPSA id 5-20020a17090a1a4500b00274e610dbdasm9315258pjl.8.2023.09.24.15.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 15:31:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: herbert@gondor.apana.org.au
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 4/4] dt-bindings: crypto: fsl-imx-sahara: Fix the number of irqs
Date: Sun, 24 Sep 2023 19:31:04 -0300
Message-Id: <20230924223104.862169-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924223104.862169-1-festevam@gmail.com>
References: <20230924223104.862169-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

i.MX27 has only one Sahara interrupt. i.MX53 has two.

Describe this difference.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../bindings/crypto/fsl-imx-sahara.yaml       | 23 ++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
index 9dbfc15510a8..9d1d9c8f0955 100644
--- a/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
+++ b/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
@@ -19,7 +19,10 @@ properties:
     maxItems: 1
 
   interrupts:
-    maxItems: 1
+    items:
+      - description: SAHARA Interrupt for Host 0
+      - description: SAHARA Interrupt for Host 1
+    minItems: 1
 
   clocks:
     items:
@@ -40,6 +43,24 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx53-sahara
+    then:
+      properties:
+        interrupts:
+          minItems: 2
+          maxItems: 2
+    else:
+      properties:
+        interrupts:
+          minItems: 1
+          maxItems: 1
+
 examples:
   - |
     #include <dt-bindings/clock/imx27-clock.h>
-- 
2.34.1


