Return-Path: <devicetree+bounces-233108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C90C1F295
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B052919C6F39
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053DB343D97;
	Thu, 30 Oct 2025 08:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ugu+Torb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A8A34214A
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814279; cv=none; b=Iac7OUJFCWmxxe84mF67GqCRABKuSVTvPMm9oDL+dgu/lpn0bYg2PW568zatKHuijp/vucM6/ME6jiDr3jfeo6bC5yd9o4JDMCGhor0OZFvDS67uD1Ld2gjbetb31aXX0k/LqRS8r0aeCvmdmBLRnF7HMfcx+9NEBS2tTqPAU+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814279; c=relaxed/simple;
	bh=1ZQHY6JpkRKcQKK9PJI2DS8+9+Ft5mGT/4HkAsIsEZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gFV8io5CmopJ6ifsD+8SyGnoFGVH12gWJKbcYNjhyfhaGHG9oXvw+gHyYx7kqyxT0wsAOYrGaR8OPSJOLGzEeyzujiARV6PHWIl06NSk9kOMFvAQ0G6odC1dOLRE5dkv6YDmgS3TUePIlN4OOnReIHWz7KkhEd9QhakfpRijCXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ugu+Torb; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b6d5f323fbcso16786966b.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814275; x=1762419075; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UvmpSsd6jI6Q+bHe8qcAmRmuD83LAnf77r0YzUltAZc=;
        b=ugu+TorbS56RxB3B0ENr8Yi50yXFiOYbfNF4/k4qVdIXf/TZNxXu6mLSCyqUo1TL5/
         YpPDktSoMgvE68pFuYt3ObzRnaIbjMhFSsRbzHiBnHz5q3QYudtnPdvGLU7zMoZgp4wR
         HqzQNaGOvam6i08lIidqZnwr8cuyYMJeptrVMyeI7sC7vHQBw8Cdjp0vBaBwroIaPTt+
         KMbUHH+NHjrMj6qVYIubqmaVe9SJUxGlo5ZhU4DLb1umCpxyitcTMDg73vSA21ByFpkc
         ZHhdqSzd0TQmllT63ocAOL3LN8+ee9JDCfRLUoQpZw8SLDwwPaszD3lXynwNJuitw41I
         83/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814275; x=1762419075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UvmpSsd6jI6Q+bHe8qcAmRmuD83LAnf77r0YzUltAZc=;
        b=tHoaJlMFEwq9y3mOoumgQaxZpPGj2gFyPo2Dnz+DcOy4/I0XzX9Gy6yEuEaxK9j0KB
         mMbWFyprcBoiCQDmm0l8+UTcV1Ilc7m52lGBKOrgOXYyQKO3r/4znjO5CNWv3k0FUHVY
         /FmIY/rG2b7qVnKdIw9+uxCiomcuwBdqPT1WJ42I2Bks9nMzntpv8L/x3LDQJxoFq3QR
         WI8cc7S2cJ498i+8JWY+X5rWoRXAWZxvEbzbnH2329IbDHXem83hX86N/InMF9n5u8Zn
         KeZ/ibX4GSIm2X0TDejPU3oksVuesXI1WPuvyPRRuoMU6mUCciwMoQUh1WRKdmQHeL22
         0Dfg==
X-Forwarded-Encrypted: i=1; AJvYcCVnGoyE6qGYvEhJrJ7ZvXiCRzh2rKuUkqSG4Pwbf414VrMjQy8Mz6h5i+xmzf7iJpJKdeBolGQo+aNG@vger.kernel.org
X-Gm-Message-State: AOJu0YznYwclxETyy7QFYwJkqdQcfmZtTcLtsbM4kOtFM2/xp5FqaEyr
	TJBEZ7Z3OoDg+6WZb80cqxWdfEkm+KZM0ThydYzwxEqaRJepJJO54vbVGGaTbE38Vc4=
