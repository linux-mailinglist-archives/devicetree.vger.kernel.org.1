Return-Path: <devicetree+bounces-29183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D28D821CC3
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 14:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BCC51F22BA1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 13:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14122125C7;
	Tue,  2 Jan 2024 13:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mvfd2kz8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7155515ACE
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40d5a41143fso56766935e9.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 05:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704202471; x=1704807271; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5q9S+7Fya+VTzBEqrdZKh6qCvhpW7mOyZby8yv38yTU=;
        b=mvfd2kz8wkm/VZX991ZItOJdbjjjSGZuGpLTxLpAUkc9yD+2zt6p8nh7CJ8PS2xyX1
         SS6s2AwqhMIiOIdPQntoPtGSN2tGVePAtJSlJZTVE2SGGjgwWSqI1IlvaxSMxQddrHSr
         3Mj1r980L8DKNQ3djjzbACR4mXDhCecTZHUzPgd1LemUC3WwVuUe4/WOwQV42y3Z26oY
         MiuYy0ehYt6dI2EXLge/YH1KTQFlWHkzbV4z3vZd3DndTb2tGaN1PuPxfewq/C9XNFiF
         mMO75Mm304nYwmw/F+2OPQZKF2lS7xrWjI8KtKtlcGtSUDCNYQhhVe+lfejKs4Vy60t8
         A3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704202471; x=1704807271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5q9S+7Fya+VTzBEqrdZKh6qCvhpW7mOyZby8yv38yTU=;
        b=CXrrzZak6bxxTAUljfPqbFd3vzUCec9w0Nm9W9E6HYjU0Xf7PMsrTby0qJfPFOiBBj
         NghGXr2qWPiDOSLmtc8P2/WeO5Q2qPB1Xpp51zj47UA9T7T3JS+OZrVGpYe2Ap5prgkF
         b4VGMieaW3EdbZfOxW8Q71WNYWn4gXGhumlfG0eFR8KPEKi6sMI8dy5QcNOIG1MzODCE
         VxSvlfwniTSKVEka7jQzt1vd8C/L4jdHAS2K3pf9UoKN1u9edxYtxuLQZphCE2stPAEV
         bKlMntUo6cfEGpDeGhYRi9WWnufXKt5hoBgtjrI+5CvyHpEB+tgUhcsvl1bMTTliuIV2
         pp3g==
X-Gm-Message-State: AOJu0Yxq/w1+JiL1fSf4N9xI/RFsTEA+Hgxad5jEGAX2kg4C33B2LYk7
	znm9RjXz5bhPve81cHqEsuB4xlGUvJKXoRfsl7+vObgcJU4=
X-Google-Smtp-Source: AGHT+IE+a8IxL1I3ilsYirsmCdIkKahi1rhlBPr9BqCZsZpYGmM6f5OjnDN8AoIfuuTMHhc5CKoStw==
X-Received: by 2002:a05:600c:1d2a:b0:40d:5bc4:4e7f with SMTP id l42-20020a05600c1d2a00b0040d5bc44e7fmr5580444wms.20.1704202471606;
        Tue, 02 Jan 2024 05:34:31 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id u23-20020a170906109700b00a26af5717e9sm10950923eju.42.2024.01.02.05.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 05:34:29 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 02 Jan 2024 14:34:13 +0100
Subject: [PATCH 09/12] arm64: dts: qcom: sm8350: Hook up GPU cooling device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-topic-gpu_cooling-v1-9-fda30c57e353@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704202458; l=1563;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=EpO0KJ3F+IVJx7ZjcCfSRbGs6QkZ1fpSqdd5/2bxjR0=;
 b=n/bAhKc/aou494PJN57B7ksru+9pBNU1UF1o7bzN6Zrgx94HklFbYllHnPTQCujRMPkEJKC3Y
 8e1IZqMQa22BvQSyZtVWkDcratnlruq+QkLj+N0zn615Qr+LzkQnIMk
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In order to allow for throttling the GPU, hook up the cooling device
to the respective thermal zones. Also, update the trip point label
to be more telling, while at it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index e78c83a897c2..1c6f80b14d09 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1847,6 +1847,7 @@ gpu: gpu@3d00000 {
 			operating-points-v2 = <&gpu_opp_table>;
 
 			qcom,gmu = <&gmu>;
+			#cooling-cells = <2>;
 
 			status = "disabled";
 
@@ -4214,8 +4215,15 @@ gpu-top-thermal {
 
 			thermal-sensors = <&tsens1 1>;
 
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
 					hysteresis = <1000>;
 					type = "hot";
@@ -4229,8 +4237,15 @@ gpu-bottom-thermal {
 
 			thermal-sensors = <&tsens1 2>;
 
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
 					hysteresis = <1000>;
 					type = "hot";

-- 
2.43.0


