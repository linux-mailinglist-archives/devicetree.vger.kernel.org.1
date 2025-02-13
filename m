Return-Path: <devicetree+bounces-146364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BACA34A20
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A4317A488E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7989526E149;
	Thu, 13 Feb 2025 16:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L5nOpMV1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E9266B7A
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739464090; cv=none; b=mchd5sL+lRje2TjHWaZGLgdTR6d9PKd493gDdOd5Ln2rvjYsjJt/EiSlXnLdbEOOGbvIqwOWuYoMc4eu2B/Oq2LWAHle5Pz6jkwkH8B0ZiDy08CzfZpKPklsbVAop0J+3IX6IjaB2dX0gNx38BxL7RTQqwlnk3E1Dc+KrN+2IHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739464090; c=relaxed/simple;
	bh=B+nNvYhySNexLKydqT7QpvKu738di2JmZvO+HTQoLr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=freh5uuu8AYLZps5jBNURWsJm0YoKycCDP6jt0xHA+yAOfABBmA+eHPKAHT0FgFV+dJp5ocJ5f/bexaZ7fUakZiyF2dqw2CcsIb+B6DOM7vc3UBzZ8jJuWYhqLvjbZIX2drshnqe/slt0dDFq0D4V8OOk5JZLPpK+TwB41xhLHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L5nOpMV1; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dd91c313bso625578f8f.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739464085; x=1740068885; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3gMAdHe9nCOW/Day5SH2O4Yeg0Jtw2UhdUPrNQzwgmM=;
        b=L5nOpMV1N7jl+sqQHNvVQvortYvWJ98OpE9sqDycbBkug2ynlGAokyrY8W8l0tnTOn
         uoSgbGHle2br9psEvR3dSPPgQOEoTZCTzz+O0B9X9PmI0QnoEYCjAXow18dZIggs4Ly8
         H/fWuLnHMjyuVVRoIw7HiBE2CgTELaNxRuhB+cYUEJOvw95z6ftqs6tHtYd5Fpb/Mr5c
         wPjimZNwtk8JbAVLBf+RGoZESt1sg3GFa69O3AOiDveOpBcHlOdY9BvT/fOAqNmJ8AHA
         OL3sRXAiqTXG9UKVZ+qPKxo/1ddCdEYtEL7DvfplXCJLWOfSFh125Y8AU97oDbSlX8uG
         Fzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739464085; x=1740068885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3gMAdHe9nCOW/Day5SH2O4Yeg0Jtw2UhdUPrNQzwgmM=;
        b=fApT+SIhyPxA01YZUxXrUtQ0AySuIM5Ldz12aqKwEljKfLoysOm7LV1a1eRixFvdSm
         oona1sKyerDQboCks7LYMnR0h5HNrx9oa58QXrb4ME+ep9Ux9s0pVXfyJjUVMYfabE60
         dVXXS07DEyHX0BTdkJj+DIJmARuJmvLSo7pj4LazbZ939bEvMZjKLDjhz0sBzG7SgKaI
         7kq28ex1fxQbuaoOojxU+NhTCdd9BByTn1hVBAFr8GsV2uxvhIMWStRTnATBfx6FSOQZ
         j2yH5db1KcUr3p4KcrfVeNSnZAogUS4Se1bY2oUY5T93CLJCA2x4rrM/mOHx65kmQ3FI
         HITw==
X-Forwarded-Encrypted: i=1; AJvYcCXIpX/vlsWEt4gbFtTk8Uy69nae8WyNEWug1pKSEq+6gIqTzdVNyy/mglYLG+qE1gxQOagQdBUWs48H@vger.kernel.org
X-Gm-Message-State: AOJu0YxfCM0xQt1vMGKqYGHaK9OJIypgcxi24HyRYvsKVbgMdO4B7vR9
	eWknwwSbDcR9D0eWnHgUwyk2hCRbp6sAuYI0p3G+sCeoDWnoPwbjVg20/d4+QUU=
