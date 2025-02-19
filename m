Return-Path: <devicetree+bounces-148377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A63CBA3BD15
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8481F189A8FC
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8890D1E0DB5;
	Wed, 19 Feb 2025 11:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CFnvCbqc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D7E1DFE25
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 11:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739965019; cv=none; b=lgju4c0vpaUfmUECGvhC7issjJ1lmwKEsPNpX/GQwBcCls9hctpDKxRwdqpCCC9jGB5z9axhZcNe8eLKdZb+6aH1ZsHMROA0+2thbFTVZ8qqu8ozIr03ff2Jqy6l71/obrtKJnBdZqGib8ax1wp8IuluLn8zWmrhprwUaP1jzY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739965019; c=relaxed/simple;
	bh=VBtYLlI32D1IT1g6oXAH+/Y5Mni8ARmIevFsmFIlkEI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=goaD8M5P6xy6GwFE9mihq0GzzoP9SCWd4pCbERi9fmbNBRnVLXFJ9KFxF2kXaY1ynkVLAJ7x1xAe/QOXQl1LDdcwb5wWI9wnzl8sNgivIBlFrc7eZnHfiY2V+O3iRMCyWkPj/HujYRIBHJP7C2p35Vis1YHKmJhweyLCGnN4oYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CFnvCbqc; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4399a1eada3so7891365e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 03:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739965014; x=1740569814; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o2xAYRgSHSTQxHrbNsTs5CuiGhXgTzNq3Zj4ycfB7Kk=;
        b=CFnvCbqcDDcoJJMjNQNtB7TtLBmXEcHAdjTwuVpzb0X/Zx+34exBvs08OBp/dVEVPw
         AnAkcPXJSC7AhUgwk8PFaMupeiYUI6IdDLGfGnumjrVZBwlQcFHWATngh0JKQLMpOV/s
         nH8i2G7buCUSfXt65GBNSPaRqdZLI9utHN9pDUkoShi4wdMfnHo8i/r6LxBLxGE44mcN
         MJ1xbIcxkIBC4BCYUrIguPk1F1jF3ohoWRM1te5AWxg0MvcSL10jdWCmxJGL7rfkze9K
         5FxZpN5rb0NBizjD/XVzigKpuyqwKJfeSAupMC71JlfsRlKk3RZpQiEJBpAKo/N4fUI0
         zKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739965014; x=1740569814;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o2xAYRgSHSTQxHrbNsTs5CuiGhXgTzNq3Zj4ycfB7Kk=;
        b=L1ozPYqZ80B4jfjGqU9IHAIYyvR4TsMa8FjneXSIDtbXl3FkMKQirAnRFenBOIBR1E
         tQqDuEy/7/QSIKReDac2shKSoW0BtiL/IifkWOdB3qHHU2l4NMaFP8Jy4/OCltPyNaA2
         yX+T9onj+KBDJAaMhUyfA5BKC6yjo3lPrkVr+X3hKp8FSyxiQLtxFpbUtm9c7zm5bnOm
         rZ9AWFI1QRooK76LNn/Gf7wam34F7dxyIF/GA0YxhSy9tYJOSdvFCIP7DJAn2MuBgiso
         Gnq2Zbi258cJzP45Ie6wKmNIxHsYFXkVKbRkIAsXbxgkY+5tyh3gpk0I1zgmZBIwW06V
         OTWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzCLidvQOtFr4AIa/4/lqcRk5rlV/AtHg+j6NVVU3GWNRQf84Yf0iPQyKHOxuzh4ydthEDA9pW1d+l@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz/eJ23AjldG7dHRVntb4EnpbJjGuRfCfuRZLWEQcv5jB8WLD4
	rwaCKKJPlWdXR4lbIpBBbHQMQRNG2svLFEwuPvRMGVkXSBuECOiAq7BisEQPfDE=
X-Gm-Gg: ASbGnctqz59MqQ50TgnAY5WHk7q/6OQoQCt/KaLzFbzxriPD+LnX9C7JoK7skVfqlfw
	ExLHaAGWHeoHmj/yxHIETJovj+3mR+57YHxO4gSFnw7U5qfSPfLF/i8Lk15jvjnW5XNa5KQmJG5
	BJZtu1wXuUd5ItxriwrdrLDCgOpYKkAb9DtiHGQGhho72UwpkWxLNCdTO6tXh2vrkBtfllR7PJA
	m6vunfEj9IxEcpI+/kaSrhllfeBIKvfIaOEVwQQSxrsAAh7jNz8o0Ghhh1xhVXKY6eqDJBk12Ny
	I8u4jAvansh6svARccGk8NrI549+CA==
