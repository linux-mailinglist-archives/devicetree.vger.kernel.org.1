Return-Path: <devicetree+bounces-66302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA5E8C254C
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 15:01:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E412D2841D4
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 13:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9803812B176;
	Fri, 10 May 2024 12:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j3jLTrDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD4117167D
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345934; cv=none; b=utiXMVT8JcA+vtlpqfel/ZgWADMve0exXg15GbqAKevJyjc+H6SG4i2Qq+FsaYQlsP5m8aDQXOqIZlxWK2rO5OE8rUB1Jjr4zrOxPfMq/tdT9y1W2u8IUR0Zj2siM0bNLAAsXS9COCOMHlOt7pH8Cbph3qnSzKhxzNJ49vCc+oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345934; c=relaxed/simple;
	bh=mpXEdYIGFNmeTr/UviAkCq3TuhB6htqAviYK4ZRdST4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0pTVi0Dblkj1bM5jkkHi+oK7KIYN2RfBECo6hxjLuUvA4B8GIe/OJgG5jKjeqHlariI9Py67ox9ZyAe7aBpo/VTu2bFd+D7Fi/+nUDPGovizTaiUlglv/PeWuh2tuYeiw92OeC4kJrMC5aZY0jiQIip2v0zQFifez8lA9eUDmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j3jLTrDQ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a59cdf7cd78so512110966b.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345931; x=1715950731; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O4LbWL7pMtjLjzOImlyCMR2kJQmPr8y/+o1GWcjQzcY=;
        b=j3jLTrDQe6VOuAuCGCEoheWGCXxCGtTVffDaxhsFqer6Lm6bMLf0EoSqLxUo01frxc
         VqD3OUb7zQxVYPbIUKGPWrkpZ3veaMjAuihExhQIdH0A/VcjwsnBTu2JzTtz2RRfJKFw
         MFecPqzuWabJw9ICaXKwzfI9AdJzQBnV4OPtpjRTSTyfJQbj7tlcAw4jWtlgrUDwAdJr
         xyeZiOXeLvvjXkxCHR/DLftgqZkF0EM50gzT2rPpSscCSiFmDgO46SeQ/ymJSfySePEr
         zSKu4eZBXQE/xQlECCzscBlvsVPrLsHD7R706WzhGjHaC25j49fn3EUsJtzDc1er17Zh
         1vhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345931; x=1715950731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O4LbWL7pMtjLjzOImlyCMR2kJQmPr8y/+o1GWcjQzcY=;
        b=neAuddc5MdN0ALM4zA7BkzqlPzAVx7usFnDJQ1QJYf6OiE3zz2qowyIDP9TOJIMFgb
         H9LKW3sNydm4wHmkG7RDg/9p7vBiR6camO/VPEruPTXJKFBjXw6dyrvirkL2HRHQI0Z+
         DI2KGmBDh3X/PF9OovMo0mKuu/ix+KGFP/buWqpH8Mz7G9rvuo3ccl5GHAtHxoNlkSH4
         4BQIqAeBYXe27LlTlfD7mcRAk9G935zNzwOpogkmjLnsc0NCy7IvOHrfZ+E8y+4/7XPf
         uHXu/9qrkWd9ElvfHmaKuKf2QIeCcMvBlFzOt0ciDKN+O845r6oegxxME4StLnRBfEtt
         daDw==
X-Forwarded-Encrypted: i=1; AJvYcCX3ZCGqtHXGTStNuKGMhPm7T1pIxm81AiHRUW8R1UCpYQenE3qPrqMVaWJGecfaanUb0DIhokMwjzwchxrVa3K2E2iahzAXMyGO0g==
X-Gm-Message-State: AOJu0YxTCe91l2TohDGrPxyge0hDu040P+jIJigTNrMF28AKJtXirQ0k
	dq9YIknI6m6XwnZmjQO/f/k/YGILelYDgAAhfCgC/IbyillP5mx7RR934cv0x4Q=
X-Google-Smtp-Source: AGHT+IGI57Bi1n2fSWaj3BnGu8+gLQ7UsRwbt8jtGmiWAX79UoN00c+v4fztEghOnN7ro8+Vzsqeag==
X-Received: by 2002:a17:907:77c3:b0:a59:9db6:535d with SMTP id a640c23a62f3a-a5a2d67862amr168929466b.65.1715345931104;
        Fri, 10 May 2024 05:58:51 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:50 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:40 +0200
Subject: [PATCH 11/12] arm64: dts: qcom: sm8550: Throttle the GPU when
 overheating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-11-ababc269a438@linaro.org>
References: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
In-Reply-To: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

Add an 85C passive trip point to ensure the thermal framework takes
sufficient action to prevent reaching junction temperature and a
110C critical point to help avoid hw damage.

Remove the copypasta-from-downstream userspace governor entries while
at it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 208 ++++++++++++++---------------------
 1 file changed, 80 insertions(+), 128 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 51c547872438..23f769a5b1d4 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -5367,34 +5367,28 @@ gpuss-0-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu0_junction_config>;
+					trip = <&gpu0_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu0_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu0_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5406,34 +5400,28 @@ gpuss-1-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu1_junction_config>;
+					trip = <&gpu1_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu1_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu1_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5445,34 +5433,28 @@ gpuss-2-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu2_junction_config>;
+					trip = <&gpu2_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu2_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu2_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5484,34 +5466,28 @@ gpuss-3-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu3_junction_config>;
+					trip = <&gpu3_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu3_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu3_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5523,34 +5499,28 @@ gpuss-4-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu4_junction_config>;
+					trip = <&gpu4_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu4_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu4_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5562,34 +5532,28 @@ gpuss-5-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu5_junction_config>;
+					trip = <&gpu5_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu5_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu5_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5601,34 +5565,28 @@ gpuss-6-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu6_junction_config>;
+					trip = <&gpu6_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu6_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu6_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -5640,34 +5598,28 @@ gpuss-7-thermal {
 
 			cooling-maps {
 				map0 {
-					trip = <&gpu7_junction_config>;
+					trip = <&gpu7_alert0>;
 					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu7_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-config {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu7_junction_config: junction-config {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};

-- 
2.40.1


