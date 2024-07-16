Return-Path: <devicetree+bounces-86035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 230AB932346
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 11:46:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76A58B24A98
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 09:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58541991D0;
	Tue, 16 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dcnioQCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A9F17C23D
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 09:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721123123; cv=none; b=eT4t4jWlgce5HGnobQxb5nhLHFdxOKSxinz76qBK5oMqXy8qNFf/ZVvp74/X/0wxdEFc4XyCPt7TW+mPhMrvrCANeitUN6UwPUVfmAIQNq1jPq0ofau6UECqWL0hNxFkcrNR+wCU03aEdK289/en5wfCs/1S/BzYogLT9z2iFwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721123123; c=relaxed/simple;
	bh=vq9kQDucZZaaXMppqui404uEJ0q8knUSeXPUQx+QAE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JU0JvBAu0x53qwBaSHIzT4Jf23F9kQvqvv0g4MZ6vra48Zk9sYMPwy+sBkGTWc3yzIZEWOZzl6bd9MOZywY6H3/VWOyylTH4n7GQGZU06EfznCjnfR1T91sXTEfWlaUwAoawYAuq1icjATuUJDc7eH5kAWZb06QrvEEGBlQu3Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dcnioQCF; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2eec7e431d9so68244541fa.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 02:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721123118; x=1721727918; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NuFIyWh2EPTvca8mT4rSO45uIeLlFHL1Wx11wqOMQc=;
        b=dcnioQCF6R/tAAF/Ar8+n4h5AoesVMfEXnKRrtDnD3QKSulHbHVjTHm6yPFYU2YyvO
         n18nNz1kqGc63qW/+IUASpA4ZzFroLFZKLNQdHShgMbJh+bSfeICRa13NkR2vD11Imqb
         Wd/5IP+tckBbLOm5NSUtUzR5muaHXGIadnlplFyqgjDO5Ua56J3dqDl+89uKxah5tXk7
         E9gfRQHfJxRlB4PETbgLXnogtQraqLEdCA309k7gkppuasBvUmmaNKpNz9s85MR93Hfh
         Ef0HPH1N/w9HAzF2qY7w1lZ02yk9I/LmWu33IawCvVIzzuBRLqk2jlM+lu3yjoSInBPz
         kNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721123118; x=1721727918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NuFIyWh2EPTvca8mT4rSO45uIeLlFHL1Wx11wqOMQc=;
        b=abnbXK6B0z5GOP3tEUkhXbSwyVvaBB2tF6F3uMlsjHDDZPSG++uBlZSyMcWjnYmYvZ
         nV2buyjSROwA7HfG/k+nH6JIDoujyULoNPrfXm3v4v/1dvvyZogwkTxhunnz+vQjRV1v
         aV3BM7KxUlHPlkntKI1ZKRPpTEcP2GHQ3aJio2mlK1saANHtwdNdlfFpveHBOr6zTzkt
         0hjxojyvXRUW+hlhP59y2Z9e0RkIJ+si/R2cZwVDiX2ctm7qv3C+gQg6jLRsQf7o7WEw
         Phqy6X7u7YpaB0JuCiFu0fkhqcVGiBQDuapn3xmCGLrqM4aldBtXnCbecoDK8MyuMAV6
         KaLw==
X-Forwarded-Encrypted: i=1; AJvYcCUxLL21H4x2NMqGIAHveMYnaeM1nqUC9pC3AgT/s7/hJN9+4dwGI+Qf/M5SI065hbo6HzwM30VlO998Cvi+Rq6CblH975HT/wObMQ==
X-Gm-Message-State: AOJu0YyzgP1yewi7rbCGX1o54IWLNnUv+GPk0SJJS2erioLRLqLLO61e
	aqajxNL0ytO8TbzuLacXD/1uADNXpfHYBlHyiPCL46hEhpTILVvNYcgXjfm0mLs=
X-Google-Smtp-Source: AGHT+IG7g7z6HLYJ14CcKV617EB+IkO1Ar44iuZCqLPAlbLMxByW1bM90ZwiiGB8c5P7bBsY3CJHfQ==
X-Received: by 2002:a2e:b04a:0:b0:2ee:4f22:33f9 with SMTP id 38308e7fff4ca-2eef41b0e5bmr10639741fa.24.1721123118097;
        Tue, 16 Jul 2024 02:45:18 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f2cc2efsm154408185e9.36.2024.07.16.02.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 02:45:17 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 16 Jul 2024 11:45:11 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550-qrd: use the PMU to power up
 bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-2-67b3755edf6a@linaro.org>
