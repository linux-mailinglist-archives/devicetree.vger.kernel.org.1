Return-Path: <devicetree+bounces-84159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B8E92B31A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 11:05:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C68B283BE3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 09:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945E1155385;
	Tue,  9 Jul 2024 09:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="DQveGeKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9966156991;
	Tue,  9 Jul 2024 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720515796; cv=none; b=f4MDmucmdYHJGS7BsmVYnjyFW4OqX4tvxcTRqV+hyJRBfsdrVby4LeqyOTim5r16/YB/45y5FIahq/Gr7Mi8y8C1vt5OAWoey/wdV6y6v9jaLvBx4rMMOUc6ioUZbMT2BUOYa9kXtZN5gezqHY91qIaNnnCl/R1ATnyROYkFf8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720515796; c=relaxed/simple;
	bh=qoTHyueTQ/dT4+44hHIQbKgJFJ3Y7RgrwoEpxOGhv0A=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rdua4zQuOkLLy3yMDSM1u69dbjcZBB7YMb3XXjd2k26AwY7xc8GBylFvzgXUcNziIYPNPyY0KLQLMID+tcsrvUQgHyas1kMSby4GMz6ytpRheb/tgEGpOBB2zkzKMBjQ6qTTzMK7MUbjS8h/G2PPVjuMIXiViGOZL2vs9Tc9aCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=DQveGeKO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46932KU1016601;
	Tue, 9 Jul 2024 09:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8AbjZX+XaDXMjC7NooiO5noD6SB5icWzrytd0VpePi4=; b=DQveGeKOspKwqONi
	5YvS9+prOI2AEBOFuWPvdpkgndzVF1UMTN5L74r3T0v8jfwwsxZHeb6OqZ/nyzS0
	63Aq6/CRtx4Jd93unfSKrYsLkuyXTlRty90ZU85UiNer9yQ0NJ36c0pTCCJzAzYU
	JV3S+b+Odzci76iZKlReZVmE9Ss/Gh3kAoiPrrom3+i4+NMTbr9cmnE/QAEdiLed
	kgGvSWXkyb+6QMEL8FCI5I97rEIomuQoWsXnkbnIh8wuyihInnmTF079xmNWsCcF
	B/cQgoaprYbssLZfCvxnH+Gz/8kE1JFrlKJtMTTXCVoEWK36cgvEeZ4x/dzqcxOS
	2uD7+Q==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406xa65ukg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 09:03:02 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469931c6010758
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 09:03:01 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 02:02:53 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <angelogioacchino.delregno@collabora.com>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <ilia.lin@kernel.org>, <rafael@kernel.org>,
        <viresh.kumar@linaro.org>, <ulf.hansson@linaro.org>,
        <quic_sibis@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_rjendra@quicinc.com>, <otto.pflueger@abscue.de>,
        <luca@z3ntu.xyz>, <danila@jiaxyga.com>, <quic_ipkumar@quicinc.com>,
        <stephan.gerhold@kernkonzept.com>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-pm@vger.kernel.org>
Subject: [PATCH v5 9/9] dts: arm64: qcom: ipq9574: Enable CPR
Date: Tue, 9 Jul 2024 14:31:32 +0530
Message-ID: <20240709090132.117077-10-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240709090132.117077-1-quic_varada@quicinc.com>
References: <20240709090132.117077-1-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JUK3ExhBC7RhrEtcJKkunC2I-3pvaA9a
X-Proofpoint-ORIG-GUID: JUK3ExhBC7RhrEtcJKkunC2I-3pvaA9a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-08_15,2024-07-08_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 spamscore=0
 clxscore=1015 adultscore=0 malwarescore=0 mlxscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090060

* Add CPR, RPMPD, OPP table nodes as applicable to IPQ9574 to
  enable CPR functionality on IPQ9574.

* Bootloader set frequency 792MHz is added to the OPP table to
  the avoid 'need at least 2 OPPs to use CPR' error

