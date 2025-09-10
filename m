Return-Path: <devicetree+bounces-215400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 83680B515A5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55BCBB60832
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603FE314A67;
	Wed, 10 Sep 2025 11:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LlqRBcLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCF33168EA
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503593; cv=none; b=Exp+pA0s/6N8ZQLQ+bGkQhQ5FJei4cB1RjJiB8f01BeHxC1Fa5R4jC14QqTuV3HioTsnXnaiJqMGC/K2wqh+SiQeKJdj5lidJRmXIrbtxW46erBpkubnZ/G2v7odr8TFCA3BczBT3FyRB0TfV6mFRErpssl5XydAWscphXMMlLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503593; c=relaxed/simple;
	bh=dOTe+NeCnTnd66K7xI4iX89kuGwD47bRsdTt9/aYExo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BZluI2/3ist3jQNJyLORqnboNQ/Tm2SBQJExMTSBHatCvjft/C5U1cAaLJouYhdoAozwSVd0BiAPqAopqXeNVWu2hYMGBzpI8zVS1RRk3UBho8rgoftZFACq7f9Cw9+KVolC4TBleuEUSjLUSjdRrJcKiRLeunkSgH0B8aUeEgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LlqRBcLk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFFXq021322
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ItLhiyodgTeP1sZ/6PcQUw2zlY/QcYa0Nupckl0eQLc=; b=LlqRBcLkU0vRc4D5
	ifQUNQiL3m4ArNySj1acUu1rY82IiFkQQYf+IdHLUgpxVvHCAXCEryErQkbBNJpy
	4OD8f86UDR6+0TqjPOpAf8Vyt0CCLctspdv9k0FmCZJU2SMSp4MHP/R0/mYTiSiX
	ETereEqGOEbiRsmGaQsYctFgcbebM/Er/+ahQQH3cJvsjZJmbALhIal1Rb3x1FF2
	AHHJR5WDkK8EWBkrkVsCkoNncpSWgeqRiG4KupbSnYfCVZywySKMnVSjMy9HQR/K
	fsiVu/BxjfzWPnSPGD2dXhgArazoC/+0CsReI7Hm0IwJTYK2x7hO8bXbZHIYxVrH
	c29VQQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8abjgm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:31 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-772299b3405so13609366b3a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:26:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503590; x=1758108390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ItLhiyodgTeP1sZ/6PcQUw2zlY/QcYa0Nupckl0eQLc=;
        b=nmQuTTVgXBbRDDFdC4+aETFvrsac74VFDBvyO4O0Vc2alDdoQoDK68SDqX9ZV+vxmh
         kvM1FkLdadJk4sg2k17YT98yqlDGr+hg/smZSMeRXS9dBcK/bXeW49mJ9b1+BoRVIdHz
         VkiLMMkgaAqtS2nlG8lru2Lae00Tf6b09l6UyfybR9zd0TiUS+z7Ea2kfPOBMM2/ONdI
         2bXvT659L3j7BKm4C5+jlEMG6pmsuOY5Oy9qyN5VIlkty8zPdzejB5oyp4IDcK/6PdNA
         3CUIoeez8sQWbpkpMpC+M2WmfNOH1it8RiXUpO1tGhY1G9kcmVCQRV4yxs1kJrsCYx6Y
         DBBg==
X-Forwarded-Encrypted: i=1; AJvYcCWMjaL/oTgBDOFhdUTacc7GIgtONahCGVj74i4FiwK/OZkk1M8U8RV+hZBUOX0SLLoCfmSANSueNq29@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6jfNnGu9cYA/okoczeYeXp0O+EfWT9PE9ph+qPL2vgAyRwDFY
	5KApI6oSxf5LjL4p4MtjNrFoKF08hcQpDM6sr70n7W6NOsy+yN+bHYFrhXAZuBjzRmf0JEXjKq8
	YRJzGN0BP5OdtdWzpzBfmGl/JvZxbZRAH3j5ceLKYztcdjbXl4hVHE55v6w+IAiv6
X-Gm-Gg: ASbGnctxSkpxAv9vpdNM0kw3Ia8lWxGLEQBV68VfCsaxwACAbfW4ogvkiEb7XKoiUAu
	6f8uxVFlLVITkbQj7ZPVGfuj6dCooddFC1BQzEAvoP+T1epx6YyP6aOop8mj+JNWrbmj0BWZHo1
	gjhlgQg8KZWvvpUmACJydFgar9LrZPU1WfJRgLWJbDDPHX7Z0bLc1e0048v2D5G66ESiDK7z7tX
	Ovo/063+U7quegz38OGiX4j6w++eCuWMVQDVCVkjp0xi2kgIeHzzw7y7GMBRHosSuEFY6E9OQka
	0iQMCJklS2B48E4G3OHa0xv+85OlmJpbfS4mQu+/SeI9hOlhCyE6dXMOdk/5iJ2T
