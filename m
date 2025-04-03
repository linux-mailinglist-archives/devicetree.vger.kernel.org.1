Return-Path: <devicetree+bounces-162912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF576A7A269
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 14:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4153B7A60B9
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 12:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B3124CED6;
	Thu,  3 Apr 2025 12:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qp2kJ4GZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6006524C66C
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 12:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743681820; cv=none; b=pSL6TIIkR6klhYumGi0ppe4rHndDC4vdnB5aiFearCc1sc4BXxG68eQ0uGZZ5RulRDCsysJEjhxpT66bgx7/bQmQ9k1XflIdqQ9yitXhfKdKN8OcsoWO1/tYMinxRLSBZL8pWXQJVkpykp3Ha2J35lVC1ZVPF/jdO+gEu41iOxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743681820; c=relaxed/simple;
	bh=XwZi7SYJIYv+5H5DHSRbphfyWXnhLBZIgjdvfOw2XTY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i8Z6h9E2qItkjWhe01GcHwFqTzU6/d7TpcI2jb74+43e3RASNVL/DnT7j6irSnm5BycKivC1SRh5zGWUS/pJJ8PrmGR8JPpyB2Uq1Q1guefaufOy2zXR9jqTxHwpPGdz+TpSovyy6Pym2HKdIN0+Haf+mf1jExd2ee9KFyCGyJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qp2kJ4GZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339sHwt010258
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 12:03:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Lk87R3h5+QU
	rraNSevkVcU9olZdNWSd6Up1jGf4VOTc=; b=Qp2kJ4GZgsIqCKGXqk8xtr1eKDa
	qpuqG8DfdxUj1h0z+ttlqXR1w7G3v0mQtNtnwccSKsT6zDUBOpoWPeanT+S++rZN
	EReG8qJU7BgzSJ+sAFkwEtCuU4DBZv0llCtbLEidUpTluy1JVO4pF7mv7NNiRXEQ
	XcMiF3KwNVpyzKf9/CmBwK4FgZXqNAiSg3hSTFRrAZtt/00O5a2HAurkL5oH9ecd
	QZOird0HD4V6f07E2z62THWkU+T2D9P9nj3grXmr8NtL/bc3peB7aRvrp3SCFA0b
	/zX8J2gQo8Kj8rWjTSwL2MGjQfuQWE1qUCajWJociY3B5bTKeRWIfIg5ScQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45se4g1s3j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:03:38 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2ff53a4754aso1176701a91.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 05:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743681817; x=1744286617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lk87R3h5+QUrraNSevkVcU9olZdNWSd6Up1jGf4VOTc=;
        b=xQGZY729I5jceoZE5lOeJ2y2EkvByzbUnxZg6K1Dp+rSPBd2pXLsO5BOVO8FFj3/dO
         PaDVp04jUDEjuRPWmfRy3KIKB/PBy4S5iNgl6+BeoSHwZM//wRPxdpvmHiAtIL57cUth
         fkALnUIxWOokfl6GNo/Wtjm1szoosXOxKEaos4yd3Nz/IoNf8JqmdLRIKcclMMaWhb3f
         UuftfDZHwasujUz2yRM5n/Wnebewtww8kcLiA0i5Ac+1F5vHn/dXZh+aAdAieyJ9i+Al
         CClnWm2nHq2K+18b3A8miAJa1p8fCsYJG7p7JSQj7EGJ0UDZDRN4MqJ1YBrkGuJxYWHh
         btag==
X-Forwarded-Encrypted: i=1; AJvYcCXYxMip87yipXgvDdLqFoCqDE5HPUj99gOskqDyAlDB4Lel3hzg1vVL9CWVATyWKAn2kebUbhecTA4N@vger.kernel.org
X-Gm-Message-State: AOJu0YxxmThLqQ2xQXe+4FX9n98Lqnx6Ir1ncg10CsqBAAdQJCofoUJK
	CXb4ZFbEi+tHZz4q8vEtzV5Vf3DPvscSmJ8RpohS7cBZgvINQpERakRCxizi+VojAPO/FnY2ybJ
	rEnXZZMOlPOfo19J0vcEdGL/YIaswNL/eZLDJeHMz222OtOdWRotv8tjKJfYM
X-Gm-Gg: ASbGncs1pfA94Cz6hPMJxiErNtJJfI0OyWchPcWeVZQzKOoqd7j8Dnkn76P5ckT53uA
	g/izRg9csqfEKm4F6Xg/nBO22MH0H+pM8Ri4+XF90hLsbHL7X67rzGwp2q9cnm9H1gGTAT8xTWP
	WCp5DQVUiuwwidulKrvu241NdW2OmSsFif9i1XZn+PpBIQUNUX2446ti4LdKPqCNmW04IBIKHSb
	OXCMwnYBpWcw02utxX4FslfI7ivJJ0FzFqFJ1qs/bH+eaMlZQc15FMK1SXI6Xc1NUd/D7KOYdHA
	TvvmHYdbqvfsXv0MO4kCpKLYEKtmhvjOToHBbemMXazHJgCb5DYlMUUfqrViYwycgEj21wBLp7J
	rV1E5yyzD/9MX/UX6PBO2MuszRLQ2QisahVkuhqs=
