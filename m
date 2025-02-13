Return-Path: <devicetree+bounces-146365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E380BA34A1F
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6AA07A4FBD
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E3B26E162;
	Thu, 13 Feb 2025 16:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w7LwYRK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91D0269886
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739464091; cv=none; b=I/zjVvixZ+TDRE14R46hKVzDITQzXjjoj3APSJNOXvYEXAgiAuFlyPsxE6ShyhDLZxxbMZMENPISZUgmmdChPw6YpvGX92GokC+dAPA5E1vzvr731JExNfjSTT9N/pA551gseNbCnKqd33sjcOXoIMtQcRzpxeYgewuZmG5DqFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739464091; c=relaxed/simple;
	bh=my+RB9Jrip9aPGRvZHAD/1/UpXRs0+h6VzBYQ3PsJO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b13VjBMEDSI81pvtjP4inp/cLnPnW9cCCWymvTkrPdYEq5/2YiJwe61vYIohAaG5QCbQwVBte7MdmA57vKghQvkYz/G6xDPlf3ZhPE6KD1hKCaab/BJhsg4Mc8hka+FTKHMNAdYuXMy+4iS0VR0h37+T2wuAz4UKLFP0vdeDYIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w7LwYRK+; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38f29a1a93bso409761f8f.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739464086; x=1740068886; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iDc93kMEYWIE43KW8M1DQx0zrLSt7yqt1TtwJm30k9Y=;
        b=w7LwYRK+uXZAOyPIid0n7u7N1ejfpPwANfXf9ElIZF6rZS31Mr48Ep0y75Oa0owNRF
         hP1ecq7c2iAKEphQOilQGgI9nGtOWGIdhnUlIr6uKMUU7YvjQUdh6V6GjZ5Owji8j/gl
         bhtYLJyGo9sFieE7pn++2gciuoadPAK6SBk7cL7v3uHjiMtQp8r5kmv7pKYkp/uN8tF5
         /N63LIf7NZ4dpi/kteZplOpxD5pMc7xSgMU3eagZprbLjrDjNbPsZ778mM4NJ9nPZycz
         y9DKDWTb2dKoUdb/95LQ7Acu5hd9OzZRJGIEhgovNXl+ceOXkusQr3dkH+xXP4VL15td
         E4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739464086; x=1740068886;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDc93kMEYWIE43KW8M1DQx0zrLSt7yqt1TtwJm30k9Y=;
        b=Qy2Hkv8CypNCmjRzEE4IHzsKF5hBGDakhPIWD0FtvvXVnSDBHfMRA90f6b2PjYYO6B
         +9uwZYka7Vr0y9dPGOoXg9kbaLjuGz1F077wrF0NL8zw3aY5frhsYs9dlahiD3O1F5dD
         cUwyaQiNHWwYBfczVm3xLHOWuIn4PPFmbpehDEyjuPCYUbcEUyVmAnfYo4OrJ4A0eAEg
         I9jfUSPzCTjpYBzgXYGgCmB12CFARANJggOi6JhLfOKcnEsCu88v3TSQzfYdba4nwHPH
         v8zxhqB9JPIgTJJrI3L/8nrfZMWWwGQi1mfzxRFG4EBtORGH99T1QoI4tZAoiVzU3j6v
         UUSA==
X-Forwarded-Encrypted: i=1; AJvYcCXaRLYn8LqWVX1K0PlRY0QacZeciNfrroeB1iooTgTmvZkV8jp9nAENkBcs0AJjF2SKG/MBUYU1VNVj@vger.kernel.org
X-Gm-Message-State: AOJu0YwwVAo5munIjuPpLE087o2/Y1Z5KLI27DjkuZVOl03WkpH53E10
	RSRIU2MkZNS96iEbBUYWSjwtgpAyeEQrX+V7yujXgLIBv+oq9M6z3IeiGPZ+41g=
