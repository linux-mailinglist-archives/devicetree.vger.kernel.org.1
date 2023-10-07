Return-Path: <devicetree+bounces-6687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F9B7BC76C
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E68061C20A0F
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BCD1CAA4;
	Sat,  7 Oct 2023 12:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qEYUVHbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8E61A5BC
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 12:15:18 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D620B9
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 05:15:16 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50308217223so3752978e87.3
        for <devicetree@vger.kernel.org>; Sat, 07 Oct 2023 05:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696680914; x=1697285714; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O1Zugttc6CQwc0r7Gmq4FY2vaF3Xbow7SZhSdZ4AOps=;
        b=qEYUVHbJMbNc0sAs1rjrfzWg+7XYEGV2CuiyHZqX8GN6be8h9xeO+/nbI0QqQZiZ+T
         SawZPmWHtncR5lcwXQ9XGv9dKFdP7EdMYzrMBbA4sJlaBDeRd0XUL4ZA0w9YIOk0NbtD
         W/4bXwD6+d0OOijZXqLhnX4Wf54nLMKDuCwCkp3/7nUcHc9PCXqGYR38kg/bUJWtYDtc
         CBzWvp27ryq52sx5dkSfl0sQM9IQBODoJzMtIJMzR0weywVMBFDSDipIktZlK8KUi7gI
         Yt2iwhFceeyVdlXmHIFcAcfOsqQ473W2Y/U92bH8Rv69FTfzfInKclB6XE7sN1ERPnxF
         ho6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696680914; x=1697285714;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O1Zugttc6CQwc0r7Gmq4FY2vaF3Xbow7SZhSdZ4AOps=;
        b=tBegoCI4dNTuXqDS0ZDiO3DITKxMDg9fZN2J/nguMe828C/Fs0hlRfRaTGb/EgxQmv
         XK3muUtrtqXfRXeBzefEHAGsLoTLRRKtzhYAyULuap7me6gKJByWv1nek/5bgHyDVJet
         oYo6/b2gW/jKB44mIWLwXqLGSs2Jid1Ac8Kk2zK6njRYSKJ+KNRO/kuLMnt+AuX4IV+Z
         ZhxCbFZ4OrmdDXYOXMIYIV8NQa9jkJbtR9ICGllEjRL1jIPhzxzp/GOEyQXjNx/lkhJw
         5TsqZIrM3zv3eUWWIeueSrqfIogc+eORzG1t1Kjb8qibxxSy7MdV629mJflDDv/iKlCV
         J0Cw==
X-Gm-Message-State: AOJu0YzYeQfFabzGLXXSAjAyzyNxGHYeqNOZz2WGCKfg2uGEx3hvzto6
	jiZUObWD4FhhEoJWmQ6COzykfb/VWiwAEjN1VCI=
X-Google-Smtp-Source: AGHT+IEsGBitPYe8g2kIq3KxXjcF8lsbx+QBzRB0a2uTGbLQ8q37SCwQGTQDCJc6tTIubIQlDbDE/Q==
X-Received: by 2002:a19:f015:0:b0:500:9dd4:2969 with SMTP id p21-20020a19f015000000b005009dd42969mr8203031lfc.59.1696680914161;
        Sat, 07 Oct 2023 05:15:14 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id v3-20020a197403000000b00502fe164ce6sm667819lfe.204.2023.10.07.05.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 05:15:13 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 07 Oct 2023 14:15:11 +0200
Subject: [PATCH v3 1/3] dt-bindings: Add vendor prefixes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231007-ixp4xx-usr8200-v3-1-ec46edd1ff0e@linaro.org>
References: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
In-Reply-To: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

These vendor prefixes are used by some routers supported
by e.g. OpenWrt.

- ADI Engineering is a US telecom equipment company.

- Arcom Controllers is a US manufacturer of repeaters.

- Freecom Gmbh is a german telecom equipment company.

- Gemtek Technology is a Taiwan telecom company.

- Gateway Communications was a telecommunication company,
  now acquired by HKT Limited/PCCW.

- Goramo Gorecki is a privately owned Polish telecom
  company.

- U.S. Robotics Corporation, known through their brand name
  USRobotics is generally referred to as "USR" so use this
  prefix for the company's device tree bindings.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..edeb870c84cd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -59,6 +59,8 @@ patternProperties:
     description: AD Holdings Plc.
   "^adi,.*":
     description: Analog Devices, Inc.
+  "^adieng,.*":
+    description: ADI Engineering, Inc.
   "^advantech,.*":
     description: Advantech Corporation
   "^aeroflexgaisler,.*":
@@ -127,6 +129,8 @@ patternProperties:
     description: Arasan Chip Systems
   "^archermind,.*":
     description: ArcherMind Technology (Nanjing) Co., Ltd.
+  "^arcom,.*":
+    description: Arcom Controllers
   "^arctic,.*":
     description: Arctic Sand
   "^arcx,.*":
@@ -484,6 +488,8 @@ patternProperties:
     description: FocalTech Systems Co.,Ltd
   "^forlinx,.*":
     description: Baoding Forlinx Embedded Technology Co., Ltd.
+  "^freecom,.*":
+    description: Freecom Gmbh
   "^frida,.*":
     description: Shenzhen Frida LCD Co., Ltd.
   "^friendlyarm,.*":
@@ -496,6 +502,8 @@ patternProperties:
     description: FX Technology Ltd.
   "^gardena,.*":
     description: GARDENA GmbH
+  "^gateway,.*":
+    description: Gateway Communications
   "^gateworks,.*":
     description: Gateworks Corporation
   "^gcw,.*":
@@ -510,6 +518,8 @@ patternProperties:
     description: GE Fanuc Intelligent Platforms Embedded Systems, Inc.
   "^gemei,.*":
     description: Gemei Digital Technology Co., Ltd.
+  "^gemtek,.*":
+    description: Gemtek Technology Co., Ltd.
   "^genesys,.*":
     description: Genesys Logic, Inc.
   "^geniatech,.*":
@@ -530,6 +540,8 @@ patternProperties:
     description: Shenzhen Huiding Technology Co., Ltd.
   "^google,.*":
     description: Google, Inc.
+  "^goramo,.*":
+    description: Goramo Gorecki
   "^gplus,.*":
     description: GPLUS
   "^grinn,.*":
@@ -1444,6 +1456,8 @@ patternProperties:
     description: United Radiant Technology Corporation
   "^usi,.*":
     description: Universal Scientific Industrial Co., Ltd.
+  "^usr,.*":
+    description: U.S. Robotics Corporation
   "^utoo,.*":
     description: Aigo Digital Technology Co., Ltd.
   "^v3,.*":

-- 
2.41.0


