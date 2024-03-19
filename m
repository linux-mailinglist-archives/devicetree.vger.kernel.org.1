Return-Path: <devicetree+bounces-51710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9D28801B0
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:15:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23660284010
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B52AC83A06;
	Tue, 19 Mar 2024 16:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="flJxft6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA6782D88
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864829; cv=none; b=RMqxoGke+ESZjFtHqT2buOIJIJy5XnaHeVF4n8dLADXM8xpwqFCDoW6XqbqAKS2A+uBbScFKme5wd/VEzHH77kSG2koBlcidSMOGJ0A2/BHsE7KEi4/dOidR3CLwcCIiIQsxt34gJ+I9QLQjThQWuTuCcalkXVasQMb2yeJlYkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864829; c=relaxed/simple;
	bh=PFYMK6VYlsNGq0yT2mzUkiCLZovHcDvfCBSf9J4E7w8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PV4l4plSRel1xEyNvt4OI6uO41HuABvI6Io0p8BJ7sbBfjuWGJTt52krsFiU09aJj0GS6SyfpKIXr7tuysL7W4kPbb2yxD9Eia31LntBNpCUiI/ooJy7kKFotG+eSFXUxxkt4UDKbrUL0ZjTs+1NudTasmsToihVJBC7XaMdvPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=flJxft6Q; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51381021af1so8368668e87.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864826; x=1711469626; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zjX2LvJZoTkKgrNigxF1JXeIkRgZu7NU8ImcW2GIeo=;
        b=flJxft6Qx/sLfL08fCzLeilXx4jeuhO52LEJ1wFqXPnA9rGStX8zrdnD6woN8U0X7A
         WM7ClmDewfd5dGA0swmYvUZPD4YGLShtLpFU28P1rqDDyxkFRXcBGkkJzgg0EmVC2K9k
         eJ/UOzyHYoXyuDeNbIa2yfR9Blxkq7I1KROC/HCZUSb4OgfoKzJOYjGc9zmTtHBK1zkW
         7u+yy4Lihn/AzLtsBTlkUi4IHbjbSGH1o3JgSILN45k63oN/3vKDfSsls1SZb08i/m2E
         +AIZgJD6DWLNW4omSjYYW3jdewFVn/3UW4anq8M/adhISC/fD63w+yaXh0miMwwUhYMt
         Ue/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864826; x=1711469626;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zjX2LvJZoTkKgrNigxF1JXeIkRgZu7NU8ImcW2GIeo=;
        b=Ni0o1NZ4PYqp/A7C3a3Pd9dPaYVs962kzp+IOBYRm6CfiWxn9rBGE0yHH6c2+U8qST
         RqDZepF8OPhb64BVmAmGb82ewnJCbSnr8IbI9QNCfPuKB0/9EXHgr/WGuXUK2yrdBBtL
         B36sfUzTbSu1WosLH7v1MXhx/t4gfZ08H7DTfnpxQxwiSsDVmpbT+Be2sALPOXxtZcU0
         KEWEMA6YmaGYrrmQXbgQqrg6cyZ6U9i4tkhrp0T/JAx0IXY4RSe+11DUqqaUqd7PYAUw
         sUxqJJIeLhj13kfac/oZVDKcibVUZ6ljsjy/1617gcPcnj4StS/arBM+5mVRsxy8yN2F
         44Uw==
X-Forwarded-Encrypted: i=1; AJvYcCU89FXLsA9ChDIQJCFEBDdU668TNlZGfLs93te2vonaLDdLCcClIMyM7RhgSgvzTiHuo0B5YN5WkSsTJyG/xS1nrKI3cg9OHtjwAA==
X-Gm-Message-State: AOJu0Yyu2urR89h3vjPx5MM4t1Q9Z8dnJFGpTHDB7mP9LBDFhSsSPILR
	wsqZCKAXxmqz+bTK3U5ysMSXoO5Q5jX7k33/7PKSC7adGfmHp32T5Sq8YfMa/Vg=
X-Google-Smtp-Source: AGHT+IEl06sVnPcghkVNp49cEc/4CH7lfCC+t3lCR6sd/PvrNoUINkJMCmtaDs7RzkSG1YYm3FInlw==
X-Received: by 2002:a05:6512:b9e:b0:513:ed17:af03 with SMTP id b30-20020a0565120b9e00b00513ed17af03mr5570583lfv.59.1710864826155;
        Tue, 19 Mar 2024 09:13:46 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:45 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:37 +0100
Subject: [PATCH 07/31] arm64: dts: qcom: msm8976-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-7-e0aee1dbcd78@linaro.org>
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
 arch/arm64/boot/dts/qcom/msm8976.dtsi | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
index d2bb1ada361a..09cb8cbceb6e 100644
--- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
@@ -1123,9 +1123,6 @@ pil-reloc@94c {
 
 	thermal-zones {
 		aoss0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 0>;
 
 			trips {
@@ -1138,9 +1135,6 @@ aoss0_alert0: trip-point0 {
 		};
 
 		modem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 1>;
 			trips {
 				modem_alert0: trip-point0 {
@@ -1152,9 +1146,6 @@ modem_alert0: trip-point0 {
 		};
 
 		qdsp-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 2>;
 			trips {
 				qdsp_alert0: trip-point0 {
@@ -1166,9 +1157,6 @@ qdsp_alert0: trip-point0 {
 		};
 
 		cam-isp-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 3>;
 			trips {
 				cam_isp_alert0: trip-point0 {
@@ -1180,8 +1168,6 @@ cam_isp_alert0: trip-point0 {
 		};
 
 		cpu4-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 4>;
 
 			trips {
@@ -1204,8 +1190,6 @@ cpu4_crit: cpu-crit {
 		};
 
 		cpu5-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 5>;
 
 			trips {
@@ -1228,8 +1212,6 @@ cpu5_crit: cpu-crit {
 		};
 
 		cpu6-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 6>;
 
 			trips {
@@ -1252,8 +1234,6 @@ cpu6_crit: cpu-crit {
 		};
 
 		cpu7-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 7>;
 
 			trips {
@@ -1276,8 +1256,6 @@ cpu7_crit: cpu-crit {
 		};
 
 		big-l2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 8>;
 
 			trips {
@@ -1300,8 +1278,6 @@ l2_crit: l2-crit {
 		};
 
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 9>;
 
 			trips {
@@ -1324,8 +1300,6 @@ cpu0_crit: cpu-crit {
 		};
 
 		gpu-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 10>;
 
 			trips {

-- 
2.40.1


