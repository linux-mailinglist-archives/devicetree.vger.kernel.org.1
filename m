Return-Path: <devicetree+bounces-141617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60013A21A28
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 10:44:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07378188653C
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFEA1ACEAB;
	Wed, 29 Jan 2025 09:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVH4dde0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01C118A6DF
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 09:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738143834; cv=none; b=DkVnGC1tZlr8Tt51ZvdCEzZNwE583/xEIdoR+CZSRhmZWyQF7zdUMkHLj+yAIqwy+pTLpeA/iVgsn3eA9Xj1Cul6PRmmk70yOLfHHYvjmpD5B/WrOcTi05ONXTOWmHmOoirpIgaJ7remLEYiJNe0kz/7BMfxse5kpl7rtErY4ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738143834; c=relaxed/simple;
	bh=Lpvp0u73x3ubU5UrDV0TdedIOkakoM8csxlvAZtxZxM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GGFBFCxeB7/wk/ffS9AV//HFU8KCil0qCeL7HxQEX88QdN0nJSuagVtYEwj7ySJ4Cn98DDp/TPNTEAhJ1P1uyO4mZ/WqewxxxbHuBR9YqafwI4iylaj4sKqcy/otyJA0Vovr45XIi+WLBBHlQe8taYa8H6ZhGJy/AIZnkNwageU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVH4dde0; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43622267b2eso67476985e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 01:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738143831; x=1738748631; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AGPRCN+4MJTf9yyHW8IbDG/NcTY8+Z+VttrmJ0Xh5q4=;
        b=FVH4dde0dcARwoMEGz6WFicmLxo6OH2Kcgjzyh2Fm2zQSesbl1US10pE20YDYlkRy7
         5l8dJjg8hnPP2nr5qeRVFxmN+t4HZJlkt6mcOUomHuTQS0z7XonQkGh7Z8bF7BHWJIRi
         45QqPyANHR2u+rRJfM/nySYn5qnGFmUubG4+8FbI35o64QfMXnkAf5WdD6eQrDURk91V
         1jvNX69z/RJz7CTyR60todYS5kslCL83c0swzQLCwWMSCQ8EJa5dfl47Ve/wnPA/We82
         O+3DhJx3FD4Jw0p4kCbdsXUl2XpEr8kOPgPhZSIPWk5wT+3rR34HGCE2eWeCCIOMr0XP
         4B4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738143831; x=1738748631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AGPRCN+4MJTf9yyHW8IbDG/NcTY8+Z+VttrmJ0Xh5q4=;
        b=Qqi2x6A37YbNcLXxtIpTPO3dBuFH2IeUc680uf+8YIF3JFJSmnDf4LukPImpmV/Dmv
         QkyGyiwyahBUubdwSTuQlexpwntWVHo1GXk1uRBiTT/CGQxl/YEDdE0ChULW4Sk8FFCe
         9uFcBK65J3uneR4GCg7BBNT10uqsprb0Jg8e2kqI9uff6QLTDdzsr3rremN38WYQDSiB
         VXAGIk9/5Nk/SVQpES25SPAZgMZoq4oYOrx8pMeGaxztCAkSts1qTKzb1Weg2jEm23IE
         mZCS9wBMImnQ3Cd+LjdI4tDCWO0lVR32SPzJQyv+VTlKoqf1WDVIVKyHVW4AOvNduoSL
         XG7w==
X-Forwarded-Encrypted: i=1; AJvYcCVF0kZqfLRo5FCo8ifx4/5MaCTeYI9y+fjefwVzMTtdNdzE4cetehmkgOv6CI7oFRQij8Di654nqWpy@vger.kernel.org
X-Gm-Message-State: AOJu0YxqCzziGlubDZjvbz4CMsb3x2R94Y65WSIA2zuuDIuUJlGVoWHR
	8+A3eR+/j/aKC1qDbiyeubJue0NYv1iS35DF52pb6lX1K4jbfyHrs+AFmVUg3s8zL+rTh8bvYn0
	U
X-Gm-Gg: ASbGncuMV4/2zX7mifI1g+xpz3ZEctLmPVddEr4ZreMxcRik5dPawH3W8iltO0zfBmS
	rTEy9hJ4awnS3iyqPUbJfzbqFNfU/ngACID/43OpCFwse/8Se5nfq9qBsQKksXbxwvAlkvjZon7
	ccndXHEKtK5CwTXP9l2vknADrtVa5u2ASgCtsm5Xm12i46n6+xJwjFMPryWf3lJ3S/+IuVB+5Tp
	a5C8eu9y1biZnU63AfziaF8Wr48quQEm73oaTC6lMv9baRHyi0SvX/2pfxCIQgR6ZSQ74DBUtQ2
	ZgrIVo5nKqi9vftYZtoKdnushaVxsDORXeOQ