* Remove 1.2GHz as it is not supported in any of the IPQ9574 SKUs.

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v4: s/cprh/cpr4/
v2: Update commit log. No code change.
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 269 ++++++++++++++++++++++++--
 1 file changed, 252 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 04ba09a9156c..cda30a877877 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/power/qcom-rpmpd.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -42,8 +43,9 @@ CPU0: cpu@0 {
 			clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
 			clock-names = "cpu";
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-supply = <&ipq9574_s1>;
 			#cooling-cells = <2>;
+			power-domains = <&apc_cpr4 0>;
+			power-domain-names = "perf";
 		};
 
 		CPU1: cpu@1 {
@@ -55,8 +57,9 @@ CPU1: cpu@1 {
 			clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
 			clock-names = "cpu";
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-supply = <&ipq9574_s1>;
 			#cooling-cells = <2>;
+			power-domains = <&apc_cpr4 0>;
+			power-domain-names = "perf";
 		};
 
 		CPU2: cpu@2 {
@@ -68,8 +71,9 @@ CPU2: cpu@2 {
 			clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
 			clock-names = "cpu";
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-supply = <&ipq9574_s1>;
 			#cooling-cells = <2>;
+			power-domains = <&apc_cpr4 0>;
+			power-domain-names = "perf";
 		};
 
 		CPU3: cpu@3 {
@@ -81,8 +85,9 @@ CPU3: cpu@3 {
 			clocks = <&apcs_glb APCS_ALIAS0_CORE_CLK>;
 			clock-names = "cpu";
 			operating-points-v2 = <&cpu_opp_table>;
-			cpu-supply = <&ipq9574_s1>;
 			#cooling-cells = <2>;
+			power-domains = <&apc_cpr4 0>;
+			power-domain-names = "perf";
 		};
 
 		L2_0: l2-cache {
@@ -105,58 +110,111 @@ memory@40000000 {
 		reg = <0x0 0x40000000 0x0 0x0>;
 	};
 
+	cpr4_opp_table: opp-table-cpr4 {
+		compatible = "operating-points-v2-qcom-level";
+
+		cpr4_opp0: opp-0 {
+			opp-level = <1>;
+			qcom,opp-fuse-level = <1>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+
+		cpr4_opp1: opp-1 {
+			opp-level = <2>;
+			qcom,opp-fuse-level = <1>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+
+		cpr4_opp2: opp-2 {
+			opp-level = <3>;
+			qcom,opp-fuse-level = <1>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+
+		cpr4_opp3: opp-3 {
+			opp-level = <4>;
+			qcom,opp-fuse-level = <2>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+
+		cpr4_opp4: opp-4 {
+			opp-level = <5>;
+			qcom,opp-fuse-level = <2>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+
+		cpr4_opp5: opp-5 {
+			opp-level = <6>;
+			qcom,opp-fuse-level = <3>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+
+		cpr4_opp6: opp-6 {
+			opp-level = <7>;
+			qcom,opp-fuse-level = <4>;
+			qcom,opp-cloop-vadj = <0>;
+			qcom,opp-oloop-vadj = <0>;
+		};
+	};
+
 	cpu_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2-kryo-cpu";
 		opp-shared;
 		nvmem-cells = <&cpu_speed_bin>;
 
+		opp-792000000 {
+			opp-hz = /bits/ 64 <792000000>;
+			opp-supported-hw = <0x0>;
+			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp0>;
+		};
+
 		opp-936000000 {
 			opp-hz = /bits/ 64 <936000000>;
-			opp-microvolt = <725000>;
 			opp-supported-hw = <0xf>;
 			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp1>;
 		};
 
 		opp-1104000000 {
 			opp-hz = /bits/ 64 <1104000000>;
-			opp-microvolt = <787500>;
-			opp-supported-hw = <0xf>;
-			clock-latency-ns = <200000>;
-		};
-
-		opp-1200000000 {
-			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <862500>;
 			opp-supported-hw = <0xf>;
 			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp2>;
 		};
 
 		opp-1416000000 {
 			opp-hz = /bits/ 64 <1416000000>;
-			opp-microvolt = <862500>;
 			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp3>;
 		};
 
 		opp-1488000000 {
 			opp-hz = /bits/ 64 <1488000000>;
-			opp-microvolt = <925000>;
 			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp4>;
 		};
 
 		opp-1800000000 {
 			opp-hz = /bits/ 64 <1800000000>;
-			opp-microvolt = <987500>;
 			opp-supported-hw = <0x5>;
 			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp5>;
 		};
 
 		opp-2208000000 {
 			opp-hz = /bits/ 64 <2208000000>;
-			opp-microvolt = <1062500>;
 			opp-supported-hw = <0x1>;
 			clock-latency-ns = <200000>;
+			required-opps = <&cpr4_opp6>;
 		};
 	};
 
@@ -182,6 +240,40 @@ glink-edge {
 			rpm_requests: rpm-requests {
 				compatible = "qcom,rpm-ipq9574";
 				qcom,glink-channels = "rpm_requests";
+
+				rpmpd: power-controller {
+					compatible = "qcom,ipq9574-rpmpd";
+					#power-domain-cells = <1>;
+					operating-points-v2 = <&rpmpd_opp_table>;
+
+					rpmpd_opp_table: opp-table {
+						compatible = "operating-points-v2";
+
+						rpmpd_opp_svs: opp1 {
+							opp-level = <RPM_SMD_LEVEL_SVS>;
+						};
+
+						rpmpd_opp_svs_plus: opp2 {
+							opp-level = <RPM_SMD_LEVEL_SVS_PLUS>;
+						};
+
+						rpmpd_opp_nom: opp3 {
+							opp-level = <RPM_SMD_LEVEL_NOM>;
+						};
+
+						rpmpd_opp_nom_plus: opp4 {
+							opp-level = <RPM_SMD_LEVEL_NOM_PLUS>;
+						};
+
+						rpmpd_opp_turbo: opp5 {
+							opp-level = <RPM_SMD_LEVEL_TURBO>;
+						};
+
+						rpmpd_opp_turbo_high: opp6 {
+							opp-level = <RPM_SMD_LEVEL_TURBO_HIGH>;
+						};
+					};
+				};
 			};
 		};
 	};
@@ -252,6 +344,95 @@ cpu_speed_bin: cpu-speed-bin@15 {
 				reg = <0x15 0x2>;
 				bits = <7 2>;
 			};
+
+			cpr_efuse_speedbin: speedbin@5 {
+				reg = <0x5 0x8>;
+				bits = <0 3>;
+			};
+
+			cpr_fuse_revision: cpr-fusing-rev@7 {
+				reg = <0x7 0x8>;
+				bits = <1 5>;
+			};
+
+			/* CPR Ring Oscillator: Power Cluster */
+			cpr_ro_sel0_pwrcl: rosel0-pwrcl@358 {	/* ROSEL_SVS */
+				reg = <0x358 0x1>;
+				bits = <4 4>;
+			};
+
+			cpr_ro_sel1_pwrcl: rosel1-pwrcl@358 {	/* ROSEL_NOM */
+				reg = <0x358 0x1>;
+				bits = <0 4>;
+			};
+
+			cpr_ro_sel2_pwrcl: rosel2-pwrcl@350 {	/* ROSEL_TUR */
+				reg = <0x350 0x1>;
+				bits = <4 4>;
+			};
+
+			cpr_ro_sel3_pwrcl: rosel3-pwrcl@350 {	/* ROSEL_STUR */
+				reg = <0x350 0x1>;
+				bits = <0 4>;
+			};
+
+			/* CPR Init Voltage: Power Cluster */
+			cpr_init_voltage0_pwrcl: ivolt0-pwrcl@343 {	/* VOLT_SVS */
+				reg = <0x343 0x1>;
+				bits = <0 6>;
+			};
+
+			cpr_init_voltage1_pwrcl: ivolt1-pwrcl@342 {	/* VOLT_NOM */
+				reg = <0x342 0x1>;
+				bits = <2 6>;
+			};
+
+			cpr_init_voltage2_pwrcl: ivolt2-pwrcl@341 {	/* VOLT_TUR */
+				reg = <0x341 0x2>;
+				bits = <4 6>;
+			};
+
+			cpr_init_voltage3_pwrcl: ivolt3-pwrcl@340 {	/* VOLT_STUR */
+				reg = <0x340 0x2>;
+				bits = <6 6>;
+			};
+
+			/* CPR Target Quotients: Power Cluster */
+			cpr_quot0_pwrcl: quot0-pwrcl@354 {	/* QUOT_VMIN_SVS */
+				reg = <0x354 0x2>;
+				bits = <0 12>;
+			};
+
+			cpr_quot1_pwrcl: quot1-pwrcl@352 {	/* QUOT_VMIN_NOM */
+				reg = <0x352 0x2>;
+				bits = <4 12>;
+			};
+
+			cpr_quot2_pwrcl: quot2-pwrcl@351 {	/* QUOT_VMIN_TUR */
+				reg = <0x351 0x2>;
+				bits = <0 12>;
+			};
+
+			cpr_quot3_pwrcl: quot3-pwrcl@355 {	/* QUOT_VMIN_STUR */
+				reg = <0x355 0x2>;
+				bits = <4 12>;
+			};
+
+			/* CPR Quotient Offsets: Power Cluster */
+			cpr_quot_offset1_pwrcl: qoff1-pwrcl@34e {	/* QUOT_OFFSET_NOM_SVS */
+				reg = <0x34e 0x1>;
+				bits = <0 8>;
+			};
+
+			cpr_quot_offset2_pwrcl: qoff2-pwrcl@34d {	/* QUOT_OFFSET_TUR_NOM */
+				reg = <0x34d 0x1>;
+				bits = <0 8>;
+			};
+
+			cpr_quot_offset3_pwrcl: qoff0-pwrcl@34c {	/* QUOT_OFFSET_STUR_TUR */
+				reg = <0x34c 0x1>;
+				bits = <0 8>;
+			};
 		};
 
 		cryptobam: dma-controller@704000 {
@@ -639,6 +820,60 @@ usb_0_dwc3: usb@8a00000 {
 			};
 		};
 
+		apc_cpr4: power-controller@b018000 {
+			compatible = "qcom,ipq9574-cpr4", "qcom,cprh";
+			reg = <0x0b018000 0x4000>,
+			      <0x00048000 0x4000>;
+
+			clocks = <&gcc GCC_RBCPR_CLK>;
+
+			interrupts = <GIC_SPI 15 IRQ_TYPE_EDGE_RISING>;
+			vdd-supply = <&ipq9574_s1>;
+
+			/* Set the CPR clock here, it needs to match XO */
+			assigned-clocks = <&gcc GCC_RBCPR_CLK>;
+			assigned-clock-rates = <24000000>;
+
+			operating-points-v2 = <&cpr4_opp_table>;
+			power-domains = <&rpmpd IPQ9574_VDDAPC>;
+			#power-domain-cells = <1>;
+
+			nvmem-cells = <&cpr_efuse_speedbin>,
+				      <&cpr_fuse_revision>,
+				      <&cpr_quot0_pwrcl>,
+				      <&cpr_quot1_pwrcl>,
+				      <&cpr_quot2_pwrcl>,
+				      <&cpr_quot3_pwrcl>,
+				      <&cpr_quot_offset1_pwrcl>,
+				      <&cpr_quot_offset2_pwrcl>,
+				      <&cpr_quot_offset3_pwrcl>,
+				      <&cpr_init_voltage0_pwrcl>,
+				      <&cpr_init_voltage1_pwrcl>,
+				      <&cpr_init_voltage2_pwrcl>,
+				      <&cpr_init_voltage3_pwrcl>,
+				      <&cpr_ro_sel0_pwrcl>,
+				      <&cpr_ro_sel1_pwrcl>,
+				      <&cpr_ro_sel2_pwrcl>,
+				      <&cpr_ro_sel3_pwrcl>;
+			nvmem-cell-names = "cpr_speed_bin",
+					   "cpr_fuse_revision",
+					   "cpr0_quotient1",
+					   "cpr0_quotient2",
+					   "cpr0_quotient3",
+					   "cpr0_quotient4",
+					   "cpr0_quotient_offset2",
+					   "cpr0_quotient_offset3",
+					   "cpr0_quotient_offset4",
+					   "cpr0_init_voltage1",
+					   "cpr0_init_voltage2",
+					   "cpr0_init_voltage3",
+					   "cpr0_init_voltage4",
+					   "cpr0_ring_osc1",
+					   "cpr0_ring_osc2",
+					   "cpr0_ring_osc3",
+					   "cpr0_ring_osc4";
+		};
+
 		intc: interrupt-controller@b000000 {
 			compatible = "qcom,msm-qgic2";
 			reg = <0x0b000000 0x1000>,  /* GICD */
-- 
2.34.1


