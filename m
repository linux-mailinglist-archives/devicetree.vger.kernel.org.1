Return-Path: <devicetree+bounces-227118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8083EBDECCE
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 15:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D6CB94E4EAC
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 13:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05D923D294;
	Wed, 15 Oct 2025 13:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EDoJpcGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1942244692
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760535808; cv=none; b=RBzZaKS0bdxG6eFES/NkXMOyMtiTfTPTPWnWYnggQkIfBCLMMtinKzEs3P3FbE8xIO2jAytvQ1txg8lb6YiKNQPSkJzL9fzngS9s8u4RwiuDywCpcTBTBDBsIv36uykg5vktqLBFovKozwbhkupbyqsLXunnPhoP454aGaiqmKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760535808; c=relaxed/simple;
	bh=HVFgQkDcaeo3PqpmL4D1vFEkuL9MmnS0hS0eZyXaDjQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nL/+Xn5RmF26iJ4iIPmKiUQIBnEj/uvwYStfRUZaOgwIq9VQmV3ZdQgm/OTFfrTX9Fv5EaK855ES1L+imbnL5C6rCapPIQ2UgjyegMGU5ZLpPyM+yGlzDLiIxPdcZazfYt3hx1A/JSzzx4Ga/SxR8skvT+3ODLcIx5V7yclRFhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EDoJpcGO; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e37d10ed2so60231905e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760535805; x=1761140605; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ByogZXc14UT9n3SsitnEg7RC0BO7/uaOAr3B9hBWHyU=;
        b=EDoJpcGO5rW+uwjenxBFghrh/uuj1pLLiPvxHmPqILy85wfWl7r0p4jvqVtn2ZdP2W
         85LxEJvKs/5iJwv20vfo4FMZV4hY+aLntjUhdqteyR1bBiVYQ86iDlAgx6ubE6pBWl8M
         ul8fN791Y5TKk1jFMKTfHLwRSGpZLk0/bu8lLYm63OyCUFNYb3vKvwZwstV5UeYugV+n
         50dvJYiLaKiw22YYBxjGtBV7IEIDuqZsqfTQA6+l28+X5LyNREp22gyG/vjgFLtzgV3I
         DOjZHdqwKr7LqGWPHvmR4baW9Nvs1ZGaxmQkwCXpwW85WwYL/vrvMGKQVXxZU7kj/ODj
         jx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760535805; x=1761140605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ByogZXc14UT9n3SsitnEg7RC0BO7/uaOAr3B9hBWHyU=;
        b=alKWUX1QOJqq4Xl6KSAXrfscC3kHvPJLvjqlFoMzaYWGXEg7hquOOKXBPWTwx0Lpgw
         6QsOH6Jk2qXOLrrO5InzSvozT3NRfYXXF4KT79aPOkBPtnwTsxHlDO7MbPhY2SNeGIuH
         sgAp6E6+VmC+khCE/UES+c2VnMW7NQY8vT0pcDVz0vyF1OtitFYOUMndEYC+llo3lNGV
         5VqxpT2uz8m7xeDT+JlPjNQvdlmtejVPjFFTg4FPsFmYkQgJ9KDJeqMagzbMGVoimPwy
         V3nrGT4R3f3A6djmVUurjRgl+oVkRYP38AZPoUFIL3G5QvCPuiparPZZt7lkpGboq1hs
         4Yfg==
X-Forwarded-Encrypted: i=1; AJvYcCVwd70GxtSnLUQ5rQl4JOStWHcKHxTdo/zShjxqHWGzar89y9TJbcP00Dl+y9+aN+s91suunh7P5Dvp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz88T2XIYviPUu2QNdkyfWeOHOmPBtwoQuZriaRCHThR12MEuuS
	GaBFGBvDQeoyKsRr1N6GIZVZANlDpJM9GP/LyEaFfD6g3M6lxbt6atbqBR28Xg65X8I=