X-Gm-Gg: ASbGncuDmg+Qzej/BvKSkw1QOl03fgi+bbr1+RN6dKscikCQPrSr1tWtV7OawAk4zD5
	/UIQjP5cI6TGATyrT/o2zflRHCHcqm+wLM8AfCxaPQvuC9G/22f+kBtAXTVq+mbRgZeULm7N0C+
	k+FGWZnSltPCjEXhF7zZNQya9bbkkwnM2lBaqQ0xCJlQbZqqu9fHIhMT/nwP+NC1//tUbtpHdbj
	iR7+ZTlfC4I7v6EwHLfy2LQBVLEFmbHQkFjBfDzyldeVmfmMOeD4gS7Mv+XaTL7wQWNx+Vjox0p
	uXpx4joTqJC2mfIdnd6YRW87oXmuihZsSEwgCzK1zAOeqZ7/lAhP2UgEIuGXFScWhWS28T1RpF6
	tZLqdblHmBkZ2hNaLvZu1cJmkFJmSfxP5ysLVevM6z4xIpFja7IbhrT1xEoa0zZVmtzWz/Q0Z8u
	4oB1nG7cVebHD8s4Xb
X-Google-Smtp-Source: AGHT+IGEKHNzO+EkKJcRDPovudmV4d9G5gAvaY8VFzPoSod8ImQSADChmJzaBRdrRU7uDVh9y4i49Q==
X-Received: by 2002:a17:906:f58f:b0:b50:4c37:c460 with SMTP id a640c23a62f3a-b703d2c77e6mr363225866b.2.1761814275132;
        Thu, 30 Oct 2025 01:51:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85ba3798sm1691789366b.39.2025.10.30.01.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:51:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 30 Oct 2025 09:50:51 +0100
Subject: [PATCH v2 8/9] dt-bindings: PCI: qcom,pcie-sm8550: Add missing
 required power-domains and resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-8-28c1f11599fe@linaro.org>
References: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-0-28c1f11599fe@linaro.org>
In-Reply-To: <20251030-dt-bindings-pci-qcom-fixes-power-domains-v2-0-28c1f11599fe@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1143;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=1ZQHY6JpkRKcQKK9PJI2DS8+9+Ft5mGT/4HkAsIsEZM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAyb0lVcfJDTfj3ub4IRYrqA7Lt4NeMpgHPOtc
 iUTjmgU4nmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQMm9AAKCRDBN2bmhouD
 1xtvEACU29T2agLTiM7s4VjWS1ofBT4LPVa8T1udrbLmdGwi/F/zDI7D5TIzZuqbfeZw0l5mPP/
 1l6VgRIexo+6EXi9F2EGNCuV2bpGahqYtBqNxJR1/Y2fX3FO0kc07CZDTqcg1LgLNh/VApyFiJk
 G7Pk5PXHFfeQnUmcOOJgc2AERqq4+Xmr3T74kvFmBKFMuxg/bS3JRvtVkPiAtKQm5ra3H/6iXJd
 8V8vI6lhQRitYnOREEb3kBL4HDvdQO4aMIPwFLV9kvTyzEZWLTvCCngOjD/q+Np87gAhiZ/MuQv
 9g+y6GQnMFq+kMoT+7Kg+8liKhZaTLDVG8va9v9tsG3/jpOeEUZktFeFHIhBQTQMLiLJFyGD1ev
 L2EQNYaW8evRHHUu3OojG/m/gDHQVOViNJwBAoitGjyAPMlFhhHY9TDXbwNUSgx//QsWallsO46
 IBMRjpWchqPZWdJzP3HRalQ4LMbxZSw9MfOIdhxQfmdLoyJO/JvbtvApPDJPxSKHaA1qx+3qPHj
 Z658rPfcK7Isc9z6ztzP52R1lZRGnjVmuzUToIw3XKOu7I2PizDr05bMiY/mIRpyTwm+uWgqjYC
 RM3FLG+ICLlVDprQI78B35RYpfFlO4ZkY05JMSA6o2Hiy+94j4fx8I9bpXHM4AxI0jw8Mq51qUj
 UKt1a+eJX+q7IcQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit b8d3404058a6 ("dt-bindings: PCI: qcom,pcie-sm8550: Move SM8550 to
dedicated schema") move the device schema to separate file, but it
missed a "if:not:...then:" clause in the original binding which was
requiring power-domains and resets for this particular chip.

Cc: <stable@vger.kernel.org>
Fixes: b8d3404058a6 ("dt-bindings: PCI: qcom,pcie-sm8550: Move SM8550 to dedicated schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 8f02a2fa6d6e..4853bc0eaea0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -84,6 +84,11 @@ properties:
       - const: pci # PCIe core reset
       - const: link_down # PCIe link down reset
 
+required:
+  - power-domains
+  - resets
+  - reset-names
+
 allOf:
   - $ref: qcom,pcie-common.yaml#
 

-- 
2.48.1