X-Received: by 2002:a05:6a00:2316:b0:771:e8fd:a82a with SMTP id d2e1a72fcca58-7742df20736mr18098111b3a.23.1757503590192;
        Wed, 10 Sep 2025 04:26:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3J8x62G4seX1p9NFkixWLQX1lFKU2WgY90wZyTmN1FLYB+oO8Bqo7Pu/0KMpDEix/eWDYhw==
X-Received: by 2002:a05:6a00:2316:b0:771:e8fd:a82a with SMTP id d2e1a72fcca58-7742df20736mr18098063b3a.23.1757503589677;
        Wed, 10 Sep 2025 04:26:29 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c7384sm4862260b3a.76.2025.09.10.04.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 04:26:29 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:55:24 +0530
Subject: [PATCH v6 4/6] arm64: dts: qcom: lemans: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250910-a663-gpu-support-v6-4-5da15827b249@oss.qualcomm.com>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
In-Reply-To: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757503556; l=3339;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=BT2bEOOj1VdnrLSDgfG9mGOBt17PRs5hzWArlKzjxw0=;
 b=y7YtaxeWU40iOFan1dzZVankzZNL4sBpuQofugyhnB6d1UwMcUMairlaBb6SNeGa1A6CIBe2u
 OTbFKENIEYiCCO9Mt/HQFokGvWVY06UspfiBsX8m2pszA2hUHCXQuNf
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c16067 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=e3DMr3DmCBmV6l14PKUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9uO0AzWsokWQ3DeNeEOpGZkqi2giFORP
X-Proofpoint-ORIG-GUID: 9uO0AzWsokWQ3DeNeEOpGZkqi2giFORP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX6UOu7XYTzUHR
 58q/hvq3m2zHkwpoyJtiIZBLuUh/iVcwIAoyMlG1RPfc8+UdzDIB8Wmkw3PwsUkxkMyqY8fGTBk
 rzObQW2Jnag67Rb9C+7N/+3F8f211PE7qBhsUzzIPc7/b8mmArNSMJmOSkA0svffixPg1OzGDw7
 LUNXFOa5wQ2Dh8Hs5hOCwyyLikZ0gAdRNF+VXSc3oABI8XvhFzxmDE/zwDXyrZtI7i9dJEq1Ivs
 xcEKaQwkk5rnf0ckrMcQtROJpuozqRZ9H9YDZ+kRpIEEUjKfcZZt/ZmtN76j2LYNuuPYs464Zpa
 ZjjXvL9pHb5E7XvmphGBb2QOgAl9mqYVR04Xom2Z9dOnpAtig8+R3OtUFIi9YPp13axBsOvZF1H
 YeeeHh82
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

From: Gaurav Kohli <quic_gkohli@quicinc.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed
when reaching 105°C.

Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 55 ++++++++++++++++++++++++++++++++----
 1 file changed, 49 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index bffce5a5d465b6360397290aa3d948268a254e41..ffd9869cb4579a9a7c6a29ec596126296a5af7e9 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -6824,8 +6825,15 @@ gpuss-0-thermal {
 
 			thermal-sensors = <&tsens0 5>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss0_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss0_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -6844,8 +6852,15 @@ gpuss-1-thermal {
 
 			thermal-sensors = <&tsens0 6>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss1_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss1_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -6864,8 +6879,15 @@ gpuss-2-thermal {
 
 			thermal-sensors = <&tsens0 7>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss2_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss2_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -7054,8 +7076,15 @@ gpuss-3-thermal {
 
 			thermal-sensors = <&tsens1 5>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss3_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss3_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -7074,8 +7103,15 @@ gpuss-4-thermal {
 
 			thermal-sensors = <&tsens1 6>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss4_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss4_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";
@@ -7094,8 +7130,15 @@ gpuss-5-thermal {
 
 			thermal-sensors = <&tsens1 7>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpuss5_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				trip-point0 {
+				gpuss5_alert0: trip-point0 {
 					temperature = <105000>;
 					hysteresis = <5000>;
 					type = "passive";

-- 
2.50.1


