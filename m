Return-Path: <devicetree+bounces-184309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A51AD3A6D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:06:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 070583ADD76
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FBD22BDC31;
	Tue, 10 Jun 2025 14:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZzPMsubV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695E92BD035
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564377; cv=none; b=T5HNPRxgjv5bLptvKLoJk+W5DJNfFakGrEYW9hbpoVkHyRSaKaCBXax8MyknAbuZj78iQbwcGQjb0H2dPcx/VlGzYPbmZyffRKBEwi88WOWcTYnAKhebGu0nWPod4j8bOzUm19lxDQ3XSuSHKnBbxcpBRQhLeF2SgZ1azXpNaS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564377; c=relaxed/simple;
	bh=yhNmcVev6YviCoPWMe9VUWm+x64YmaIBhLXpEPpZ7Gk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g2+30NklACp4uGbDcuBvd6sQKoIbK+wFhtlpeE+FSzC1s4AQmA9FBLBqbcsPgd+cDtvgu803uW1KE8oWo55zA89SPhBlsBZXkkMUm0oIbTg3N3gQUUIhrUv1a7J6t+xP7EqfjSFOs3WrdYJxFyDIgQZWrfOfC3J0hgjOGjQ+v6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZzPMsubV; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a528e301b0so728724f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749564374; x=1750169174; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QjftRN79TvWO6QuKUy67aBlRYEHheVO5KyEXzVb5XhU=;
        b=ZzPMsubVZdY4cV6Ulz04GukjnEDnr4UeTyPf7LWUnk0AIJ7zLNc3N2VmXlmCuspcm0
         Q4pOVI0TuvkwFM4Et07rIxjrj6w+mupTlShaQv9ytkaV7ILvvJyMaKiHBXr81/JOkHM1
         OVbzP67Q3qlXB5uX3IjDCQ6HCEr/KJu7cLOOBuQ4RdMa2Szgvq+0xfmniaikAJc1qzFu
         LPWFZbSG2o0zc0Jot6rJl4jowkYof7ZQGmGEAb6fnLIFDnnqNl2vf9Ps31XbMQloeQre
         VEl01W3IjWebotqbMMeTBbXkcWjken86Xhid17kH/C/mTaR5YkN+nsudH5OLqfsgOm+j
         o9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564374; x=1750169174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QjftRN79TvWO6QuKUy67aBlRYEHheVO5KyEXzVb5XhU=;
        b=ikRtQm/LrewBokkCE68WJTpgA4n9f2FeAOxjEJrM0ixmAbk3k3sI590/ZxdFF/8eq5
         Ks+BztUZ4rsZ2wewng5vCfFeX5d41LEHOwP9YL1Tc+1X7+Od/FNHQJxPX9XfmVAf4b1l
         Pv6w+VqjuW2nlj5vghuxb5PHFC00JTbFWNb13pjYWu107bT3NvoA6WWxunaIy/iIRBb8
         WsAgC6HrGYc56P0OJIiaOh8XPYfNxwUCL9RpYjTXRlj1fQaWhJl2GvsNZ9X6B3trg7u7
         fGQOjOXS7DfOIU8K4gKjY1eRhtm0m4JtSkaFEHA+Zz2afwRoes3n0i0b1/zWL8oSrEYL
         KHcQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8zmiqZzubXjPYFI+tLtfLnzNZOICCwnvNbZ5NqElOpX5CTJNVd5Xj1zvqsY3uhLUQsVl2tCwB5oYR@vger.kernel.org
X-Gm-Message-State: AOJu0YzVgBqTTLS/eg3ysTx8e97GrgpVERSpWg5fGFUVmnSM0c7pD7wP
	1N2URZon3UestU9rqdethP6ehysUDZaGlFoCAn8z8/QlCUa2nufQFn3ymC/y3Ew4//o=
X-Gm-Gg: ASbGncuIWlgqrG87h6l8FoQOn7qXJV+al7lLwnEy795+zif7cgV03+1QtXTLUGu0Ahj
	7bugmxH+b+r+8OpFzLsUwSkeBRzY2/UcR4C6gG/+gQFYrQHog4r+epoxKDjkHUGkN2f8BW2jZjb
	0K0PBiWg+6zV41Ny76lrCTeHnO2TJv2y31XBShz4Jooq6mTJnLg1yUD4Ogu6bfvJEtMorCv5CBc
	dBMB+jmtvofEOouM/n3nNzZW2B0f0O7AGSY9/ZP343THP4eH6VbFVPrT6G6EshSuJh2BWQ5u4Y0
	qMKcQSB/+JMjH5RxlRIngJnQ5yaCXL3XUoRQnGkbIhK7KiDF0eXUVGItX3o6FFk/L9KI899QtJg
	WbQ0vlw==
X-Google-Smtp-Source: AGHT+IE8m9vNXCXJib4lvAobDyKN92NL9hduxtJo+sH3CDc8emVv2Z83tmvOkDG0E5rFAG5xNiixzw==
X-Received: by 2002:a05:6000:1a8a:b0:3a4:f8a9:ba02 with SMTP id ffacd0b85a97d-3a533143257mr4846738f8f.1.1749564373627;
        Tue, 10 Jun 2025 07:06:13 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244df06sm12734469f8f.69.2025.06.10.07.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:06:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 10 Jun 2025 16:05:40 +0200
Subject: [PATCH v6 02/17] dt-bindings: display/msm: dsi-controller-main:
 Add SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-b4-sm8750-display-v6-2-ee633e3ddbff@linaro.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
