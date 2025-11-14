Return-Path: <devicetree+bounces-238708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B6741C5D6C8
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9103A361946
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7635A322C63;
	Fri, 14 Nov 2025 13:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DRbJSyjV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h0paXisG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA7131A7EF
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127519; cv=none; b=cLJ7oWA79Ul6AlDBHZ/GGi5taGT7cA5Rk5jEp+hJ/P/lScnmdKCYMv4ib/oi+Ic6tnXvA6Q7035hg/tI09k2/vatLbRygjm0QBCTD66tfhYG9pQZJd0Z2NToweOnra4xB45Dzk16Q81Pd4JckBgKA1d+emOc7IPWmZlmhH00bmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127519; c=relaxed/simple;
	bh=9QruR1Mx5NdAeRhMoNEA8sd5876dKGByzxHRlJ8dKyg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=d8amJ1SKYBv174wtOVo8Cp+hQBLQsA/fYaQQkd9YDnS0FPs6bftU0ZoX+vK+koCFoDoPRHQjZrDRF98wJl3wer5H+xcvnUcVGVqJHVqasUUAYFIK3SxMuz/c6DU5JUCv3VOQ5LKLp9RRjnfmjoZvRV7F6Yb6X9j5IqPpx0DnnkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DRbJSyjV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h0paXisG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8Ul371620946
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KdnkIr5WkQ6
	QKcdZ8Gs3mw6XKqZ93l2WDjWmuqF3gx4=; b=DRbJSyjVBX9KkCQMr/D5xwi/l6Q
	kXw4tqqQwdSVQJhkNyAchyEjBQFP6qpiJf85KNz22u7D5tPPvgvZKELYCqOK0DYW
	gkdmRY0oF3OzXEx5KqtvSbl2wTt1uEdoZ9XpwVKj8HYxBJU9friG8Z09L7E71/4b
	GARQdW9gv3dNItBl3307/1yTUIF+lfJIgHY11B5YP60gQMqqxE4dJhB9Ed7x5hE1
	6K4+yu4qF3H+1DjEDGOoaa3EVZyJlo6YANkJOdgQ8HfOp8ZyDcEWcJLd4FPWQdDO
	F9suiblYjKmRO2uz1XlDiB6GZa0ORxnc4HvJEdg3vX44a62X1/udIEJyvBg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h29qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8984d8833so86271601cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763127516; x=1763732316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KdnkIr5WkQ6QKcdZ8Gs3mw6XKqZ93l2WDjWmuqF3gx4=;
        b=h0paXisG/Pz0lIJIAO3gxXT9ql/+gewtcVkQAF2FMPqcFtM0qbhpg6CJY0rh8kT+6X
         noiyIvR+G8SLfL5FejI77kDx9i7RxznW5zjGXLUTwKykqi3MD2IQa2QgivDtsW7pMpO2
         8h8p4VwP0gzIQW1Ap355KWXxpD0IT26UWW3SCzTIuJ6hKyzl022fZpW16W0Rh7/Zl/iH
         Z1CUGXn1iVOIUzl/osg4QwvOotC5XtUk4WaHC42PFLtQkvvct1P7+F7ZGyh5Yk8mMZY7
         6yXyn4SY8DRMXY6ON9Nxc5ymLnttRXG4ORato+chvMy9F4tB94dPtrSBZn67rSU5ZMXq
         7PCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127516; x=1763732316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KdnkIr5WkQ6QKcdZ8Gs3mw6XKqZ93l2WDjWmuqF3gx4=;
        b=soZF47N3HlRNAD7wdj2yzHUh8qbHeynvl+c3pbRH/NVINVNt/HyPFCNiTCf1/ELEPE
         CAmQqreH8uddzMcEskW1WMTiZnDiVW2JapKZWesYYA4Nfpkokdv1fKo09GrCb0pc/QY9
         JS2/VlfX4slCrOqibyzoTF6lhyLIkHRqlufh2pBtizVojY3xGXLdzY1XJpuf3JEPdimH
         W4VizVeXQTR9rG65sSRpQB9XyJsYVCqPQYqO4IJR44ndGf/71wO0YR8IciJMFMLI10GJ
         9jgMpQcJFlXyHpZCAO3MDMtcPtcDzl1gh3upQNjLCrSjgENVWATcHK7IAj1MFIm9/dIv
         RL9A==
