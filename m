Return-Path: <devicetree+bounces-137064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3731BA07694
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F18E7A1692
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E455521884A;
	Thu,  9 Jan 2025 13:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JZ6YtotP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC7B2185AB
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736428129; cv=none; b=cc/wBek6D+TMorLjaeERkur+u9xelYpmqhuswcuULm61rXedSbzJ9+b/B6l0/fmm5StsnvErBMc+Y0OByoU4GOxkWiuteMyCWNWzpmumb+r1vzd76YK46zen93NAiwsnGaRc+1bzgqZHLGeASqnAfj99VVEpiWiK0h1KKp3RCoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736428129; c=relaxed/simple;
	bh=IfZcYabdsZFdNzsj0O/kJeMDTVSlCJN19MOBQa68Yvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=byiMBvzkyqgeOE+olPEyK4SDOc7M8bdHIVJ9q6VfbqR//4AlnK1mN1iCh1XenXZC4J9lbyJkT3pZPjSv2dX/JIecti29FmCaWT6VAHIpagQAvQKoG1hpGsIyUgIszf89Bs0/FVFe+fScT0HTMzFv/2hQltlVxeWgz396xXzNVUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JZ6YtotP; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4363298fff2so1348615e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736428126; x=1737032926; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uHRWkFVUYJcbnQ4lEEkkpM4EW1jEFq6Ihd+cartFoEo=;
        b=JZ6YtotPi2pu5iCK+uIvmJw+5y0UQCMZf37ksfDPE05TvD9h1w8V0RmePON6fzqtrs
         TsdRmzNCT+DxRuLCeUVvvKPv5HOC5pOkC8s5CgYprPtPGpZgFLQOU+BDurs4ZVTQwGFs
         8lQbA4jDcsuYV4dy9OL9tWyviLPwQ5Cpa4u3ji/EyxcP74MEqjY9raUaUKbw6ymiaLjX
         28NtpNfF0EsAMR/vEBfxDervhWBgMNxnO7mM8DrzhmTJbvZ7M1E3F5/5tyu9swKBNbUd
         KtUwpdfMIQPgXxvwU+yikc7OXZT2ugFD/w1o/kq7Dip3ujVWusP2fuefpPLmaO67m5U0
         tWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736428126; x=1737032926;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHRWkFVUYJcbnQ4lEEkkpM4EW1jEFq6Ihd+cartFoEo=;
        b=bSzU+vQkUSqf1n7MFeB6xmyodSnD650PnfIMPJKP45o6sN+GYUYd/x5bwGEaN8SrH+
         llxbOG4h7O2P+y3JQq2sppHuMj/tFI1g+mYQyx8pfAUz31ByBKBq69E20/CnrIFGWF4d
         tejUF2udD1VGoCRrENdFona+/QRn5yJy+OSmzOMuaspojoiWO3R3GLcpEgYbnYZcKD0p
         krDGniHlQiLCOJzFCdKVwwvdBBZlDk00e/AR335YWtjopJEoeBVTo24d7SDzJVDleuGD
         jxI8fw2zE/bEPRHaW0WJvnTp82FgU0DWzMp/wousjphK2S/UbIzvobYJKCh4MZ+JTc7e
         TOgA==
X-Forwarded-Encrypted: i=1; AJvYcCWRZAvbvpVyHczMpbvXsGmi4Iy1sjNhHAt2WmAZOEK78qoKav72HUJKE3Klr5X9nBM8BxykKBOjmOjv@vger.kernel.org
X-Gm-Message-State: AOJu0YwPSY+I8FoK1x69oKAEZlQ99CirJEfpgzrdFUQjG3qV5CZ+Pvhx
	5FoCYKQIHg4NqgeZc1MBA0/SDw7IEa9wFDwERiSKsPmY1WoN56poO1+JR5W2TS8=
X-Gm-Gg: ASbGnctj1/XYnWTBwB9p0kZqnjDkY2ARMCvwAU1O/BhHnwbiKDKzxyW+DiEYNJfNeGF
	SClDnJvXP1yVbzOjexW6Dv1HeqCAKpefMtDIFzZmG+dDs0vAY5aqelnfOTpaUXxJhN33JQfBhlc
	9KukCElWRMBE+JyQrYCCIC3QJsWjXOzKeGfJO5ClKlkdv/o06RPJCOcMBMBgkqQJza0K28+Bgxb
	wzf42iHr5q8VM5WzOPlbuRsHwMwJLuVjbjQ98XTTws7ePhJW8GqswFuWrIr+GQvofxQmUqi
