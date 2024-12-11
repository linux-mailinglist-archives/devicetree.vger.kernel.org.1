Return-Path: <devicetree+bounces-129663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEF49EC753
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:30:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5033A1680EF
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 570951EC4E4;
	Wed, 11 Dec 2024 08:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m0N/TGAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3591EC4C9
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733905810; cv=none; b=Qq783l5xJFqDWpFoNFxDJKr54OYOwRgefbuItGdMThRNsViUkiUXXF6FuBm0A7pGl6cTkREu1MDlDW2YtztwqOg+gu7wTgk0vUqvtZiO0GtXzIKmqRmabkFeIl9fe2Sf9oSZ6STuoGgeE8+5AV2Hu1MrOUL5jeJHg5MRuOT2ucE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733905810; c=relaxed/simple;
	bh=TRwNAhGHhGveZJg6Jt3v1KhBQ4NlTPzWkB4It076Q5s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lbcsceBQSgYuInC1Bi3bkdSQZE4msht33gJgN+2xD0Nl/mLqyAGRHWy0bi4EjxXzweOY+Qx8nkjJ+r6opmXO2iJiV/ROKYBIEgr0eukY2tl8zFyDbHjLW9kIGTTddoU4JNpd8QIIrI/xvw/jV758NdX+Er/zIrYZGOGqHHJ0Pv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m0N/TGAD; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434ab114753so42619525e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733905807; x=1734510607; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OJE6jWewYLR4+WwL69RNcPxwF9+nvRISCL65MftveMw=;
        b=m0N/TGADKUrySGjkiSCRBMKvYszdHgH+ziu2IVgGFqv6XrMUMOVIyqlNNPdbfuD85r
         Phqtb35IhHu0DsJXyiF65FoEH9KyxgRaiQFrB7K6inkJUZLDG3KLim+9JhMYJWPBwCGK
         yZvSAB4QuKfZgD7VFLCgccDtA36I1ZxwU6z326NzJh8+EubTKj+6uB3GfEGaDKyC9mlj
         Gb2sDBeSutI2+1638h+buHDiarREF66SKiHNtCm33vcI9wKOnCilgPn3KzCrRxRzzyLb
         3XHsDtWLgnevN4xiut+1vjp+ujtiiyV5smaAtcuVs0lmYt96T7jvI4vQxSmkGf2+uX3y
         nCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733905807; x=1734510607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJE6jWewYLR4+WwL69RNcPxwF9+nvRISCL65MftveMw=;
        b=LJ9eEAMQQc79oGIERYBzjnwHwFZ8PnvODze8iEwSSOFNgvqTYogEwJH3S9nR8X8ssy
         y2h84xY6S/Vtrl70mV7vgeL111tsVShrFo55BMuU/5JaLQ/wiyc/ZilD5QMscl4jroAw
         cvFKT3MhHQN2Wd42SWaY5ow2v16hELPQUWyjNfbQDX/sLUriFNEpT5YfWWMZdvxIH1KP
         xZcaZQGAmnCPoKPJac2Up3v1AFKIyYpSNp2wPj31OiHCk/qkPV8Iq1Y7EwZV8HmZ4ssD
         qwFw149frjZB5acOw99Qrdf7BFwB7NWCHRwooDreh9L6c5Iy0WCTNVBiweHP3LqTZjd1
         x56A==
X-Forwarded-Encrypted: i=1; AJvYcCVjPvaX0rN3iueEMUikZHBlbH6vFYUga5qqFGuDSp1HVI1X4a3scTkNLArtPqFv0+8Kct+g2wkTsrHB@vger.kernel.org
X-Gm-Message-State: AOJu0YzOf4UOTFhab57t+Zc8uKQQm78dL+1uZmfsEzyvu1+ekGezz95k
	5owPvOjLX6NBT47N49S6keUZS9enCC2CfXmUjh4PfqqplpgDCvHZPa4Mu03hN48=
X-Gm-Gg: ASbGncuNI1ozB74WGitEJAn55CnqZUO/+++01TTimwF3rc8oBUnFCz6TxtVi303yo7+
	o/f3TezasUdJelKHNFAn2N949umgrqhX3jK3oQ1QnJGBy6pTQWNGgTC1odATpAse/8hYzvNaECZ
	WOR24def2jNtz2VG9jfNjlD2mk+Rr6U0TFY4+UQI5D9wPHOBd/O0tZkmtGboG7SN0F5Zicx7v+O
	/JONeHrkdDXhMuECM8bpsRZhqpZcuCDlMbODnEY/vml3Qoarf2pEpaji1JA+zr5iWF2qInIgg8=
