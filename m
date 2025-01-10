Return-Path: <devicetree+bounces-137400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D38EA08E1F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:36:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27B90188A690
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA8D20B809;
	Fri, 10 Jan 2025 10:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DV3raLu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A80620B1E9
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 10:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736505384; cv=none; b=ohy6lmgtUQl+x5WnCIF5rUwC3Y1J96F+sW3REN/pfkN+wRxc3pdE9j4yFLqjfnGJNmR3Jh+KFU3Pl1/+DuT42KnEvm+nLkw4rkqR9aMg1Q9NRvHuJgiTmANoDGxntg3oytGFCWqaDSbKI0JvzET124GzsDNSYdj7Y4stREHuLbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736505384; c=relaxed/simple;
	bh=T9MsTjxHcEiz00Qb5igO9gOJCINbs8Lv9eBk8NoMcgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RVuYfMBQAWzMADJMfNkMl55qm5PKg4q14h434smGLKkz7A9C37/opUa3mpH4xXbgoMBpQSHVHqxif55Mpt6DdeR2fJA23D45VlVpLpxTl/KADCkO//AJz9y+Z6PO5pyGJjicy04Lh/i1mNqzAoga4aOauggwyLOVpcCsXPEI6BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DV3raLu0; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso13882585e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 02:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736505380; x=1737110180; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyhtJcG1jpCAsStu0zK95vyEU5b3t2eWb1a/+RcnnEs=;
        b=DV3raLu0kQzu/pGrodxDZPTqzO7Z8bb1/Pz2rp4UQdtnmAuMpG/SRVAm8A6+hw4GKp
         zx3Ze6uBk+jGXWmTlBKoRWpZErv7Tb5+o0XElT0hBGXaKW/Orfd6OPFo3miW7yL/vnJ/
         KlyPuA7ia3sDJdnDVmek/GETnDckuvy1gRsgK5rh6C6LsfzxIOLvqYTNPozzbg2YQL00
         DqEOmmhMPvj+ENSc+bQaaMpnUi1GT7jz3/8V4n0KLFugm+DIMsE9BGNFKg661POKkKn7
         /EQNlTiuAWb8Np6f06i3FnZ7vs7MLoS2p+peD1yHwGKmCCayrvg12RJaThsyxavM7lLy
         GHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736505380; x=1737110180;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EyhtJcG1jpCAsStu0zK95vyEU5b3t2eWb1a/+RcnnEs=;
        b=JnV7v2btlG+2Br8j55sUl1W2sWIUSHSHwj0TnGCCYqOmz2HFFJ+DY6CoZNWEDAm/Ai
         wEXZP1/Dc+dDCZTZVhOiaeczqDdovsY63OZwMsOvgGE9Fy8RWhZ26YSQSZ4GHYSNZDMU
         pk03AhXhXaIn4hYf4xP/UfmJLeh9OhqaZOH8/MUUu5qLgQENuRVD+IY/sYfoy+knffHk
         4btB4JHQCY8jwid5ZoWY2J4rDr5w+78SxuUZ4JTigbPn+G0+rKIvqzdBfrickPEVmmJW
         v6bss3RCLMaLuA82Zfl7+MCy99OkewvjbFvdvCABX2/OSo1xuEW6a3Dn9tmd10PX9l2m
         2RjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrJreBh5NPwlPVQAjC+f4337pybxUwSfJmXVp2aFEWzPOuCQaIrnLa2t6iD9wEhgD78qQ1eXac86hD@vger.kernel.org
X-Gm-Message-State: AOJu0YxKGL+0LKs4sZeG0ld2LXd6ah45NoEhjmfRSqgnCq3zVKl3kAG/
	U+e3e714Bv+Yd8R+LNEdDSJvj21edAgD4kvOYZH68TC6/hrraYuDn9oBqtmc5M8=
X-Gm-Gg: ASbGncsJ77UBm1H2nXK/yU9/beAB+3n9RmASHUW982OKP/Ag8mjwqgtSIF5OsxyX6yB
	gGcWbV1UPnM5WBsX0d9ocVPXF2+t/zuHxMCUBFbsHA3JG7uC4IQ2LOaBYT/NsQfEWlQXF7EmMR2
	17GSbQjUawdJglBWfSeRxDgCRB+6eyOvDnzRdFHxziaxt6DoyVgC4m5sQdV1uOgmBWFil6EB188
	hrZO8r8sdBeYYmF2qPvPzTOLqtSBQ6k75lBatucHhDMF8TOb9huDazsvz93QFCwPJqFwber0AOW
	NQ==
