Return-Path: <devicetree+bounces-3064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2CB7AD3D5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D47D51C2048C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4C013AC2;
	Mon, 25 Sep 2023 08:53:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549BE63B7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:53:41 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B79D3
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:53:39 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50300cb4776so9518509e87.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632018; x=1696236818; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4N85CJyM1WvAjfav06nUEfRlIvfKoyND1Z+n/LVeOHA=;
        b=dQZgL9QXZENU4DEKbeYWs+6/x8BIMg9HPNsmYuhHOk1Whk4dUXN+8SRyv5AbfXSnlT
         nyWxcwxH1Mmv/3OkOPGz31OqddBAtHkYfwy4g36Zeptuv7kFJh7C7ueevevKFbhf3W1o
         +JlNDmBF+T56nU2+hWzubfGjpZnZgvk/BmGjbqhhTIqj3/fcrywPfzSlpGtPUoseaNHx
         d50zzlrkAa0tR3vX3HwMUihq+2BBzMgfC6VqEcV87VZ79/0ZAz6GQoj5RvgRTxjOyj7Q
         8mvOboi5gFTnZaMTtmUcBW42uRqI/JHZUCwIJTvNEk1JgFq2e0IVyoy3Q7rdkVYU0i+g
         k/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632018; x=1696236818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4N85CJyM1WvAjfav06nUEfRlIvfKoyND1Z+n/LVeOHA=;
        b=WRdPZLrdQ8WEEOoP6/LeCixASeP94DUFXYhAETQoZqqN+Sf2R+eEo32nmGnftY5IXU
         anyT8JOxBJ5aLtZbe1gayWOgHRfOJZCWDeh6IB9ZOHWxUMadUqjKsAT9JztIs1Fn+KiW
         FG/gme2Z1gP5WZVF5td0aoOBT87VwpDfngY/oaWrcpQZCu7C85xdm9zs1s4pgE14mexF
         ZFywBf89nWjtXwQJvXygC2IWIe+JyWjwtvOYaNm4hhzx6B0Wk5U8Nf/V/FlYEGBUOF6C
         CMXXSLpS7bZrlUbVZOllJVMu2NpHLjaDB6hMTpFFjQL6IDaqhfKx/+r/4LD52zBkaQx6
         S/1A==
X-Gm-Message-State: AOJu0YyxkfLhPgep/xl9m1CKJJLWdSvmjrU5NAu1Wz+y+tYug6KYFiHt
	zCdB/Qo6XJ7B/uBFO0yoxBVdAw==
X-Google-Smtp-Source: AGHT+IFttudOU1jWI7uNHAhuxm/HQF2n3hS/Qy51GUgSz1s6MUDPlzQb8mrdjM0rZqVFj3KNpvo6rg==
X-Received: by 2002:a05:6512:32a2:b0:503:2a53:7480 with SMTP id q2-20020a05651232a200b005032a537480mr4888028lfe.49.1695632017606;
        Mon, 25 Sep 2023 01:53:37 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id bi26-20020a0565120e9a00b005045bb669d7sm465485lfb.62.2023.09.25.01.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:53:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 10:53:33 +0200
Subject: [PATCH 1/2] dt-bindings: Add vendor prefixes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230925-ixp4xx-usr8200-v1-1-cd72a2e1ce91@linaro.org>
References: <20230925-ixp4xx-usr8200-v1-0-cd72a2e1ce91@linaro.org>
In-Reply-To: <20230925-ixp4xx-usr8200-v1-0-cd72a2e1ce91@linaro.org>
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
index 573578db9509..04e0e667afb9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -59,6 +59,8 @@ patternProperties:
     description: AD Holdings Plc.
   "^adi,.*":
     description: Analog Devices, Inc.
+  "^adiend,.*":
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


