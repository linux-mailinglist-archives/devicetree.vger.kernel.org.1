Return-Path: <devicetree+bounces-168276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DABEA920A2
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:00:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 488EC7AE9CD
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A7725333D;
	Thu, 17 Apr 2025 14:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="spb4/Z+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AE3252919
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 14:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744901950; cv=none; b=dzKzBcdi+3REEZToU1f/j4a/GgK7iHyTeiOoV0jwSDAzXPUwK4M3dfe02RACW/P2f2aDFLfZWwpg6HyJClS+Qj/L+tH/bKkRuljdn3n3N5kJP8Qio1czYP0R5Hxt1nMOSiQwutXZbg1KwbCS+XWkVOjTIXRsI/sAjlmKy6UoV4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744901950; c=relaxed/simple;
	bh=9lL5z/5ZnlWCseQ67IPO6Gbh/2cC7+gxybyIcI8QMkY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X/eMO7uz+3dm7pc2Br/gle/vD2B8x7x3P5yGNNIsQxjV1ZXS+t11TYBa6wGOkFVvwgM/2ts+AYgmFJo0ZRYEpualHsTUZg95YFZkE4LpTA6DxZua+OEdhzM8C05XUhcgrDbFCctedEEzEeJb2NYJjnnGvdFpOyiineoaSKYGoas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=spb4/Z+E; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so8972225e9.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 07:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744901946; x=1745506746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wLNuOPp7/6q1u/JipORAthYcl23KJ0kTZ/zrq8XSK10=;
        b=spb4/Z+EPFTJVfwNjwY81TbWF1TDeW6RqkwP4Nycwlsx/w/BudpYTy471JXzLC5BNF
         Luz6ErdIAwGt7ovftFMGe02EwXG0tD5i9FizHXDVfuVFAqwckWD84krNze/CGuErhrp/
         igzZkaw6m8ssrPsAnn3fd/kvQixMAgCHGM8oy4GSNQ5/hX6c0Nygc7xpUX2+rTy0N1hf
         heJ2sucW9XrLKmquykRvoDBo7obLaWsoxFUwQsCywB71Cy1gCIFk5ZhFNDGiLXOdexgm
         JK39nwXlIJ+sTSbwTiog3qU3wI3nFRUvf543wGq8cnRSyvIOZlxwu4UThNcloajc7B9M
         WLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744901946; x=1745506746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wLNuOPp7/6q1u/JipORAthYcl23KJ0kTZ/zrq8XSK10=;
        b=the7emIjc/b5MwRkZ6IX4xjLn2JZFU5qDpIj34rzDq7A/Kp1/iz0pqxQGdY/VLWbve
         thzhPQTvOu9lNG3KeyWsOFzPC5FZkjU7Ur2KXLQeTzcIz6vQoOkB6BnIrTUtROIJtmC2
         41C8ZfpkMFEkqcATKO3Gg408RCMi5xokpN7Zl25/Ydz1BvPIxudX0e/kelImGKI2Zx+6
         Qi1c7C7y1Ocm51KdeUt7f0GF6pLu8St+U/lG4cBb2J8lP3bm4j6UaKhQS1+dmRGlKsdt
         6nX1maUpOyi0susUHiGOoVT/fYZOXKam3mytnFZdhOWmMb95vx5xElq/VWi6Aq02A7bi
         f2cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUehAoZiMPSQgKlEMz1jUX+W3f01shsT6995Q3eaeHWS7Dr3l4gKtcl4goOwT8xibnbbxYg6sZh1qnc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4/4QPYzufeNir7GTcyiEStNYe0E2OQnLxq0rzMOcPeFXlaKwk
	Mfzgdj1FXEKAk6BUP3Y8gYx/Mm+ABv11VlTPcOYfuZKcvOcC468gwzp/fgtIQS4=
X-Gm-Gg: ASbGnct1JgNoTldvcZkUVRG2q0bCMCJOccPA87Nvy91h1JYZES5WTsYP1woZRY/vSPo
	wfcH/kllbH0dGV7QE+cvcKZ1/5nVlWMl5E7pB7k/q7QXdrBYo1VFfx77P/8TXx6kTqdZNiEYyba
	5yxJG/6EwQvqP6Gor4YpqRSUulVoKE6hJV3MouuoLLIk5Y4412xva2WDITin3ctSGsG7DpLj5AX
	MFwanz7nde1NS/Dy/IKxvJrp1gq+I693lnQ2IOSJftoykmd2V5HPp7B1kiO3vmWilXJ+/wX3ASj
	U2SIYuIGQI1TqZwjFqs1U+PLbhqg1GdXYKpOy3UPXP28YvigJFyO0rEklodgcw==
