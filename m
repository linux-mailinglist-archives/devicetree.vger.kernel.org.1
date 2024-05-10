Return-Path: <devicetree+bounces-66248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC5A8C2429
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:01:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71D0E28ABA3
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57BA6171653;
	Fri, 10 May 2024 11:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vwXJMVsW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B28B1708B7
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342385; cv=none; b=X71FLXHd3uCVtN2eiSyQZ5mJMLdSxFWVGzC4vRENR2Adr7UPV3JaI0en86hj0iCWX0+UoTopYJn99Gt4eAnkjYTbpB4fwON4eTyvTZIhyX+hK8UlIPWp66IhTgSVYbT22WahFILbVw98NPicGR47RL0JXYc7zcxcHGlBU35XvTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342385; c=relaxed/simple;
	bh=KZTGROaWinyp8KKqjpNmxxuc5q/IqTWQs6Jwq7SF/Z4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p9NrfZGqPihQc7xJR69wJDDuAHt3vg+sXEUgfpgZdmzNjCAu7fd+I22y/tfy8snlUaen0MiE84qz/LA7mxnqiLOTUqayNY/FDECsvd5VFUQXZvKQa2ZemCpZAC3aUXyyUKne6meWlvuay68vBge1i3xpc6mdOiT56TQv1ySBjbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vwXJMVsW; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a59cf8140d0so477295466b.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342382; x=1715947182; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QX/jm4cX7d1+tOu2d8ujXyYCSTAjlQweFsWO3x+wiG4=;
        b=vwXJMVsWNYZQOJ/8NcjmbnBTBApzNqFhGkloapXpzsamkezH9voNY+vNnoG3If3eRo
         S8tNmk4VF8v6nBBDnrDqjlhLjIYYlNW/4WUZInKhN8KQ6nGJn2Vub27UBtHViUMl47gL
         LzHz7cy98nWPux3CkKZKHejnwSMQDwg4up6Nd5vaGDCGPuEfdcp2vDoj3G+9gF08UDXY
         LVzg+ipqnrkrHczC9rQn91yuWAJ+n/ksV6fjF6fWgrWMCWeB/nqJubXX2vI1Nov/20AE
         LX8+0tkjcwncNnRdZe6gaALXhXd4LSVZCsTp+0lAXcHqoVGn8I4QC3zMsvirVfytrm+U
         A/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342382; x=1715947182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QX/jm4cX7d1+tOu2d8ujXyYCSTAjlQweFsWO3x+wiG4=;
        b=u9pi1bVONQA6UITSV4ivGKDtrpO+2uY9EAb8a9TfCNs9czcL5rCzrCKqhbRoMdeRvt
         uleUTXFdHIQskD/WwGXvbgLPwXZG2WteHIFeYfU7mVXwt/27SPel2QQn0LWHSodB+FhT
         zhVOUbYB0aWTv7+MIC/nD0lW0LHjyIim36Cqoj5BvifMKtV+X9ptxDnBIFntWqyoGleP
         qRuj+PF6+di6nkvIap2/Xe0XcGZZeSBNPDLWNjuObofWlJWYADsJeKtfbI/2tKjWTt2/
         +bmkTwgaT9Krt2sPk6qDYySyOl6sbeORJeH6Hl2XfW5SMl0LE/hlHBW9JthRhBznqkLs
         iNBQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0agD3RsdukBAzZar8Eq07/XoLlksO8tupRBDlcX5i0zqh0NHsGwG8nD1wrosCK52e5SThXe9sxELX8e4rqeFFgH+SyXBI4Nbnyw==
X-Gm-Message-State: AOJu0YzuBIcvsRePF9WIfc4LGdBYBq2qWnpBK/ENI7Mx6pBQ+X6RN4SL
	YXPUfnW76H9RXnxR8zTe9AwsMyzG+745NKdFnRQgCbWVd0kiAnpuM3EPGWuSk94=
X-Google-Smtp-Source: AGHT+IF/moD8NiQToB/ZLMDoTTKrpXQPP8D5Li1oB2VxANDbquQpZD1qIMfcgu08lWoyjUec7EOMeQ==
X-Received: by 2002:a17:907:7fa4:b0:a59:9fc8:38c2 with SMTP id a640c23a62f3a-a5a2d58550dmr206920066b.31.1715342382100;
        Fri, 10 May 2024 04:59:42 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:41 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:29 +0200
Subject: [PATCH v2 06/31] arm64: dts: qcom: msm8953-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-6-436ca4218da2@linaro.org>
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
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 17 ++++++++---------
 arch/arm64/boot/dts/qcom/pm8953.dtsi  |  3 ---
 2 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index 5d818fe057dd..92c86504d6f3 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -1968,8 +1968,9 @@ q6routing: routing {
 	thermal-zones {
 		cpu0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+
 			thermal-sensors = <&tsens0 9>;
+
 			trips {
 				cpu0_alert: trip-point0 {
 					temperature = <80000>;
@@ -1991,8 +1992,9 @@ map0 {
 		};
 		cpu1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+
 			thermal-sensors = <&tsens0 10>;
+
 			trips {
 				cpu1_alert: trip-point0 {
 					temperature = <80000>;
@@ -2014,8 +2016,9 @@ map0 {
 		};
 		cpu2-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+
 			thermal-sensors = <&tsens0 11>;
+
 			trips {
 				cpu2_alert: trip-point0 {
 					temperature = <80000>;
@@ -2037,8 +2040,9 @@ map0 {
 		};
 		cpu3-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
+
 			thermal-sensors = <&tsens0 12>;
+
 			trips {
 				cpu3_alert: trip-point0 {
 					temperature = <80000>;
@@ -2060,7 +2064,6 @@ map0 {
 		};
 		cpu4-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 4>;
 			trips {
 				cpu4_alert: trip-point0 {
@@ -2083,7 +2086,6 @@ map0 {
 		};
 		cpu5-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 5>;
 			trips {
 				cpu5_alert: trip-point0 {
@@ -2106,7 +2108,6 @@ map0 {
 		};
 		cpu6-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 6>;
 			trips {
 				cpu6_alert: trip-point0 {
@@ -2129,7 +2130,6 @@ map0 {
 		};
 		cpu7-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 7>;
 			trips {
 				cpu7_alert: trip-point0 {
@@ -2153,7 +2153,6 @@ map0 {
 
 		gpu-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 15>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/pm8953.dtsi b/arch/arm64/boot/dts/qcom/pm8953.dtsi
index 1067e141be6c..64258505f9ba 100644
--- a/arch/arm64/boot/dts/qcom/pm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8953.dtsi
@@ -9,9 +9,6 @@
 / {
 	thermal-zones {
 		pm8953-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&pm8953_temp>;
 
 			trips {

-- 
2.40.1