X-Received: by 2002:a17:90b:1f91:b0:2ff:693a:7590 with SMTP id 98e67ed59e1d1-305321705f1mr34406109a91.33.1743681817378;
        Thu, 03 Apr 2025 05:03:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK9xeWNHarlA36QHY1+b0NkGZhOIFrZcHxPmeU579TwcdNGMz+Lr8i4rUwtboStx7zHjXIbg==
X-Received: by 2002:a17:90b:1f91:b0:2ff:693a:7590 with SMTP id 98e67ed59e1d1-305321705f1mr34406062a91.33.1743681817012;
        Thu, 03 Apr 2025 05:03:37 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-305827d710csm1285799a91.10.2025.04.03.05.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 05:03:36 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V4 7/8] arm64: dts: qcom: ipq5424: add nodes to bring up q6
Date: Thu,  3 Apr 2025 17:33:03 +0530
Message-Id: <20250403120304.2345677-8-gokul.sriram.p@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
References: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: uEJvOrXYALGVWHIJudykIra8ujA8sf7d
X-Authority-Analysis: v=2.4 cv=a8Iw9VSF c=1 sm=1 tr=0 ts=67ee791a cx=c_pps a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Chduei3-CDLOMEben-gA:9 a=RVmHIydaz68A:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: uEJvOrXYALGVWHIJudykIra8ujA8sf7d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_05,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=788 malwarescore=0 spamscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030050

Enable nodes required for q6 remoteproc bring up.

Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 87 ++++++++++++++++++++++++++-
 1 file changed, 86 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 5d6ed2172b1b..26c297ffb602 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -3,7 +3,7 @@
  * IPQ5424 device tree source
  *
  * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2022-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -149,6 +149,16 @@ smem@8a800000 {
 
 			hwlocks = <&tcsr_mutex 3>;
 		};
+
+		q6_region: wcss@8a900000 {
+			reg = <0x0 0x8a900000 0x0 0x2800000>;
+			no-map;
+		};
+
+		q6_dtb_region: wcss-dtb@8d100000 {
+			reg = <0x0 0x8d100000 0x0 0x2000>;
+			no-map;
+		};
 	};
 
 	soc@0 {
@@ -541,6 +551,57 @@ dwc_0: usb@8a00000 {
 			};
 		};
 
+		apcs_glb: mailbox@f400004 {
+			compatible = "qcom,ipq5424-apcs-apps-global",
+				     "qcom,ipq6018-apcs-apps-global";
+			reg = <0 0xf400004 0 0x6000>;
+			#clock-cells = <1>;
+			#mbox-cells = <1>;
+		};
+
+		tmel_qmp: qmp@32090000 {
+			compatible = "qcom,ipq5424-tmel";
+			reg = <0 0x32090000 0 0x2000>;
+			interrupts = <GIC_SPI 126 IRQ_TYPE_EDGE_RISING>;
+			mboxes = <&apcs_glb 20>;
+			#mbox-cells = <1>;
+		};
+
+		q6v5_wcss: remoteproc@d100000 {
+			compatible = "qcom,ipq5424-wcss-sec-pil";
+			reg = <0 0x0d100000 0 0x4040>;
+			firmware-name = "ath12k/IPQ5424/hw1.0/q6_fw0.mbn",
+					"ath12k/IPQ5424/hw1.0/qdsp6sw_dtb.mbn";
+			interrupts-extended = <&intc GIC_SPI 508 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_wcss_in 0 0>,
+					      <&smp2p_wcss_in 1 0>,
+					      <&smp2p_wcss_in 2 0>,
+					      <&smp2p_wcss_in 3 0>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			mboxes = <&tmel_qmp 0>;
+			qcom,smem-states = <&smp2p_wcss_out 1>,
+					   <&smp2p_wcss_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+
+			memory-region = <&q6_region>, <&q6_dtb_region>;
+			qcom,q6-dtb-info = <&tcsr 0x1f004 0x1f008 0x1f00c>;
+
+			status = "okay";
+
+			glink-edge {
+				interrupts = <GIC_SPI 500 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		timer@f420000 {
 			compatible = "arm,armv7-timer-mem";
 			reg = <0 0xf420000 0 0x1000>;
@@ -724,4 +785,28 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
 			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
 	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 501 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		smp2p_wcss_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_wcss_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
 };
-- 
2.34.1


