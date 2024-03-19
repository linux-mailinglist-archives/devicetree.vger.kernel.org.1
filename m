Return-Path: <devicetree+bounces-51711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D47608801B2
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:15:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62F8E1F21D48
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B53EF83A1D;
	Tue, 19 Mar 2024 16:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cdmnIy1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8576839E1
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864830; cv=none; b=BBynOEL8qbQ1vYTyQZZZmR66WyGWvBi/G1t/G1PzTj6DVh6wdrB9gMYPTPp9gmH7Kn3jApixBXnOBJAai2VlHFLajoFk4JULYMDI2Nj1jQAuKvaamo8NeS586BEvIsXE1OFgtpMts5W9fxxulLJ1U5eMASoHIFraBT8TZSMS2WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864830; c=relaxed/simple;
	bh=ntEzv7JUf504zBFx8ko8UQ8SN8E+dPkcW+Y+1IK8KYw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WkbanU+wnsFEBU8ZHAYGetjwO/25ftDvbAjUSDqvfG5jVYLUQo0uB01FK3YTT5ZV7FJT65fw/8vdfM97QuFrCe2PWF6uLUtLI4TmlN/lPgRS/2THsu66QZZTALjEpQOsWXxsMgUD/yCRhRQKfQNaNrO3UQ3j4OvEGGqMp5Moww8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cdmnIy1b; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-513d3746950so7102109e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864827; x=1711469627; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=df+WHj6OG+fCGtrjahW0jOLoRL02ELOpM+SchJRRtic=;
        b=cdmnIy1bC2j8JiwOUUNx4c51ruP03/tiwqXhhAjLFlWOLk4VJ0eNnQ85zQQoXb82FF
         8orFXI1OcHiyOgJUb1LLqDjMyMZPbnI+wvlRL+bmaYHUGhm+oGYR468XlaLqLhaz9q84
         srMxybgnGjYCQI0M0gyg1btkMYKzXTWS2BxZCjCWGfWPvZBueLFlgCgbNhZC74ba3WTW
         yDloEgz1pqIzs5hF0eR2O+VhgNdePx6njaNN91RsdmSyz9P4neUXHsx00yP6cKbhfD1Q
         sZDuP7P8FWWqnjFQGLHX493F2gJW1QPFjT5Y5fV4Zs2YQO++0AfgwjbPPV34Tw0oFSAU
         4LqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864827; x=1711469627;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=df+WHj6OG+fCGtrjahW0jOLoRL02ELOpM+SchJRRtic=;
        b=GFWH5r3JDGzvtUA9l44JgxZeXEvQ+e44aH64qhW9ddvfsjiWCDgfnUxU3GATZSsNkT
         QQ6Y6ISaAvbnrTKla2JjQy7/JmgCQ/IwQurelIrjDL2NnEVxgL/jVSQFKjQGtTISirsZ
         XHAtQVxBzH8Uc6JYhjNPC4FaY9mheIr1BLYcfXW2Lc5JnAZK4MKyg0PfgbagsEpoFsTn
         9X+ypaPNuwu05SoPqId6GBQk6XyJ+KWNwjFy8TssFEQjn4FiGrqkQFhwF4gh2rUWhF1Q
         CHjBSAQhYXfTnbB8HdZUXifEvRhbYiZHGPdRCnalWYSnUt/QaxQjcoCrdB6DWYH4L6Sg
         5zxg==
X-Forwarded-Encrypted: i=1; AJvYcCXl4DP7semieyOTwvaTswRaY+CuXryso052nX8AbWY0oNugbG9yQhEa2E/hJMvwlqWZqR1XTEJEG1bAqBRPQGDkOQ2MF/MrRYeQtw==
X-Gm-Message-State: AOJu0YxRrPMki7MXBKnPX2UsImgAh2jp/JSOeRVWwprnG/lmIJX5g5AM
	yQG+Zbe0h/IgB/IJFQQSOKuAe1os7F/rADFX6QD6jtoe5h5uFGlvSc4rfKXDsgI=
X-Google-Smtp-Source: AGHT+IGLBFDYYMt6SCH5SAKCAYsBLDhyRVoB2Lyl6Z3fTL8nyAbUIXbE0ZWBLpKryfgUmub+0AbOvQ==
X-Received: by 2002:a19:8c1e:0:b0:513:9b96:a948 with SMTP id o30-20020a198c1e000000b005139b96a948mr9587328lfd.6.1710864827163;
        Tue, 19 Mar 2024 09:13:47 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:46 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:38 +0100
Subject: [PATCH 08/31] arm64: dts: qcom: msm8996-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-8-e0aee1dbcd78@linaro.org>
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
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 42 -----------------------------------
 arch/arm64/boot/dts/qcom/pm8994.dtsi  |  3 ---
 2 files changed, 45 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 1601e46549e7..f9bdf09a91d1 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3623,9 +3623,6 @@ sound: sound {
 
 	thermal-zones {
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 3>;
 
 			trips {
@@ -3644,9 +3641,6 @@ cpu0_crit: cpu-crit {
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
@@ -3665,9 +3659,6 @@ cpu1_crit: cpu-crit {
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 8>;
 
 			trips {
@@ -3686,9 +3677,6 @@ cpu2_crit: cpu-crit {
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
@@ -3707,9 +3695,6 @@ cpu3_crit: cpu-crit {
 		};
 
 		gpu-top-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens1 6>;
 
 			trips {
@@ -3729,9 +3714,6 @@ map0 {
 		};
 
 		gpu-bottom-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens1 7>;
 
 			trips {
@@ -3751,9 +3733,6 @@ map0 {
 		};
 
 		m4m-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 1>;
 
 			trips {
@@ -3766,9 +3745,6 @@ m4m_alert0: trip-point0 {
 		};
 
 		l3-or-venus-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 2>;
 
 			trips {
@@ -3781,9 +3757,6 @@ l3_or_venus_alert0: trip-point0 {
 		};
 
 		cluster0-l2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 7>;
 
 			trips {
@@ -3796,9 +3769,6 @@ cluster0_l2_alert0: trip-point0 {
 		};
 
 		cluster1-l2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
@@ -3811,9 +3781,6 @@ cluster1_l2_alert0: trip-point0 {
 		};
 
 		camera-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens1 1>;
 
 			trips {
@@ -3826,9 +3793,6 @@ camera_alert0: trip-point0 {
 		};
 
 		q6-dsp-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens1 2>;
 
 			trips {
@@ -3841,9 +3805,6 @@ q6_dsp_alert0: trip-point0 {
 		};
 
 		mem-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens1 3>;
 
 			trips {
@@ -3856,9 +3817,6 @@ mem_alert0: trip-point0 {
 		};
 
 		modemtx-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens1 4>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/pm8994.dtsi b/arch/arm64/boot/dts/qcom/pm8994.dtsi
index d44a95caf04a..68629dc1bf69 100644
--- a/arch/arm64/boot/dts/qcom/pm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8994.dtsi
@@ -7,9 +7,6 @@
 / {
 	thermal-zones {
 		pm8994-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&pm8994_temp>;
 
 			trips {

-- 
2.40.1


