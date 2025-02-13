Return-Path: <devicetree+bounces-146363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B6A34A15
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:37:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9CA9D7A41BB
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16D2269891;
	Thu, 13 Feb 2025 16:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jX07dcd8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F9E24BBF8
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739464088; cv=none; b=KDOorXAtRz0PbEAkYPVek/RbLqv6WUNISqXvZkmsjLvS4jAqgs/auOnFj2gkLrD+NX5i+XMKmOq05ozI9kmnGdYXcrSxCgA8g3hpODz8Zt93DW8BFLgieLeir2dd4Ba0lfOGocjmfqJWUHtEK7xavSJxxPsWS0BuZP9ALmjTddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739464088; c=relaxed/simple;
	bh=octj0+UsdpLHHllK497QsSntIvQXkSpD3TXOS57G7FQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MOpRBEpLmZ+l1i9jHK4ImIK8xeAHtxNdUpPJkkUR7Ip+7c0GjbZYd6FCWcZyZGlrBoh2w95/pl4lXs7gRzwZ+HQcCTc6utwCCu1NnQc8t9ENuEZvCwRW8ieGlYy6jmlcfXRr7drr2Cltkp7ipoA6z6Ngv8aP3ibocUKvBna1GzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jX07dcd8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43955067383so8165425e9.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739464084; x=1740068884; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FP+FtMNe1lFnPeWnPD6fxUhTtgz/aqut7IvXZcvqhII=;
        b=jX07dcd8eVKa3xUg1tsEz8MYtfUI3tDxvh1EHZiQuHf9d3ADlLDDeqTLDp4trJKCLp
         HVXmL5vtA4vy7XEF7U8KY5dmNA6OKt0KSlHPe3GlPVjJzcSU2WfsY9oUfJaiQ/QgowjO
         csZwx18gL5joLDLLaz4h+v8OrscRp/3DNFYWv/4OT75p709z5Npx6GV7EuhPtfn4XVfj
         bsN+KA0U7QZOHgxiR5Z96+0dRYqYeqfcprptBfE/KOzeluDNUA0UMJrSSgMyQxja4sZn
         A/hoFkdpFYKSn4WTNuzF88lb+eNtz/XPdUdPCReX2VkSXbW8z2b8/qWPHt2EZhe1rYDU
         idPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739464084; x=1740068884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FP+FtMNe1lFnPeWnPD6fxUhTtgz/aqut7IvXZcvqhII=;
        b=PdY4N5FvbVvghRJodZx/DY995QUD2Nkac28CIT8BBJbutSXjtsSNpJAzBqMtxUakQa
         aFyaFIAPwltTCWPIy2wddnFnHvS3G56YJjlrFFZn5heccefyvWhdjZPeMnoOViAapNKt
         5r4kUXeA/krH3BllEZAxfVyGaulzC0UQvxfQBwqsNDUlxaWStIrid8NUw2jSg+yZqLPi
         EE/AbcW1ce1YpdqqlFk8ymSRII5I2VCmWVBdYz64HOjg8FeKxj0PShNG+kBAsV1lT48x
         7xL29iRVEBLR6dEIwqorhXwgLh1mU/CZpp0ZDMzULTTtuS+ZUlB4CA7EbH2sBT+VM9X5
         w4HQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb8I8fDB+sc0IntSwXpbFTxedQoSsPmbxioAp6ze9kYbBzoo3yJ/K8x/I7Y/QqfYTQX1wB0s6jtZ44@vger.kernel.org
X-Gm-Message-State: AOJu0YxQaCAoHs4uCVLiWRj1vbcrQ77Ebx1YWIpg8TLbs6HiqytpIAoW
	uF4mcBkpVhtrEt1Wehl2BIh78hPwvvso+a3QgbIH+8y6HcKnDl53YYvou2AwFcA=
X-Gm-Gg: ASbGncvICVSZKrvs2wsOkcmoFH0pO7KnYcXvc3a/bBzyLsX0Ub/nXfVekYdhdvER3Nv
	jatzwGzSzM+s0AUHwuLk9fkuZQUoMFm0kWgHoGkZFIRAwkaImiDvVE7u0jbMultBrLahW5XBPTM
	HPfPH35P7PAKaqOGu9cioAxLmu595Pk/1r/vbMkifdOcbxM7S110zdu0d6pniMqe5mdZ1O5G+E/
	eXcopi3huKoNxiinRoen8j1wqzoqtEgx7Iat35dhO8ygALrZAg2g/zfJmET5r09oKFI7Ofgpcjj
	khLecPrCZ3jff3QMxYlUdTtDLOFScKkJNMeg
