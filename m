Return-Path: <devicetree+bounces-11594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E145F7D6347
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:35:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65222B2115E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE8A18AE0;
	Wed, 25 Oct 2023 07:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vz6qgUNf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1C11864B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:35:14 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79672171D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:35 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507c78d258fso7719730e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219272; x=1698824072; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wbrvIzvdzq/AFVOVjbVafR3T9nNAQ5I5GLW0AHPZ5/k=;
        b=Vz6qgUNf7iBBNGbQ5Q3S+9nBKLCrFfuWXi9pAnEZqnaHJTVNWsxRFykgBtlTW88G0D
         d/ZomFdfzqgM4aSeu4j3eR6Mmae5UtepHfzul8+GAQxFnvvOdLsDezOMXhtlnkQbUHEC
         PbbE8u+vYclu6rlYF+KdhPiSBA4KjqoU1iQK7WB/EJmKa0q/qLWAnK445VYdGT4mM6wf
         1dRu1/9QFOE+yT6DTFpwkhKZuGWKXjrsgdj44Di+jatt8RSGUkiO9YFuKfKC8+gcRScU
         ER1yWvVf9OeO0XESXDpzvxovO9aWw5LqS+v8cmMKcqIo9WJ2qYxLygWS2PEe8D70MLWE
         UvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219272; x=1698824072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wbrvIzvdzq/AFVOVjbVafR3T9nNAQ5I5GLW0AHPZ5/k=;
        b=dSreQCdUzQMz1qafpCEQNmUSdwVmEtN+jxXPjig3lDjJAs/S3hhk8KlmIQ9DYaJX/q
         RUV7x1DD61bupRwX1ALa5gg8O1k3/1l9/+hnMKwggGs9Yzw9gT4QztPnlHQr6lJXDnsS
         mBdB61UfinlmlVagGMUo02s62r83cM48fKelp+zVMhH02ajBMz57J+tl/i8DTSx3ybWg
         hpgHxdtRnjHe7yIGC+jFIFjiD0C2ZPpi2KY1ffPw6IzDDDG8uxqgNerhcYIP0EEp2OJi
         Ps8DMTb7BfbLdJfU3EvT0cFGtK9Eg+1BwnFxMJqEZ4rCFOW8J2k65vxLN7uCMKi5+TkH
         TFTQ==
X-Gm-Message-State: AOJu0Yyi6WnrVxXFzKIhb5AyZPU4vpmbR+j5ewAxVWC3ddo5qsldEygI
	Cf7CHXPaT1wYj2RU+4CORHJZsQ==
X-Google-Smtp-Source: AGHT+IEZO5QiKOjC2lbTgrH0pnqsb9TCUneqoGjzkdruJYssC7pozOdxX1CYD6R9k55MHLVaDaAZrg==
X-Received: by 2002:a19:7015:0:b0:503:7be:c85d with SMTP id h21-20020a197015000000b0050307bec85dmr10051522lfc.35.1698219272614;
        Wed, 25 Oct 2023 00:34:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:25 +0200
Subject: [PATCH 3/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 document the SM8650 QMP USB/DP Combo PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-3-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1095;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=KnCaelpeaszap3KN0CRLC15V35wlkNa/TjtN4fP9oFk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUCl3WwZsvJzEEGEdGRKVUDhdZTxdbatOrOyBLX
 s7Vj1yyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAgAKCRB33NvayMhJ0a6WD/
 9zb9fqAocbGRCVJVVlWKfgXMeW5q9BF3FDnpm0+DCjwMQofCx5JE5amlasApZRsXBj/ibGanI9bEOt
 aMd0P5edbATNkInvjw3wdjRYVQedWyQ3kug1t/937mZXnyPImgFJoc+la5QA2NwE9uHcAEBGTLjXgO
 /BwyJJniPPKhfkBPHKjU/EQ4rLTT9M+uixKRcjLE3Uj7AwUbAzRI/x6Fqw23xwWJr9j8WyhsFJxjpR
 U/JsAJrpvDeUgKyiiPt/OcKrhxPdKJ8E9/H4/2IpipbqCRtZzbnS7ng508hZ3Elwo5lwcFHRz/HqBB
 Hadwunpcvcvg8z9qNyx7Orh0cIndmcGyV0yZFYas6KZx+romuNw5QAPCufPWazVp4QvYevDuNekKy2
 Ze3jy97x8WboWjcN1rNSRIAIATNWCBsIfjkSDsPLaYQAsd8f8Og0SjthZ6rqiiiHDmOfftmEa3F7hz
 9OukfROqYx1SmRIpUxROzbil572WwRtMsEQv/MFnClf9c8wSpfp18hqK2ch71IxWTrWNDTS17XVaWA
 QiG+yDqmYUORl3gBaH4SqlQODzrj2mqfflWjLVqeotYUNkSMtpdRN8deA/QCmqrh2gdN16I+CqMLue
 Ah8pEekWifx4QjCuw/5lifCrAKSR4KTwIqCeKNmbnzNOqQhJbBHPljXv0Szw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the QMP USB/DP Combo PHY on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 9af203dc8793..ae83cb8cb21f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,sm8350-qmp-usb3-dp-phy
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
+      - qcom,sm8650-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -128,6 +129,7 @@ allOf:
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
+            - qcom,sm8650-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.34.1


