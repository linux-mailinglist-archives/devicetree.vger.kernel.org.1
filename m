Return-Path: <devicetree+bounces-66272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 095F98C2474
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:06:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 888A71F286A3
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A56181325;
	Fri, 10 May 2024 12:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m4SWEuvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473FC180A93
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342418; cv=none; b=d2j8tLMXdaj8rX+0WepioFKiG4r1UTQC5bcdrscTmFDDdhM+9xnBKebKqxpv5oUq53xT8WhhtIHnaqHmgmqnWRHLiIoqdA7+eG2+HHz9I/8Yg1wgn9s1OyfZm/ONkz2l1vhoGWEEkq9STxTmVDM8Pu7GkwYcDa+dBppqrWH6IYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342418; c=relaxed/simple;
	bh=WsEg8exRfc0/pJm1n1kQRHGck94wqFc0YqydjjlEEbY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EXQ0Uyt8MTNPXHm4dpe5d60r0Huz+R27Z9mMoDeZyVjI7+mFnmu2/ke9uelAyUbk1VXrNSIutbJuiDtm+DqFNZgZ1IiKM+aZzpBm3CEM2Rf/5A+olFBsqdPPaRat6Ni7zi2mnFLZRdXxzcsuBODPu0+LXZDPa0HdsUgJjUw9PE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m4SWEuvr; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a599a298990so472205166b.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342415; x=1715947215; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vr5d9ufG+ZHCGxE9GxEqTnSNJcFNwQq/i9Dw49zdab0=;
        b=m4SWEuvradj6p5JsZ0peR3e84v7t2MNzv2t+07sTV+td4l1rcJcmy+cxbOGy3G7+yR
         +TJAtyopwyS21rC8kCquZyXOA+qX3hhiK8dbmQQAkRZs/cjUgg64ZNZFZ/aaURj+hjF5
         gVDYPX7o/sx3U47kU+IElne1rVtTZOnYvA9SARQ0k576wLsvUEM961RBtYkpv8eV6187
         6u0FVbjN4LvD8AvtO1btlOzVfRtH/I5RykxIuc3/mpeVogGaZIlmoR7v/MGINxZKNCX+
         sH9wtg1EI/8TqA0cPHHcMSSVBuMgzpOqn2iz3O96MYePL+cPNODeVCrnQg3JRm0vu1e/
         JzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342415; x=1715947215;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vr5d9ufG+ZHCGxE9GxEqTnSNJcFNwQq/i9Dw49zdab0=;
        b=TCQU8XHpEHmQcQ5nETo2pyr13hH90RbuGVW3hCL5ToIziQOMBpBDHsMTlg5xggtvKt
         B/2Pu9mO6ugZi5gpmvVPrG22KJSCQXCdI/XYq0nV2xhVoH03KTyvF7AWRpQ1agOt5nBL
         B/vL/0yF8X1jnhiJ0XwNJLRcWVJmPioFTnXh66mXL8HAj4iGSOeqOSHowEtOt+fuelQe
         E3aS8m1aN0a00W81agaQ21kmEYoW5WZYl31HjJbAzMGM8/gqUBdby0uRG2qEpo/YPUuT
         y3bgLtr2yjERaVLYAJ5fgh5R/waqQhBh1xVTUaIw8xDHyZ9nCFO7J9SYpxtZIHtSaKN/
         rQdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHEDba5Iutx7w3dMq+hi1Sbk6WonYPWiAKrTwxv6qjWsXEJ87ikN1nXZlE4oPA7uBHYKiepWsas0Oxn773ifyp7gn0X+46BiNRDA==
X-Gm-Message-State: AOJu0YwvtVhRjL8kfcaixQKthpSipI3zzuszkmcgDH8M2fGNQK2MlN8j
	WuL/fwArb9EMpzx81GhHX/EwleOl0cs3uOCZY+tun4mEeEHNGiyJ/lpqbvU+Dcs=
X-Google-Smtp-Source: AGHT+IGD1I/n+QJj+tye1pIOExZ6QeUqWASMVZyOf6mOcmsoW1vQJ2U3fZOwl2iJK6ga4Cf7TjEqXw==
X-Received: by 2002:a17:906:235b:b0:a59:a532:ed58 with SMTP id a640c23a62f3a-a5a2d55ac04mr151336566b.28.1715342414836;
        Fri, 10 May 2024 05:00:14 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.05.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:00:14 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:52 +0200
Subject: [PATCH v2 29/31] arm64: dts: qcom: sm8450-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-29-436ca4218da2@linaro.org>
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
 arch/arm64/boot/dts/qcom/pm8450.dtsi    |  1 -
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 16 ++++-----
 arch/arm64/boot/dts/qcom/sm8450.dtsi    | 64 ++++-----------------------------
 3 files changed, 13 insertions(+), 68 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8450.dtsi b/arch/arm64/boot/dts/qcom/pm8450.dtsi
