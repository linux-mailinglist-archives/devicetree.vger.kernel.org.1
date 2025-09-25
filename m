Return-Path: <devicetree+bounces-221165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 626A4B9D9BA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88DE3164ACA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A6A2EBBAF;
	Thu, 25 Sep 2025 06:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZcMZnTJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E03D2EBB81
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781776; cv=none; b=S03klBAb6o3FDPDNsSODihc187Vqy3wJyiZYIQPvIC5XTnzUYXseZUC4dVwwMCBJ9qlH4NWu24/gkLUywAaL12NwE+xYqSHxDr/82hympXTDpuJydjy94JSbFbWezolEP3B+yXTxM8GzScEVASzgrBFcI7P3St+kR8AD3S0xUnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781776; c=relaxed/simple;
	bh=yDgdM8Of2hyqaQlw4iDJh/MVPzu7jFD1m4YshkXg0a4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LAKBPjmXu/Sb3CJ/ingF/n5U1Xv3mb4nYnB3Iac5Ab5DQ2Y47CJDCIuj0Gh+zMVIcahf/hMzdoUvSWOkaHVyaCz0deHQ6DWdha4SRF8QP89g22hEa2Mw8p0DZcfvX6iw3Fb6LNt16ZJiQ+vBkSynJWdAdBNCRtAf8FuMQUes24U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZcMZnTJZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0xF9u002400
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pRUMfA49GMLn5RJ9Yoh5tMe7BcGYfvc9dHpNmBw4CMI=; b=ZcMZnTJZ82z3hasx
	XrzfMEOm9V/P8woxeTTJ5d3Gn8Gn2i/mJKpjf1G9RkTernl4j3Z0w6RM7wvKjQM0
	VppYdXyrYrE5rEwh6nQOF3tVTK0+xYU/mt21Nka19iemsHvvgo6q2afWL+XzO6mq
	IUoHlYlSzbJHBnPud3MuSLaE0Uka34gsI2Nw2UNoj7yyQfkVri4NL25B23vlziwY
	qBdPUqb8X0R2PVEC/xUs5vXfSdD9RCLQd/dXek2PJfJkDz+cuRaYj9JLEJl4vkDB
	9c5zsW0zspWntrF4I2FYgLDrTDgIIwwdjhIoF/oOwMxHEELV0vXb+J55XDkOnz7F
	KMOHuw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98q0fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:34 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f610f7325so556844b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781773; x=1759386573;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRUMfA49GMLn5RJ9Yoh5tMe7BcGYfvc9dHpNmBw4CMI=;
        b=LjliGnC2fZdo5PfMpCZjovsaYB/fICyWTVga/zXWCAuAMx1G3VV261qh1Kzv7aQYyL
         +n7ZQ8fu6Q8JVfp/iuEqSsQkxSnY1B2bTciLxssrCp9xK0aAW3JCkBoeJLQRqDD6cSa2
         0f9Ih12RI/ESnub72fv6b+n9rvPEyhA5FQ3jRREZLAqO2y9+2Cw5diP3Tq9FvwBT/W70
         zjMPtnk/E13HchSp/I6J8NfrV2Y8dhMJrdbdKf/be6yB+SINn7rZKhQXLpHfzKRrWHqu
         hfURC5FOzTPwLN1i+rtRk3anhIJNsdw6doF9YIu1f6+ytFwgpSaONGVPCEwgJn4O1mH+
         rpnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqKpHSk2UOG3ub2KC6GAWLdkfxUbQkr1W3JXRJHnHekm3SSs0aNMEnNCLFhVdTWxJrF1Tndd0q3ngp@vger.kernel.org
X-Gm-Message-State: AOJu0YwAhNjNN7pSABcGF4oHDyFTBDuCTrnS+NPu6TZBNMKd/f64Ch3C
	xUb+TrbKEFBMgNdzzQcaUWO/AER4wWUQ/jCZKbn5sXOYfhZV/lINtPcbsA0H1K/4CAhxfBc4SEl
	C8972uGOStHS2rm5LsAb6D5TsRAKRm3DJMJoewaMjAQK7A42ZNyUCgyl1vabg86LH
X-Gm-Gg: ASbGnctcoWueCI9UjEwA/J1ZfZVSz8QCUs7hW02lhK7OqK9LcF5zXQAeVTDheguYzGU
	6NUjX6xbwZAeWuYobSzG2rEeVkLGdc/wUK/W/IfD/L0QIs6eUWgXNEweIp09kOJ4TprKAF99Xq/
	E/GYHe0nbJTdCJ3rCisqdRpvLu395WaNMR+HUKtphQuOAl1sUCtDl4LBeH+CYZhQegtT4FObvJB
	e0ZuE3UJk9oRJiKItvrqfexJwsXa7c7xkfRXXwE3PyQOUm4yNxl1k5E+1XVf2fca2j8fcN0Npd4
	oj3maTsVh8oYEG9ln5cKqbbS5xBNdmCECYrGR7TI72qnenyRx9G1oG0IRNrij9H2YNSGHn0BCTk
	vL0Sy+ZaDBvU/TeNW7Mxq59EqalCWibx3eY+xXkWFJb+NRIGZzDyWhDqaOHBF
X-Received: by 2002:a05:6a20:3ca7:b0:25c:d1a3:9e11 with SMTP id adf61e73a8af0-2e7cdd9eb49mr2996060637.36.1758781772844;
        Wed, 24 Sep 2025 23:29:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBoJFwPh69kFkBioDjb0K67X53z4zIuShkhKpTzgKnxs3k0RnS51fGAJx2tTIFzYtTPZrRWg==
X-Received: by 2002:a05:6a20:3ca7:b0:25c:d1a3:9e11 with SMTP id adf61e73a8af0-2e7cdd9eb49mr2996035637.36.1758781772400;
        Wed, 24 Sep 2025 23:29:32 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:32 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:17 +0530
Subject: [PATCH v2 11/24] arm64: dts: qcom: Add PMCX0102 pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-11-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: 4ud1DTR8hHsCJV66Z99wGBhE8s5ND4oa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX0xNO0U1bQ1lQ
 haB9Y/vvTxrbsVTlaYePZ+dX2EpgsRebUIIuYXU7H5mMSBJQmu6pDy4APNuEFIqAtxiYGrSooEe
 RDiJHJK2oILpI+Cnv3Q6QasXZ/g5NRST95bAK2xsc8PcwOAtFhhnEmze5+eCJuU0nPXI7cU8QAC
 KHlttzUOnvswoxvxYYMHhuK0uF2wOulSjSdovcnBcLABbQA6oNlIun8riiWMPJ5EMG2kyh8SC8i
 LTghSY/RM9mVXd0jhF48a3iBmx5oFp9E0Gfd2Qzy3vgu8Igww8Mgvfl7HtKEUxHBcW1egAqviAj
 Z3uE6TyrV2V57NO7yc6v3b62JnXaU7o48rTLknfRW6qEcFlOtl8PsICviPa0Iy3na+pQb9VHqrm
 kQWXCncL
X-Proofpoint-ORIG-GUID: 4ud1DTR8hHsCJV66Z99wGBhE8s5ND4oa
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4e14e cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=u-g3E67TlB3pepnp-YkA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

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


