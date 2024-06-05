Return-Path: <devicetree+bounces-72593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 414588FC5A9
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 477BB1C20A59
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E15E4190040;
	Wed,  5 Jun 2024 08:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qBw42MJL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF405194A60
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575025; cv=none; b=CFAia9S2IIwo9j2O/Cq7qqjubXp4UBVIIBF1zNf6BHS55SADToms7AHBXQc3dwDut3hJG6YyY7A/WAg3UrX/dwFvuVn61048ORNCxJNk4A4wlpQkMCoIYrQIt1uvXEMxaz60CjixzvDAN6O5vHr2K/HmermAajgPifJD3CMmh1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575025; c=relaxed/simple;
	bh=PtqIzUR+SIS2mhe8ht+z/VWw/jLed31dmgwTZYCgIVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U2+fCb24FGdHBpoVHB7t5YWmRsspJY2I35Chucs+8+/3Y2zSkqewH9cKbaAS9rQ4xH2V7/CXRIty2Nm7sG+fWvj3nocG7JfwVLXqvpFl2Gy9lIfcFIlix6On5MsMAZvKihsYbf3FJpkSrVNhYf8e3RD1PLeem9JNpYbR8giiFjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qBw42MJL; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42147970772so12401885e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717575022; x=1718179822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCioVKtgcNVa1NG8SFMEgm0C9q3XWkBsdJEzhMv4dm8=;
        b=qBw42MJLYvvNzL+y4mn356cVOGa8FhGZkiI4N3+4oIvyvzSkcv6Vs2xSqSwObLyo4m
         415tC/uT9QaA5qOOyxTVKwRYrQIUmFG8jiQ+wOIq8mzXEaZl+hFSowrJ1b4cIdvCOajY
         +FZv8JBpwp8AhyelBJG0vo6a+COqTm0XupMYBNQg57CGbMj2W2EmKBO0o8a9I/+rDQlT
         MfM3ppV6Kj8aW3i6e6vq+jhanDtCN9Mr9M/1H2vwp4lZzsaWRiPWxP2JsLIFK95eWRPL
         u++Ub84EbEPfvBRdZGDMn+h/gR3qrNGoHNjrRbLqDe+CaKvIBso7ZVK+HarYn+cGew5o
         cNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717575022; x=1718179822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rCioVKtgcNVa1NG8SFMEgm0C9q3XWkBsdJEzhMv4dm8=;
        b=JpCwJue6NCBiXp7DJ+liv16wl9PXNnx778lywcIw4pj4VmeKgG6B3X9ajML1Es8kc6
         2bx4cgADIEbKT16zrkguHthxD7rKdCNey4bzgsTmydFPyR6s90k5xZxBEH1A48CEJDX5
         xnuxdowA1Y0ucnPzv3xQPbQwnB6KLKpLTHmWvSBicwFxn4mH9Q9Mdw8J0dLy8zg+LO5/
         CDTnqLxhmMtsnjcaWJdPdo+GTRiGrlKi7yVOd2G0dB+Rjvd62OTFopV+7ngUeUrgU6Jf
         0HTH95AHnkqwKL33v9mF+Tl1xp66HtJnQKjBat1zWPT1qVu/NkBfsWDjIjOaQQImQqGB
         yaNg==
X-Forwarded-Encrypted: i=1; AJvYcCWv81aT5ZpLrHQDSxIUWZ6iKGM3m019crj+rkDT265hvl3paEIAKBGXPLUFsFhFoh4FP15kDpaX4PoCK+IZz1LRTTVfS0O3jRNtQA==
X-Gm-Message-State: AOJu0Yy710I9PeSwmnoW90GtAEdCWpruM+Llq1aUov1r0BbDRuBRpINd
	hQmh7GaLXWLw5jyAEMw560lsK/nVwWj24mHsV1yorV0wX2nRYqeE0u1BEvzxk30=
X-Google-Smtp-Source: AGHT+IHvbgXr/rDCYMbNg+U0Cl8ySIruSyT2qHe0Jg69dnGzXSFq4OcHVFnxSk/q+1Dk6k1lb5w9wA==
X-Received: by 2002:a05:600c:4ec8:b0:421:5288:63fb with SMTP id 5b1f17b1804b1-421562e7404mr14694715e9.19.1717575022406;
        Wed, 05 Jun 2024 01:10:22 -0700 (PDT)
Received: from [127.0.1.1] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421581490e5sm11025585e9.34.2024.06.05.01.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:10:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 05 Jun 2024 10:09:41 +0200
Subject: [PATCH v2 14/16] dt-bindings: clock: qcom,sm8450-dispcc: reference
 qcom,gcc.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-dt-bindings-qcom-gcc-v2-14-f947b24f1283@linaro.org>
References: <20240605-dt-bindings-qcom-gcc-v2-0-f947b24f1283@linaro.org>
In-Reply-To: <20240605-dt-bindings-qcom-gcc-v2-0-f947b24f1283@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1472;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PtqIzUR+SIS2mhe8ht+z/VWw/jLed31dmgwTZYCgIVU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmYB1U8STVT38oEAPL6+ArDXYUjzI4FGrsSPvvO
 Icj4rpsz2SJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmAdVAAKCRDBN2bmhouD
 1/HRD/9JyIT+RjMj8pNS94kQwm2nlUHp+sLul3ZiDId8bA2jV9+YFE9PBpMvgq0OJ2y92TtHI9j
 FMQhJniUSJKis7joErlvymz7sBW0fRTOvApO3ScWoKHvs2jZiIVA02CF8ptRV2yz8nPGeooFALO
 TGLI9VjDZZzAlUOXVio6qSuBXVNcXDB9iphgIvJM4Bc7u1Vam10ZCvVsWDT5v8fT3vjbizkdaBF
 Samx/qabRNIfjLPGxW6BtNWYyn/Mn5EcbmRHaSxs9LWp0ItoARjzmmg4UOU9FzUv9yRDwFzbzSd
 kRQZEGLwj6MMmtJqCpeeLOXsVMlZ1PN9KdLg1Y3eFJRW80A0BqBrtON3psMRUVGBHDeLhUm6M3T
 dWWWDbAbh3YI/z6MUU1H5GINYCnxwfuorQ/BE6xxLXU0qT+bWw6ROBqykF9NnjY3jrCQIocqcYu
 W373qiuQN0s8Z0A3428Vy77mT6stX+qG37zOJPloNUEb9kc+SWUgv6K0eq8IBB95cpgbfh0lHJc
 NOWvQX4/f0HkC0pKXdOTfRKaztw7niW2ZdtKq7gH7Y6vXQpAn1cLCLXQOG+ORk8qgdm/Im4YlFi
 E7HnMP1WvqkNUoXOBcpbOsx4cyYq7pBNH9OG5UYRANRkCqCqIud25ZmenvVp/QbvAHmXAUhZCxI
 VnfAckJE8NfFsnA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Just like most of Qualcomm clock controllers, we can reference common
qcom,gcc.yaml schema to unify the common parts of the binding.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/clock/qcom,sm8450-dispcc.yaml           | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
index 2f22310b08a9..4794c53793a8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
@@ -40,18 +40,6 @@ properties:
       - description: Link clock from DP PHY3
       - description: VCO DIV clock from DP PHY3
 
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
   power-domains:
     description:
       A phandle and PM domain specifier for the MMCX power domain.
@@ -64,13 +52,13 @@ properties:
 
 required:
   - compatible
-  - reg
   - clocks
-  - '#clock-cells'
-  - '#reset-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