References: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
In-Reply-To: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1970;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=vq9kQDucZZaaXMppqui404uEJ0q8knUSeXPUQx+QAE4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmlkEqeiPZqFxcVJf435dyTwarvH40M/d2lT188A6R
 ERVSAGCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZpZBKgAKCRB33NvayMhJ0aQ8EA
 Cae9yseauSuv+Sc2sElmVdyGcH5OZLch0jEx6ZE5vTH7ub8TTUJ1YKK8N+WT0xacYyx/4oDp0REcBc
 o86Vn+LUidpvhFNw7XGPex+l711WD/xbSnwMg48TotUz04iuqqb5m/kb9YpjRLGXiQwg9AzcJI9pZO
 H8Rslfbni+wE3cg2f77JjzvGIzJLu4P64+GlG3TdVenFPq90g04tXP0fCp9EQ1y0fIZA/j7oBvkZJr
 Lx7aFY0bFkscjvA8eem/ahlJJhfFX76Qns5I8jZN1dZAhrPidPAbh6VQr8dWtfplfpQoFjcfU20zHp
 teMSNFP7Xa4T0JnDdWj3Yhvh1niidm9o8wX56Yjpi/fb3Cv/cS1+3p70NF5P1W5HfPW7ScwrpXMMCB
 vlMlQHH7jjZHOv/cGG2EFXWQRjwt/w7ODcEXn1XNUX+Rjv8RPvLkXi+VQ94tPe/oXf5Kgxk2/ZUG/p
 mEwNrl7j3g3F6lGzQIxof1QVrV+E/S9CyrWDR0niMCZuoeA6N6xsP69AYy0VRfgTqXpw/W4o43MvAL
 ekr1R24J5NLQ6pKRjZ3Ikmlxrf3Lda+BY9OSnx5QSyWsiu6Mj+HPKH+V7U26+haVxOKZ19X5wTsuSO
 ATfCKtj7vUVg8DdSvzjTKVdIUSqpTM4kYC8OSbgVByz6jhgKtyRY68VWv8Dg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Change the HW model in sm8550-qrd.dts to a one closer to reality - where
the WLAN and Bluetooth modules of the WCN7850 are powered by the PMU
inside the package.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 774bdfcffec3..6052dd922ec5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -219,13 +219,10 @@ wcn7850-pmu {
 		compatible = "qcom,wcn7850-pmu";
 
 		pinctrl-names = "default";
-		pinctrl-0 = <&wlan_en>, <&pmk8550_sleep_clk>;
+		pinctrl-0 = <&wlan_en>, <&bt_default>, <&pmk8550_sleep_clk>;
 
 		wlan-enable-gpios = <&tlmm 80 GPIO_ACTIVE_HIGH>;
-		/*
-		 * TODO Add bt-enable-gpios once the Bluetooth driver is
-		 * converted to using the power sequencer.
-		 */
+		bt-enable-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
 
 		vdd-supply = <&vreg_s5g_0p85>;
 		vddio-supply = <&vreg_l15b_1p8>;
@@ -1175,20 +1172,15 @@ &uart14 {
 	bluetooth {
 		compatible = "qcom,wcn7850-bt";
 
-		vddio-supply = <&vreg_l15b_1p8>;
-		vddaon-supply = <&vreg_s4e_0p95>;
-		vdddig-supply = <&vreg_s4e_0p95>;
-		vddrfa0p8-supply = <&vreg_s4e_0p95>;
-		vddrfa1p2-supply = <&vreg_s4g_1p25>;
-		vddrfa1p9-supply = <&vreg_s6g_1p86>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 
 		max-speed = <3200000>;
-
-		enable-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
-		swctrl-gpios = <&tlmm 82 GPIO_ACTIVE_HIGH>;
-
-		pinctrl-0 = <&bt_default>;
-		pinctrl-names = "default";
 	};
 };
 

-- 
2.34.1