In-Reply-To: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4373;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=yhNmcVev6YviCoPWMe9VUWm+x64YmaIBhLXpEPpZ7Gk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSDvAnTGYNiceDs1Si8NBAvdNZ2GTuc/x9HM/Y
 lE2QCBPEAGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEg7wAAKCRDBN2bmhouD
 147UD/9+eGofQl+6iI1dCqHNQL6e/FHxAyir4raIkr/ZKhgiqQ+7u3O0H2x7OT93P87jrkpqB2R
 UaVvdIKwpUWxgpfm6d2F11C3UglzRoRSdCyXnhww9DNf7eT6K3cbo+z0dn6IzNP4qbZZSI2t8Gu
 MWoDfbuZReYnQtIeCEQcgFleQgDseodzVg0GCDfhmZy/U2eodJl+4QlcZjEnGSRnOFa2Oo1CDZt
 TO8HPNl3xapxWyLr0bvm8vk6dD958R/zp7vAHHJbOnK1hwjCvDSPc2W14nfSN4NX7diFmtH8nTv
 /zVTfR0d5qk658B7xhVxbblBBsWGoVx/SvuCXtefAbF+Vig+hWWoXumGDVqU7K1CC4IR0klqH3s
 6Il4oDQNwi7MxtYR7fwVSUbinD5hpyYKFxOKemFT80hsqYL3Puvp6a7ob3t105q/O0QcLTaxEQl
 vcPUS6rGrs9vTg9Ba6LTXntsyGrJ5FHP8/5304ffFk8VUctdk601pzvj/ui9veGw8Hzd7awYem7
 7XTBcecsFtA4mOFJ0LcctlOeg+/wfLGWvY29oKYd9QrvWF4083FSeddw14msEaQPPCZlMENPSQx
 JaN1Nc0lvlYfnvucJuYFyBLsqra6/i3BfwVlQZ5EDASlk7QOiw+xi1PkH1QGZHK5HS3Oo05qtkI
 E9+5mL32MqGToSQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DSI controller for Qualcomm SM8750 SoC which is quite different from
previous (SM8650) generation.

It does not allow the display clock controller clocks like "byte" and
"pixel" to be reparented to DSI PHY PLLs while the DSI PHY PLL is not
configured (not prepared, rate not set).  Therefore
assigned-clock-parents are not working here and driver is responsible
for reparenting clocks with proper procedure.  These clocks are now
inputs to the DSI controller device.

Except that SM8750 DSI comes with several differences, new blocks and
changes in registers, making it incompatible with SM8650.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/msm/dsi-controller-main.yaml  | 54 ++++++++++++++++++++--
 1 file changed, 49 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 82fe95a6d9599b5799549356451278564dc070de..d4bb65c660af8ce8a6bda129a8275c579a705871 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -42,6 +42,7 @@ properties:
               - qcom,sm8450-dsi-ctrl
               - qcom,sm8550-dsi-ctrl
               - qcom,sm8650-dsi-ctrl
+              - qcom,sm8750-dsi-ctrl
           - const: qcom,mdss-dsi-ctrl
       - enum:
           - qcom,dsi-ctrl-6g-qcm2290
@@ -70,11 +71,11 @@ properties:
        - mnoc:: MNOC clock
        - pixel:: Display pixel clock.
     minItems: 3
-    maxItems: 9
+    maxItems: 12
 
   clock-names:
     minItems: 3
-    maxItems: 9
+    maxItems: 12
 
   phys:
     maxItems: 1
@@ -109,7 +110,8 @@ properties:
     minItems: 2
     maxItems: 4
     description: |
-      Parents of "byte" and "pixel" for the given platform.
+      For DSI on SM8650 and older: parents of "byte" and "pixel" for the given
+      platform.
       For DSIv2 platforms this should contain "byte", "esc", "src" and
       "pixel_src" clocks.
 
@@ -218,8 +220,6 @@ required:
   - clocks
   - clock-names
   - phys
-  - assigned-clocks
-  - assigned-clock-parents
   - ports
 
 allOf:
@@ -244,6 +244,9 @@ allOf:
             - const: byte
             - const: pixel
             - const: core
+      required:
+        - assigned-clocks
+        - assigned-clock-parents
 
   - if:
       properties:
@@ -266,6 +269,9 @@ allOf:
             - const: byte
             - const: pixel
             - const: core
+      required:
+        - assigned-clocks
+        - assigned-clock-parents
 
   - if:
       properties:
@@ -288,6 +294,9 @@ allOf:
             - const: pixel
             - const: core
             - const: core_mmss
+      required:
+        - assigned-clocks
+        - assigned-clock-parents
 
   - if:
       properties:
@@ -309,6 +318,9 @@ allOf:
             - const: core_mmss
             - const: pixel
             - const: core
+      required:
+        - assigned-clocks
+        - assigned-clock-parents
 
   - if:
       properties:
@@ -346,6 +358,35 @@ allOf:
             - const: core
             - const: iface
             - const: bus
+      required:
+        - assigned-clocks
+        - assigned-clock-parents
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8750-dsi-ctrl
+    then:
+      properties:
+        clocks:
+          minItems: 12
+          maxItems: 12
+        clock-names:
+          items:
+            - const: byte
+            - const: byte_intf
+            - const: pixel
+            - const: core
+            - const: iface
+            - const: bus
+            - const: dsi_pll_pixel
+            - const: dsi_pll_byte
+            - const: esync
+            - const: osc
+            - const: byte_src
+            - const: pixel_src
 
   - if:
       properties:
@@ -369,6 +410,9 @@ allOf:
             - const: core_mmss
             - const: pixel
             - const: core
+      required:
+        - assigned-clocks
+        - assigned-clock-parents
 
 unevaluatedProperties: false
 

-- 
2.45.2