X-Gm-Gg: ASbGncsNGsY5sGfHs050BE74+HtPGsHgsdcD875FgsAvAjY5nvCvIH+fuMCNnHVE1cc
	q0BI/N0DGiIVlv1vDRQRCuRtvddLv2aAHnA9tEeVfU68rHih1olp+5+dHU4MBlrDEvG9FevVBWl
	aNbeiUMNWg/JyjOZ95Un8OwsxiGnxFIhMT/OilIOIVh+WI5f1Rbi6vJLsESShNlXVgPRTitNKjY
	bp53LoHEP0h//2jO8Tdbh/ek57p96A/C3iaWk54xqqqAIOpmm8pCi1qCeK+0IUErvF8jos95Ur6
	/C68Ol2keOUW3+Za7sx4OGko/dAbfszct4fJ
X-Google-Smtp-Source: AGHT+IFU/9Ezw9WpHOEwKFHI3agr//zJrArAr/XSAw2dHqAeOMUzEQHlgonTqcBFZjTTclKxtAjURw==
X-Received: by 2002:a05:6000:186d:b0:38d:dffc:c134 with SMTP id ffacd0b85a97d-38dea2eb4bfmr8227417f8f.39.1739464085999;
        Thu, 13 Feb 2025 08:28:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b412esm2274382f8f.1.2025.02.13.08.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:28:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 13 Feb 2025 17:27:59 +0100
Subject: [PATCH v4 4/4] arm64: dts: qcom: sm8650: add missing cpu-cfg
 interconnect path in the mdss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-4-3fa0bc42dd38@linaro.org>
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
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1271;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=my+RB9Jrip9aPGRvZHAD/1/UpXRs0+h6VzBYQ3PsJO4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnrh2RyIwuxEyQJnCqN4BQzwBgsz22oIe5p3/foBpN
 3ycZJKeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ64dkQAKCRB33NvayMhJ0Z4JD/
 9QWqppUyEnVCwdINgX9VFB0i8zoyuyZeu6IuDCoC9ZEqWoOs8NkpPN3ASdQr13S8PSIYLl377Y1oyp
 5eeA6/WQAaEysK6t2aXfsQ3/ReD0a5Ac3DdRrNmleh6ZlEeaU0+AmQIoTygKbsAwZPRni9ZA9K98fl
 /NQ8weA+fwoAs+dY4XyM1Mh3m1kA/oq27fC/jiAe8K4S3OS2WaLDRZ3B0SmJMkY82b2fjv73YjqBRV
 3htFOiOZTllEcFeMvAT7w+fE13umvRgT/kXrTsnd36VAvyDaZFltGUz6ymHB4kJVzytzc0UwLEMDmL
 E4z5cc4mtjo6iEE2Xlc0uY3OQz9pQ/Ni6m4RckyzTQ2ZackPXKh8WuINx/IwLSGFtY4K6i7OgB+YlV
 49QaGlZgn4Ns7+BI/r8wuaAZHnijxZ17M1a0871JFon21oS/3XOfIDj+PIqVQH9bWGnV1erkdHce7R
 XJK8ffMPB/BQitgVl+Mm3J4mGbVgoTgfO9yjSi3fsoejYJGmspR9wnA5mDszU6zgeLiqYpeOD+hPSy
 hlcMhtnhos8K5RDwdhWfZ7yj/fYr9K4Rv5hxb8jbgxyLbaBMVqXVI6MgSA1Ya5MJnGDI/7uioYE4wW
 GTZlXhTPjsoFcf9wfs4Ga5/nJ/HJjdfx/ymjSsOzPSybrYUrT5wB+dYZxK6w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
add the missing cpu-cfg path to fix the dtbs check error.

Fixes: 9fa33cbca3d2 ("arm64: dts: qcom: sm8650: correct MDSS interconnects")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 483ae63e6032823e8cc13e8aeb6db70e3948f02d..1737265d364601494c329e79174c082c98e4d0ec 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3997,8 +3997,11 @@ mdss: display-subsystem@ae00000 {
 			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
 
 			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
-			interconnect-names = "mdp0-mem";
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
 
 			power-domains = <&dispcc MDSS_GDSC>;
 

-- 
2.34.1


