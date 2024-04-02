Return-Path: <devicetree+bounces-55243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B03D8949B5
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 04:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E94E1C21238
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 02:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE5914A99;
	Tue,  2 Apr 2024 02:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lJYoIkHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068751171A
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 02:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712026641; cv=none; b=Ngt02L6PY4r0Uxw2YjGW1SmakztcLQkZlGPdsS1Vrmwlx5QHwQLRvvCwJUgb0MrXJGVZCZ/BvC7QoUoZoqpHTQys3QVkpAO56tjI/pT8tIelt55PT7YFpoxZGZtJSf7pc4WdmHFtlpkoQiAfedmrdRwnlf1GOlmFQRlqzvwTG1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712026641; c=relaxed/simple;
	bh=KMg1zVt6u7qSGUlmtCeLG65sjglE523+Su7Duek1JJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fvGcbp6DLez1bNwy0XR2DzNyvvRT3rhVczYUZopo3EEjYxVpDpBoZ1H4+CL/+sbqNYRqaJuiK2wommeKxRIT/GrPnCGu82P4sGZe/3WUX3KBJAGy6x1F4wjhc3cFhz25/QFw1eXQmO3ArF1ZfWEOfZNf4ItnfZbqDDASiUOYDmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lJYoIkHq; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d717603aa5so46129291fa.0
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 19:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712026638; x=1712631438; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6VOgcgkaIZJPdQtGGmGZo4U58vKcHPUrdkYCQrx6McA=;
        b=lJYoIkHqn8JAaAYf1PvRpHaYdVOOrcaXxJ7uCtmtnfhmSuxsYaRyFlROZI9KF6McUA
         0/yHYZh7AoBq2uh7j5EHuiTqFb0oI0WjyvxRxcNJdFgHCVQy4yVKFwOhtPRweFEMCVz9
         yQCu8C3LLfYlFb59yJsWICHndBTds1P+TF9LZpqITXaI46iFHFGsJhOHQM7pq7G6owwa
         5l1G+sHR2E/WtZ/kdg8n+Vfn1ayZPsm1EZvU/glxAxJFjiAsB8bwotaydreHr9CrYAsl
         PkR1b4It9fVexAb7fvgJ0C+IJeo/ER1JiaQkX/O9BbfJX7S6Lhql5nyyLL7UzGbzrS0Z
         +Hgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712026638; x=1712631438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6VOgcgkaIZJPdQtGGmGZo4U58vKcHPUrdkYCQrx6McA=;
        b=FYsbRplfWQdhV13rsVVdX6nNeyztAIQ2UBGkMo9uBKuYaVgVrKPuOmC4SC8G/6E6aL
         +HHXzxcNsXomIgIieamo+ZoHPrIUradSpZnE6JBfPk5yM9zFMYW/bbgcbMSfoMccIVLV
         WYeo3w7GHzah8hBwhgXemeRKUrOGOnLAzV3zQkXRBxjZ5762Xh4qYf1P1+TukwBcrZxf
         T+QEQwN9wRU5B/QSJUxXJFcJeUg3RGRxvnqD5L3v94X1KSVxQ9J4ihhMWIfTFueYlJA7
         d8XTRs4mMXx0HdyC1KjzTeHBo6sqFxa9plAcTmD1wADPKtBBsTgXx5tMeUeMxsmdWdmj
         PESg==
X-Forwarded-Encrypted: i=1; AJvYcCUG9OeGdB0Sgvda1cp6PWs+SkfG1N1jR8YeRfNDfSi2ENX4nTSTqom72pdWfSvX+ISFsXGLTZexCI3xhNDm18dgNdcOBUjZJEzGIg==
X-Gm-Message-State: AOJu0YyGFJOL/K8TWXs4jw+0d8w63l1HXpla0stl44OCZrU95CrG15XC
	fk4XpQ/89QYmLCGMSwQGiT14EM9elI22e4OVRI/si9RyYzwXJu2dN7ZunfYa6sod8d5qmfuutUm
	m
X-Google-Smtp-Source: AGHT+IEkINumfK8SxM5FCtANDChexxpXEf6jtZE/nxDH/3YvjzYUTz6kLkJnjajI/U+Kk39mLyWteQ==
X-Received: by 2002:a2e:95d5:0:b0:2d6:8e54:80a1 with SMTP id y21-20020a2e95d5000000b002d68e5480a1mr6559994ljh.19.1712026638094;
        Mon, 01 Apr 2024 19:57:18 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 14-20020a2eb94e000000b002d48dcd10a9sm1562356ljs.86.2024.04.01.19.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 19:57:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 05:57:15 +0300
Subject: [PATCH v3 1/4] dt-bindings: display/msm: sm8150-mdss: add DP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-fd-fix-schema-v3-1-817ea6ddf775@linaro.org>
References: <20240402-fd-fix-schema-v3-0-817ea6ddf775@linaro.org>
In-Reply-To: <20240402-fd-fix-schema-v3-0-817ea6ddf775@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1178;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=KMg1zVt6u7qSGUlmtCeLG65sjglE523+Su7Duek1JJw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmC3QLQ+jLSEnIbBzL89+IDgEsCnbZyBOGqsm6u
 eiOKixIszOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgt0CwAKCRCLPIo+Aiko
 1ULsCACMbZyNHRFgqlrjhSLCD6zsjSBKMtiHB3Y4Sxxdzm138l/jFxoyLg5zD8wdbq9BW+Xw2L+
 cCJLYS8zLgr/Ci6iHhegJeU13GSnjlbLt/jbRHE9TGv6f4XPz2oxAedxQE6lP4wKQTPUcnW7u4F
 wo6Aet4hhSqyogFC/eS1kJ1BA9jLPzTl1Optq26Gaw0SrVJ8yyacEjjLdvgVbjixk4uPyhcdQVa
 LMYEwa7oJIdoChz5BmWFQYkPI/ozGZnnHO5AgL2DarN7S26VXKEkVCqzUTlSuyGQg6Acrz2eYNC
 evkg6njzolTOL9X15ccasSHEI1lmgHd13wjUoB1KXLegZ0uP
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

As Qualcomm SM8150 got support for the DisplayPort, add displayport@
node as a valid child to the MDSS node.

Fixes: 88806318e2c2 ("dt-bindings: display: msm: dp: declare compatible string for sm8150")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
index c0d6a4fdff97..e6dc5494baee 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
@@ -53,6 +53,15 @@ patternProperties:
       compatible:
         const: qcom,sm8150-dpu
 
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        contains:
+          const: qcom,sm8150-dp
+
   "^dsi@[0-9a-f]+$":
     type: object
     additionalProperties: true

-- 
2.39.2


