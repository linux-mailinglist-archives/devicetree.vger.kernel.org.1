Return-Path: <devicetree+bounces-51709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EC08801AC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06E221F22181
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CBEA82D9F;
	Tue, 19 Mar 2024 16:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RLb3xpLj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF23E82C69
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864828; cv=none; b=ssDvMs2BlRDxlxn1GYih6LCJCm0SZqOVV0xEbo2LQVC4BtUPbdPF1GE4LK84QysUx6YQo6fY9QeF2apUZiDXHNhMEaWHlNNkK3BkA727dxMCIS01EImgkWZis5b7Ovb87K/uI4ORD7L1WlboYIQnGm6Pqdnal/2t4QYQeTbhl7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864828; c=relaxed/simple;
	bh=SfPqDJQhOWdHozWKeZBtjuPf0esW3AKFUGrf2WUgQEw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hD16r8TV5y3OUYDEMUEoqxVqo4489tpGvFUw4sOmp1oSuJ4LxaAuQDsYpJgYWVl/nmOFIrqYb94skbmR887FQ7glO1rW+lawTBVgzhT9koWKlJGbfhaosVqkK+4gr4kyFkBZAxsC3+00QBDxpCAYX/XN7LGBwdnFbi8+9vWYrJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RLb3xpLj; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-513ccc70a6dso9874525e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864825; x=1711469625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JE5DV75rtGU2KZG98kvu1+83FeCFnCvttAQ6DWMQmbM=;
        b=RLb3xpLj10O8rivS2nehc5aJxABoMCcaxrBEt+yFQTbBTu+rOwj2IK9vkR2cCy5Q7G
         42IQOVu9CNA3Rbca7Rd2md6QSR6bYSdchJWhGiOVqBG4duqMT/3i+Q6IrzxQGOrPvX9s
         uhaO7KPNdQvtd4hSg7WBWoOC4mxJIVjMRr59tMQMVDTmqyCYt5TDHoaG2TF1gDwMpkWI
         AlSCdCqtNNUpje0hiRwaHG6tWEBCH+SW5d9flov19po6uo9gKmpeoYWqellUeGNYSqTz
         1wplJZIzzPvzwMg/lOKvND9Ztg5REyADC3zPfFD3SeXjZ6OXKm71ZBjSJ1yipVAeNuE3
         CpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864825; x=1711469625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JE5DV75rtGU2KZG98kvu1+83FeCFnCvttAQ6DWMQmbM=;
        b=q5Ct5dh6cPYVe8DpIgdxI0GBTqaxOYtTDLhZvZr4qNwk457tbzCYvpyHx7kgtnrekY
         +T5mYvNJOoctMd68qZr47420eXTdiA28HK6f/TzzenA/WWZW0YWVW0H4gz+sI0e/kwWr
         dztPhUlFOmDQM3QYUJCSr6ZSyuJrvO36/0i3vm5N27ntEPUMFXKe9ClTcgMr5lcdQyVE
         Hnt/vDBocGC32XYgbLLSalwQdP0bqmUa6wuSE342xOAQ4Qs5TvF+PMzINu4XgmNbiMTq
         OonbO/Xf6KuyvA1who6hr3qfjJHif0VLfIlUWPMFv5xw+qai7nKaFHZMFLcydw0JoUrt
         K3vA==
X-Forwarded-Encrypted: i=1; AJvYcCW5H2r0YFNPvlvVQSRbmiQwTh5tcSy1qlRXcQapzJ3q0QTvpPA3Km1/ZRlu/dX8QvTyNoetFoZMFWvx8lMBcmq4F6YrS0h9huTt+Q==
X-Gm-Message-State: AOJu0YzPseRQZe3RvBw1x0iK8HY68MZ5OaayKKozpl4CPDKpz3ELHwAw
	VguxVVSpwpg7o8bft1MRuM1Qb+I5ZsIFu50OAFInzzq8+STsoGHIyvvsiKwLPOjIoKFdxFlPPAV
	PJqg=
X-Google-Smtp-Source: AGHT+IFcyBzfaTP1g339erTfOUUblPYAamGEaifNUd5xLAOw6PtTY0a0M6q5/7zz74sfVo/yjEXkvQ==
X-Received: by 2002:a19:6907:0:b0:514:b450:99b4 with SMTP id e7-20020a196907000000b00514b45099b4mr4007765lfc.65.1710864825102;
        Tue, 19 Mar 2024 09:13:45 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:44 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:36 +0100
Subject: [PATCH 06/31] arm64: dts: qcom: msm8953-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-6-e0aee1dbcd78@linaro.org>
References: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
In-Reply-To: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 18 ------------------
 arch/arm64/boot/dts/qcom/pm8953.dtsi  |  3 ---
 2 files changed, 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index f1011bb641c6..73e52cc54236 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -1953,8 +1953,6 @@ q6routing: routing {
 
 	thermal-zones {
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 9>;
 			trips {
 				cpu0_alert: trip-point0 {
@@ -1976,8 +1974,6 @@ map0 {
 			};
 		};
 		cpu1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 10>;
 			trips {
 				cpu1_alert: trip-point0 {
@@ -1999,8 +1995,6 @@ map0 {
 			};
 		};
 		cpu2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 11>;
 			trips {
 				cpu2_alert: trip-point0 {
@@ -2022,8 +2016,6 @@ map0 {
 			};
 		};
 		cpu3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 12>;
 			trips {
 				cpu3_alert: trip-point0 {
@@ -2045,8 +2037,6 @@ map0 {
 			};
 		};
 		cpu4-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 4>;
 			trips {
 				cpu4_alert: trip-point0 {
@@ -2068,8 +2058,6 @@ map0 {
 			};
 		};
 		cpu5-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 5>;
 			trips {
 				cpu5_alert: trip-point0 {
@@ -2091,8 +2079,6 @@ map0 {
 			};
 		};
 		cpu6-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 6>;
 			trips {
 				cpu6_alert: trip-point0 {
@@ -2114,8 +2100,6 @@ map0 {
 			};
 		};
 		cpu7-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens0 7>;
 			trips {
 				cpu7_alert: trip-point0 {
@@ -2138,8 +2122,6 @@ map0 {
 		};
 
 		gpu-thermal {
-			polling-delay-passive = <250>;
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


