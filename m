Return-Path: <devicetree+bounces-135357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9960BA00AAA
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:38:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB4043A418B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 139C81FA8E7;
	Fri,  3 Jan 2025 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qhllQQNB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC45A1FA252
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735915117; cv=none; b=GsIWWRc6Nouj1sRlGqM+uhDsIiTP2rslD3kkMkBPS64Ezqz3pZG9QajqQTlb8pIX9SLlcd8D3PoSy+M+Z6m8fFWn6zQGrBHE8f9WV6mVm3fHWvmTxhHnYgYW7HsIyJaJ9H7gx/vImUzeji5p2oV83D/lvpv4tdOBIHsQ8gHx6IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735915117; c=relaxed/simple;
	bh=niyjCtXhCE8/5AbNqx+W+7/Nvfo/ckjgJ5ff/+TSIdQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ExexrDayvAG3k50q1x9AfbVzgVJylp9/oYKVCwI1zRjn9EQfXXQW5p7sOeDlPhc+RYlyG9uCfZXwQoiUsBAUtBB1wQIdaH1JaAZ6g1HvSf4sg0sceb6qE58SPJjwHENcztPnN0QOys6x4tz7TmffhwG0SRxWrYShE5XXnfD2EMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qhllQQNB; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385de9f789cso9225961f8f.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 06:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735915113; x=1736519913; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7pK7TlKWK1xvaqxGOsuzY5sVhifLxXFybD0Tl7FCg0o=;
        b=qhllQQNB4MVdZgh1YdPP9tHwglA7+N6TSLk+79ErmsPPGbPbjKoekqlK6SOLd5+fiA
         OxJM6oMYmk/c5TZ91/smGxVRpmdZtB7D8UK/briEA6yMrFqOZwdikefZrrNDsHWC6WnA
         pm4ojjr0/MC+dtwyLtAQ+XFD6tS3D18e622aWm2Zf5kBPqooyRwTXOiv3ryLqEN4UOMv
         DJTKulWFO4tmD6dSYhSYr01tnDGHG9P1DLXsAecfZNhBWKapQ1wQXIRhDiYuADc++Qy+
         H1umIKlg3wOQeE4U+kqmJepras3Pg3Cc/4vv0ptAyHCPpZMZRtmFNY749P8bpuFA8744
         1h7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735915113; x=1736519913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pK7TlKWK1xvaqxGOsuzY5sVhifLxXFybD0Tl7FCg0o=;
        b=N6b5k/p5C7nQGIz7wEr8/VcHonVjdxnRwkougPlv6+mZMgeLJI3DBZ+Q2q0KgXc8dl
         o1ZcLDvgolD48ywcHcwISsxuvYzfqmURkqcfqFjNQ9YqHSEivmtdLTiqLlRDgW79JudN
         pvNS8QKVhiqa9Vioa9idkgBAXDb7/DTNORfvDstQeHB5D6OV9/NiqUdXt0litG3TY8TB
         Ek/qjYPzW47KYQFYo9FFXRQrmwxG4iT1y2L3mtlyExKDoHuMjd1xKwPiRm/EK3Uk47R5
         GCi6tHdL+ORuzbRld4b2oY3AGrS0J1KKERztL8h+mhmXt74Rpj1baCzJwV1mMyKzX63s
         1FkA==
X-Forwarded-Encrypted: i=1; AJvYcCXvunV733u3K3IQm33OHYosfY/ohH4o1YANHYqgWETUZipmzRhN9Ki6DeC6H+Q9s2LI0QeJ8eccwt1F@vger.kernel.org
X-Gm-Message-State: AOJu0YzF3ObR/0gGnpFETqQIa4OK+Ilt4vLw3ERWNp2p5Hc83y4qLlWT
	GJSmiqd4IbOVNfhkuKix1Tx+AU0mYyVUMt+LdgS84FQJgSyIbJ5xFCvceQev3qo=
X-Gm-Gg: ASbGncuuayFregxVr2paVDvXULV4aSlAAv5do9grqFya3cmKd/E/W46iFc0JsFpyft8
	ijyoXWpL71PEYEgHh/n/avPiSpQJEmW/7cGk8u6tMb7TFEmeJq+UY6NafSdp8JpBgIS0+wUNzKk
	X5RiNDN+PPZpADck7ocwmZlOaK0yn7fHLvHqgFgBSVQ8Ovc9YEWseQNfZ3i/aYYpJp6bUKqGGBs
	iwj+yDOVoPW39KVmEyZdG7ZIULibbB5XGCuSrYt9wAZgk1FEJpddX6WbENJxGeVkkeFuhKkClGm
	RA==