X-Google-Smtp-Source: AGHT+IEUW0/j6mo/cphlP6h+I+zkwofgriHLT9wdAyPVKtEJ1u7lzyZIITwTPRB+Ctkzy3cAPNR3Dw==
X-Received: by 2002:a05:600c:1907:b0:434:ffd7:6fca with SMTP id 5b1f17b1804b1-4361c34469amr13541845e9.2.1733905806625;
        Wed, 11 Dec 2024 00:30:06 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a3e38sm735687f8f.23.2024.12.11.00.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:30:06 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Dec 2024 09:29:56 +0100
Subject: [PATCH v5 6/7] arm64: qcom: dts: sm8550: add interconnect and
 opp-peak-kBps for GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-topic-sm8x50-gpu-bw-vote-v5-6-6112f9f785ec@linaro.org>
References: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
In-Reply-To: <20241211-topic-sm8x50-gpu-bw-vote-v5-0-6112f9f785ec@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2617;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=TRwNAhGHhGveZJg6Jt3v1KhBQ4NlTPzWkB4It076Q5s=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWU2FA2VPuTGXFnwJEd+MglovyCJPCjTRgawXwdkJ
 c9Lin2+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lNhQAKCRB33NvayMhJ0VIKD/
 0enVnSmdAg9FuxyRRV2ix6HrTWcoGkQNwZVZT1c540JRfipkIEbGsWfGAnBVoUl3tSAkV73jOULxZ+
 hdKixrVaHfXVgOW6eAbsO4vW/ebwzI7Ss/ay7OWpxcXEBd+ZwP42sg/QRVpWsWL08e45AJaY0QD6Tm
 GCBUZ2bZyD01G4EbRlIutPvr4gW0uvJPS6jCTi2h8DATZ0y5+t5KkGp27NR1+WjcZptAQi7speJq6y
 PgVREfhvLHtw3rqE1HHPLf5/hVRZs6Yx3B4e7xnfvy1Yrlxdm3vbkdGazngKSjT+MsU0zJx95EfrrT
 6i7WhiMdynEbxPsPWMXmNnNkyzr5AqMaOH5FrNlsdOQnvxau/+X4hUHBvmTdLw24MGMGeNrm4NnJII
 /oBwgI/95t+oSfiSEj1V00jVnZlYeFHgV5T3+ahFWTHdcN7NJZv2PYrJDjn+NEeGhJMEVyg8s6fdAw
 GO9v40k3Ywgb0NM+x9CjiSz/HUIlinU0bGZqC2cb2DUzLuEyWllQKqMI9Ur+J+JQ7tjQcHRF8n7mBY
 J07are5KHIeFi1wsg275CMIBiyZFvJeuRTU5LLnLDv868G5PiFXfsTUHyGdZrIqPj9/rEkppyDpwRe
 MSnwjKhCsboqd1tJ1dHG0y9RnG3f9kr7X+whjnrDI6FZVRgLhsbaijQvWO8Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Each GPU OPP requires a specific peak DDR bandwidth, let's add
those to each OPP and also the related interconnect path.

Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index e7774d32fb6d2288748ecec00bf525b2b3c40fbb..dedd4a2a58f2c89b6e1b12d955da9ef8734604c2 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8550-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -2114,6 +2115,10 @@ gpu: gpu@3d00000 {
 			qcom,gmu = <&gmu>;
 			#cooling-cells = <2>;
 
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+
 			status = "disabled";
 
 			zap-shader {
@@ -2127,41 +2132,49 @@ gpu_opp_table: opp-table {
 				opp-680000000 {
 					opp-hz = /bits/ 64 <680000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-peak-kBps = <16500000>;
 				};
 
 				opp-615000000 {
 					opp-hz = /bits/ 64 <615000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					opp-peak-kBps = <12449218>;
 				};
 
 				opp-550000000 {
 					opp-hz = /bits/ 64 <550000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					opp-peak-kBps = <10687500>;
 				};
 
 				opp-475000000 {
 					opp-hz = /bits/ 64 <475000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-401000000 {
 					opp-hz = /bits/ 64 <401000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-348000000 {
 					opp-hz = /bits/ 64 <348000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-295000000 {
 					opp-hz = /bits/ 64 <295000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					opp-peak-kBps = <6074218>;
 				};
 
 				opp-220000000 {
 					opp-hz = /bits/ 64 <220000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					opp-peak-kBps = <2136718>;
 				};
 			};
 		};

-- 
2.34.1


