Return-Path: <devicetree+bounces-66267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9998C2465
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:05:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CF152872E7
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49D31802A7;
	Fri, 10 May 2024 12:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EYZvJFUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A3D16F0DE
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342411; cv=none; b=hM3MrRpfH9cmBQ86dlx0VtxOeooQUJxzZWzvypJ5qzocUvjvtawoChcnKLif8u5l48OTYJSdI/7nGASbF5MKe2Wq2HHMMuHH4LI5GLH/92ZQv2fwtlDUimT7ssO7YtOy6sOyDKeepzErShmtVEuKQfHbd/OngL+TK7knBp2iSx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342411; c=relaxed/simple;
	bh=m+oLLkcgcMUGdC6pLd8kE7nKrrHJZaql0563McJCUYg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sQqUsnH1OPT6nXyAj6V9HORYwdzOeIagGMI+lT+akII5NzU3ye6NZ68+sN/duc/wWCPaGxsRR9yHOOTYwDqb6t2UXe4+ShoJ22fEXn0HSkeZnVhFelRPASLf24wDdWylnAUxD45qBXqVDEKnvzwLFVHxaRcnApcXRqR3b2jLBWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EYZvJFUD; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a59a17fcc6bso467109966b.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342407; x=1715947207; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vvrabOJNhb0z6wZV2tI7cOl2sVxLJv29FkvPvZ4Kzsw=;
        b=EYZvJFUD2geOLCDPVzCFsDFOfEBvy5qVACxlNBz+3OvAmUYnvqXmTd6aeF2J7hNQtm
         KAFasnk1rhI3j1InC3G+zA9ZF67TNXdHz2h4Es5fEQMI7cA45yB5uYC1bi4dVKZs70hS
         zpS4Hlt2ekiPPMXt87zS8GsuJoCNgwaD3gtCTEXHXlL/FnwTFTmL6KMNOm350SynRE6s
         +F+0TANGJEHibfRCaou56sm+pqxYaijyNRpGrWILCbyGMrHbVDXiTy/yDuLlgprBlHGH
         AdOUOrRy8ei8PhmDvNhN35Bwk67eJGXC2ME0UWPXtdac23h6OnShdzoh+Mfigl3m31h/
         k5Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342407; x=1715947207;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vvrabOJNhb0z6wZV2tI7cOl2sVxLJv29FkvPvZ4Kzsw=;
        b=cWLZ7xTYoKKJHuryZgq9DrsqTf3tYxte+lY7Xr0ieRXAU4pCWr4E/ifhPEnQ2GHBnf
         QjwfRZ3a8wamD53+t80YbFppeAHQrmQRcDBVnseDUFzg2h1tG7eDmyMj249kNmHHsZiB
         NtVlQSyncHtXC5eHlmMN7f3PvYTQljpgy7D3KMzOOcU5fBsxGJ9huDPn1zFjZ6PEgGJs
         NAIfhbF06HE4tfHfp7Hc85Y6vQjJTSC2AMLqAFT86nhFhYGHhMCuUbyrVIsnuAfxKN/s
         c2wqouOjRmy9XsnaO+lKuuC3/KOZHPMKlvi6GRYCsb8W4clYrEQgbLpOH2EAAEbY38SF
         XBSg==
X-Forwarded-Encrypted: i=1; AJvYcCVIvB8TuLmalagliCQZD1O5ODTUQSpH+0JW9LwmwdKijViirGthxgLOnfsDSXzor+GMoq9o/j/A7vu16KNDHeXMjz1c4w6/+cNpTw==
X-Gm-Message-State: AOJu0YwfE/AxO1vNWiBKrJb9rVi3N8WhNoZJ1VYP+RsYf0Lp+UJQSfoW
	CirDK36U+WHA1kP8Fk2q8ICc/hovmNKJoLY0e9KLx9usumtvHDb8ox0Dg73fjn8=
X-Google-Smtp-Source: AGHT+IHaK+w4+qGYQNRt2b77eJfYPL6wMoW4G20TYAvbGdA0486bU7Yn5qtN3fIF2ML8Wddm4DHObg==
X-Received: by 2002:a17:906:799:b0:a59:766b:d88 with SMTP id a640c23a62f3a-a5a2d5cca04mr159358766b.36.1715342407472;
        Fri, 10 May 2024 05:00:07 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.05.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:00:07 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:47 +0200
