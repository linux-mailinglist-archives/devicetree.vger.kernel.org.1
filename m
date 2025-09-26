Return-Path: <devicetree+bounces-221778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26571BA2D03
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A19D7A6ACB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165E9286426;
	Fri, 26 Sep 2025 07:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bwVXIY+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF5728980E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758872076; cv=none; b=Sc95Jmw75Opu8Neo2oNZtl3tKNMwAOwrq/hJEpAYEC7GXDyzo85buhCBcOXTHSYCB433DluBCxppA2Eh8myiM+OmHC0GtlUPGAErS58GgIAsCNRnB73JL82UjmAgCKaQnlMWA/+ukNrqAXmmKRoePyZHXTV0f9J+Pwo3rxB4R0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758872076; c=relaxed/simple;
	bh=vgrsRGF2X72LzCSWHnhcbeAYtX4kO2jUD2JtNTJYzxE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W2Wh0NDvNkAPRYCn+umn5J3U9+m9WQzpDuy69sBsbdaAX3l17J/AzWVg3wePIb3PB9214Qu1R8kDuCrxdDAPnhly82Of4FX2xklFsmQNJVLUUxQiWwFYHNC4hLYOq8K89P3wpVEhR47pjxQK9z0JQ18LfmUONXVIbCu3iLJs3YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bwVXIY+E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q7FDp3022820
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:34:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+mmgz37Uv+A
	eRgPO+mReb10DH0VT6NyGPQbQD7907lA=; b=bwVXIY+EMAZEdAdHZK1ibzrKwCz
	wJyoUtKOEEsQ+Nr2lfSX2m6uRcfdho8hO2KHPOm6O4fBDZopf3qBGKSqHvhQE1pY
	nrNtXUxbxeHscR4y4vFEPdg1Q84LbqtA+i8pv42wq+p1k0t/eAEi/IEqjUIaXmKZ
	KT4jSW8LrHMYxglg3SyEfSLi73iCJF/9O7uK1boNdBJLMCsWA+aCsclB57IHTi2k
	hR7BuyLcatfOYXYvtdCapl72USG5epdDFivcQK+XlTl7u5R9lY5jiT/kK2jYiEn3
	LempB58ab92YsRSEF9ofIWnL9prFULtaqXpzfffVGIWRhlXB+VaFWpdikZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qswyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:34:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d91b91b6f8so38459281cf.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:34:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758872072; x=1759476872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+mmgz37Uv+AeRgPO+mReb10DH0VT6NyGPQbQD7907lA=;
        b=oGif+/Osm+4grGb+j3L/j5topuGwYHH+CdByRz2ZVvAzwmd67cf2tz19lTTGdP0Tza
         l0zsapDZuM7EGDb/ZEz/6yxKzZWZt7qmoIix4ycE7GBFUX3CzR9qoDFTjag4feRrJl4C
         60GDz9uj/enuWEvZc9xBx9YqyMrJi0uFGBfX48sMj5yWJovIlW0qGyRYoezIDx9rjeAo
         fJpSn3qn/Bd8DfM4Unbp8hKt9Ay6CzKp+nu2ZrMra7d2CtucYL8l0vpAq8qU4D+UxLrl
         D74zqCgBa1hVg3wau+h+NQjLlmMPg6vQpEj79P6xh4/kU01FrV+CxIwcswZidI0NWLiT
         KFnA==
X-Forwarded-Encrypted: i=1; AJvYcCVG2fi5/QKE6S3C7OIq5xL528lQTmN67aaicHvMvSGLVSKP4KbVV8StTelFhNkipq2M4XpCrFrw6LRE@vger.kernel.org
X-Gm-Message-State: AOJu0YyGJ9Bb8+XZ8kTigIUx4mIU8AVnzLjRjzNgjUhCOMp7gKJF85vf
	g/rJIW14XqHzKSzTVWwMhGaIhYJto6fV16fOEtpVQh7o5VRcQIG/rLmRDWo+2D5mT3egJWDJZ/L
	BKgDZwzFvy80txc68W1YomkRZ6I4KbQeF0uxMVXLQJsjrmCNTixQ+hk2jU9lLjGP8
X-Gm-Gg: ASbGnctsZSVi4noiLGZ3G+bdIrD/KjgYUEfxFbxqPTq1kSv5AYSc/+0jOvsDPEwN62M
	9JWjE8i39pZDxMJu8UGOi4eJzYvw5+muZbnexx4kaj+LlJs41GTRzP8HQ6dVlX7UodfIQ4Sjwfn
	24Fwz4LgpATl4n3EsPkv8i3yqvV3R5AwdZ+WDSg8b8W/+VImQrzoyhdQMIrKVceNvXowxhsT38w
	GsAkwtKE3eygVPjb3pBQCZPsbzf3QYI4O6oU1aT38p/sC+PC7emth2OoK88RZWxyKTq6tQcM4yL
	EMCG5ZgabYIB9KgWtQeO1Hzk1T8YMh4y53ccPUfFV6fzP+E59mu84FOHDOt/wBwHetUL0kAdVjo
	lCjjQmnP1iAmyXxHh+t1YE7Wem4k8
