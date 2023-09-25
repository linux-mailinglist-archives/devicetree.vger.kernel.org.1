Return-Path: <devicetree+bounces-3074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DBB7AD41D
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:03:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 77C3D281672
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B0F13ADC;
	Mon, 25 Sep 2023 09:03:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F16B13AD1
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:03:50 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E7F3AB
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:03:49 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c022ce8114so94008971fa.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632627; x=1696237427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OaETC3HZ5CWbxTVBUq31AOC/jHNauLv5SZyr4Mwre84=;
        b=R0jLyIlOgFBzm3pZX27j+zMdeitBGBDXiIQkbsFiV6vq5V9v22n7nX8CusFiznE4Fq
         Y4JkYg4ArmBIjwZ5rh2KndW5Z4yadQCPpDIs3fs5L3Ap7+UuP+KOPZqMBYg0ijIvdLU2
         WSSBprz+yTHZinuF7lLlAaDG4wAXEb92j2S9riMgkp6PguLXgKRkQJM4WojmGOAmrARE
         2ffn/ODBywSJSne/r5fmZ0nI66ZC63LwPi5Mi8KLQelfgJXTHHm23CN2i9AtgvchVDjW
         CQ7+EG1xiMMJRH4t6EX1VWREfIHJcM6z/i4UH0l3ZLn6PCB85FdydWbBoJPoQqfQbJuP
         CgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632627; x=1696237427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OaETC3HZ5CWbxTVBUq31AOC/jHNauLv5SZyr4Mwre84=;
        b=YR864UUbvIC7oKz7Pm9NSDPUfwfm2hGbC3ZjsdIFZeZbF/da+EwEnMFiTIsWGzK930
         GxGwjiWZ8z7TSQdscGw48WjbBTuEAP+Lut1p2YaIUR0atvyDZTSRb4rI9cA9qeP1ko0N
         JH3wi8IGUlK74b0vUUAPdUG09O6vXw0rUCDCAMEiStgbV2vf5RBakTCzYFVSMal95ZD9
         W2Ua3XicXi9k4GTuMe5sOOdE/tIJf5AXRg1bfQamjJkRdXWX2mvueyFmnxU/rfMV6shg
         GJ6WHJF3tkzLK0h1pMn3O5EaoDJ8+SHrnB75phMKDYoft6kU1uZQ93dQPlMWqXZ+bFto
         B3Wg==
X-Gm-Message-State: AOJu0YwbYK22ApN7ixGR5V8Yzt8fCNspF88PcB4FI1R1P90N6aF2svVW
	OWKN17vBmBHRj1S3YW4OXJmMMQ==
X-Google-Smtp-Source: AGHT+IEIT38dfYouPdmvn6rYy9EBenB9HJ8sjl2eK8aG5NOrnc6nm1vHFkrgg1dr2uMnfbmP9jcGSQ==
X-Received: by 2002:a2e:7309:0:b0:2bc:c1d9:6848 with SMTP id o9-20020a2e7309000000b002bcc1d96848mr4812411ljc.44.1695632627425;
        Mon, 25 Sep 2023 02:03:47 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id l8-20020a2e9088000000b002b70a8478ddsm2122048ljg.44.2023.09.25.02.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 02:03:46 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 11:03:39 +0200
Subject: [PATCH v2 2/2] dt-bindings: arm: List more IXP4xx devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230925-ixp4xx-usr8200-v2-2-433261c13a28@linaro.org>
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

The ixp4xx bindings are lacking some of the devices we have
out there in the wild, so let's add them.

The "linksys,wrv54g", "gemtek,gtwx5715", "intel,ixp42x"
triplet is a pretty special case where the Gemtek device is
licensed as OEM product by Linksys (now Belkin) hence the
special entry for this one.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/arm/intel-ixp4xx.yaml          | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index 553dcbc70e35..1fecd4692a62 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -16,12 +16,30 @@ properties:
     oneOf:
       - items:
           - enum:
+              - adieng,coyote
+              - arcom,vulcan
+              - dlink,dsm-g600-a
+              - freecom,fsg-3
+              - gateway,7001
+              - gateworks,gw2348
+              - goramo,multilink-router
+              - intel,ixdp425
+              - intel,ixdpg425
+              - iom,nas-100d
               - linksys,nslu2
+              - netgear,wg302v1
+              - netgear,wg302v2
+              - usr,8200
               - welltech,epbx100
           - const: intel,ixp42x
+      - items:
+          - const: linksys,wrv54g
+          - const: gemtek,gtwx5715
+          - const: intel,ixp42x
       - items:
           - enum:
               - gateworks,gw2358
+              - intel,kixrp435
           - const: intel,ixp43x
 
 additionalProperties: true

-- 
2.41.0


