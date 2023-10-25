Return-Path: <devicetree+bounces-11658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AAB7D64E4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:23:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 552571C20C1F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4B81CA8F;
	Wed, 25 Oct 2023 08:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QJimMa8C"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825E71CA84
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:23:09 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E98E6DD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:23:07 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31c5cac3ae2so3874008f8f.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222186; x=1698826986; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QSGFKKRMkp9iHb/AjbOT8f/04pl7mJkL38aKBmG+OHQ=;
        b=QJimMa8CXH7rkVOkHciXsZDcV0lpCzHAvFhahBAXhd73wk1aIoSIxvpbM9gY92Borh
         NP7ixeB3T1bf3BLz+uF48h0+zfPmUAYDn7FHKD/cSuXcGOOYckBDFsxHEALMKlwolGNv
         8OG1bZMC/9Fm3DIu9tkFbwcvPtFCKLZ12lUabmjE5Fodb/RaThRjsJOQ8Z/X/KeAI312
         kGqcEmBonKYdDYadqVy1be2BvY3dEHWQDMQFRcsVezHw4C9YxZefTqBf9r4wL3WToTVh
         LbI/Ryf3YiKtN6HIZhDiUCXP0mcQDzZiUMt7J2T+w3zRmwGJDGBmVEJZtrKWYB0k5+sv
         2fFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222186; x=1698826986;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QSGFKKRMkp9iHb/AjbOT8f/04pl7mJkL38aKBmG+OHQ=;
        b=YtSFvihuMvMQRX6op+q4NUK9+T4zAOg83JyegzuqHv1wvjsfYfrQ5X0lGNPLtzDv45
         0VytHfUlKsKCIK6wzfMDqENJOQTLjlxmlN5Dltr7K+WhLm0CCcgxIitjYH5MF/+8cxl6
         TGOXPBmGXuTS2pznn+tx3HU8JNVf3U89+MmYXRkv0UDPGoJMpz7Zad4LakJQqab7gcV5
         WF5VMtyBNY7FRG21pRpvz94rqHIX24ncgNRTKKcfXGNoIJnJyvSifcPuVXp35tOjDa9/
         PZFvWdxseWZwj8q5PJwpv1ShqZNLyKYbU9/l3Fu6JuC1USLgSMjv9Hd5L+CThlhN352D
         s9dg==
X-Gm-Message-State: AOJu0Yw0hR9aLECd9b/nf/uP4CLunpO3M7TJ4eOf21+pIFJBaYVERc1/
	TX/35/S4emXtT16DhWFgo8XEUQ==
X-Google-Smtp-Source: AGHT+IFjdt41QwRL5JFVLmHoRz3Gpv7tsA6HiLPMYQzLyAJ5Y2wUqOUYZmVoLTqnQj21UvD3DNf7+g==
X-Received: by 2002:adf:e507:0:b0:329:6e92:8d77 with SMTP id j7-20020adfe507000000b003296e928d77mr10093346wrm.51.1698222186349;
        Wed, 25 Oct 2023 01:23:06 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id f9-20020adff449000000b0032d81837433sm11539756wrp.30.2023.10.25.01.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:23:05 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 10:23:04 +0200
Subject: [PATCH v2] dt-bindings: dma: qcom,gpi: document the SM8650 GPI DMA
 Engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-gpi-v2-1-4de85293d730@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGfQOGUC/42NQQ6CMBAAv0J6dk27QFM9+Q/DocJSNtG2aZFoC
 H+3Eh/gceYws4pMiSmLc7WKRAtnDr4AHirRT9Y7Ah4KC5RYK6k0zCFyD/lhdCvhGfOcyD7gxn5
 g7zK4yIAni61W2hCOooRiopFf++TaFZ44zyG99+eivvaXx/af/KJAQU3GYGOpMbK/3NnbFI4hO
 dFt2/YB4CFYJtUAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1324;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=cpOmH9BEKtyMhepaWaWQ0BUU4FW2dDNEuqF7HPgi9iU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlONBoAlUtR4JRgUcJK40BRvcxR18leP5DGiRGLAm+
 RlCCAWuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjQaAAKCRB33NvayMhJ0XM4D/
 9T66+ZSO2aLkz/OFvYk1udheG0Lq7TzXikqo5ROURpL5FWGdqhtLFyrHq3REsm05hDJAR8Eg/onwwn
 zbWUh2Xm7ecMbNJNJbDMzPUloYLpy3IKfw0g8uLPnt7HU9z8zMWV7aFSHvLsnt0LZbNZOlbrBDM4+T
 j+KaTcwnvjYHFBt8zPVwK37kWTVquxpEd+jGyJtTxZebtudYCOKM7u4eBwDuv2JCtbi9xbELceM82A
 bYG1vniDrPV//b2eOK7pT97NqxEuFXjcO5hfxiv4IHnjdX9z9jv80ZJ7ZGlis03XDbI0H30NT2CAbI
 C7PbEiOw5rjg/EbTliVJzrLYH7RIsVKLk2PF2lzuxoAluawVkIpk3rgnD+PmUPkBa1Cp3BF/4jEQja
 CCVzpaKecFoCm4c3CK1x55iyrI9THLSaZjxCSLvwLI3HUSQRLh1sTzOcloSXBSeN+Vrk686CfDPauU
 XRQpTE9UCSkZhcJUJqNXNuSkjcCEYCr4dNPXvYzkSHKRlkt+c/cNZy5FsYYSnPxP1ehQrAFOoyB7Fa
 07cNUVQWTBwpCh15hCDHx/dAzqt8kktBajmVeLt4/Bel+A8KJ2HwrdwyZAv0SqbFdFdQk8KBkaZdT/
 2/0+nKpjn3sQstrDY43z6wP3SDRtASDMWpSyHvuBSvphGnJxwj4/2UHyzKfg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the GPI DMA Engine on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed typo in subject
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-gpi-v1-1-3e8824ae480c@linaro.org
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index 88d0de3d1b46..0985b039e6d5 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -32,6 +32,7 @@ properties:
               - qcom,sm8350-gpi-dma
               - qcom,sm8450-gpi-dma
               - qcom,sm8550-gpi-dma
+              - qcom,sm8650-gpi-dma
           - const: qcom,sm6350-gpi-dma
       - items:
           - enum:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-gpi-29a256168e2f

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


