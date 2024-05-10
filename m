Return-Path: <devicetree+bounces-66245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC0C8C241F
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3269D1F21683
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD8117083D;
	Fri, 10 May 2024 11:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nFdMUNKI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6667E16F0D6
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342380; cv=none; b=WVKW86jW13/Cp8QM3jFpnq7Tr7S0T+j/znOrxhb2EtMDOc3zLoHdtpr/Wn/pD3oQGDLxg4xwGIabEEMaCBSbKqY+FV/R+TbtpR7ViYCktRkHuc7wnj3nzR5DTSeY/iFAzzP0CGs3t239qqAt9UfE567l1nyRAQUMEsbYavVYl/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342380; c=relaxed/simple;
	bh=dK9DowlvEZW+LtetMDGjnQGyXMs1w8D1AnGc1PI8Qww=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ojZ7phnYyM6FAJHcBQR9ksQsi6ahte/HQLyST/spjwtUnyQ/M6V5iDMFACs0vA7DROAcIrRKuRCJ0Bu7dIPi/rtrenw7SLy5FRAN537x3GocfUp+5dp2vrUgCOfjzNQYFD5oFEsFCpaAWUT3XbOb+zhyABDcS1eD3i8loTnm6bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nFdMUNKI; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51ffff16400so3214566e87.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342376; x=1715947176; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FWIB+Z5MSUsi87orA4+fPYLJmz3fRVrSjUHIWZpplPA=;
        b=nFdMUNKIcULi8AchXs5NwTUyWs1pSqlprFkBAcI+fWND9iNBMNFt1EaWCDaiCZKlCJ
         xBXF+14my1CLp/0J12cSbXX00gMPBftEsdRhX7y+b2u9k/IYQj2N3JinLJiLqc7rilJB
         zSVW+Aoy8boReQH37bYtwhsnlC4/vGu3881JQIYVvJsA15q8ebf/G1UPsICTLZ0h3v6k
         4D+1arXMi2Aku+20v2W4E1UqURt/OAUCdg5NKp9kk3G2ekwtboI0mZVL0GYsLlb/fmA0
         EgwWqEEmiTLRRVfdOnRdBzz5/NM+4EOcE4J4jcctYxjLGYVOVsYTlat7tFDrzoQKqfQ6
         L+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342376; x=1715947176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWIB+Z5MSUsi87orA4+fPYLJmz3fRVrSjUHIWZpplPA=;
        b=cJEwqXm0kJgwDlti1fOtJRWsL+uhgkq+ZzYM9BVdwbZvb1eIHH3zJJl5JIIlcl5V0u
         L7gYk9HaUUX5lH6En/e/7unn9AvxOdn4ilVTdHgGlS6i4V8bN2AwnszvoDoAGvqTUURS
         Y4i4pHY35/2A2xKnapxqj+cTeg1A/lZPDXp7xpZDLIIuvlxR/PZVpwI3aEWbK3ekEj00
         F+eq24iMCAyFrToWSvHkui9v10hvZyN6Kup4/6U3U3VJRkKipx6FxDvmfdt/Rkl57/Qs
         6lHPn6yonQDh53/WmXCkGOQiLXzlHKvxybKUYQbWv33j3XCV44rtdyVE50YcMMWCfaYL
         kOvg==
X-Forwarded-Encrypted: i=1; AJvYcCXHd0HUDAafLAy/9xV5RbNaOha+wNxxFAxSNdng0IsxTyP+6lTQQ9l14s1Dxb7sAx3D6dvK6cE00hJ011Ecf/f7BhcCdIGUoA61DQ==
X-Gm-Message-State: AOJu0Yz4+4cz1S/xUoBwm2LXipomQBpahmh+MnCi8jZqK2O5mW0A7Y3f
	MoaSpR4PMUFAjiwC1qsAu4G4jdwgGaYWwxOZ1+vhdhkTSaOvGNH98YZThEgwuTQ=
X-Google-Smtp-Source: AGHT+IEJY9NraJb2lQ3/WpsEb/xHayHJ22eEyP44jFR9Z5gbwOB0iKMCC69YiJw/azuD5pVwFugQcg==
X-Received: by 2002:ac2:5b0f:0:b0:51c:3f4c:ef6c with SMTP id 2adb3069b0e04-5220fe7aa4cmr1768860e87.40.1715342376510;
        Fri, 10 May 2024 04:59:36 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:36 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:25 +0200
Subject: [PATCH v2 02/31] arm64: dts: qcom: ipq8074-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-2-436ca4218da2@linaro.org>
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
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 5d42de829e75..aa93c426c76b 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -982,7 +982,6 @@ timer {
 	thermal-zones {
 		nss-top-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 4>;
 
@@ -997,7 +996,6 @@ nss-top-crit {
 
 		nss0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 5>;
 
@@ -1012,7 +1010,6 @@ nss-0-crit {
 
 		nss1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 6>;
 
@@ -1027,7 +1024,6 @@ nss-1-crit {
 
 		wcss-phya0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 7>;
 
@@ -1042,7 +1038,6 @@ wcss-phya0-crit {
 
 		wcss-phya1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 8>;
 
@@ -1057,7 +1052,6 @@ wcss-phya1-crit {
 
 		cpu0_thermal: cpu0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 9>;
 
@@ -1072,7 +1066,6 @@ cpu0-crit {
 
 		cpu1_thermal: cpu1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 10>;
 
@@ -1087,7 +1080,6 @@ cpu1-crit {
 
 		cpu2_thermal: cpu2-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 11>;
 
@@ -1102,7 +1094,6 @@ cpu2-crit {
 
 		cpu3_thermal: cpu3-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 12>;
 
@@ -1117,7 +1108,6 @@ cpu3-crit {
 
 		cluster_thermal: cluster-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 13>;
 
@@ -1132,7 +1122,6 @@ cluster-crit {
 
 		wcss-phyb0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 14>;
 
@@ -1147,7 +1136,6 @@ wcss-phyb0-crit {
 
 		wcss-phyb1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 15>;
 

-- 
2.40.1