X-Google-Smtp-Source: AGHT+IEF9iEco/3jygfFz2+wsWwY9iuB08FDT1mjl5kd6+TgpEtqRc7b7CFjp+6LWzrgMy9hb42Jlw==
X-Received: by 2002:a05:600c:5027:b0:434:a30b:5433 with SMTP id 5b1f17b1804b1-436e26ff752mr25586615e9.5.1736428126203;
        Thu, 09 Jan 2025 05:08:46 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4b8124sm1789167f8f.81.2025.01.09.05.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 05:08:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 09 Jan 2025 14:08:28 +0100
Subject: [PATCH RFC 01/11] dt-bindings: display/msm: dsi-controller-main:
 Combine if:then: entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-b4-sm8750-display-v1-1-b3f15faf4c97@linaro.org>
References: <20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org>
In-Reply-To: <20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2973;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=IfZcYabdsZFdNzsj0O/kJeMDTVSlCJN19MOBQa68Yvo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnf8pRvAVm7n8iqcOs0PLBF+zrL6Wo3H3RqAvMO
 PB74U/ANkqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ3/KUQAKCRDBN2bmhouD
 16wsEACVeHta1watLdItGSKKdsZJrWq+PIVjOq7NatwSmdBQ2MNeaHRvqntEMifiX9j0PKHUQBu
 u3lc/mq9QInohThDto7mc++GeuSCAy/U0911WnxWo4anPLdEnY+byETdnnR1mkRY3pqgArBSNmG
 RzbuOMZfKryR8gcSsrVhtweagmQTCVReR/Akx58KYimbd4cJI9zKzhxkzI3jBGYaFbeA2S+39IE
 VcUzWQn77+s1V/13WwPfbaMoMH+4hgoSIF/2R3EGVHS+1Aq4jj8NzD3Cdzl208hS7xde/a1/a7X
 cIyLitYR3k98kCbIwBekUjJWjU5b2fWVl7pNoq+VXi/kMyFv6r7AQsow0byPQoTzDTSSWr7+l9U
 dii1lywm7opZdmJqKkFx3ERN/vJdHFhqUDe0NPKt3e4zNxVFsjEtG2109ZWbldhCmzUuxO68q9L
 lIK92rDrn9kkh4bbbeKh/FBYXvtQy5Q2nkZFVVW1lEbTAX4Dmnfx2fqQ7G6r010qr0mV9wvFSlD
 zfpXzfhPhD8uS3JmS1nCYdvUtrgMftvXH3fSj+vBNXQ42/yIgmnOahqZ0s8JONl+xF2WvJTZEt/
 hiIAhRJfk9sdZ8DyZQvzmvq/TDvS7WCCmAjnBOQdJV7ut6HLgmStFWEPR8okSkmpAsvdl9kk/Sk
 HaoE/75ZdBL+zNQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Several devices have the same clock inputs, thus they can be in the same
if:then: clause, making everything smaller.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/msm/dsi-controller-main.yaml  | 64 ++--------------------
 1 file changed, 5 insertions(+), 59 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index a9636b76854d0f781923e06b90503dec11b25763..a90255f60d9e31c9c7ed94816284fa8f0d71d392 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -248,24 +248,6 @@ allOf:
           contains:
             enum:
               - qcom,msm8916-dsi-ctrl
-    then:
-      properties:
-        clocks:
-          maxItems: 6
-        clock-names:
-          items:
-            - const: mdp_core
-            - const: iface
-            - const: bus
-            - const: byte
-            - const: pixel
-            - const: core
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
               - qcom,msm8953-dsi-ctrl
               - qcom,msm8976-dsi-ctrl
     then:
@@ -328,28 +310,13 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-dsi-ctrl
-              - qcom,sm6125-dsi-ctrl
-              - qcom,sm6350-dsi-ctrl
-    then:
-      properties:
-        clocks:
-          maxItems: 6
-        clock-names:
-          items:
-            - const: byte
-            - const: byte_intf
-            - const: pixel
-            - const: core
-            - const: iface
-            - const: bus
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
               - qcom,sc7180-dsi-ctrl
               - qcom,sc7280-dsi-ctrl
+              - qcom,sdm845-dsi-ctrl
+              - qcom,sm6115-dsi-ctrl
+              - qcom,sm6125-dsi-ctrl
+              - qcom,sm6350-dsi-ctrl
+              - qcom,sm6375-dsi-ctrl
               - qcom,sm6150-dsi-ctrl
               - qcom,sm7150-dsi-ctrl
               - qcom,sm8150-dsi-ctrl
@@ -393,27 +360,6 @@ allOf:
             - const: pixel
             - const: core
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sdm845-dsi-ctrl
-              - qcom,sm6115-dsi-ctrl
-              - qcom,sm6375-dsi-ctrl
-    then:
-      properties:
-        clocks:
-          maxItems: 6
-        clock-names:
-          items:
-            - const: byte
-            - const: byte_intf
-            - const: pixel
-            - const: core
-            - const: iface
-            - const: bus
-
 unevaluatedProperties: false
 
 examples:

-- 
2.43.0