X-Forwarded-Encrypted: i=1; AJvYcCX9PF2yZiCKIPazPrGVfpkv7b0ZowW7P/mEc60xyWbSPYfzx9jnncl5GcaRoPfwuVI0zdIcOJp9GV+V@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6MUux2MtBgP+YxAquSJVaiqm/zsLxA+EA7NV1jo1gMRPLpOwA
	aMpgvB/mVn3bRhjmHkuQfCKhv1v5V2/ZbT3Km4vdD45xouOj6GoMTC4OyirqtgzOLphQuWDwKgF
	PhdLCYcLxgQhzeQfReekUJSrGS1MYibfWeGqbAvVBAfVac7kWHBkXm2HbQAAMHK80
X-Gm-Gg: ASbGncvdOBlZtsvRBcje44W5L4NufxVGdJEyl7WmNtlVX/xCBfiy2DXJ7RG+yK/HmUd
	gbFe+Udia9h0aqgdS7XkCdYWuafYAeXdO5azV21ZoUmMZgBKQHf1Ud2cZcnph4C05C4GzyZT54G
	BEbaCmmmPFOHCl7YSTsCSou1BCBW7LmpD43a2zXQyqMNUQoD0nubXXESw0KKyG/VMCaZi2AYm7v
	bMcrqpbKHvQ/AqFUHXTXQIMW0TcfBNfmsmKzz3922pyKHGpiy7gT2zlMuU1a1eAbzOx2Q4QmwVg
	G6jHSiK+Yj46vWl6ybO4JyVrCaNTpUaRRwVLKwuQWRHI1ahWMj+yarOgCxeDjn+RuKbiS4PamEH
	q3mXlkZrISU0up03DKqKmBDqz+cVOqwL4bkerK1Xlw+ZWGeVcnPiS5yHR7BXYy32UCg==
X-Received: by 2002:a05:622a:40d:b0:4ed:b7ad:6fd with SMTP id d75a77b69052e-4edf20f1efamr44182101cf.49.1763127516108;
        Fri, 14 Nov 2025 05:38:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7nuiryy5wLOzPoLCrBpQvxcS9nqor/7BWrjvbQcsaJkDel++CoGoooU8knJVTPssRHoL1hg==
X-Received: by 2002:a05:622a:40d:b0:4ed:b7ad:6fd with SMTP id d75a77b69052e-4edf20f1efamr44181311cf.49.1763127515256;
        Fri, 14 Nov 2025 05:38:35 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:a4af:3f59:b032:5434])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4ce83dsm3659659a12.34.2025.11.14.05.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:34 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: [PATCH v3 4/4] arm64: dts: qcom: qrb2210-rb1: Add overlay for vision mezzanine
Date: Fri, 14 Nov 2025 14:38:22 +0100
Message-Id: <20251114133822.434171-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ZFgV0EpmvJRzGJenMjq-1mZsR9Dri4LT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDEwOSBTYWx0ZWRfX4UHS04Dk4xiy
 eoRuVE1nMfCNYsxr7XELPVPyg3pBx45mb7beUeuRbgMy6aytzXvZFA/Ra3D9oQLl5lhIt0HBVNn
 5eRww6jgouKqM+y6fysUIDZwJPOkUjF/be+qyBeLABTb7j4n3XgQF91bcPRcDUgxDzqTJN+kO3q
 NwuyZVcOiaN9i2yyDqmks9DSRYWgYEYR3ee1cdJA6dHEU5RAEG061SDaY5VTFPyvZqn+8aYnRBx
 bhQ2mAeN3vc3sa7KY56bZYZtimpWDM8KxNqz6B5kk8UWObK5sNNkljhBlwDM0HSLp9FzolVQSBg
 +IroQ90ALyddAV+bp1VjGWpIymFgjHSIWlKq7aTjYQInq+Zw6k7+V2TqgjZKEEaUrfc27H+j0AK
 3lUgqfu31WdNfolF1BOYtoHq8CNRZA==
X-Proofpoint-GUID: ZFgV0EpmvJRzGJenMjq-1mZsR9Dri4LT
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=691730dc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=7LMiiagzcmBKsUgaGM8A:9 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140109

This initial version includes support for OV9282 camera sensor.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/Makefile             |  5 ++
 .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 65 +++++++++++++++++++
 2 files changed, 70 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..af029d04758e 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -144,6 +144,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
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
index 000000000000..6f3d8de950ad
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
@@ -0,0 +1,65 @@
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
+		reset-gpios = <&tlmm 18 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&mclk3_default>;
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


