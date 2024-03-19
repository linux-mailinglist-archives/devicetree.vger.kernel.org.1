Return-Path: <devicetree+bounces-51723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3E8801DC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:18:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CE2AB20E9D
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB5B86131;
	Tue, 19 Mar 2024 16:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OspmlzIS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E5D85934
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864844; cv=none; b=feMwL6/xL0KHTOORQSmCwbDkLLI8W3QPrTyf+Gk51EHeOpywHcFhZ6R1cO3MBGxAbRCxz6qHBdylrXgH1t1kiiP2/sLJW48YrbqHZpRyE8bwoEiwmc2w248M1QXbjY32ctHAeI86+4d1A28IaGtHNJ/d4w/MWQwF6dzkSzWWTl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864844; c=relaxed/simple;
	bh=+cYea2v2/BKOer4KwV/CVWAJy8hOJfQVFafipAC2J+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cMAhLhgIyAeJhwxsWjZxizcsM5yu9HzRTYBXWgyf7KEzMUmPcNLvlNQ01S2iSv8VPokYjmMk2a2sw7ySDc8co8FvEdmGu0bTDngj8HFii79/S39XkZ9h5sO2sFllN0PsccSW8wHyVkiEiqoaj7npMOZqROXvlOrkXx56pe6EirU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OspmlzIS; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-513ccc70a6dso9875023e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864840; x=1711469640; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pUJrKx7MvU52NeuXQ9HrJ3rBR5Q/85XuQI/RS6YMzDI=;
        b=OspmlzISMuWHs4p42TRJ3E/HM6ee+aHOLsfCTHcrsmFoIZ9z1NDRZfhiQHZvONh96g
         nqXcujlfTzZZGyThqak4MJH6Ht4DBVE1Y6A1PVpICPdGyEYqXqy1MD1ZQXUhLW9OIPL0
         Pwp9nSb46AS3s8ka0upRjTAvGe66TZygC+tHXCo6ymZ5o9/ZJdamQvDArxdriFkRVil8
         HJh9c0yUuEIxtJoZYOFWpnvltj+vJmaqgia03G9St4c8IlPI66ToCPfyZDTM2XbwrpkZ
         0bWg9YY3d3fTzHFRZda90m8j+MkRK4Nj9tA5/NncEmdoywJz4LMAsfCsn1/naT5dLwx4
         LAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864840; x=1711469640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUJrKx7MvU52NeuXQ9HrJ3rBR5Q/85XuQI/RS6YMzDI=;
        b=w/LO49sSn/8mxHYr8PTy5ET/QIyL3pKvCaYfQldkkhh9ZoRkCzwh6gH+592sb6YoUK
         xrAXjCYq2WAoY31NAiVMSLXowbH3nOkYyLIaCTrH034XWHwThahoJTeBKDYF4kOUSSSF
         VNQ6KGG59tJkY184RSwgDkIHYcIH2cOKpZ8ij4i+fMjJzfwcY4o2Dl4zt0f7Dv2f4naB
         TH+dOY9Xnj/ski8cQcMECW2hiieE6Pl2sU2LTjH0HlYJPxo7fF2LW4BXK6xqVJh7EY0A
         OtFj5376vzePj0+tPnEsu2DsgLQWfNjaDupmO7NPBxTvwZecM3fp1o2NP+RHC84OTbLW
         Gjjw==
X-Forwarded-Encrypted: i=1; AJvYcCVPBSYIVcYm8Ti9/BrNNkU+ZwHwKyipyJJNH8HBeCGEpcD9CmnuNvKIvhAT0/XKZb+mu37ZSq0fLZmPA7GMYg14n7quGCpUTzU93A==
X-Gm-Message-State: AOJu0YyTyFetHpY0O+MhrSm2D85oo1sX0uvJ64zspukFQhIOuAWODJhX
	fXe/kvBc2axZ8Zufd2StkwXGqY5Qz8UBNozznIkc79pdxVZzCmxqEOmnAHUgMPY=
X-Google-Smtp-Source: AGHT+IFGB1DWsnd12ElEbbIWQkgaeOW+F0Ihm5OZyQWwWoNxHzRzknGdE4iOkTj+o5szx6CpaZJqIA==
X-Received: by 2002:a19:e004:0:b0:513:ca40:fafc with SMTP id x4-20020a19e004000000b00513ca40fafcmr8242229lfg.11.1710864839740;
        Tue, 19 Mar 2024 09:13:59 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:59 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:50 +0100
Subject: [PATCH 20/31] arm64: dts: qcom: sdm660-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-20-e0aee1dbcd78@linaro.org>
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
 arch/arm64/boot/dts/qcom/pm660.dtsi  |  3 ---
 arch/arm64/boot/dts/qcom/pm660l.dtsi |  3 ---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 27 ---------------------------
 3 files changed, 33 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm660.dtsi b/arch/arm64/boot/dts/qcom/pm660.dtsi
index 98dc04962fe3..24efd1bf271c 100644
--- a/arch/arm64/boot/dts/qcom/pm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm660.dtsi
@@ -12,9 +12,6 @@
 / {
 	thermal-zones {
 		pm660-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&pm660_temp>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/pm660l.dtsi b/arch/arm64/boot/dts/qcom/pm660l.dtsi
index 6fdbf507c262..46165a2a3694 100644
--- a/arch/arm64/boot/dts/qcom/pm660l.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm660l.dtsi
@@ -12,9 +12,6 @@
 / {
 	thermal-zones {
 		pm660l-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&pm660l_temp>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index f5921b80ef94..9851bc73222b 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -2421,9 +2421,6 @@ sound: sound {
 
 	thermal-zones {
 		aoss-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 0>;
 
 			trips {
@@ -2436,9 +2433,6 @@ aoss_alert0: trip-point0 {
 		};
 
 		cpuss0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 1>;
 
 			trips {
@@ -2451,9 +2445,6 @@ cpuss0_alert0: trip-point0 {
 		};
 
 		cpuss1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 2>;
 
 			trips {
@@ -2466,9 +2457,6 @@ cpuss1_alert0: trip-point0 {
 		};
 
 		cpu0-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 3>;
 
 			trips {
@@ -2487,9 +2475,6 @@ cpu0_crit: cpu-crit {
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 4>;
 
 			trips {
@@ -2508,9 +2493,6 @@ cpu1_crit: cpu-crit {
 		};
 
 		cpu2-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 5>;
 
 			trips {
@@ -2529,9 +2511,6 @@ cpu2_crit: cpu-crit {
 		};
 
 		cpu3-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 6>;
 
 			trips {
@@ -2556,9 +2535,6 @@ cpu3_crit: cpu-crit {
 		 */
 
 		pwr-cluster-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 7>;
 
 			trips {
@@ -2577,9 +2553,6 @@ pwr_cluster_crit: cpu-crit {
 		};
 
 		gpu-thermal {
-			polling-delay-passive = <250>;
-			polling-delay = <1000>;
-
 			thermal-sensors = <&tsens 8>;
 
 			cooling-maps {

-- 
2.40.1


