Return-Path: <devicetree+bounces-221190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E290B9DAE0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84FBF3BA20A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:39:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E392F0C55;
	Thu, 25 Sep 2025 06:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OjjOL4I1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE592F067C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782039; cv=none; b=d3la3DcYFUVdAAay068KGdbB8lxLMqA5IWSWd7ZRpNSKGXSehIIBf+Q69DlmZI4IC/xB1hiFCBP2yg4cV563Wi/WNp+AomFwH0Jymego+dmuhVuRkZc/SpHcAAtRjQxiRmXQ4FJZ5CbqXvJmTAiqT7aYoJyRSQgumiSPI4mgURQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782039; c=relaxed/simple;
	bh=yDgdM8Of2hyqaQlw4iDJh/MVPzu7jFD1m4YshkXg0a4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j3XJIRv2nnMcHkL1rnDN+pJJW3XT/Ox5zHdRAPPmbhR1JoIxfAHiLrMFFTtYzD8IIry/NWy3PGS5Twk2lXOhch5M9MDJSi2Hg+hjtR8FnGeyalFvmuFZUhVYGCjAYEmSCRullFKjXw24Tm9snEzsEIsIgTljzIXO+4ItuWEekQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OjjOL4I1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0oppl002792
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pRUMfA49GMLn5RJ9Yoh5tMe7BcGYfvc9dHpNmBw4CMI=; b=OjjOL4I1y41jrzd5
	N+zp3P1gu3UMov8jjHxHqT9pGcWLlskQvbkUNdVMJzOvSDtwwilmS00SRyBjakeB
	OajgcwqpLKKN7Rxghdq12srKCkpMdjX8o5g7kFf8EMzBwbQ9Z3APsiX49djRE0Yp
	0p3t69RFxpxdFuOkPH212dctkG2XomimVAW6aiFyda0HBZovEBHvcVixbcRGF79u
	kubqXo0vyQ65601COQ8f5IZS754Gn1omU4zELhZvvEjlxwofXmh9VJT2btKAT6ZC
	e+RVnejL/iH++5r8o2tkyyJI7yw8XaBI8zgMjZMKMNh+Ec86XpPF6CIUT7eOTVHK
	XikcIQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jsa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-277f0ea6ee6so7266195ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782036; x=1759386836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRUMfA49GMLn5RJ9Yoh5tMe7BcGYfvc9dHpNmBw4CMI=;
        b=jLW3CkZwt3YRJbWcHoJPxgMQrBIKNX72LiFpMlh6iKcmBGQ7hpYjaol2OaXRagCxml
         2RkqoxUx12DQpRnQezt0SxVOxPR/y+O0fE/ZBVQM8Ox/1dAgl6rihALBXhZZEBwTaONe
         8iAQmlJde3QSTepufJFq+JyUv51FDjTG0rkse9b8+wSV3P5p+7VvDJhC2Fia0yLn4qeS
         DVWHSDYSmlkY+fMnnpHXQv0sBeJ+YgknZVSMCHpicuszwJmfXnSBQ0xbE5v3pFmuui93
         HGF5LAfc8bkiI/umioAnALci1Xej05eNjiUCMidiMdpu5i3sHi49Ode+JqpkVEtMkA+m
         Au7g==
X-Forwarded-Encrypted: i=1; AJvYcCVMLuubpvAL3HmXolqqZrKnFAP9MQxpTAJMRiHoBhjLEYWG+jOfbFqm27P6LAmaiKTCivpk8Z/wJAVY@vger.kernel.org
X-Gm-Message-State: AOJu0Yymcu60sxciP+u40RGySCOiTMDwN838wG5dp/W42OlX3uMsXQwx
	q8+VMm6+n2FxUfWjY6jfuWi/XmHWn6KhWAPwEhGG/5NtvZ4RWfdtlyti2cWMsmOxXnXVya9IzGs
	G9ndIS+Vh3ZtQsKNC1r6kDuMkAMxrIMjtp+/LDBZcM013alYqkD89WJ9e8OQQ/1vt
