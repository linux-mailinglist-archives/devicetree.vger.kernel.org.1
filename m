Return-Path: <devicetree+bounces-29177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6679A821CB0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 14:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78A8F1C2204C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 13:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B59E210798;
	Tue,  2 Jan 2024 13:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RqpdDrsj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C49912E5E
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 13:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-555d4232e4fso3327871a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 05:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704202463; x=1704807263; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eNfbaSRAJYQ3hDkfAV6kl4/e+W7b9SIg1oNydIChwuU=;
        b=RqpdDrsj+4GGexjGIHxDgUp9JXCiOvtGaLeGp4pEf/I09ddUIohw07mE8ryPFZSaVM
         nD0GNg3I6096p8OUh5UOkPtF9LIJ7CdczNtaxD6Y5D5Jpb7GbFXGzSX+otFyI9gTOf7r
         HhTISjpwEJW5Phm/IhJlQJnIL8T/GuyOMRfN+Uk7lOEzkGECMgm2Xtd8vk8dlKuU9H9z
         98whkTv9wsN08itqrYP27uTUpbvwsgdS5mbjX3rSPv+NF2Vua52xQeebdZZqs2c9J8PN
         GuQItDaAwORNHI+3RaAlT5Mhwt/IdloPFYhTtsSqQLKeO00Bm2TYtW63+j9rtdZPou0m
         Qujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704202463; x=1704807263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eNfbaSRAJYQ3hDkfAV6kl4/e+W7b9SIg1oNydIChwuU=;
        b=dxmP7CBMRDIytXRtt6RDwmVpWxtMbGVPNS+j/MybSFNfL8esbWm197aUCf7EBdAUiS
         8q1Xua3jeCR8UuiGEiJMSc+3WXwyPmneBrfdCGuxSXQ1gJn7VCD1skTcy43A/5LBhw94
         eXWJlwX6uSqi1o/V8fZ7zHQVcU7BW1VUBMoLzg1mW8dNpyG8Lcy/ZKylLtnlnwDeEYXo
         Ls6FOMhwP4Jlt4ybGvk0EFOJxE0j9s3KNA1NydngtajaCDSwZF4pAiXC8Jnvfz8fIT3K
         YE/KSxtI91LA82Ulu9TTDU2TylnGe5TlCeHxX3hjlosvShSvNztT26dweC/nagUhPfpG
         nnfA==
X-Gm-Message-State: AOJu0Yx+FOmlAg7ugRJ87YOWSIcD7gX/wb2v0gsMqmLMu4yw5/Yt8jLv
	7wnivxI3JyDOMgXYY7+gC0p7tAhUQnB7D0+WEeCnmoTwTm8=
X-Google-Smtp-Source: AGHT+IGX2SLqUAlLrViw6ekZad0eYnIA0EiTDzaJjT2B7FNNUGPbjhARB+ZuPmQDcc9KxSO/D3rOLg==
X-Received: by 2002:a17:906:154:b0:a28:2a9a:5adf with SMTP id 20-20020a170906015400b00a282a9a5adfmr801676ejh.2.1704202463126;
        Tue, 02 Jan 2024 05:34:23 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id u23-20020a170906109700b00a26af5717e9sm10950923eju.42.2024.01.02.05.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 05:34:22 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 02 Jan 2024 14:34:07 +0100
Subject: [PATCH 03/12] arm64: dts: qcom: sc8180x: Hook up GPU cooling
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-topic-gpu_cooling-v1-3-fda30c57e353@linaro.org>
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704202458; l=1501;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=LeAgjLPaUrqDha3qV9pFA40YbrPfdFXhgnhoWNtELqU=;
 b=OkP3ve2fNvK+mk1ccjgyedxq6N3uFJ2whAKmuzMfAyyHMPTkE2O6ydFy3gFbWHJ0H1wjykdcW
 aqc7JyvPYGQBQc4/ZhKN9ztbwXFeB+B+nPDCPjaDdfyyy3/LnzNyrf3
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In order to allow for throttling the GPU, hook up the cooling device
to the respective thermal zones.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 0430d99091e3..b1227e04429c 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2173,6 +2173,8 @@ gpu: gpu@2c00000 {
 			interconnect-names = "gfx-mem";
 
 			qcom,gmu = <&gmu>;
+			#cooling-cells = <2>;
+
 			status = "disabled";
 
 			gpu_opp_table: opp-table {
@@ -3880,8 +3882,15 @@ gpu-top-thermal {
 
 			thermal-sensors = <&tsens0 15>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpu_top_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpu_top_alert0: trip-point0 {
 					temperature = <90000>;
 					hysteresis = <2000>;
 					type = "hot";
@@ -4030,8 +4039,15 @@ gpu-bottom-thermal {
 
 			thermal-sensors = <&tsens1 11>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpu_bottom_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpu_bottom_alert0: trip-point0 {
 					temperature = <90000>;
 					hysteresis = <2000>;
 					type = "hot";

-- 
2.43.0


