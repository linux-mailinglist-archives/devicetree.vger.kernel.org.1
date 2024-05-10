Return-Path: <devicetree+bounces-66265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E44278C245D
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E18328410E
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0598317EB9F;
	Fri, 10 May 2024 12:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Br7djQsT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FAD17BB32
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342407; cv=none; b=T1QmSI2AgzrF3ibyZvGWuAGRdz+MXdalibaxLYFm9eJ2oClMiCtjyr7q0wHqzrgXR5qiAbgTGyuztfwuZMoAcVMs/SXGn9lPg8p7A/dZqDOcMo3ZZnQUbgy42iHBkM8esRS+oHRjt9hccPDeNDouoMKRtQxI+JWBXoCUJ8mKwyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342407; c=relaxed/simple;
	bh=MeOx5lJR3k+o/4GA4O92CCW8bkuSqKr2XXu3nUKqu1E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KrzVjZKYUvQyb8cpDqq6nOILG8jVnmIhy3rWNBjFuhkb1c+QQHyYvIisUOvD892JkUoDlN/UMmFRQ5z1qza6of2m9CUVBuYVzzXpHyDvD4/jT0EQMv1zjSnYIfLHDuzdN7gNFmIIVu2wXeDP/BXyeh30EYKVTFBTBe9m3DLbdnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Br7djQsT; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a59a609dd3fso339517666b.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342404; x=1715947204; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ph1Uf67WwkLDmViw+zsuiujGZ7qdtyz/KFSmroN7sqQ=;
        b=Br7djQsTPb4kLMyjbLWJEC7qHZnR452h3sYM5LSwL1wAuWsxdzmwOV464ep6FBEn/I
         kkeBWycOj+tREokVkCINBbaO2VaCe3X2vHW+axu3YLwDdigHzt9V0wP3L745Hk6D4sKm
         hUzGMcbD/VClv3haiy+cw/1+nBMboKJ9FeTTbXZs8AvhDtmrGgtuaiJQEUHzNe423U6e
         114uD4MkDKmgT72/HT9+6fK2ijulUdHn0ZSVJzqRlXMJvrJAbqWbe4Hsdb5XAjJoYSfI
         /gzjEA7btKsRjrWrUQTNLkQPB16JOpQCfOGvteY2VpiExC51tmO0l+Dz8aSpEmPvtl+H
         RkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342404; x=1715947204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ph1Uf67WwkLDmViw+zsuiujGZ7qdtyz/KFSmroN7sqQ=;
        b=UWVz9dW3mYccQt7lWJbKzV7md/kbn3emSVMYs+1xwtYZgM9IXVs3JTiueu+uq6PkEj
         UGXLxlogB05PURQlvdNGqMHJjg3rTnokmSEOWypDKtlbFeUISG5aTF17p3rc8mn51ZVv
         15R2ExAwfiDSdlhMnvFCCTdzKftpkW/yxD676NcNt7qBgDVybQZjc50ZB6+4e5yTZUhi
         AyZGCLG69ENgvB8g6u6UWFF3rdbtwxFe/sl2+Slrx8mBo0VwA9iCDAHq7UYn5i7CRHRE
         AuczV74jLsi235HDUKz6JZkzrtlRxkNKy2lwPnOsBK1W0iiQ9tuACHZnhViIEyKmzSkR
         8Qhg==
X-Forwarded-Encrypted: i=1; AJvYcCWhbUJ9/nI3lRaPzckO5Mt1aDL24ewdhPf7YPfPSnXhA7W5Ov+JhM7wPUg+p/ZyV+g8HR7YzkgHbWnpFENxawemi3ul9WMmnQWbRg==
X-Gm-Message-State: AOJu0Yx6F41bv5rsjxs7PLvxRsa8SBCBaScjdqsXbYUDFUe00dXpWoH4
	rx/aoZVxaLQdMLem0rLAJZLItRrkIF1bYCQeu89KREL8xRUucRtkXARMEiaSHWbXCyR2/K3AEkT
	lOUY=
X-Google-Smtp-Source: AGHT+IHF/WjAxyiaTEhAozZZtZ83iBdXONsgD649kaMbOBkyOY5l4O5H6OUoIaPNIi0O4NQb6DYEWw==
X-Received: by 2002:a17:906:bc50:b0:a59:cb28:a8ae with SMTP id a640c23a62f3a-a5a1123b477mr453575666b.0.1715342404593;
        Fri, 10 May 2024 05:00:04 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.05.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:00:04 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:45 +0200
Subject: [PATCH v2 22/31] arm64: dts: qcom: sm6115-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-22-436ca4218da2@linaro.org>
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi632.dtsi |  1 -
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 32 --------------------------------
 2 files changed, 33 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
index 94d53b1cf6c8..f192b2fb4f64 100644
--- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
@@ -11,7 +11,6 @@ / {
 	thermal-zones {
 		pmi632-thermal {
 			polling-delay-passive = <100>;
-			polling-delay = <0>;
 
 			thermal-sensors = <&pmi632_temp>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index aca0a87092e4..0a0bb5310849 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -3011,8 +3011,6 @@ cpufreq_hw: cpufreq@f521000 {
 
 	thermal-zones {
 		mapss-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 0>;
 
 			trips {
@@ -3031,8 +3029,6 @@ trip-point1 {
 		};
 
 		cdsp-hvx-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 1>;
 
 			trips {
@@ -3051,8 +3047,6 @@ trip-point1 {
 		};
 
 		wlan-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 2>;
 
 			trips {
@@ -3071,8 +3065,6 @@ trip-point1 {
 		};
 
 		camera-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 3>;
 
 			trips {
@@ -3091,8 +3083,6 @@ trip-point1 {
 		};
 
 		video-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 4>;
 
 			trips {
@@ -3111,8 +3101,6 @@ trip-point1 {
 		};
 
 		modem1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
@@ -3131,8 +3119,6 @@ trip-point1 {
 		};
 
 		cpu4-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 6>;
 
 			trips {
@@ -3157,8 +3143,6 @@ cpu4_crit: cpu-crit {
 		};
 
 		cpu5-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 7>;
 
 			trips {
@@ -3183,8 +3167,6 @@ cpu5_crit: cpu-crit {
 		};
 
 		cpu6-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 8>;
 
 			trips {
@@ -3209,8 +3191,6 @@ cpu6_crit: cpu-crit {
 		};
 
 		cpu7-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
@@ -3235,8 +3215,6 @@ cpu7_crit: cpu-crit {
 		};
 
 		cpu45-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
@@ -3261,8 +3239,6 @@ cpu45_crit: cpu-crit {
 		};
 
 		cpu67-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 11>;
 
 			trips {
@@ -3287,8 +3263,6 @@ cpu67_crit: cpu-crit {
 		};
 
 		cpu0123-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
@@ -3313,8 +3287,6 @@ cpu0123_crit: cpu-crit {
 		};
 
 		modem0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 13>;
 
 			trips {
@@ -3333,8 +3305,6 @@ trip-point1 {
 		};
 
 		display-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 14>;
 
 			trips {
@@ -3353,8 +3323,6 @@ trip-point1 {
 		};
 
 		gpu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 15>;
 
 			cooling-maps {

-- 
2.40.1