X-Gm-Gg: ASbGncuYxNn8cL5j3iP6A4m1L2oqE4Y3gOPExOXXVOn0M+5y0SJzpsajllet5wceQDv
	SKzkcDYdJnuzfkCOzCw2DOS6/C3HX/ckZ+O+jcBmu0NrW7XRK+RRXn+1RGu/fyJM76z4kYreAxm
	QAQW1mzcSnUz+QFcZdzwds80IdynMhDCmwVx+0gwFLVpr0gFu+vKNGT2dL4V9voRwuIeuVQo//T
	h+1gqqAZ903cX/V6lTYXm6YLB9CGgZmPCm7YqkpZv9DFdL6U0BynDCOoQbtAK3J0JuGeihh6el/
	ZNnEraxXdD1ZLpvVibzF+9WAhUreDo3Jcstd
X-Google-Smtp-Source: AGHT+IFN783jsD0vQkyJDEQHVJ4b5BYNJDAUaJFST4P5psjOInvt96maC/O+1aofJniD9funT8GdTg==
X-Received: by 2002:a5d:514e:0:b0:38d:c771:1a21 with SMTP id ffacd0b85a97d-38dea6047abmr6092021f8f.50.1739464085106;
        Thu, 13 Feb 2025 08:28:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b412esm2274382f8f.1.2025.02.13.08.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:28:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 13 Feb 2025 17:27:58 +0100
Subject: [PATCH v4 3/4] arm64: dts: qcom: sm8550: add missing cpu-cfg
 interconnect path in the mdss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-3-3fa0bc42dd38@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1250;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=B+nNvYhySNexLKydqT7QpvKu738di2JmZvO+HTQoLr8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnrh2QZVA90nkLoZwErzoHAU28/LMQBUONhlSRd8mm
 +v9RaryJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ64dkAAKCRB33NvayMhJ0STcD/
 0VPlaHGL4tFkrxQcs22SwBCAgnmP5Gz/6xQZ2K+9Op90he/hQGUDx8o0iUnBMgtYHmoQUuWFynRzP6
 b4LJEbEdID3qff7+XGtOTKMoOIScpX6Ms7puODsLDyUe7uy/140wZ+jfH4p0UUOMaKyHZL1voUD8os
 fryMG37r66Da9Ks7u3JTI7jBNZT1jZC84/XN2T/qn7QVqBlCQabfuYIp4eNp+L9dsvVNZIQgO4UYFb
 uAVMeTqc5MmI9PTUNhFBHrsf+rCl/4U0JwmRBpmUA1jE4KEaELb71SpJLcxCv6D9yjXdBQnVw2SCNr
 Wtcts6oSJaD7jUE52JSwk680GaCtZbAabuPBGa4o5PGV80X04dPfUwe7nypRudYC0QBcPUN/HpGL9g
 W6E9FdgA7oHYMh2lv6OpzwqP+Qp2V1DIpmp9AgYeApwAGfEMqi/4z5/B37YymORg0MhTJh9Ur0Mi8i
 ozMbHBR9ysNH316HeD4bxeYYj+Z5ucqdPWYTidrqONzNutQxnr4qh7rgqRzu1hhkAPbjSswOg0NJ//
 JXeO/EP5HlYRQE+BSorlRBevO+L3QDcDC5gzshdDrwMLZRWI/5VndDG/Vtxi5rjfE/rm4z9DyUAwNd
 k3iRf9VhXTSCjtOTFtteqD1FebR1E1l16cuaZhgIciLFImeCg7RsJRmDdVIA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
add the missing cpu-cfg path to fix the dtbs check error.

Fixes: b8591df49cde ("arm64: dts: qcom: sm8550: correct MDSS interconnects")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d02d80d731b9a8746655af6da236307760a8f662..18bcb4ac6bd8433a0f10f4826f4c6958444c080f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3355,8 +3355,10 @@ mdss: display-subsystem@ae00000 {
 			power-domains = <&dispcc MDSS_GDSC>;
 
 			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
-			interconnect-names = "mdp0-mem";
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem", "cpu-cfg";
 
 			iommus = <&apps_smmu 0x1c00 0x2>;
 

-- 
2.34.1