index ae5bce3cf46e..decb8809fd36 100644
--- a/arch/arm64/boot/dts/qcom/pm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8450.dtsi
@@ -10,7 +10,6 @@ / {
 	thermal-zones {
 		pm8450-thermal {
 			polling-delay-passive = <100>;
-			polling-delay = <0>;
 
 			thermal-sensors = <&pm8450_temp_alarm>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 3be46b56c723..27b80f52d5bf 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -138,7 +138,7 @@ pmic_glink_sbu: endpoint {
 	thermal-zones {
 		camera-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 2>;
 
 			trips {
@@ -152,7 +152,7 @@ active-config0 {
 
 		rear-tof-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 5>;
 
 			trips {
@@ -166,7 +166,7 @@ active-config0 {
 
 		skin-msm-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 1>;
 
 			trips {
@@ -180,7 +180,7 @@ active-config0 {
 
 		therm1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 3>;
 
 			trips {
@@ -194,7 +194,7 @@ active-config0 {
 
 		therm2-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 6>;
 
 			trips {
@@ -208,7 +208,7 @@ active-config0 {
 
 		usb-conn-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 7>;
 
 			trips {
@@ -222,7 +222,7 @@ active-config0 {
 
 		wide-rfc-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&pmk8350_adc_tm 4>;
 
 			trips {
@@ -235,8 +235,6 @@ active-config0 {
 		};
 
 		xo-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pmk8350_adc_tm 0>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 616461fcbab9..ee60fd257efe 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4610,8 +4610,6 @@ sound: sound {
 
 	thermal-zones {
 		aoss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 0>;
 
 			trips {
@@ -4630,8 +4628,6 @@ reset-mon-cfg {
 		};
 
 		cpuss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 1>;
 
 			trips {
@@ -4650,8 +4646,6 @@ reset-mon-cfg {
 		};
 
 		cpuss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 2>;
 
 			trips {
@@ -4670,8 +4664,6 @@ reset-mon-cfg {
 		};
 
 		cpuss3-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 3>;
 
 			trips {
@@ -4690,8 +4682,6 @@ reset-mon-cfg {
 		};
 
 		cpuss4-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 4>;
 
 			trips {
@@ -4710,8 +4700,6 @@ reset-mon-cfg {
 		};
 
 		cpu4-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
@@ -4736,8 +4724,6 @@ cpu4_top_crit: cpu-crit {
 		};
 
 		cpu4-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 6>;
 
 			trips {
@@ -4762,8 +4748,6 @@ cpu4_bottom_crit: cpu-crit {
 		};
 
 		cpu5-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 7>;
 
 			trips {
@@ -4788,8 +4772,6 @@ cpu5_top_crit: cpu-crit {
 		};
 
 		cpu5-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 8>;
 
 			trips {
@@ -4814,8 +4796,6 @@ cpu5_bottom_crit: cpu-crit {
 		};
 
 		cpu6-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
@@ -4840,8 +4820,6 @@ cpu6_top_crit: cpu-crit {
 		};
 
 		cpu6-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
@@ -4866,8 +4844,6 @@ cpu6_bottom_crit: cpu-crit {
 		};
 
 		cpu7-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 11>;
 
 			trips {
@@ -4892,8 +4868,6 @@ cpu7_top_crit: cpu-crit {
 		};
 
 		cpu7-middle-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
@@ -4918,8 +4892,6 @@ cpu7_middle_crit: cpu-crit {
 		};
 
 		cpu7-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 13>;
 
 			trips {
@@ -4945,7 +4917,7 @@ cpu7_bottom_crit: cpu-crit {
 
 		gpu-top-thermal {
 			polling-delay-passive = <10>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&tsens0 14>;
 
 			cooling-maps {
@@ -4984,7 +4956,7 @@ gpu_top_alert0: trip-point0 {
 
 		gpu-bottom-thermal {
 			polling-delay-passive = <10>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&tsens0 15>;
 
 			cooling-maps {
@@ -5022,8 +4994,6 @@ gpu_bottom_alert0: trip-point0 {
 		};
 
 		aoss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 0>;
 
 			trips {
@@ -5042,8 +5012,6 @@ reset-mon-cfg {
 		};
 
 		cpu0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 1>;
 
 			trips {
@@ -5068,8 +5036,6 @@ cpu0_crit: cpu-crit {
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 2>;
 
 			trips {
@@ -5094,8 +5060,6 @@ cpu1_crit: cpu-crit {
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 3>;
 
 			trips {
@@ -5120,8 +5084,6 @@ cpu2_crit: cpu-crit {
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 4>;
 
 			trips {
@@ -5147,7 +5109,7 @@ cpu3_crit: cpu-crit {
 
 		cdsp0-thermal {
 			polling-delay-passive = <10>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&tsens1 5>;
 
 			trips {
@@ -5179,7 +5141,7 @@ cdsp_0_config: junction-config {
 
 		cdsp1-thermal {
 			polling-delay-passive = <10>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&tsens1 6>;
 
 			trips {
@@ -5211,7 +5173,7 @@ cdsp_1_config: junction-config {
 
 		cdsp2-thermal {
 			polling-delay-passive = <10>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&tsens1 7>;
 
 			trips {
@@ -5242,8 +5204,6 @@ cdsp_2_config: junction-config {
 		};
 
 		video-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 8>;
 
 			trips {
@@ -5263,7 +5223,7 @@ reset-mon-cfg {
 
 		mem-thermal {
 			polling-delay-passive = <10>;
-			polling-delay = <0>;
+
 			thermal-sensors = <&tsens1 9>;
 
 			trips {
@@ -5288,8 +5248,6 @@ reset-mon-cfg {
 		};
 
 		modem0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 10>;
 
 			trips {
@@ -5320,8 +5278,6 @@ reset-mon-cfg {
 		};
 
 		modem1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 11>;
 
 			trips {
@@ -5352,8 +5308,6 @@ reset-mon-cfg {
 		};
 
 		modem2-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 12>;
 
 			trips {
@@ -5384,8 +5338,6 @@ reset-mon-cfg {
 		};
 
 		modem3-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 13>;
 
 			trips {
@@ -5416,8 +5368,6 @@ reset-mon-cfg {
 		};
 
 		camera0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 14>;
 
 			trips {
@@ -5436,8 +5386,6 @@ reset-mon-cfg {
 		};
 
 		camera1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 15>;
 
 			trips {

-- 
2.40.1


