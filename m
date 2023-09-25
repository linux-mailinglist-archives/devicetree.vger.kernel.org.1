Return-Path: <devicetree+bounces-3065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7947AD3D6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 575A52818EE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C2A13AC5;
	Mon, 25 Sep 2023 08:53:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDB5134DF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:53:42 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC5E0DA
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:53:40 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50437c618b4so7054531e87.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632019; x=1696236819; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OaETC3HZ5CWbxTVBUq31AOC/jHNauLv5SZyr4Mwre84=;
        b=taGSpdeN9oR7dAnFSpxzOl1U3YdOqwdl/IecLwgcLlCuMHvL0Tp2U7exN8wTG2HJqM
         pVUk8EOkJJlkpO2QA9Mnsw0Lr3j5HabAUdjSkOtF1srD12OBMnQRGmsFIOnR5tHF7kle
         tQrrGDNFBDjy76/rbzc1XNHJxFnOHhlM2P+zCw4k0o2l4/bGoWM8JOb5rK+v7VX9Jfc4
         64rs51DqKlR4pe0lPvP4VsJz86gAp70wUP2i3rX6b0L8SMqOGzNKmO+jWVeR/LFSm5oa
         v5q10z00gWMo53l/KkU4aplrbeZcWoapdBDHpOHyFhqshQ2mA5XrCEV2R7nHzMbIbGx2
         DN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632019; x=1696236819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OaETC3HZ5CWbxTVBUq31AOC/jHNauLv5SZyr4Mwre84=;
        b=fNQE5+UcMj9PjIucPqIojM1WtF9R5KJRAFynR8rfSySC1mkLmyiLH351z37LEvkZBe
         Q2pZsMT4TJ8krA2+u6sHu+jpek43f0/JuMCzvTxl5/NFa7x9Zrg/jr4S48FLeSB019SB
         krNS9pONzMsUhWHGmf9Ylc6PY3Iah2MnjoKmYX8LaSglGZWuzUMTIC/H55YOuvA5Zkod
         dQEguPrqW91FeYh/6fjwNK916KSo9vurte6ChIbvJx72I6y1QBHTEBr9pHxUVFSIUlq+
         xhw/QpoEXxDOerni/ejh1kZPJ8zhFLcAoTUmP0k+nwJC2KOcDnWWzsJgwRk3Rl8kWKJx
         YA+w==
X-Gm-Message-State: AOJu0YyRHB4rgJ21vxxfNU6KAhBHFFG5+pi3YKpOrwdmFA8X6vWSmBOm
	MS/dg12rsCdlgMhICDkkvo7u4A==
X-Google-Smtp-Source: AGHT+IHCWtD+XO9/w0yGTVQNox9h9+Zui1nd4Ni4+WJ55WFXyqoPW45Lieh3aUBSDE+vzBlkCzLKHw==
X-Received: by 2002:a05:6512:31d4:b0:500:b8a3:1bf1 with SMTP id j20-20020a05651231d400b00500b8a31bf1mr5327897lfe.43.1695632019089;
        Mon, 25 Sep 2023 01:53:39 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id bi26-20020a0565120e9a00b005045bb669d7sm465485lfb.62.2023.09.25.01.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:53:38 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 10:53:34 +0200
Subject: [PATCH 2/2] dt-bindings: arm: List more IXP4xx devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230925-ixp4xx-usr8200-v1-2-cd72a2e1ce91@linaro.org>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
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


