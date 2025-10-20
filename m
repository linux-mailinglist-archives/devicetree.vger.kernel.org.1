Return-Path: <devicetree+bounces-228945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2658EBF28C2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9890B34D4CB
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53505332EA2;
	Mon, 20 Oct 2025 16:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o66pUiPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5560B330B3D
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 16:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760979158; cv=none; b=RZ9xRsTSS0XZk6tzfPmdJiW2ojSb26z/0toiS7D8GFU4RDGdYXTOl/QVw0sCR8wqK9NPRJUKNayVzWcjnhMA4CUBkxgr7COr8BJZyXo+kYji7SUECY4Hl2kcJXIbCCpXLmOq8VaZx6U+otXTkQSU+SNzaHCyLwZstFSe8lFti3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760979158; c=relaxed/simple;
	bh=WV3J3Sb8RrX8e2Hd8SGcSuELHFxUU+MYrkFn/KmEcFc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dEwIscUDorAp+qq2rGCDwAIj1+nI5EUYdgHeWicnRAriZdSh20XL7xh7XV9OxDp4XaVckRQ0+7pIeDP6bq90aak7SNkd9ZKeizsihJSIOzSbngu1cF7tJCDi7u/3frXpeidvh4zyt3VSno1gzkZhdVUrBFoQkrZ1U/S8JWdFl4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o66pUiPP; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4270900c887so470519f8f.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 09:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760979154; x=1761583954; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tnU84aG5AA7OlaDbC8ewfHpg+G11vcSgzAUdP3VTwAQ=;
        b=o66pUiPPZkSK94MNWruRqkhkpyi0cvt9Fy51ds2cmHWNFcwYpVb6PwYo7IfDPZ4Qc0
         66A7NN7C5Gd4wKgAFCxbY0S3vkSlKibBJTs7GwYXACef1sCnh+z11U+9KbWsCULaNJBy
         eAQnexGGPLNGD1Sl3YHOmAz8gH5UzH58+4PRLY0NPg4gx4/cgHxMJ+Gbe1prNb80/1Ht
         pjnG2PORNhbNM53DlRt7StjYOmglT930wydXlbl4fUuCeIClaPJUQe0w5nNWDQn3OlHe
         W6tQxqwScQgtrUG/Kk4SGK0NKkPqc3W7EX4W0ucVSkj8T0JbrkuIrbNOC2HTmlGWfYNw
         SI6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760979154; x=1761583954;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tnU84aG5AA7OlaDbC8ewfHpg+G11vcSgzAUdP3VTwAQ=;
        b=JA9BTWrGLN5p7q8Vh2TCKyCmWVKf677UKkFC43Y1eNp/WuqWduYc///y5QHvJp8A9S
         uKJQzNI4y/uWe2czxiBfw8GGodgbewzPxb4RuXHj6yZN1qE+RH70R48fUBCHEsBJgmGx
         zQanqrTt306U13KVvPrl8XZLKsGRCho9OZ0iBwTac2G3Hobx/KohIZiZvZfF3qhVYBwm
         BJQ7USDPuN1Gk4C+fA0t9sw/OKQJxWM2kRm+AIgBQjN1ERuLt89qQ4WShlUX7S7xgHew
         JGlOZ9cOKjMamdo1e0GquWK2BICKGsLVp6HJzu/aAEK1kN7QfRk6G6IX9ZaXo3YH0u5+
         p2zw==
X-Forwarded-Encrypted: i=1; AJvYcCU6q/9eIZGNUB7zaR+12UNDJUMigoGKEyECmZ9Fz89N4N3NxKmwMdKlwnLft+DMvjRNQEH2A+OTryDA@vger.kernel.org
X-Gm-Message-State: AOJu0YyPvBMxuHj6X23jy32+tyk8IvhYDtEa8dxivfiH1e8MnECtFYAF
	tiivOvMlSrHZrU8jzYQbh8qfDhG+G1dYG8zXqpY+wxHWLMdpwZ3wHXv2moTsa6aXIOg=
