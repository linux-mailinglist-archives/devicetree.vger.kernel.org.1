Return-Path: <devicetree+bounces-82108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8B591E734
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB7AB1F26717
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 18:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB40D16EBF6;
	Mon,  1 Jul 2024 18:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sug4zvn4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A91716EB6E
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 18:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719857482; cv=none; b=EKaft/nKhqof6xg3MoJQa7Zx+3o/sF4azv0tmY2i/hN/5UQh22+KS5zi+3fR7t4rCntd6kk7VKlJuKZfnBp+SxO1WoxIk3d/yKIoujcUxkA49Ur30dzpaDJgFMLxopEs2QJ98Dc6UJVBlgRv6+dX7UraiKKdneusE3YruIY+/rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719857482; c=relaxed/simple;
	bh=w7U7p//qg9/BOYI9iU60ZIGf+BbEbqV3HX/8OXO7k20=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=f5U31tog7r9PuVSHQlhAfIX9UHYJNsWse/zhPG9ddU7OgtoFpgeUrPx8s3htGgnIPt9BcD5f6yyf5+rRL71wVYvHCMPP9O7XJDsToUrgXvGkDv5HRpjvbr1S2XPrLOt3S4imdu1SFfa/g7L1OThHam4LzDGGi0kjHDScadkuEto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sug4zvn4; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec1ac1aed2so38942231fa.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 11:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719857479; x=1720462279; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UXIjfifqoY2+USdxqsmMR1PZNjbJyEi4O/Dl39q5iAg=;
        b=sug4zvn4JF2dCA43ZCLn+iwezXRDZucJI23Tq1wbktBunfHFAM5R1u+Cu/Xdx+EKhB
         EDaa3a1KMUmXAcV2Yom46JWgx2cjneNwNdTP4LsG4RJxf979W6m59333EPhWwbT8BtVX
         X+Q1XClsPe+uttN5/8khXNo5bTsjmvFFaS+ewftnDrzjNACqD1f95cazRBCCW20BbvoW
         kEBbKuVayKwm+sc0s6nZTQ75ZE5DWo+2aOV5BQLU5hn2s2AoP5hyWX8QqgVFrf85ndAo
         /ueUtK1uRq2fEPSK9eHbA1NQjRS+UYpEWZQdkWkhWToCPQs4hILCphLK5LBte0SvuojB
         n6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719857479; x=1720462279;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UXIjfifqoY2+USdxqsmMR1PZNjbJyEi4O/Dl39q5iAg=;
        b=kjPBJhFye3O4gHFyAmAb53eHts6Jtrym9M5PE+5eZnIG+wfgGFyvbI5edt4MmD1bFv
         29ix12YtoA+pTFQz85TjFcahPlGbsmK8eUAmYJ5e38XZw7w51yn71xTG+xi62/II/j6t
         tpW/j9sdeVxcsgk/OZ+VkdX+u2iT3GY3GrY/a94uH9EbFIbZHLkwC/4yVX5IM39noEYw
         3IhDWmol2oHbwu2zBMhr5BG9AvWf1GjCUXbngNQDgAS04t/Ujgj8caqaTuWJQWJM7xC8
         mAR/fl5geqRk9+Gs+J8JZ4t6qhh16crfqO7TDQM7XVxFBb9zs3uH8D2j5v5TZnRmIpn4
         awJw==
X-Forwarded-Encrypted: i=1; AJvYcCV909odYyobvrSiRibvYpVTc+7j8ADJl1wQAJ/SXdQ1HcnmynhpXGJbz0cDh+LA0WD+3ul3ZOIBz6MsKrJmHUTWFZNy8zSLszFkyA==
X-Gm-Message-State: AOJu0YzeROcHP+D8LFRh+l0RBA6FsxWGSzHGwDTgLH8sYL2aujKAzHdR
	uyyuS82aR2vDYcNybXFeBWe3NhDAGHOzWTiyRpRhvqNpn7acgqy+HJq4xT0UaCc=
X-Google-Smtp-Source: AGHT+IF3y0VQLedqFBWkM6U87xQcON7ggU7XAKTs5isP66PO2FZSXJSQqq/IyH9zOvUQm0t8b7EkCg==
X-Received: by 2002:a05:6512:528:b0:52b:c1ad:1b56 with SMTP id 2adb3069b0e04-52e8266639bmr3495909e87.19.1719857479041;
        Mon, 01 Jul 2024 11:11:19 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7e3bd707sm1274292e87.53.2024.07.01.11.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 11:11:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 01 Jul 2024 21:11:16 +0300
Subject: [PATCH] arm64: dts: qcom: pm8916: correct thermal zone name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-fix-pm8916-tz-v1-1-02f8a713f577@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEPxgmYC/x2MSQqAMAwAvyI5G0hKcfuKeHCJmoNVWhGx+HeLx
 4GZiRDEqwRosgheLg26uwScZzCuvVsEdUoMhoylkhhnvfHYqpoLPB9kIzyQkJ1kgNQcXpLw/9r
 ufT84GrIDXwAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=998;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=w7U7p//qg9/BOYI9iU60ZIGf+BbEbqV3HX/8OXO7k20=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmgvFG5D7g4V+ZT1LWDVCXsEADQXnHuLk/v9cMz
 m2ca8/RU+SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZoLxRgAKCRCLPIo+Aiko
 1WVoB/9270bZd7hm1wP1rDCf0QLlVeu+merMMJdG4zLjiIvUAoGOnSQRjyIgCBwfwbjz0Pe79rd
 +K3Jn3w7jsJb420UkDb+OTsssL5yzZOjPt2e1gJkxraOgPm19/3qe0iCMJ+7T/tJGY4B01IXyjv
 v4vfGYnepgsTIE/dnNqCwmhzx0x05yE2gGbxBc3aIhwYI30gyArq3tUBsFokxsBYyX7xFOdrYJH
 v+/hcGftN+GHiHTECu1gXTWz5oQVTLuB5fwNDa8zovsrsAYNuKGS/ANaomcUfjOPO8oxJ8NnHSp
 Nne1ca5ZjTBBXrwRnMynrA3XHyfbS2fabhc7dx1ot1XNvfWe
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Correct the name for the thermal zone on PM8916 PMIC. I ended up with
c&p mistake, which wasn't noticed until the patch got merged.

Reported-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Fixes: b7a28d8a7b80 ("arm64: dts: qcom: pm8916: add temp-alarm thermal zone")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
index 2def48f2d101..f8e4829ff7f7 100644
--- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
@@ -6,7 +6,7 @@
 
 / {
 	thermal-zones {
-		pm8150-thermal {
+		pm8916-thermal {
 			polling-delay-passive = <100>;
 
 			thermal-sensors = <&pm8916_temp>;

---
base-commit: 43f9f53b46c63cbfc02af073a84c72c64b10767b
change-id: 20240701-fix-pm8916-tz-12e1b0e04deb

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


