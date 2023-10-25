Return-Path: <devicetree+bounces-11590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D467D6333
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:35:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29E3B281C83
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B0B18AE0;
	Wed, 25 Oct 2023 07:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UIFW7fQj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6639C18623
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:34:57 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB331722
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:35 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32db188e254so3717071f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219273; x=1698824073; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1uFHDOXASZ5BH047ZzhsjZxg7GSsbR+WOPLJZ6Hp9E=;
        b=UIFW7fQjFrWvorYa6pkiq3xCg3NI3BkCqVC4D1RrHbrsGaJhfh8+c8BlSjexdAWk8i
         bhNbEp+2/R+rQ0CPu4vc/QDEmOY0fJlKA0GerxMeDZIqwNvLmSzhxTLrlodl4tZJdN0g
         RMIhswjrNfgSA6Nip3PRrHWLP69qQcrZKrzfNg6sosaYm9ojUOcLqqB7WvnWcAMewgVn
         6YG0ykT4HIFZKlQ05TKHUymd+f7WGgMtV4dqCCNf8qLGgIVS3AkW1iQPCpHA2nB9N4Mm
         rXFnJk6zcuqAQ4Qu/kuxzTY3BpPFgkiM8di3nv9q54uDBNDI/841AUc/BHlIPg5I6uRE
         9RcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219273; x=1698824073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s1uFHDOXASZ5BH047ZzhsjZxg7GSsbR+WOPLJZ6Hp9E=;
        b=lfmm2veikUkcfwHhz+ZF7BCkwpAQBAEc9roxJg8Ed9qsc/XAJHCh+/sBZ5psuqAxX3
         llvHHTCZ63+W8yjVdxbIkYpSJ3CPWVLRT/G5zQuH6eCqiGjZpc+2RXBPTRmh/TxaoJQ+
         J42HAY0NCuusz5dDhgVGRrus4+OFc2GiBKCuQG57al2BMoAiVitP0077zcEQTEZLxzzb
         CvVmOWLpSByvQWYlGCRu0eXObGI6b0Mf3A4OdopEtpxDJBL9wYXsRgmo1ifLEeKqzAO7
         G8nUjgGMIMwrdRzzwaJ8t1jHKsQuc89tNBAK/6U/GRafz9q/fRAvOGlSYQkTgL938wq+
         5c2Q==
X-Gm-Message-State: AOJu0YwaMC/N4/j78cYhg5ZsswaxyHGjosQtGlPOzy8TxaIUeZWCbpkV
	i4zqWxvUhQEc2IpMlOPPqBkXRg==
X-Google-Smtp-Source: AGHT+IGJnIErfrQCVfiSkmXIczIEjoeTOW46/Ip+i3/h4jKFjegCr2NzuU21K8KRzPu52K3Pt85S0Q==
X-Received: by 2002:adf:fd0b:0:b0:32d:d756:2cc7 with SMTP id e11-20020adffd0b000000b0032dd7562cc7mr10529309wrr.58.1698219273685;
        Wed, 25 Oct 2023 00:34:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:26 +0200
Subject: [PATCH 4/7] dt-bindings: phy: qcom,snps-eusb2: document the SM8650
 Synopsys eUSB2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-4-6137101520c4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=852;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8xmswTD2ELDmxMqIqnHD3lBOLsWcHOrJVpLKjghNNJU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUCZ4bwlw5KtKD4yj4JPbB3O8CUhPn6Rd+hvv09
 59F2Xy+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAgAKCRB33NvayMhJ0ZeIEA
 DIE8pSKteDYwap9zVfyGM9gWhGOQ6owg+5EWGZ04w9Zn9jH5ssQ22uwMKNVxWKzFH4ROqf0MZs0p6/
 Km6aG+YiT0VjsKyLXARUyaEB8o9xN3R7bNVGLhiah6pkHObEc8nfU/gvxo+n/2nncRJoW6BGN5WpPq
 xvH21Q1pUHpS/oGLIG5ETE/HlE3IYAh2UHlmm1AZUJtSL6vzmGpflot3puheg6KuGRc3PIJ5IPkrD/
 JC+KvfxtIj/ls/IXY37rPc+snze4AXMqIRaexIOur15z30EmzRhlT4h3+9/s/X90QRWJ5KSrtF+ig3
 0UTyVQJvu5pnGvyp+rownBSKQVas//MM0qa4UkEOqflm4Bx1ifZXcGdv7EYjMXo2basT7TdcCzyAIX
 r+X4LrNTiNTp0MFEeGqq4SZIbyME4lJlFE7eykPZXi5R7evISN1zyP+DUoSYKCQcnk5EW7aSjJ84Sh
 GMcAOHJoJ0DRhBL/x4YfRVpS4OyaEORzhqUwL5eiHoX1G6n8FlWn+uGOjfYlxDVmAfvCknXLOIFbEy
 Cxxi4ULZYtWPBkLapwWC+wmwVjYNpSsFBzf5vsMQEylulruTcvXbQXhaEjlTu7gLiMKxQn7H3rBuyp
 QBHyUkFIrk1e0+qNY0T7fhFPtwLiKolTu2/nEXflxsrLEScRD3zyHM+5yOtA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Synopsys eUSB2 PHY on the SM8650 Platform by using
the SM8550 as fallback.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index c95828607ab6..8f5d7362046c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -18,6 +18,7 @@ properties:
       - items:
           - enum:
               - qcom,sdx75-snps-eusb2-phy
+              - qcom,sm8650-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
 

-- 
2.34.1


