Return-Path: <devicetree+bounces-29179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 548C1821CB9
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 14:36:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05508282680
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 13:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C44411C8F;
	Tue,  2 Jan 2024 13:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="urO+KkNq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187C714A9E
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 13:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a2331e7058aso1095951166b.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 05:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704202464; x=1704807264; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1VbT3u/laiWQQatkONtMcfkDlY0gjlRgz2VM69wh52k=;
        b=urO+KkNq4iaMqCg7ZyvCREWW+MQ0pFGfBaQDo5PM/LBbjTXahNhHaED9E5zhg3lFxa
         j4p35mk5ixnSkgdVcitYmmnTdgtmalz6hf1N/lOhlnjWelvoGCp9vmR/X5QYACvIR9U8
         TUJqp1e5ByJAPlaLVIuUhjnAGo0yqRKfIlsaTVi1loCmu7a64XWVq5SzPyJofxnp68r1
         5j1rc5ysKQB0M5sX1WL17ocvk99fngP3Rwvr7qXoV1Y7TPwmT58HwAw49zphblZUZ9lF
         6MVXqcCB08+1RrVkUNP3vG+AEL6Mooe3CfahWIw5a7ZHQPg2iQO2nfkQrsHfIl0kGeb0
         ureQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704202464; x=1704807264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1VbT3u/laiWQQatkONtMcfkDlY0gjlRgz2VM69wh52k=;
        b=xBynIVWff9s2KLKBr+ilDKAK/g96W3KIvM4fP9IlHfSyYQBN15AvfmMGqt7HY3TiLy
         upL76VSDNRJiO0SIQNi9GifbRyTd5e/zRQX6d5oFxyzQjIAOPt5tpXm9arHajPSra6IZ
         p9IHgLETIJTg4Mlkpyj4srYzo48dlvpfXRK0cVQH4yFucYnrHHoMZ60WODSVp8aSR+YH
         NgFdj8iBq6q4lEp9sFelIhYXJkOZMoiUDGoAPE4cv6hKUealqXIoRX7q8HNm3m07b5Gt
         5ViWP2vzIQHuPKrwlufEUjWggzhT2eyC0Q3yfm1epCUUxseydegUc2c0EcMhjsOZJYSR
         iwug==
X-Gm-Message-State: AOJu0Yzk2hx1hSnCRIMLKDvaG5azQaLH/eFElF/tVTjTdTXubkOTsy6q
	oOQUbR9AVSmc0nL5VQ78C54R8ipQx/Nr1bg2Ikp9+5Vt6z0=
X-Google-Smtp-Source: AGHT+IH0faUUD1nCkRAVKIPHRsKGO+7Mb5RTpgBxoml3NxpHVp1CsDvbR8JYitBUspSe9nzQpaZUow==
X-Received: by 2002:a17:907:25c9:b0:a28:211:f4bc with SMTP id ae9-20020a17090725c900b00a280211f4bcmr811358ejc.250.1704202464280;
        Tue, 02 Jan 2024 05:34:24 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id u23-20020a170906109700b00a26af5717e9sm10950923eju.42.2024.01.02.05.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 05:34:24 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 02 Jan 2024 14:34:08 +0100
Subject: [PATCH 04/12] arm64: dts: qcom: sdm845: Hook up GPU cooling device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-topic-gpu_cooling-v1-4-fda30c57e353@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704202458; l=1575;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=phTGda0ipXkzUe/74lsh+6FIjfg/5WjfSqE424nt+ac=;
 b=zaEkmmF9hwj7QmcriFhBE/Y0ec8y9IPypIAHRY/1e5cOg7OUaKAJ8W+M/4kB8Ox2Zj2MhipZB
 458X29p+g6vBltL0HhVwncbqE6FExXnv5WFmkmE6vX1Wv1DI9oWrl7I
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In order to allow for throttling the GPU, hook up the cooling device
to the respective thermal zones.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index c2244824355a..1c2d01f0cf07 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4760,6 +4760,7 @@ gpu: gpu@5000000 {
 			operating-points-v2 = <&gpu_opp_table>;
 
 			qcom,gmu = <&gmu>;
+			#cooling-cells = <2>;
 
 			interconnects = <&mem_noc MASTER_GFX3D 0 &mem_noc SLAVE_EBI1 0>;
 			interconnect-names = "gfx-mem";
@@ -5602,8 +5603,15 @@ gpu-top-thermal {
 
 			thermal-sensors = <&tsens0 11>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpu_top_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				gpu1_alert0: trip-point0 {
+				gpu_top_alert0: trip-point0 {
 					temperature = <90000>;
 					hysteresis = <2000>;
 					type = "hot";
@@ -5617,8 +5625,15 @@ gpu-bottom-thermal {
 
 			thermal-sensors = <&tsens0 12>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpu_bottom_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				gpu2_alert0: trip-point0 {
+				gpu_bottom_alert0: trip-point0 {
 					temperature = <90000>;
 					hysteresis = <2000>;
 					type = "hot";

-- 
2.43.0