X-Google-Smtp-Source: AGHT+IGHf16s+kr6QC93nlk3mFr3yas/GHw1k1Yy1YQcjY7HS5Er1cYbYWvfsxfitogVCnNTDB+LGg==
X-Received: by 2002:a05:600c:511e:b0:439:8bc3:a698 with SMTP id 5b1f17b1804b1-43999d7591bmr31932825e9.6.1739965014306;
        Wed, 19 Feb 2025 03:36:54 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:8630:e1af:c2ac:8a22])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4399600257asm42437905e9.4.2025.02.19.03.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 03:36:53 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 19 Feb 2025 12:36:21 +0100
Subject: [PATCH 4/4] arm64: dts: qcom: x1e80100: Drop unused passive
 thermal trip points for CPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250219-x1e80100-thermal-fixes-v1-4-d110e44ac3f9@linaro.org>
References: <20250219-x1e80100-thermal-fixes-v1-0-d110e44ac3f9@linaro.org>
In-Reply-To: <20250219-x1e80100-thermal-fixes-v1-0-d110e44ac3f9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

There are currently two passive trip points defined for the CPU, but no
cooling devices are attached to the thermal zones. We don't have support
for cpufreq upstream yet, but actually this is redundant anyway because the
CPU is throttled automatically when reaching high temperatures.

Drop the passive trip points and keep just the critical shutdown as safety
measure in case the throttling fails.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 372 ---------------------------------
 1 file changed, 372 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a0d4be29a489618a152f79d15a847338271f12d4..53512e7a413ddcd8cb53996a04c27d9094d8d4c0 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -8466,23 +8466,9 @@ aoss0-critical {
 		};
 
 		cpu0-0-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 1>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8492,23 +8478,9 @@ cpu-critical {
 		};
 
 		cpu0-0-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 2>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8518,23 +8490,9 @@ cpu-critical {
 		};
 
 		cpu0-1-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 3>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8544,23 +8502,9 @@ cpu-critical {
 		};
 
 		cpu0-1-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 4>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8570,23 +8514,9 @@ cpu-critical {
 		};
 
 		cpu0-2-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8596,23 +8526,9 @@ cpu-critical {
 		};
 
 		cpu0-2-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 6>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8622,23 +8538,9 @@ cpu-critical {
 		};
 
 		cpu0-3-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 7>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8648,23 +8550,9 @@ cpu-critical {
 		};
 
 		cpu0-3-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 8>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8677,12 +8565,6 @@ cpuss0-top-thermal {
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
 				cpuss2-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8695,12 +8577,6 @@ cpuss0-btm-thermal {
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
 				cpuss2-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8764,23 +8640,9 @@ aoss0-critical {
 		};
 
 		cpu1-0-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 1>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8790,23 +8652,9 @@ cpu-critical {
 		};
 
 		cpu1-0-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 2>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8816,23 +8664,9 @@ cpu-critical {
 		};
 
 		cpu1-1-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 3>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8842,23 +8676,9 @@ cpu-critical {
 		};
 
 		cpu1-1-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 4>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8868,23 +8688,9 @@ cpu-critical {
 		};
 
 		cpu1-2-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 5>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8894,23 +8700,9 @@ cpu-critical {
 		};
 
 		cpu1-2-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 6>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8920,23 +8712,9 @@ cpu-critical {
 		};
 
 		cpu1-3-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 7>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8946,23 +8724,9 @@ cpu-critical {
 		};
 
 		cpu1-3-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens1 8>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8975,12 +8739,6 @@ cpuss1-top-thermal {
 			thermal-sensors = <&tsens1 9>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
 				cpuss2-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -8993,12 +8751,6 @@ cpuss1-btm-thermal {
 			thermal-sensors = <&tsens1 10>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
 				cpuss2-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9026,23 +8778,9 @@ aoss0-critical {
 		};
 
 		cpu2-0-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 1>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9052,23 +8790,9 @@ cpu-critical {
 		};
 
 		cpu2-0-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 2>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9078,23 +8802,9 @@ cpu-critical {
 		};
 
 		cpu2-1-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 3>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9104,23 +8814,9 @@ cpu-critical {
 		};
 
 		cpu2-1-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 4>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9130,23 +8826,9 @@ cpu-critical {
 		};
 
 		cpu2-2-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 5>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9156,23 +8838,9 @@ cpu-critical {
 		};
 
 		cpu2-2-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9182,23 +8850,9 @@ cpu-critical {
 		};
 
 		cpu2-3-top-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9208,23 +8862,9 @@ cpu-critical {
 		};
 
 		cpu2-3-btm-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens2 8>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <95000>;
-					hysteresis = <2000>;
-					type = "passive";
-				};
-
 				cpu-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9237,12 +8877,6 @@ cpuss2-top-thermal {
 			thermal-sensors = <&tsens2 9>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
 				cpuss2-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;
@@ -9255,12 +8889,6 @@ cpuss2-btm-thermal {
 			thermal-sensors = <&tsens2 10>;
 
 			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
 				cpuss2-critical {
 					temperature = <115000>;
 					hysteresis = <1000>;

-- 
2.47.2


