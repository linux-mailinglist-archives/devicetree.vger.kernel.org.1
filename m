Return-Path: <devicetree+bounces-3073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 055137AD41C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:03:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 8D59B1F247D9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FEF013AD8;
	Mon, 25 Sep 2023 09:03:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B50413ACE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:03:50 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C4A1FF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:03:48 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c038a1e2e6so89926751fa.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632626; x=1696237426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BXhBoTkvT12oBjTdv064IBZ5Ioc2wkVjKhOPnw7H8n0=;
        b=F5H/AMFgv+Ccxdxo/OUCl3UEHYwpXm5tmtYNNBVteT/TDNN/afslPF8liAnFzQFx4W
         03ps0yGIE/26Si47QduDo5Lyk5dylo54JCmjs4j5kAgdub1BEWcXxDkOCEI1ITBxcyCh
         q4DGGHT85TWUSQ8JB+J+Ftau4mhb6n/AHSBb9UYZzMfMm8Z5zysnk72snTzPlU2fbRJ1
         Q4WGTKOQnmaFwnGgKKQHC+o/72Gca7lURI7/lI+nRrkv5qXnTFZYbF4jehCUHV1Ry5I/
         BR27oJWbg/XIpHUCy4MWtTx2G+Pbb/IN1jMUzP483QZ7z/7c3Njfp0ZcKmusmE46AfNd
         NMpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632626; x=1696237426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BXhBoTkvT12oBjTdv064IBZ5Ioc2wkVjKhOPnw7H8n0=;
        b=ME+FcLAMk9bJBo4HWV0qps1qJAvDNK2u6nJTypA09KghDz1MWGwIvEvWEIkZD3YT9M
         SrsH2E0e4rLdOd+BD469Ei4V8IyMEcfwGiH9ouOkz/cA5bbK90gWtHHTnUNhzkOR0iP2
         d3UaRiCvB2qhJrWNfFaGXMpE3Aiw3cJd+9SdGIWh3+KqYMP8SMnRrTFbmOyXPP0vcBDz
         GE8ZKn00HXXPhVBlfXArJlddK3cfVdtcH4EjFKsti0bwwlEFMVf/YI/0ovDeXRPjAkF2
         4ee9+MH2JLdc+KYEAxDmsJV9pDnpxSuK1F6VBBc7mBOcdNAYeqdHWEvfKnhSo4yEdfZL
         ghmQ==
X-Gm-Message-State: AOJu0Ywtmw3Bur3R/5wNqh0grQI0btsTsqpFHoIezyT9tAoDr1hCKRsN
	v17uoaxJK8ZtxE1OPp5T+EIHrw==
X-Google-Smtp-Source: AGHT+IHf75dIfSTDh/A6EPU+pCpJ4fPnrOADbU/iwlDUo/dSWqf/y/SPyVpT/4xWaySnYU3X4ZmJWw==
X-Received: by 2002:a05:651c:105a:b0:2bb:c212:5589 with SMTP id x26-20020a05651c105a00b002bbc2125589mr4780060ljm.17.1695632626376;
        Mon, 25 Sep 2023 02:03:46 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id l8-20020a2e9088000000b002b70a8478ddsm2122048ljg.44.2023.09.25.02.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 02:03:45 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 11:03:38 +0200
Subject: [PATCH v2 1/2] dt-bindings: Add vendor prefixes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230925-ixp4xx-usr8200-v2-1-433261c13a28@linaro.org>
References: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
In-Reply-To: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
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