X-Google-Smtp-Source: AGHT+IE3PPw5nuEvx+vZb984VGyO5/6NWW3e3TlMr8ZhPGROTFqM2pUReXPL57LvqqTOOZkXdToztw==
X-Received: by 2002:a5d:5e09:0:b0:385:fb8d:8658 with SMTP id ffacd0b85a97d-38a223ffbf0mr48484253f8f.40.1735915112417;
        Fri, 03 Jan 2025 06:38:32 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c846ca4sm41558404f8f.43.2025.01.03.06.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 06:38:32 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 03 Jan 2025 15:38:26 +0100
Subject: [PATCH 1/2] arm64: dts: qcom: sm8650: setup cpu thermal with idle
 on high temperatures
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-topic-sm8650-thermal-cpu-idle-v1-1-faa1f011ecd9@linaro.org>
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
In-Reply-To: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=14548;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=niyjCtXhCE8/5AbNqx+W+7/Nvfo/ckjgJ5ff/+TSIdQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnd/ZlvdASEAgcaRuvcXjs4rrxKhoMQgwWnm5sxDGk
 DJHx3DKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3f2ZQAKCRB33NvayMhJ0fO5D/
 0eLIMBgvKX/LU9DupdeNFKvgcTsz3fX9/k0HS3HBhv2iVblrp0NsqJyIMilclWM1Do9i+B+Z5kuOAF
 PS9HWGPVg/37T9V/Wywgl0Jmb6HQts5p0ZYlCGsS7rtoAWHBsHpF880XJreSPJ/F7pHQGmhixp2eGd
 GMz92KV810mskSXGrZsxGPIg38jhXJT1YtA97XVAJSuoLbu2gcG+CRIgtrMwFIEnh8Qar1euwUoqiR
 ZCBssnhG633UFluLvJCbIFjeM63Wd0x9b91eqKhG/ar3kqcnS87ZOjwLegeHLDs6KmAskd6/fDXrsF
 sI/fwKqgA2VZY58whsosvKWPKiTAts025IKJwDhd8aDjfLkhQfvWYtd2ajbkOHIFY9UFDlq8yEh/39
 +zpI+O7KYji1YyZeWBTkJ63czKxzwoWW3bC92pROX9U/q9Kel7a2ewNP+N7sRuJsz/HJirOtDaOOZ2
 1vT458S+dP0piBHuLZEzw3JS6Yl88gzM2fXeFBI4kAVwS54BlWWiJfV48fCq6+bheo4oqIw7ctvdQj
 A1Cd+hNDOLfeNuOKNjSqF4jlUKU4/hAKLw5UxGcDafgnl4cU2iAt0zE/tfaBBL8r8ozaR1XR9/JQw2
 cwYsuH8PIgqnARSBwDZGQvi1q/tTijAz/d9pQ2y6PUgTCnpfpgWTt5qCUisw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On the SM8650, the dynamic clock and voltage scaling (DCVS) is done in an
hardware controlled loop using the LMH and EPSS blocks with constraints and
OPPs programmed in the board firmware.

Since the Hardware does a better job at maintaining the CPUs temperature
in an acceptable range by taking in account more parameters like the die
characteristics or other factory fused values, it makes no sense to try
and reproduce a similar set of constraints with the Linux cpufreq thermal
core.

In addition, the tsens IP is responsible for monitoring the temperature
across the SoC and the current settings will heavily trigger the tsens
UP/LOW interrupts if the CPU temperatures reaches the hardware thermal
constraints which are currently defined in the DT. And since the CPUs
are not hooked in the thermal trip points, the potential interrupts and
calculations are a waste of system resources.

Instead, set higher temperatures in the CPU trip points, and hook some CPU
idle injector with a 100% duty cycle at the highest trip point in the case
the hardware DCVS cannot handle the temperature surge, and try our best to
avoid reaching the critical temperature trip point which should trigger an
inevitable thermal shutdown.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 274 +++++++++++++++++++++++++++--------
 1 file changed, 214 insertions(+), 60 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 25e47505adcb790d09f1d2726386438487255824..448374a32e07151e35727d92fab77356769aea8a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -99,6 +99,13 @@ l3_0: l3-cache {
 					cache-unified;
 				};
 			};
