Return-Path: <devicetree+bounces-55236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BADE894993
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 04:51:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE17F1C23F99
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 02:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACA113FFC;
	Tue,  2 Apr 2024 02:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sc/d6bqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76D1111A3
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 02:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712026309; cv=none; b=B/cvSi7+IAKUG1DDSA510RZA8IHj3HRl/gZvRXOcubUdbxe6WWKC7kRIiitfUmJCsXFUjewHuxZcXySoQ8X7s0W+/zEU2ySi2sqgnZnhO4bJk7KxhBXEkqerYTwlAeDY0+jAfDdVAbn1a5BekWcoBo0guRXb+QaQjcVAhBwfB/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712026309; c=relaxed/simple;
	bh=/SFcU8Z7m12JUWBj7jBl6oeySfA8J1iODLj5nSrz7GQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dF2/GaPB0t23BePoMTZMTz7FcwsIQNuqI16fEdxCUX9Ns6U8umypRO32bC+Kz1ojuSaLeHDM2eO8Xm55+I/cyQvU6H8cHt12Ks9F13DSKWeXazCsTcNS5XPp47UX0pLLNPML0vsgT8hxiC7ybRfWdn22e9vUvWKxHczPUect5WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sc/d6bqW; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-513e10a4083so5304847e87.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 19:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712026306; x=1712631106; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/uwZxnjfekbVPxIm3NgmC3jP31Q9QBFu1AAINEMokbA=;
        b=Sc/d6bqWblxGAzvwiZGGoJudzP6lYB9HKs+o+dFwIHUy4hH7mFPBqFsjgdeoH4bXeq
         UHZkkUZBWEokdt7rLVchU6Dmj+m95mLYr+OAX+oIc2FakDbyGB9ipaDK+sYcFpQYqEYp
         /AtXzHZI8u4fC/yL9kym/JdN5ZDkjssVJT+PadFdXFllIYp188lID3bf/2r5O1iUVyqK
         wlK4zDv6sEoS+KsV85EbpJ80JpXHUCqsZZ+dCBctchnYPaQWpbFS+JMhyCDwPVdTasFL
         ExdREzVD3wU4wO5OIEPKxxLne4XQno9I29kf1QaZZPEk0yCQYBNmHZ8IMkJLiBsBd0us
         b5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712026306; x=1712631106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/uwZxnjfekbVPxIm3NgmC3jP31Q9QBFu1AAINEMokbA=;
        b=b6M2IIAYUKM21L+mq6PgkYiq0dNJJZsb7f+jboRjYx3MkTYhxypz+a7fRRrrvg1IOB
         rrAMtdEuLckuE3UuWpnfSxKYIMtIWbHxGwSlUGZ7UcI/pDz7ePUlIUmcrkvfqppHi5fm
         qN3oBDXw4Jkkvwx/h4KjdDskVTu13GggA03wzxrVn/4J/cHd+8hbfjlZo2rYFLN35C+n
         wOKcBdPjTYpIchN1V2LAfdRfNfmXIZX+bBJ2vLNTuSyX6Dh9TFxhJxL7U9PR0qo8ualc
         8eiSBxJC0GgKFtQpUZMRVjQvRiq+xsc8zrNQnU1hyT7LLkvGanV2ZMxlb6puB3mnUFcA
         sUsg==
X-Forwarded-Encrypted: i=1; AJvYcCXIXPl1+KF+M0X3xo2X55q1X5hq8orLVHFA7YAY/gAIplONE5W0z+knwW09g9sBVMNCdxko5lO51Lciv2jK1HVBEP7A9OxCteqGvw==
X-Gm-Message-State: AOJu0YzkgtX9F/yHygkO2SLb8jQt98/HaLLURBqcmMplhNNt0LbsBsgD
	JQLvM/KRhLMP1i/V6MWeKUsIylTkYyHRbNJXOrdAOeQRbdVcWsOzXEmMs/kqiRo=
X-Google-Smtp-Source: AGHT+IFeQ4+VkXvXKg2bCoXDwCQ4K+jyRjP9HcxqaqguEWln7ZtxPBY6gnvTPz2mDKcrsBObfpcVPA==
X-Received: by 2002:a05:6512:3e08:b0:515:d24e:4e2e with SMTP id i8-20020a0565123e0800b00515d24e4e2emr8663492lfv.20.1712026305821;
        Mon, 01 Apr 2024 19:51:45 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h26-20020ac24dba000000b00516a1e2a6fcsm738824lfe.256.2024.04.01.19.51.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 19:51:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 05:51:43 +0300
Subject: [PATCH v2 1/4] dt-bindings: display/msm: sm8150-mdss: add DP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-fd-fix-schema-v2-1-39bf90051d83@linaro.org>
References: <20240402-fd-fix-schema-v2-0-39bf90051d83@linaro.org>
In-Reply-To: <20240402-fd-fix-schema-v2-0-39bf90051d83@linaro.org>
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
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1111;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/SFcU8Z7m12JUWBj7jBl6oeySfA8J1iODLj5nSrz7GQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmC3K/Ag+vqCLVskhF2HaiDAo4jjfRUIeLKy2cV
 KXdjUrVzpmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgtyvwAKCRCLPIo+Aiko
 1XOgB/9AbWI43J4MrsBnywBHEFBCIuHF8FF7xW53Tqne68jpitqrweFqFF/GqCxvy2KyZyhXJzB
 Q3y5bW5pBv3kVYEzbmbHqpL1iXglRO+gGfKI220ZvtWSigHl2k4pZtvvxElIhbB9hm5n8+5ONWF
 8a9oHA8Rb/johEEJw0jljoeKWGyJQoJGa3hZek6eHXwEZPcnOgMIpGEki9tG3JFNqeJZsyVlHF5
 OvvYsp1aaTT6R7YugXduUDNbGxYtHL3bvawoKqdqVVvnTRzajfHHNtQU/Tb3p1V8bsba1Q7NSZp
 z95u/aaLjMaATVHDUzjSb/DkiLdiEPfaO4YMpb8Mvm1TOUxr
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

As Qualcomm SM8150 got support for the DisplayPort, add displayport@
node as a valid child to the MDSS node.

Fixes: 88806318e2c2 ("dt-bindings: display: msm: dp: declare compatible string for sm8150")
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