X-Gm-Gg: ASbGncvqo8wqCTAK2UGSF2kDmg9MmF0ALD+kuBRMP9hf+rjWV3yR2y+W+u29LQGVeRj
	GG6TVO0CX9VbFgPgpBH1dbV7HwpJAwpzEi2LHKe7z6ggMokcAUTRpEK08kNdgJRux+RX4asQOWN
	HUsVwt6YuPxornVM3ym/jSd8o9bRDzrqTv+OzZWB3atAEJAeawzWFrhIs+gCGBmJp15mb5c+e3V
	d1gL5YNqEm6LYQySPswS2SSiiLEHcAvOE1RDqbRqNkqvikwUV9HwltBwUyq46LoxXYmfX9L7oP1
	hrtHvsqC9U+x3XPDXtbxL6rREwwAmYgqSzaMKw+72Z8550VGOCVZ6j+BF64YbeGJrWZscY0kbbZ
	sDAZWH1+kALKzSZJ+wPapJCDDnAuDA3kyQNc2xZtPfzST7k1w0L5irEuv3W1O
X-Received: by 2002:a17:903:ac4:b0:25c:76f1:b024 with SMTP id d9443c01a7336-27ed4a0e498mr28589605ad.25.1758782035680;
        Wed, 24 Sep 2025 23:33:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2LvbtRU1TM+vT096Iuf+SpAzs8/uamGMv8ofQmta/LcDScBT6DUZzfTUwhbJe4wRHBkRkSw==
X-Received: by 2002:a17:903:ac4:b0:25c:76f1:b024 with SMTP id d9443c01a7336-27ed4a0e498mr28589325ad.25.1758782035198;
        Wed, 24 Sep 2025 23:33:55 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:54 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:19 +0530
Subject: [PATCH 11/24] arm64: dts: qcom: Add PMCX0102 pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-11-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: vdxyyLOk0-AljLdGrcMxPiAAnTbm45qj
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e254 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=u-g3E67TlB3pepnp-YkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4JTB2yZfUksw
 GnEXVpJZU977ITEPxWcYJ24+5LVeI/hwAkExNaj1OW+32qmz3+50QVdPNK84QkTnLxQuANNFHuM
 xyahWUX62G2EvCu7V7+DOdWXdqfjCJ1YY6FcEtqmoefg/Vbpji4J5pwDh0ZLnGFbEM1p6lzxBTE
 3ysUuNyB+kyALIMvDpVb90WduzxdY320z+TtpH7vr0SxQYgXV5otaF8IY8EW4DPc9ooDd8LQqOd
 bU71HMHAR4nO3LIRGqZCR3mVp50k5C1BP15hnm96AkpXRBz6f+3cA3/MuTAEfSApAiWuMtGyv8p
 ATawpBPtwcB2eSaFM7Q+Zrl9jx4tbesEsVxYuVGZk0N/ptCxmEAmH70HSsmH/zn9xhbha1yUHGa
 /D/r2xKS
X-Proofpoint-ORIG-GUID: vdxyyLOk0-AljLdGrcMxPiAAnTbm45qj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add base DTS file for PMCX0102 along with temp-alarm and GPIO
nodes.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pmcx0102.dtsi | 179 +++++++++++++++++++++++++++++++++
 1 file changed, 179 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmcx0102.dtsi b/arch/arm64/boot/dts/qcom/pmcx0102.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..839738dda6cd5016df134a2fddd92d3ae7c56133
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pmcx0102.dtsi
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+&spmi_bus0 {
+	pmcx0102_c_e0: pmic@2 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x2 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_c_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x2 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_c_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_c_e0_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	pmcx0102_d_e0: pmic@3 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x3 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_d_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x3 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_d_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_d_e0_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	pmcx0102_e_e0: pmic@4 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x4 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_e_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_e_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_e_e0_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	pmcx0102_g_e0: pmic@5 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x6 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_g_e0_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x6 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_g_e0_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_g_e0_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};
+
+&spmi_bus1 {
+	pmcx0102_c_e1: pmic@2 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x2 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_c_e1_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x2 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_c_e1_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_c_e1_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	pmcx0102_d_e1: pmic@3 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x3 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_d_e1_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x3 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_d_e1_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_d_e1_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	pmcx0102_e_e1: pmic@4 {
+		compatible = "qcom,pmcx0102", "qcom,spmi-pmic";
+		reg = <0x4 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmcx0102_e_e1_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmcx0102_e_e1_gpios: gpio@8800 {
+			compatible = "qcom,pmcx0102-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmcx0102_e_e0_gpios 0 0 14>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};

-- 
2.34.1


