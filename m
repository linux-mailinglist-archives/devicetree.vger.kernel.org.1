Return-Path: <devicetree+bounces-207649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7A3B3027A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:58:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8FD31CE0E10
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DDF345751;
	Thu, 21 Aug 2025 18:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i4k0DPqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F236A345730
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755802600; cv=none; b=FTAgEBDGqKX6F6682nq6NMbxxldUskpUS7n1TL6mg5EWXJQg7M/06c449BNwynjn7Y5bHPpKv3wl2iy5tgd6T7FqCbERaDxW4KCSVAoqDl2+EtNaF9HPSX6T1rR/EHWjlSyll99IvEP9nz4uOt9+hMaXPdavwnPiO8hMYwbBfm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755802600; c=relaxed/simple;
	bh=Gb/7Iudk9FJPTsVmWc9NeElBKhH31zjLWtd6PFE43fU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eDdasWCD43f9rgbCkfmOK51dcHqR7mB0D5InfQ90jrS8KBcu2TS85frc2juoXXMEfujS4oogCjQuzT70S/YkcbcjaklGqMVtSWctNCOKblL7wvdMckou6I+1sVDPT6TiSudBLJCFT78YOpujsPXfvXSS1Go6z4ed7Z0s3PWf2QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i4k0DPqa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI95GE029862
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uCiVz/zM6eCSXhCxGTh6Gbw0PH5ybtYshudhhtAkWDk=; b=i4k0DPqa6SEj78m+
	KEjyKteGdmOwoSeJZJrUd+8MabTB+H+4XsNseQDPZOboSmAyBctDQaIJUaHGCUhR
	UsphKsSdCj2IVBWBUGMfQ6z0B81MVu2aoFLJ/+HM8v4TWjQyC+LQj/cZ3Q4Wnd2l
	y9txa5SLrwee5XwAKNJMBwCzcnizDD8C3UvymH27W8Zg8xapLef2ffv8treq/rFY
	9jIxB6FgH4giA5Wig+/6lsMAIIQh8aPtBdBw3ModBbS4hhPtfPFTlh/Da2FA2PwM
	m75b07bxrxncYLbNXGljvwYTPCmL+W3Jt/fG0rkUu4uEqfbfmk5BipjTHRWw1eut
	xyLYoQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a6mkx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:38 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4716fc08abso1095696a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:56:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755802597; x=1756407397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uCiVz/zM6eCSXhCxGTh6Gbw0PH5ybtYshudhhtAkWDk=;
        b=G6PEuwWxuOWGwv6vi+LqhiF11RBdPAo+Qyft17OVolEqNsPo1DmMYSdzBDxA9ANtY5
         fhHLDMsTUffvKuyyeBAGBpLTrUEyijE3aYDbCG+8YZ6Dcg4IQbxlrF3upulnBi5mYyRq
         OVoXziBga52iJy8V9p6LhorqRIV9dLAmNPPAFY+3ouhFHnva4hIy8JFZM9BZH4f68GsZ
         FXPSO9Kbyt2inOR4WHmOsGSyI3DXGt3aeWyZKzLNujXzsdF3qF7wPNvF202RCp6ghTuX
         RGty/tvHg67Ba4KF5DRLt//0/1e02r5dz5SQNU9+CwTkz565207/uDfAiLdv1u0krdOg
         MvYg==
X-Forwarded-Encrypted: i=1; AJvYcCV5njad6SBsCwcSFS/EJOAKayZHZzdZrNlsoa9ne4xvpAd0p0FvXeq7++wcsltc99/ZHm1EwlPGn8K1@vger.kernel.org
X-Gm-Message-State: AOJu0YzWWq3hd0n3ilkURTH7UBW7RE9nycwUCDfrB6+072Q/X5JGl2pA
	w9pUeqHs0vJfymarj/qLpOGsS82wuArbnySoN+/UyR+igW3/EzyU4bxXwC/VuwlXBL2IxefRVrY
	N4pGpBAy81ybHSCpgmGfxwIxI47Ew4Pqqz2OlKd+7mIFob3+XJzGjGafL2L93FzSU
X-Gm-Gg: ASbGnctND87P+4CDD4l5GMV3gW+Xt5nZaU2kBclc2KTVY7O5QpRnLKUsxMuxJs9kE33
	xllGs0/knRCOe3Tzis5sJW90wxAohemeV6DZUDU4mbwhZqeMvRcVTO0+Sj4hWbuPqW1wNOYsFpx
	nbXAr+QUlIOc3SA2es7jyIRNWEkeuusC3fuKXA0FTVTIkV7zuN8xGRYIit6syfXZw70SS1D+Csz
	FsmNm+kcBIXaDxE8UTACSSdyLFvIM2zvdOMsHkzumzz9RU7iFhhGEmAJ3ZBeZKJo0V3f6YRX4vB
	kh2mJ7pesYEWdELhL0YwXO2n8ko3MoYT64cuclPpK+Gsw3y3zYVhNIV4PlpPi0r/