X-Google-Smtp-Source: AGHT+IHJePSUcwtLeNsypM0nWFp0+MxTFhCX4rJhD53KOT1jI5KqtixSlKxBTQZwT0YPAA6OGCW6Yw==
X-Received: by 2002:a05:6000:40ca:b0:39c:1efd:ed8f with SMTP id ffacd0b85a97d-39ee5bafb88mr5675163f8f.50.1744901946328;
        Thu, 17 Apr 2025 07:59:06 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf447914sm20497743f8f.97.2025.04.17.07.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 07:59:06 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 17 Apr 2025 16:59:01 +0200
Subject: [PATCH v7 1/7] dt-bindings: media: qcom,sm8550-iris: document
 SM8650 IRIS accelerator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-topic-sm8x50-iris-v10-v7-1-f020cb1d0e98@linaro.org>
References: <20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org>
In-Reply-To: <20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2304;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9lL5z/5ZnlWCseQ67IPO6Gbh/2cC7+gxybyIcI8QMkY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoARc1/35pL4s/YhSTGiaB3T1UPIKdCnM9y7EcAp7I
 rOIm0HeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaAEXNQAKCRB33NvayMhJ0bgeD/
 wOBsw4UywJ9wbGglLCRLubCmUOuuOsvnsesUoEYjxleeq1HkCXSaZ1nIEdlA7Nkm+4P2VoJBBl/nbR
 ByBZvDh4xlaovUVLNFRiBOU9ZIyo0qgIVFmZpZST1Cvprs+ovygk/so6YGRc7g+FcfHHT1DO4NZMxS
 kM5htjBZlGxtP+aXuaKxcBSIfqMHsWi9eD0qHh9XyB2GExYeXDX5OPetGitujU9j6X82Y1Dqmt5xJy
 FycImMiisrm5q+uFs8Si3M/h80VUw4SYslMwB2MmJDnVsir/ISngLJJHu2sRfFe6Q2yJvu8/pPkaYK
 5DoArDx/xdJjJuSvipPFMxw3C7xAW5ihdffVcM90Iej4gXnPWIBi1/HbPfdGq/Vpq/kcQUdYXw4rsQ
 bGq6lb+xY+Ej7NZOHn2oohsMoTxkchaMqc0SDmk/GUiDGgCAeznEUXKQdr3s0vPRuSAq/PU5fnQtEN
 VgJTZ6xhFPWY0mIghsSNHttiF8edJlDeQ1yUjKOO1LZh67nGIZzp3eoZaABdRapbUl5eZnrhzi1b66
 3SjD08nwxKQPModdlgsJfUnOI2H1wnQEmsa15jlEDBFPrZE1z8ZS9d6PRvYHQLI1fAEr6y/np2PYH/
 W+JV8TPD9VwdjHBwzKBUeVll3zhtIhnT9DUQfpae+n2gFmzX0D/KNquwBKeQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the IRIS video decoder and encoder accelerator found in the
SM8650 platform, it requires 2 more reset lines in addition to the
properties required for the SM8550 platform.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Vikash Garodia <quic_vgarodia@quicinc.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/media/qcom,sm8550-iris.yaml           | 33 ++++++++++++++++++----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
index 6a89e9e3808758cfdbf6a51dfb9fc6559864253a..f567f84bd60d439b151bb1407855ba73582c3b83 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
@@ -14,9 +14,6 @@ description:
   The iris video processing unit is a video encode and decode accelerator
   present on Qualcomm platforms.
 
-allOf:
-  - $ref: qcom,venus-common.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -24,7 +21,9 @@ properties:
           - enum:
               - qcom,sa8775p-iris
           - const: qcom,sm8550-iris
-      - const: qcom,sm8550-iris
+      - enum:
+          - qcom,sm8550-iris
+          - qcom,sm8650-iris
 
   power-domains:
     maxItems: 4
@@ -54,11 +53,15 @@ properties:
       - const: video-mem
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
+    minItems: 1
     items:
       - const: bus
+      - const: xo
+      - const: core
 
   iommus:
     maxItems: 2
@@ -80,6 +83,26 @@ required:
   - iommus
   - dma-coherent
 
+allOf:
+  - $ref: qcom,venus-common.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8650-iris
+    then:
+      properties:
+        resets:
+          minItems: 3
+        reset-names:
+          minItems: 3
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+
 unevaluatedProperties: false
 
 examples:

-- 
2.34.1