X-Google-Smtp-Source: AGHT+IHQ6I3q9aIGigFlfWf+LyS04BFTWKK6Eg4CfTu/NB2AigCXvjyjkqRnx8ef0HFPRw/1Ll5ljg==
X-Received: by 2002:a05:600c:3b16:b0:439:4a1f:cf95 with SMTP id 5b1f17b1804b1-439598a4aa4mr91119185e9.0.1739464084211;
        Thu, 13 Feb 2025 08:28:04 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b412esm2274382f8f.1.2025.02.13.08.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:28:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 13 Feb 2025 17:27:57 +0100
Subject: [PATCH v4 2/4] dt-bindings: display: qcom,sm8650-mdss: explicitly
 document mdp0-mem and cpu-cfg interconnect paths
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-2-3fa0bc42dd38@linaro.org>
References: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
In-Reply-To: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2142;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=octj0+UsdpLHHllK497QsSntIvQXkSpD3TXOS57G7FQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnrh2Qe934QhIZsH0DV1g/od0XjnWFo0zh9wLYsOLh
 m5FpkM6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ64dkAAKCRB33NvayMhJ0UlLEA
 CIwNbjXTbJ2YnIlDRe/YvGyKsEXCXasatnMI7Na/04mHOjYcX3N/5ckz6DnLW4Elai2FkeUVzmRj1o
 9lC0b8kuFSJr9m1N6NqJchfVxVTSUgejTXCs5ACO3//fzVzHXzf1aIKZ9Ux4XCIaU8JeTUWKeY6KBn
 XDZTl2CxgIe9PDm80johzFzVbyXnhWU5BFxo8ysbl6WlGQHbrJGPrr7iGCMp2tF4XxciTakqjjCeC+
 4huAO8fohgGA0vpEYkLJqm7EABFiYLmNQxF+xCBG5O9FPdSVAGXITduJUyJZJrwYnj6QjigBjtAS2w
 i8/Vc+Csc3kf+aUQ+Zo/hZgLoxSjAPOgVNq6lt8Ao2RyXiqz6LhBS+B3u66CB6ZnjOVrhPmhcUiEmj
 bFbMzqL51fW3FUsYNW84vdYKxG+UqccOZEn5fRuZNgXUDFsiy7oObuRFW4F150snJEhJ0blOU/WwWp
 fjsgOCerN+3ri2zZRdVFX4DwyZvAPfNXBIbrzP4YncnJ1ANgUmLtWgnujF/Lua2ju4eogC1Hn9BId2
 Rw2Zdwj2/LoguVtjd2KLCqlXYHAGwWKwIpdubug5dgdnkGzuN9zd7ptecrFuqtGCbJG/51ysGekADx
 JmlJ7Z/Hyml3L5seXKtuWr3NV4LdfPYTZWobBs0dEXS9JhzH3pICUS25zF8Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 SoCs, and having maxItems=2
makes the bindings not clear if mdp0-mem/mdp1-mem or mdp0-mem/cpu-cfg
is required, so explicitly document the mdp0-mem/cpu-cfg interconnect
paths and complete the example with the missing interconnect paths.

Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml   | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
index 24cece1e888bd35f169dc3764966685de4b6da1d..a1c53e1910330af473a1e6c7827026e0770131ee 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-mdss.yaml
@@ -29,10 +29,14 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
 
   interconnect-names:
-    maxItems: 2
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -75,12 +79,17 @@ examples:
     #include <dt-bindings/clock/qcom,rpmh.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/power/qcom,rpmhpd.h>
+    #include <dt-bindings/interconnect/qcom,sm8650-rpmh.h>
 
     display-subsystem@ae00000 {
         compatible = "qcom,sm8650-mdss";
         reg = <0x0ae00000 0x1000>;
         reg-names = "mdss";
 
+        interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>,
+                        <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_DISPLAY_CFG 0>;
+        interconnect-names = "mdp0-mem", "cpu-cfg";
+
         resets = <&dispcc_core_bcr>;
 
         power-domains = <&dispcc_gdsc>;

-- 
2.34.1