X-Gm-Gg: ASbGnct/G4d01dP00GreP/pUyJU3FEU/9glKXvmA/BF2Uem3EkcdDLwYCdY5oevb9Lt
	Gvube0th69/AnRLqstm5OxSwEfJC97Mi5+Zg9t2V6wriQKoExhhThTXD+oeZ76gKCWg2KBMSRvv
	FpofG2GcJw3i2dxV4ufBqiHV6u/DcfcgThv2doIeZqlv9DO8ODEzVJA0Dldu3GX0d5jzjDLIAuc
	WR+Y4CSZDA3frNw1ZIIReUdCS0kkFy+py5za8CVPNBYvTUpwfXomV2oo+ZwuzRmhtG6QBsGjeap
	PIW7hC9pRQMeW6J8vI1CTVxxdjcCHYdLkKEjfUyzt9IoLmOTQj0v8lB8khBqo49rANBLrhdljQ8
	132aHzMb/wAm/GhVcbG+wPvvEwSzLWF53EO8mbizWaac=
X-Google-Smtp-Source: AGHT+IEdJvwQMAzflMvzw9Im0rtdAnrqJe/7LKsaDEAVa+Pj9LNw3qX8KbdcOXs3ZMt7/aHq4vZSwQ==
X-Received: by 2002:a05:600c:8b41:b0:46e:4b8b:75f2 with SMTP id 5b1f17b1804b1-46fa9aa2209mr203799815e9.16.1760535804923;
        Wed, 15 Oct 2025 06:43:24 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3d2d65sm174180795e9.2.2025.10.15.06.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 06:43:22 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 15 Oct 2025 16:42:54 +0300
Subject: [PATCH 1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur
 PCIe Gen4 2-lanes PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-phy-qcom-pcie-add-glymur-v1-1-1af8fd14f033@linaro.org>
References: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
In-Reply-To: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1525; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=HVFgQkDcaeo3PqpmL4D1vFEkuL9MmnS0hS0eZyXaDjQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo76TyzVjrNcOQFFfUS0aHr0ePAp/hK4fhn1+rV
 41VNalrHmKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO+k8gAKCRAbX0TJAJUV
 VrBuEADJFwj9fxmLwEXaqLuXTaNf4FRLP/gVP+JCozt/cA2PfCZO0zTTX951h3cHo8qodlDDP8Z
 YffWvqt1F+ba/AgN3OMAJS1HKEPRlR6nwQjiVHGsGarrNchy7rOnOzCskOOoi1qDtJTfYwrDC9O
 ER9mD6uteUkcTMtftbJ6sd8AYZeW2Fc54QsMnJqObUiy7mCwzFP72GU+T+rqXIruXalpPrsqL41
 5o9gCH2uIym5VVvbGbz3ebmZwIINVWVUErUjEQ57AFeVUOiTMVCvyRqldb51RNFbHO/g49p48TB
 oKnsnf9GRpi6sfUdftmt/mImWHdpuSynsQe1Ow6H3QIsYMY1ALmXQy22vdZcpUtBH+j7QLr+0KD
 GB1U8lZV/rgyxDqTQXrjoKANXNetGEc0Gh0FeyOEl5p2F0rCaAZVIovK1j0BoGL77d0f8kYqR2A
 yzTv3kZq9WLjmJd/4eR82NcCz7Z17tP8bv9xlB3BjXDi9uN5bu9TYMbGrl1bEaNtTRDRsG2psNf
 IJG+8TP97hvwaYBMCo/LxlGzF5oxpR2MBc6BEmkQGXflntKhYHlstEAXcziQIhTf0jEqMjMEb4Z
 D1jkDmk5PbpYAZnXiAXMC3FpAbZwQFq+ryT2Fi2G4VQQkVoEhhfL0QQ0AfCMqRQS6htttsgidV5
 4HqOZZS18/Cn6mQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The fourth and sixth PCIe instances on Glymur are both Gen4 2-lane PHY.
So document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3adeca46d9aadce103fba8e037582f29ff481357..b0d1efb84fcf5abc3fcd9146f89c903a4ec84dba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -179,6 +180,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -215,6 +217,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.48.1


