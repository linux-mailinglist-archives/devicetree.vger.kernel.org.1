Return-Path: <devicetree+bounces-2749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AE27AC516
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 22:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 38EDDB20A1E
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B93ED63A0;
	Sat, 23 Sep 2023 20:43:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBB0818
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 20:43:13 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0292511B
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 13:43:12 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6927528c01dso637091b3a.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 13:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695501792; x=1696106592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NXL2vhjfGlQUf1eFKptQJ4oefwhzj3pN8+xMr4o+cOo=;
        b=JxYzl5710RkDxsjCJ3h9lnt4Xr9tMK8aDFDldfd2lmNFAztWPlvHlOa1HbENCDLJGU
         VGODWj4Fz+k1dnuE8T6MLtKeN8QxIoOkZYL0+GzOCY27jEq0IgwZZx5AootHS7RPZq+r
         weC++hwtnDiZcuTLqvGlQ6rFD6DBGijJhHbxEnqAeR61mt3ilv9jRlMlfNTNCcb6qZt5
         9B89x195/Vs2GB2YTcuDGUb/P+ZuchPOAA/bF8EM+SzQij237khkgACKNm3Na4Yra2Co
         5n3xtlFkhFQdQ51WVmKvwmNTNC8HUrkGog4epS6DOCVfcPuUXkVCAmtoaqgRQJLdJAtN
         ultw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695501792; x=1696106592;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NXL2vhjfGlQUf1eFKptQJ4oefwhzj3pN8+xMr4o+cOo=;
        b=VCyO4xKzW7CywP5jW2R61a0KYmHAumEf7SXVTG9r/0lm3bbgaunddLmSJDQNF/mrIm
         l9P9RZ64nKmStLqJUSEsJRk4faGReIqxodONadE+e0UoIya/oi3Pbc2EoMZN8U4z6JsU
         GnMiX3oGZ4o/48YED1fG8vU2ZIwMOUYHIhCH/5qdXinPJXOz2uxa6NdwX+SaCQ7m/3aG
         ANSar1kl7jtmfWJAA9h94r2/jfQ5Bh52VFdx83TrER1Kmmt2TBq3Ry6xvLNlqEgYIEtI
         PWlQSofPdVWfKImzW5+c5m/3xAOuhxzLA9VCTaBsLO3SELcSAtKDvJvTCHOsHW2dWUYZ
         g3xw==
X-Gm-Message-State: AOJu0YwEgVtKvBkariRvwwrHpIfarnY+RxKFUclK85cgUQHZ85PL2fwu
	Ll9S+W3isYO+KvMIxkKDYDbWKp8iD1w=
X-Google-Smtp-Source: AGHT+IGLtMshZaaCH3WBJWS1gkRX6ebUYgZdeC2/R7MxRSX7ogbVjlVMoXLfBWwKAQRGjuKZ1vrPlg==
X-Received: by 2002:a05:6a21:a5a2:b0:13f:65ca:52a2 with SMTP id gd34-20020a056a21a5a200b0013f65ca52a2mr4809523pzc.5.1695501792297;
        Sat, 23 Sep 2023 13:43:12 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d8eb:c6dc:fcf8:4b58])
        by smtp.gmail.com with ESMTPSA id e14-20020a62ee0e000000b00690d9901ce5sm5291989pfi.102.2023.09.23.13.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Sep 2023 13:43:11 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: arm: fsl: Document the missing imx23 boards
Date: Sat, 23 Sep 2023 17:42:58 -0300
Message-Id: <20230923204258.635888-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

There are some imx23 based boards that are not documented.

Add them to the list of supportted i.MX23 boards.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 9450b2c8a678..32bab799f925 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -25,8 +25,11 @@ properties:
       - description: i.MX23 based Boards
         items:
           - enum:
+              - creative,x-fi3
               - fsl,imx23-evk
+              - fsl,stmp378x-devb
               - olimex,imx23-olinuxino
+              - sandisk,sansa_fuze_plus
           - const: fsl,imx23
 
       - description: i.MX25 Product Development Kit
-- 
2.34.1