X-Google-Smtp-Source: AGHT+IEN2ngO7GAumYzVn9bP8TgmurDk2iDLADYdb1I/cK5jNtbtgW+Ug0pwhjqbYsRSW+rnQ+ezdg==
X-Received: by 2002:a05:600c:501e:b0:434:f297:8e78 with SMTP id 5b1f17b1804b1-438dc3be859mr18922215e9.7.1738143830804;
        Wed, 29 Jan 2025 01:43:50 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc81589sm16035205e9.33.2025.01.29.01.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 01:43:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 29 Jan 2025 10:43:45 +0100
Subject: [PATCH v3 1/2] arm64: dts: qcom: sm8650: drop cpu thermal passive
 trip points
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-topic-sm8650-thermal-cpu-idle-v3-1-62ab1a64098d@linaro.org>
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
In-Reply-To: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7736;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Lpvp0u73x3ubU5UrDV0TdedIOkakoM8csxlvAZtxZxM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnmfhUXmo+1Z8gF1SlReK4el1VDGkX7YqZtHOLDKtP
 bbmo8BuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ5n4VAAKCRB33NvayMhJ0YyKEA
 DFubwGD0JHzpfq2NVzV0VyO7mN2P0bPFaDlLJ8Y0HYZP7aLCx+6C8ZEYIOU+ehP1E6CtvHyO9DKCyF
 mOIF0e5Jf+OqK8G8ZKaADtneta666yYWPHj/jWgnjwW8bh4R4LzIvUDlxksKkUhHP5jc98F/RML/rj
 kLAWpB1kdJg2/Ti8p65mF9GgqrQErtVKLRiuqBvZdxuXJ/LnYYT+dstWkeMReOvMii0oLpA1YO9Vfz
 1vNIvMWdvmODg+fJxGbG+iWkNGSZQI5R+mVyYRpU/VnOrS4syTVHkk6/euOS709QFmd6URNTHtofuM
 wR1cOfkf0Cv5HUmOXyqwDNwmbW80q7cSFCTSOsT101/QthwtM830lkCtszdanEyjtRnedPei4eXski
 Fz0wY4xC44Jc0rHG8T5rc9Rix2UVoRWcNSgNJX3aytYoWZvrCh2wv5pa6/7LXs8Y08OXhvjeoxvX8N
 8HuWyW/8iF+KdOMomvAAOx30Gi9xYkkGa5zTbVFR1kuqEeSdKxKoBJnTC2Cd5hzOPJ9KNvRv3hfUHG
 qAe+ZjhL3YtLROfMFeNzUl8Mh5xfeBGWGbnG0uGqGRnbYQGJTmIbpvXGV0zj4d6aeeiC8Bf+HPiLLe
 MGuWOmqPqUhafZ8NDaM8CkytEtPRep9DX7bltsyqPWndS7QNpML7OOdf7RfQ==
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

Drop the current passive trip points and only leave the critical trip
point that will trigger a software system reboot before an hardware
thermal shutdown in the allmost impossible case the hardware DCVS cannot
handle the temperature surge.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 180 -----------------------------------
 1 file changed, 180 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 25e47505adcb790d09f1d2726386438487255824..95509ce2713d4fcc3dbe0c5cd5827312d5681af4 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5751,18 +5751,6 @@ cpu2-top-thermal {
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
 				cpu2-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5775,18 +5763,6 @@ cpu2-bottom-thermal {
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
 				cpu2-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5799,18 +5775,6 @@ cpu3-top-thermal {
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
 				cpu3-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5823,18 +5787,6 @@ cpu3-bottom-thermal {
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
 				cpu3-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5847,18 +5799,6 @@ cpu4-top-thermal {
 			thermal-sensors = <&tsens0 9>;
 
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
 				cpu4-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5871,18 +5811,6 @@ cpu4-bottom-thermal {
 			thermal-sensors = <&tsens0 10>;
 
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
 				cpu4-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5895,18 +5823,6 @@ cpu5-top-thermal {
 			thermal-sensors = <&tsens0 11>;
 
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
 				cpu5-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5919,18 +5835,6 @@ cpu5-bottom-thermal {
 			thermal-sensors = <&tsens0 12>;
 
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
 				cpu5-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5943,18 +5847,6 @@ cpu6-top-thermal {
 			thermal-sensors = <&tsens0 13>;
 
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
 				cpu6-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -5967,18 +5859,6 @@ cpu6-bottom-thermal {
 			thermal-sensors = <&tsens0 14>;
 
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
 				cpu6-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -6009,18 +5889,6 @@ cpu7-top-thermal {
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
 				cpu7-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -6033,18 +5901,6 @@ cpu7-middle-thermal {
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
 				cpu7-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -6057,18 +5913,6 @@ cpu7-bottom-thermal {
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
 				cpu7-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -6081,18 +5925,6 @@ cpu0-thermal {
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
 				cpu0-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;
@@ -6105,18 +5937,6 @@ cpu1-thermal {
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
 				cpu1-critical {
 					temperature = <110000>;
 					hysteresis = <1000>;

-- 
2.34.1


