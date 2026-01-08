Return-Path: <devicetree+bounces-252929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466DD05469
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5E8E3007696
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BD81D47B4;
	Thu,  8 Jan 2026 17:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XjzIQFeV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YR921VKt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3135C288C2F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891963; cv=none; b=acXHGNdEsTflkn/QhI0gdsuESZoDj1BDBVZnFJJ87bRlnYpfMr/9vqd8cfBc54SqV66wkxGBQSD6VATDiMY6bKZ3FPr79FunKbmP2YjsmfYIj4iGLqfFhhdW2hLT3mTy47pYPHjJalQr59hAQiahAfph4P0EBNQpEfbj+LK1Tjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891963; c=relaxed/simple;
	bh=m61eMS/4Zf1kuMzQQJkinZ8IQRWkDw0yg3iKL4VHoyc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sT+voA5drQnjpenHxzZGfG6uG4jhC4CNC5rBuaO7beTTJbo++glOoqUlTbX9unxSyFhbAw0NuMGNvedW2P+9NEtR7rtH+uXUhOJu2xUDoC4bI0V4egm2YEMC7eVG+f4JKh65GIH6xwNLJJ8TFwzEMz7AvPI4EWHs4TObW78cfww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XjzIQFeV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YR921VKt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608F7B701495656
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 17:05:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=poTbLM0qPOc
	Pg8sP6szKFYdlzJPOHxetHWTXDuuHwzo=; b=XjzIQFeV4dPnIHd78Dx6CWf2Gib
	xJ6Z1o2lqod0WNAiacrH+mNVF/riXHYaUHLrAShekiJFqN1igTh7nRxehVbcIJX7
	reIEHS7gNu1P/p+H0Qzj2XoGivt7tr2t6HS9GbcGiUgRx4BLKPiQWBwPAjf1Ujl9
	HS4kUT0N/b2SaX6GjiwjkRQFZL8ft9LCVXD24mjJSIGRvgsK+M7HfazKfq8v8UH6
	KJN/vkW3clIbjMm/2RECiwQXwljhYDHFxnwUSc8o3v/F8aXeQBZXVt9P9hPZwVzN
	pIakfd4Z3xtLFYaqfgZe0u1OzK2DiYGrd3dyu6Z6B7voidsQ/a6vEEZZHvg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj7ua9u0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 17:05:59 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56344627228so1326848e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767891959; x=1768496759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=poTbLM0qPOcPg8sP6szKFYdlzJPOHxetHWTXDuuHwzo=;
        b=YR921VKt/Jx/8F80H+bTDvjSuZRv2Q31B7qBbhhUfVjc4mxuQkiMYvGmQdq9MuzqoG
         NnMkd3q088mg9B++fA2xo9Q/yZVHhwBtsXbuYUlqgqPLU1KdoOwBh3nsi4f45rAjvd6f
         yk/SL2i02egPQzmZYjasoVvzojnvudPQw2DSnXX1Rdc2pG+awn3tZWCE0pAjuDNDvMJW
         cyjYUIbAWO71+SvOvLSp9FSeNZk4vOhkDvT4ukSXHn0GyvhddZUYeIEWjEJg5AZJg7W6
         Hbd2QDVklYwpJIUWQFt0Wz6QyPP0JAw6pxq/dv2hS3dukXM6dgBbVnej8Lw4vy3Vt3aw
         vgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891959; x=1768496759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=poTbLM0qPOcPg8sP6szKFYdlzJPOHxetHWTXDuuHwzo=;
        b=pjeWj33sRTbRMhSdf1bSJ6jySK1Ecjh+ReM8cF4YFiLSZWk8sUidzS1fJcMB+keQVc
         52F1hDOWilcsW03PZkGRgB7uWBCrL5oE7HDkqZKBP5St/2rBrT5Dzuu4YdhSd25qLACa
         ANOnWi2wfd7vibK8u57G8imUWRuNFZEZXzbEuNXtXNYZfOrWQ7ZF0YQw+u1YOPvnUjyP
         whrd92Smye/18Alzfz7Ypy56mn5DwjYJ3hKfeObfMkJlNhHfMvjI6uJy1y+39l1aW07w
         CKqd99HHs2ykamKVrDBocx2NshCmW/jtnkANtLx+Y92SQvDlJioD1ArImw3wqHH7bVrf
         TJSg==
X-Forwarded-Encrypted: i=1; AJvYcCWYOcPe+qcr2NbEni/Xno8mvfTy0LLnjLbLaPtsDIbZS3vTos6szSFzAoDeyYGkAWgEcdGYhEx5Mw1V@vger.kernel.org
X-Gm-Message-State: AOJu0Yww8xA55D1EJj6S1xNqFpGA6/M5JCEsJUWQs1afzL+YoLYz9Qvz
	y3icNadVtW12QilXnjLNsJEYc27MQomDCfKYh0YxcjnSV3mDlgBBlG6sk6SpLXa+OcrEwds+zba
	qc3q6iiFf5yrC3ssl0IKDmIas/5QmlFeQ5X85puSJ6emp5HgaCvA2gKr8VGL4YzVb