+
+			cpu0_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
+
 		};
 
 		cpu1: cpu@100 {
@@ -119,6 +126,12 @@ cpu1: cpu@100 {
 			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			#cooling-cells = <2>;
+
+			cpu1_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu2: cpu@200 {
@@ -146,6 +159,12 @@ l2_200: l2-cache {
 				cache-unified;
 				next-level-cache = <&l3_0>;
 			};
+
+			cpu2_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu3: cpu@300 {
@@ -166,6 +185,12 @@ cpu3: cpu@300 {
 			qcom,freq-domain = <&cpufreq_hw 3>;
 
 			#cooling-cells = <2>;
+
+			cpu3_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu4: cpu@400 {
@@ -193,6 +218,12 @@ l2_400: l2-cache {
 				cache-unified;
 				next-level-cache = <&l3_0>;
 			};
+
+			cpu4_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu5: cpu@500 {
@@ -220,6 +251,12 @@ l2_500: l2-cache {
 				cache-unified;
 				next-level-cache = <&l3_0>;
 			};
+
+			cpu5_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu6: cpu@600 {
@@ -247,6 +284,12 @@ l2_600: l2-cache {
 				cache-unified;
 				next-level-cache = <&l3_0>;
 			};
+
+			cpu6_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu7: cpu@700 {
@@ -274,6 +317,12 @@ l2_700: l2-cache {
 				cache-unified;
 				next-level-cache = <&l3_0>;
 			};
+
+			cpu7_idle: thermal-idle {
+				#cooling-cells = <2>;
+				duration-us = <800000>;
+				exit-latency-us = <10000>;
+			};
 		};
 
 		cpu-map {
@@ -5752,23 +5801,30 @@ cpu2-top-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu2_top_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu2-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu2_top_alert1>;
+					cooling-device = <&cpu2_idle 100 100>;
+				};
+			};
 		};
 
 		cpu2-bottom-thermal {
@@ -5776,23 +5832,30 @@ cpu2-bottom-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu2_bottom_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu2-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu2_bottom_alert1>;
+					cooling-device = <&cpu2_idle 100 100>;
+				};
+			};
 		};
 
 		cpu3-top-thermal {
@@ -5800,23 +5863,30 @@ cpu3-top-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu3_top_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu3-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu3_top_alert1>;
+					cooling-device = <&cpu3_idle 100 100>;
+				};
+			};
 		};
 
 		cpu3-bottom-thermal {
@@ -5824,23 +5894,30 @@ cpu3-bottom-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu3_bottom_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu3-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu3_bottom_alert1>;
+					cooling-device = <&cpu3_idle 100 100>;
+				};
+			};
 		};
 
 		cpu4-top-thermal {
@@ -5848,23 +5925,30 @@ cpu4-top-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu4_top_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu4-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu4_top_alert1>;
+					cooling-device = <&cpu4_idle 100 100>;
+				};
+			};
 		};
 
 		cpu4-bottom-thermal {
@@ -5872,23 +5956,30 @@ cpu4-bottom-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu4_bottom_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu4-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu4_bottom_alert1>;
+					cooling-device = <&cpu4_idle 100 100>;
+				};
+			};
 		};
 
 		cpu5-top-thermal {
@@ -5896,23 +5987,30 @@ cpu5-top-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu5_top_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu5-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu5_top_alert1>;
+					cooling-device = <&cpu5_idle 100 100>;
+				};
+			};
 		};
 
 		cpu5-bottom-thermal {
@@ -5920,23 +6018,30 @@ cpu5-bottom-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu5_bottom_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu5-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu5_bottom_alert1>;
+					cooling-device = <&cpu5_idle 100 100>;
+				};
+			};
 		};
 
 		cpu6-top-thermal {
@@ -5944,23 +6049,30 @@ cpu6-top-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu6_top_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu6-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu6_top_alert1>;
+					cooling-device = <&cpu6_idle 100 100>;
+				};
+			};
 		};
 
 		cpu6-bottom-thermal {
@@ -5968,23 +6080,30 @@ cpu6-bottom-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu6_bottom_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu6-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu6_bottom_alert1>;
+					cooling-device = <&cpu6_idle 100 100>;
+				};
+			};
 		};
 
 		aoss1-thermal {
@@ -6010,23 +6129,30 @@ cpu7-top-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu7_top_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu7-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu7_top_alert1>;
+					cooling-device = <&cpu7_idle 100 100>;
+				};
+			};
 		};
 
 		cpu7-middle-thermal {
@@ -6034,23 +6160,30 @@ cpu7-middle-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu7_middle_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu7-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu7_middle_alert1>;
+					cooling-device = <&cpu7_idle 100 100>;
+				};
+			};
 		};
 
 		cpu7-bottom-thermal {
@@ -6058,23 +6191,30 @@ cpu7-bottom-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu7_bottom_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu7-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu7_bottom_alert1>;
+					cooling-device = <&cpu7_idle 100 100>;
+				};
+			};
 		};
 
 		cpu0-thermal {
@@ -6082,23 +6222,30 @@ cpu0-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu0_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu0-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu0_alert1>;
+					cooling-device = <&cpu0_idle 100 100>;
+				};
+			};
 		};
 
 		cpu1-thermal {
@@ -6106,23 +6253,30 @@ cpu1-thermal {
 
 			trips {
 				trip-point0 {
-					temperature = <90000>;
+					temperature = <108000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
-				trip-point1 {
-					temperature = <95000>;
+				cpu1_alert1: trip-point1 {
+					temperature = <110000>;
 					hysteresis = <2000>;
 					type = "passive";
 				};
 
 				cpu1-critical {
-					temperature = <110000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu1_alert1>;
+					cooling-device = <&cpu1_idle 100 100>;
+				};
+			};
 		};
 
 		nsphvx0-thermal {

-- 
2.34.1