X-Received: by 2002:a05:622a:5e0b:b0:4db:29eb:901a with SMTP id d75a77b69052e-4db29eb9503mr44240431cf.35.1758872072325;
        Fri, 26 Sep 2025 00:34:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGshBzJtM6YOzHmRdy3HJRWysdkNo2IWZgWC6jZEQ/Za7M7pO+C0xrfpw7CSBrVs87Z2qJsaw==
X-Received: by 2002:a05:622a:5e0b:b0:4db:29eb:901a with SMTP id d75a77b69052e-4db29eb9503mr44240251cf.35.1758872071852;
        Fri, 26 Sep 2025 00:34:31 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:5de9:cd6:92fe:bfb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3544fd0a54sm320481666b.86.2025.09.26.00.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:34:31 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 3/3] arm64: dts: qcom: qrb2210-rb1: Add overlay for vision mezzanine
Date: Fri, 26 Sep 2025 09:34:21 +0200
Message-Id: <20250926073421.17408-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: iy7oDBGcVigxD5ObpSVXBEk4krhopNaW
X-Proofpoint-ORIG-GUID: iy7oDBGcVigxD5ObpSVXBEk4krhopNaW
X-Authority-Analysis: v=2.4 cv=api/yCZV c=1 sm=1 tr=0 ts=68d64209 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=adKDawEoGyzw0LH5ae4A:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXwR8guznHi98R
 q+IhdTseSCD7I5pQF8UIXInWeMP3fZLekZPFZrVJOl7My7dBIxkDbGsIVqAGn+r6xiqQ8TNfuYw
 AITyHf5G0y5YvAQAOIlKWt41CCXHXa98lMRtMSnimDKmjfj93fJXaAx0iBJ9EaILpY3CO5snrI5
 94kGrUtNQoQNXlvn1fJsYTcenYVOnYeCc7u5QScXVrIUIpRqrnL5oO58CuGk17OSgEWstnkUxd1
 brbB/KKYfkood9yd/U8zpc46YXBXf69nLGGT1GPRJzYwmLswpcMENOWCRJBogjAewZpm+nxRB2B
 JALCGmtB2FfnFyTWsxmiaa67X6NYBlIeZgZn1sx7khue0HDMLQd4p5DvFZkoV9wrzyqiKaycPca
 9hes6QDWUvFtzA7UiwChDiikfqPOsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

This initial version includes support for OV9282 camera sensor.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  5 ++
 .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 76 +++++++++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index d7f22476d510..bee021efc249 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -138,6 +138,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
+
+qrb2210-rb1-vision-mezzanine-dtbs	:= qrb2210-rb1.dtb qrb2210-rb1-vision-mezzanine.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1-vision-mezzanine.dtb
+
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5.dtb
 
diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
new file mode 100644
index 000000000000..3b6261131b75
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+#include <dt-bindings/gpio/gpio.h>
+
+&tlmm {
+	cam0a_default: cam0a-default-state {
+		pins = "gpio28";
+		function = "cam_mclk";
+		drive-strength = <16>;
+		bias-disable;
+	};
+};
+
+&pm8008 {
+	status = "okay";
+};
+
+&camss {
+	status = "okay";
+
+	vdd-csiphy-1p2-supply = <&pm4125_l5>;
+	vdd-csiphy-1p8-supply = <&pm4125_l13>;
+
+	ports {
+		port@0 {
+			csiphy0_ep: endpoint {
+				data-lanes = <0 1>;
+				remote-endpoint = <&ov9282_ep>;
+			};
+		};
+	};
+};
+
+&cci {
+	status = "okay";
+};
+
+&cci_i2c1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	/* Vision Mezzanine DIP3-1 must be ON (Selects camera CAM0A&B) */
+	camera@60 {
+		compatible = "ovti,ov9282";
+		reg = <0x60>;
+
+		/* Note: Reset is active-low but ov9282 driver logic is inverted... */
+		reset-gpios = <&tlmm 18 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&cam0a_default>;
+		pinctrl-names = "default";
+
+		clocks = <&gcc GCC_CAMSS_MCLK3_CLK>;
+		assigned-clocks = <&gcc GCC_CAMSS_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+
+		avdd-supply = <&vreg_l3p>;
+		dvdd-supply = <&vreg_l1p>;
+		dovdd-supply = <&vreg_l7p>;
+
+		port {
+			ov9282_ep: endpoint {
+				link-frequencies = /bits/ 64 <400000000>;
+				data-lanes = <1 2>;
+				remote-endpoint = <&csiphy0_ep>;
+                        };
+                };
+	};
+};
-- 
2.34.1