X-Gm-Gg: ASbGnct87Vcu1tkVjGtc2rxIq2b7Ndp47dDS3+f7Aneb9BAyeQLQ2LsMpH2YNbiwpS5
	t68y/BxSjJC4hxVYxLsS7vdFau0BrE9Fu0Ix1Y03BX1yZIYDFBgIwnQpJ/E8rO5EswJSu2wdG+U
	GCwjR+UbLW0eZ/bvPjz+iQ9NHzx3kizedRCGDJE9nSaFzZgErxitb+P8YGaYWbHMz64aAX2qBy0
	XNj8I+U/bxW9jdmFx4tCFlDeALZFT0lyQOCKasC4PnEvu3AUL0rErLMgxBB6WRd+KJCJscRieyA
	jjc6jJLddlnL+OfZEZLOGs7FYy+qof0yrpTewsEecBeoMMwa5BfNaP0ar4sgKtsMiNagNCYNR4U
	eLBkZB6IE2dx3nl2vy8cKJ9TT75WjmUS8syk7/WIXarU7CrMBD2QM1qSlXbtqiLjlj03kmpZQ2p
	8+OQPitzUTpIjaDQrd
X-Google-Smtp-Source: AGHT+IF+PYBZwEZy8pbZN8kRsdKZQq2AcpQfnMVlCxQFPlEkzb/myAUyLd2oWEemkGVrfgYsbSowoQ==
X-Received: by 2002:a05:600c:4fcb:b0:471:c4c:5ef with SMTP id 5b1f17b1804b1-4749437b584mr1865315e9.4.1760979154529;
        Mon, 20 Oct 2025 09:52:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144c82c9sm238324695e9.14.2025.10.20.09.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 09:52:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 20 Oct 2025 18:52:22 +0200
Subject: [PATCH 3/3] dt-bindings: mfd: rohm,bd96801-pmic: Correct
 timeout-sec length and reference watchdog schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-dt-bindings-watchdog-timeout-v1-3-d0f3235eb327@linaro.org>
References: <20251020-dt-bindings-watchdog-timeout-v1-0-d0f3235eb327@linaro.org>
In-Reply-To: <20251020-dt-bindings-watchdog-timeout-v1-0-d0f3235eb327@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Timothy Pearson <tpearson@raptorengineering.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1261;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=WV3J3Sb8RrX8e2Hd8SGcSuELHFxUU+MYrkFn/KmEcFc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBo9mjL3LkGaBxEvHYAXDvaeJbqP5XIgRGfzHbA7
 IQHAsPDzsSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaPZoywAKCRDBN2bmhouD
 1x11EACVw+bJXMZS0LEH2JcYcGdH/0utiWamyWWmZSP1oFAGZ/h6iDr4dMoPJf7hhE0jxp7cQF5
 YSGB3Ob8o2+LwOjYTdSqyUitEC8TopdYh+K8QtLhrJs6hTjNILM9Qc+oufmHqk78jDp5qYCqtyC
 YoMJcJeRIi/6sF+0lyvDosG5B5hTvM32i1PnFwZTv/EL9v/b+x+pFaIYkL8/ac63oqDshPbaFSx
 IZzpue4l9Ph2aWQm/dRiUjjA1j+kxPG8+cxhHbnXXG/8adnsYajuulAMiVhbfwuHcHfLfCJsagX
 NCN8HZXTNBuuS/26I1OlmoBPRfGJ5Yq2w70YiOiruJ46bSDMM2GM/rrWDafKIi4my3+8u/SK6Oz
 CfMnaaU0WX7n3/lbz2kEEIzrMg2AiT6OhffFb/ViE/RaoWjXpdcdPFGiW55N0Rf3A2clnMKXebO
 JjlI98ni0THoZdVrFbfZjcL8+Ez+N0mkwDzla9Tk2nZQ/X4xwgTRxsy8uUwMG+6k0EJ61rYsyD4
 To++LZTBB/p1+rKJgpAAkaXV7Z9TIOr4LL7k1HWiJYFlTziLg0xWk9COA/0ki2mVpc0WNVo4arX
 x0s6zovbCAPh+D5SJOKRtAHb3xRgWPBZAhamr1DPTkDbNQuRSqyUWrpk5rpZl3Xy7Qo5ZRzZxmK
 Py6jWnzSf1vk0JQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The parent node of ROHM BD96801 PMIC is also holding properties for the
watchdog, thus it should reference watchdog.yaml schema.  OTOH, the
timeout-sec property is used only as one number.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This depends on previous watchdog patch.  I propose to take entire set
via watchdog tree, with Lee's acks.
---
 Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
index 0e06570483ae..adb491bcc8dc 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
@@ -57,8 +57,7 @@ properties:
       - prstb
       - intb-only
 
-  timeout-sec:
-    maxItems: 2
+  timeout-sec: true
 
   regulators:
     $ref: /schemas/regulator/rohm,bd96801-regulator.yaml
@@ -72,7 +71,10 @@ required:
   - interrupt-names
   - regulators
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/watchdog/watchdog.yaml
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.48.1