Subject: [PATCH v2 24/31] arm64: dts: qcom: sm6350-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-24-436ca4218da2@linaro.org>
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
 arch/arm64/boot/dts/qcom/pm6350.dtsi              |  1 -
 arch/arm64/boot/dts/qcom/sm6350.dtsi              | 81 -----------------------
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts |  4 --
 3 files changed, 86 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm6350.dtsi b/arch/arm64/boot/dts/qcom/pm6350.dtsi
index 3a2a841e83f1..a20ee2457101 100644
--- a/arch/arm64/boot/dts/qcom/pm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm6350.dtsi
@@ -10,7 +10,6 @@ / {
 	thermal-zones {
 		pm6350-thermal {
 			polling-delay-passive = <100>;
-			polling-delay = <0>;
 
 			thermal-sensors = <&pm6350_temp>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 84ff20a96c83..abfaa1178a39 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2831,9 +2831,6 @@ wifi: wifi@18800000 {
 
 	thermal-zones {
 		aoss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 0>;
 
 			trips {
@@ -2846,9 +2843,6 @@ aoss0-crit {
 		};
 
 		aoss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 0>;
 
 			trips {
@@ -2861,9 +2855,6 @@ aoss1-crit {
 		};
 
 		audio-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 2>;
 
 			trips {
@@ -2876,9 +2867,6 @@ audio-crit {
 		};
 
 		camera-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 5>;
 
 			trips {
@@ -2891,9 +2879,6 @@ camera-crit {
 		};
 
 		cpu0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 1>;
 
 			trips {
@@ -2919,9 +2904,6 @@ map0 {
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 2>;
 
 			trips {
@@ -2947,9 +2929,6 @@ map0 {
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 3>;
 
 			trips {
@@ -2975,9 +2954,6 @@ map0 {
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 4>;
 
 			trips {
@@ -3003,9 +2979,6 @@ map0 {
 		};
 
 		cpu4-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
@@ -3031,9 +3004,6 @@ map0 {
 		};
 
 		cpu5-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 6>;
 
 			trips {
@@ -3059,9 +3029,6 @@ map0 {
 		};
 
 		cpu6-left-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
@@ -3087,9 +3054,6 @@ map0 {
 		};
 
 		cpu6-right-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
@@ -3115,9 +3079,6 @@ map0 {
 		};
 
 		cpu7-left-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 11>;
 
 			trips {
@@ -3143,9 +3104,6 @@ map0 {
 		};
 
 		cpu7-right-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
@@ -3171,9 +3129,6 @@ map0 {
 		};
 
 		cpuss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 7>;
 
 			trips {
@@ -3186,9 +3141,6 @@ cpuss0-crit {
 		};
 
 		cpuss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 8>;
 
 			trips {
@@ -3201,9 +3153,6 @@ cpuss1-crit {
 		};
 
 		cwlan-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 1>;
 
 			trips {
@@ -3216,9 +3165,6 @@ cwlan-crit {
 		};
 
 		ddr-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 3>;
 
 			trips {
@@ -3231,9 +3177,6 @@ ddr-crit {
 		};
 
 		gpuss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 13>;
 
 			trips {
@@ -3259,9 +3202,6 @@ map0 {
 		};
 
 		gpuss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens0 14>;
 
 			trips {
@@ -3287,9 +3227,6 @@ map0 {
 		};
 
 		modem-core0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 6>;
 
 			trips {
@@ -3302,9 +3239,6 @@ modem-core0-crit {
 		};
 
 		modem-core1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 7>;
 
 			trips {
@@ -3317,9 +3251,6 @@ modem-core1-crit {
 		};
 
 		modem-scl-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 9>;
 
 			trips {
@@ -3332,9 +3263,6 @@ modem-scl-crit {
 		};
 
 		modem-vec-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 8>;
 
 			trips {
@@ -3347,9 +3275,6 @@ modem-vec-crit {
 		};
 
 		npu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 10>;
 
 			trips {
@@ -3362,9 +3287,6 @@ npu-crit {
 		};
 
 		q6-hvx-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 4>;
 
 			trips {
@@ -3377,9 +3299,6 @@ q6-hvx-crit {
 		};
 
 		video-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&tsens1 11>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index bc67e8c1fe4d..c50fa7f3a5fd 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -94,8 +94,6 @@ memory@efe01000 {
 
 	thermal-zones {
 		chg-skin-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pm7250b_adc_tm 0>;
 
 			trips {
@@ -108,8 +106,6 @@ active-config0 {
 		};
 
 		conn-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pm7250b_adc_tm 1>;
 
 			trips {

-- 
2.40.1