X-Received: by 2002:a05:6a20:5493:b0:240:1b13:45a0 with SMTP id adf61e73a8af0-24340acc9cemr358042637.2.1755802597481;
        Thu, 21 Aug 2025 11:56:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9vKMYrMsGc/yz6qfgqZd3fzJRBHQv+esspB+E8W3hqgkJfFk8r7z9RArSzZ+ihqeZMXb5cQ==
X-Received: by 2002:a05:6a20:5493:b0:240:1b13:45a0 with SMTP id adf61e73a8af0-24340acc9cemr357992637.2.1755802596982;
        Thu, 21 Aug 2025 11:56:36 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4764090b0esm2106977a12.37.2025.08.21.11.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 11:56:36 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 00:25:29 +0530
Subject: [PATCH v4 4/6] arm64: dts: qcom: lemans: Add GPU cooling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250822-a663-gpu-support-v4-4-97d26bb2144e@oss.qualcomm.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
In-Reply-To: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
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
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755802565; l=3939;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=3VQznur+3xYt9Fe0EWhXJS8SYw8qMf3aItqAFr+fB5g=;
 b=Ok3JUUHmwn3kmoPssXn0r3Zo6MqD4g7gXv3kqJv0v0HijYzISTAZdNTqWrSdmluI+DYtuoML/
 AIaHut49XkKB9ZJe5MhGtUkDNHyXqyHzBW1ssjZn/UMP3EkyauVWsxN
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a76be6 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WQ4zR0kUUHxS2nCRhxYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: bWHnUAjZyzJ_-GvpfxZy-fSEawRKamgW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX/Z0vA4R+5L+L
 PbcX9WSQwmQWLqDmvM5jG0OgR2U8fD8MRh/fws1z7ZFPytjJAdeGPKEjdF4OoEKU541Z0zjzWX8
 cwUiKwFCjuComBeBbeBCF8LSfGQfOLaYI2cHtqDClJLXsOLSRqAFVMYrQeVbmX/1wymj78CdB24
 Knxvd8M2zY5Gf03w+iCJzCg7e1zViFK4TI3kIgmWlJCXJg/VdCRnaw/mL2+6v0mjvFVsrUJmRrC
 wDNmWkYhfdXk66WTbFAWI6DIC8n2/YQn3K53BFrEEgwi9c6H3FPzk03YIa7Lw7gFQ8UnjO+9a6h
 m2HDxhGhg6UGffLvIAiXff0uP9sqvA5hyYahQzPU32o3H+laJ5HtWmfnBMLUYJgTFjBcxHgV1MK
 8Vg7UigMCQP0M76qirsGxRE2PyX+KQ==
X-Proofpoint-GUID: bWHnUAjZyzJ_-GvpfxZy-fSEawRKamgW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

From: Gaurav Kohli <quic_gkohli@quicinc.com>

Unlike the CPU, the GPU does not throttle its speed automatically when it
reaches high temperatures.

Set up GPU cooling by throttling the GPU speed
when reaching 105°C.

Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 67 +++++++++++++++++++++++++++++-------
 1 file changed, 55 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 8eac8d4719db9230105ad93ac22287850b6b007c..b5d4d07b2fd9c14a6f1cc462c695e864394cade2 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -6816,13 +6817,20 @@ trip-point1 {
 			};
 		};
 
-		gpuss-0-thermal {
+		gpuss0_thermal: gpuss-0-thermal {
 			polling-delay-passive = <10>;
 
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
@@ -6836,13 +6844,20 @@ trip-point1 {
 			};
 		};
 
-		gpuss-1-thermal {
+		gpuss1_thermal: gpuss-1-thermal {
 			polling-delay-passive = <10>;
 
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
@@ -6856,13 +6871,20 @@ trip-point1 {
 			};
 		};
 
-		gpuss-2-thermal {
+		gpuss2_thermal: gpuss-2-thermal {
 			polling-delay-passive = <10>;
 
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
@@ -7046,13 +7068,20 @@ trip-point1 {
 			};
 		};
 
-		gpuss-3-thermal {
+		gpuss3_thermal: gpuss-3-thermal {
 			polling-delay-passive = <10>;
 
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
@@ -7066,13 +7095,20 @@ trip-point1 {
 			};
 		};
 
-		gpuss-4-thermal {
+		gpuss4_thermal: gpuss-4-thermal {
 			polling-delay-passive = <10>;
 
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
@@ -7086,13 +7122,20 @@ trip-point1 {
 			};
 		};
 
-		gpuss-5-thermal {
+		gpuss5_thermal: gpuss-5-thermal {
 			polling-delay-passive = <10>;
 
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