X-Gm-Gg: AY/fxX44IOyhkMs8fcbLD3Alz1MZtQpnxr7ZT4YReZJJ5Iuf03AOCbVhAXfhWSKNjDo
	UPSabmTf7QRRFu5FYNT01DvzPJx3v3w/FyQ+TxDNKvgAWixRPj48E84VDs2OuVxUck/+cec7K/S
	Zms2hpgOCkKVtC5XyhQtPugMRi4H6uCPziWGejd7AYXvioOuUP+fFcSWIybVvoFQ6Ah88u/Z3up
	szIokVparQiFdT6t0WSkaSxbIabCs16yQVHjj8SKcDgu2FLKL6wYixSCa2jCkQILMO2cgOz55/d
	dthosyAYH9ye0a9e8wvaOtw1iJUTue5rPcaA9AHLjeo90JirfAYFwvVINcg5+sjKNeBo8QfxBmT
	Yqs5CdoXWsCGxUeNIMyVPOd0Ks7MWv2UgfxWG4QZGF1sYHy7nFD9ivpjd7X+5Ema60syRooxp2R
	os
X-Received: by 2002:a05:6122:31a5:b0:544:93b6:a096 with SMTP id 71dfb90a1353d-56347d709ccmr2033193e0c.8.1767891958765;
        Thu, 08 Jan 2026 09:05:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb76LfjrtNIkVRqmQVTFXCumyvjfN1nLseaAzWjXeZ0LJbchDS1VZTVh+FseS+F4udfSN4FQ==
X-Received: by 2002:a05:6122:31a5:b0:544:93b6:a096 with SMTP id 71dfb90a1353d-56347d709ccmr2033142e0c.8.1767891958322;
        Thu, 08 Jan 2026 09:05:58 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a2cffb3sm856373466b.31.2026.01.08.09.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 09:05:57 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/3] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
Date: Thu,  8 Jan 2026 18:05:49 +0100
Message-Id: <20260108170550.359968-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
References: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEyNiBTYWx0ZWRfXxKify1cBUwR4
 TVmQmD29uQqpSQ4/KBWj24Wont4s55d1lIOAWBYbPUkRIVU3Pssf46gsPg/e4qtGPnlqILT5Kws
 DJ2EHfZFDY0uQI2lg/rk7jt13DkuYTJyZuKZziXljRERn/FgCq5ejudqaCHrdbwLMJti5QkMXA/
 v07lUIbv+T1j+j2O2v5dZPhspFsZKxvZlDI4MK11ysoAoNlkzN4lQgkzm9cj8BeahiDr009pLzu
 w/uL2Qxr6TyVITqpsLofpVsUO5pqa4vi6cIVX1P9voJs3a64dTzlYqLQiZK+CwG0ziRwHaIUq2f
 u/lywMnGhQ9PtDsM23EL1q+6QcGJIj6EZbCB6bcE2kPt61B2SlaJonRHPEK1ZSNpXGnKQQkoCbN
 DrmBddgfZbLL+Yzut4j3crwqY3X13pxcS2o59UgVJ+k3sXDv5TX6htl9IXBK+wX8wqR2DdMpsi8
 szjdhVe56+nzbnReYrQ==
X-Proofpoint-GUID: T8VM4I3_WqTE770Fv2iL3dq2ydNlO5dK
X-Proofpoint-ORIG-GUID: T8VM4I3_WqTE770Fv2iL3dq2ydNlO5dK
X-Authority-Analysis: v=2.4 cv=XMM9iAhE c=1 sm=1 tr=0 ts=695fe3f7 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=XkKmpa5t3BpS1E1QlwAA:9 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080126

The PM8008 device is a dedicated camera PMIC integrating all the necessary
camera power management features.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 75 ++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 1b9ca957a94b..9814ac4896c5 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -267,6 +267,81 @@ &gpu_zap_shader {
 	firmware-name = "qcom/qcm2290/a702_zap.mbn";
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	pm8008: pmic@8 {
+		compatible = "qcom,pm8008";
+		reg = <0x8>;
+
+		interrupts-extended = <&tlmm 25 IRQ_TYPE_EDGE_RISING>;
+		reset-gpios = <&tlmm 26 GPIO_ACTIVE_LOW>;
+
+		vdd-l1-l2-supply = <&pm4125_s3>;
+		vdd-l3-l4-supply = <&vph_pwr>;
+		vdd-l5-supply = <&vph_pwr>;
+		vdd-l6-supply = <&vph_pwr>;
+		vdd-l7-supply = <&vph_pwr>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-ranges = <&pm8008 0 0 2>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		#thermal-sensor-cells = <0>;
+
+		status = "disabled";
+
+		regulators {
+			vreg_l1p: ldo1 {
+				regulator-name = "vreg_l1p";
+				regulator-min-microvolt = <528000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vreg_l2p: ldo2 {
+				regulator-name = "vreg_l2p";
+				regulator-min-microvolt = <528000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vreg_l3p: ldo3 {
+				regulator-name = "vreg_l3p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			vreg_l4p: ldo4 {
+				regulator-name = "vreg_l4p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3404000>;
+			};
+
+			vreg_l5p: ldo5 {
+				regulator-name = "vreg_l5p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			vreg_l6p: ldo6 {
+				regulator-name = "vreg_l6p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			vreg_l7p: ldo7 {
+				regulator-name = "vreg_l7p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+		};
+	};
+};
+
 &i2c2_gpio {
 	clock-frequency = <400000>;
 	status = "okay";
-- 
2.34.1