X-Google-Smtp-Source: AGHT+IFje9hX//YIVRQoIELbfAvqPFGe17fUSG/XWIgjHdhJihMA1bYqA+HnHhSQAiOs5JLu9a8d3w==
X-Received: by 2002:a05:600c:4510:b0:431:54d9:da57 with SMTP id 5b1f17b1804b1-436e26ffb2cmr104347725e9.30.1736505380458;
        Fri, 10 Jan 2025 02:36:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9df958dsm47906125e9.17.2025.01.10.02.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 02:36:19 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 10 Jan 2025 11:36:15 +0100
Subject: [PATCH v2 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250110-topic-sm8650-thermal-cpu-idle-v2-2-5787ad79abbb@linaro.org>
References: <20250110-topic-sm8650-thermal-cpu-idle-v2-0-5787ad79abbb@linaro.org>
In-Reply-To: <20250110-topic-sm8650-thermal-cpu-idle-v2-0-5787ad79abbb@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5322;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=T9MsTjxHcEiz00Qb5igO9gOJCINbs8Lv9eBk8NoMcgA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBngPgg+rM7nI1gFHx5U6c0kqPyxRsgsh9PgJ6qtYU1
 l4BoqG6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4D4IAAKCRB33NvayMhJ0SFTD/
 977KTd+2f5ctbi5kv1VtD+lbTedwc3EFIgoZ9CZ5YsEOMYm+JMjNLYi7NlB3iLmaXV1Prj5brh0cag
 DGbBEIxic+rCAm28aXqz+O2KsC1QHC0Ds1N+zpAwdZvBP2Qk2dZjKigV+QOniRwoTTypjN+VccUY2Z
 Ers4IDiN9Z5yKqr4N5Q96fNwbsS/dZi9EeW10J0ObKuhw+hQzaYEpTSN0iggJaJ4jmVwqrvx7RTUId
 hSiM1mONxUa3Ehkm/1jdYmAyJ4O8JrDSsrIATtztaPZIhBVcTDmhexu7vh+3TtVHN10RP5DNMmLxJg
 IdqgXIiFVSkNCBwHvNt5o1w2H2AX1vC+FXG42RIkS3tDvBKI2l1b40EUu/sZZGcYO77w3v9FjidUan
 4IoTZBXNQr+NDa539B+tUIHy/GX3CIdySYbyn8czKBqApm8OywPfDzD+GJdso/r5HL11Lakn7huXL/
 ooQvuDzw2O3SQd8lRZ572FK21C8qJbO30Xz2YzLOBrKXCJV1C5tL1erNHRI/Sv42f37v1iv9wmNEve
 J8rduGCb5Cuaew/SUHve1D8KtLnsu/t/GKsuEtM/7V0EqUveB3+yIMERSMfINojFNK6O8AOd3Xalu3
 sieNeJ7auJwrfv1/tUjdnfHv48l7a3wmy0ax8VilC766wwQKvMZi7P669TDw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
is done in an hardware controlled loop by the GPU Management Unit (GMU).

Since the GMU does a better job at maintaining the GPUs temperature in an
acceptable range by taking in account more parameters like the die
characteristics or other internal sensors, it makes no sense to try
and reproduce a similar set of constraints with the Linux devfreq thermal
core.

Instead, set higher temperatures in the GPU trip points corresponding to
the temperatures provided by Qualcomm in the dowstream source, which will
trigger the devfreq thermal core if the GMU cannot handle the temperature
surge, and try our best to avoid reaching the critical temperature trip
point which should trigger an inevitable thermal shutdown.

Fixes: 497624ed5506 ("arm64: dts: qcom: sm8650: Throttle the GPU when overheating")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 48 ++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 95509ce2713d4fcc3dbe0c5cd5827312d5681af4..e9fcf05cb084b7979ecf0f4712fed332e9f4b07a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -6173,19 +6173,19 @@ map0 {
 
 			trips {
 				gpu0_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6206,19 +6206,19 @@ map0 {
 
 			trips {
 				gpu1_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6239,19 +6239,19 @@ map0 {
 
 			trips {
 				gpu2_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6272,19 +6272,19 @@ map0 {
 
 			trips {
 				gpu3_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6305,19 +6305,19 @@ map0 {
 
 			trips {
 				gpu4_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6338,19 +6338,19 @@ map0 {
 
 			trips {
 				gpu5_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6371,19 +6371,19 @@ map0 {
 
 			trips {
 				gpu6_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6404,19 +6404,19 @@ map0 {
 
 			trips {
 				gpu7_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};

-- 
2.34.1


