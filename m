Return-Path: <devicetree+bounces-136058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0B1A03A75
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A31BD1654C7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C843D1E32CA;
	Tue,  7 Jan 2025 09:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="j0iJOxHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2F01E32D7;
	Tue,  7 Jan 2025 09:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736240476; cv=none; b=XmQ0rCfBYS7ZbFb6L3wePkcpZL4xjv4dRGwXhdC1aHuf6iy8y/rXK/nOG1qzsTDESTi/SvQYj8BmXaAWV984LSRnkHrauiFSDyHUMr5IX1UR4fS7hXthQVno0Mx8RUkmAAL6z/mCR1uKDOqGgp29zaVlAwuYF2p79hSNjVA2U+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736240476; c=relaxed/simple;
	bh=HA7+BriLn/GWvc2TdXgJ1bbpQZkwckroYWZikMXSdlk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XQSDKDVhBSUc4vT54PR5ZuHLu6VccPZY1DJe8RPDpbw/1otSVpVoTH8gnE9VZiO5QpKWgYTN58o/Kh4VbCj0Ii/9Sf9DDdmsbiw1U0Zg2Wbo2AwWJ05S0/T4ZlF8jbDsDgRZnNDHKzQoN+R/W5x75ytGUI+q92zuMOcvHBDsYwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=j0iJOxHK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5078cJ1Q012488;
	Tue, 7 Jan 2025 09:00:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ONtvBmEpLEuBJuRqyxCedTQd
	5Ryvcwwn8bWWyBgw+9M=; b=j0iJOxHKO159o7TFC/PKiR546mV6FCxKHpESCtvy
	DQIkEEh58PgC2VW2Tj14S0QUX6TOJMe4N/sN3Y8xK7D8/+n1CTeUKiZxAPjWT7zG
	cjtENGe7IGbzNzHC95G3Kyce2gwO5nsUHtkU4cmAhytTxh2BfpT+L/GkLY1O+ElD
	zhKfq8xA1YARt1FQ+jbH9tkaqsv5LFLNExvSOt268bZVFXAEA+Ec60NSyVvC2QIK
	H7KcAPxkEgj5WC/wAoIAgYQRQmm362rrnfZ0RjEl+To458Mb+7G1L5b/9w4fUzX8
	tjILaSf7yTxN/vZH40zU9c86wEf/IcgTnUtdentA3HLdRw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4410x2r1u0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 09:00:58 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50790v8k020923
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Jan 2025 09:00:57 GMT
Received: from jinlmao-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 7 Jan 2025 01:00:52 -0800
From: Mao Jinlong <quic_jinlmao@quicinc.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
	<mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        "Bjorn
 Andersson" <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Mao Jinlong <quic_jinlmao@quicinc.com>, <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: [PATCH v6 2/2] arm64: dts: qcom: sm8450: Add coresight nodes
Date: Tue, 7 Jan 2025 17:00:31 +0800
Message-ID: <20250107090031.3319-3-quic_jinlmao@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250107090031.3319-1-quic_jinlmao@quicinc.com>
References: <20250107090031.3319-1-quic_jinlmao@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: QNJSyaBGthVvzPASBHQ1fBHuaQP7O1xZ
X-Proofpoint-ORIG-GUID: QNJSyaBGthVvzPASBHQ1fBHuaQP7O1xZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 malwarescore=0 clxscore=1015
 phishscore=0 adultscore=12 mlxlogscore=983 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070074

Add coresight components on Qualcomm SM8450 Soc. The components include
TMC ETF/ETR, ETE, STM, TPDM, CTI.

Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 726 +++++++++++++++++++++++++++
 1 file changed, 726 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 53147aa6f7e4..d5379be114fe 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -287,6 +287,192 @@
 		};
 	};
 
+	ete-0 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu0>;
+
+		out-ports {
+			port {
+				ete0_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete0>;
+				};
+			};
+		};
+	};
+
+	ete-1 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu1>;
+
+		out-ports {
+			port {
+				ete1_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete1>;
+				};
+			};
+		};
+	};
+
+	ete-2 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu2>;
+
+		out-ports {
+			port {
+				ete2_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete2>;
+				};
+			};
+		};
+	};
+
+	ete-3 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu3>;
+
+		out-ports {
+			port {
+				ete3_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete3>;
+				};
+			};
+		};
+	};
+
+	ete-4 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu4>;
+
+		out-ports {
+			port {
+				ete4_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete4>;
+				};
+			};
+		};
+	};
+
+	ete-5 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu5>;
+
+		out-ports {
+			port {
+				ete5_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete5>;
+				};
+			};
+		};
+	};
+
+	ete-6 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu6>;
+
+		out-ports {
+			port {
+				ete6_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete6>;
+				};
+			};
+		};
+	};
+
+	ete-7 {
+		compatible = "arm,embedded-trace-extension";
+		cpu = <&cpu7>;
+
+		out-ports {
+			port {
+				ete7_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete7>;
+				};
+			};
+		};
+	};
+
+	funnel-ete {
+		compatible = "arm,coresight-static-funnel";
+
+		out-ports {
+			port {
+				funnel_ete_out_funnel_apss: endpoint {
+					remote-endpoint =
+						<&funnel_apss_in_funnel_ete>;
+				};
+			};
+		};
+
+		in-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				funnel_ete_in_ete0: endpoint {
+					remote-endpoint =
+						<&ete0_out_funnel_ete>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				funnel_ete_in_ete1: endpoint {
+					remote-endpoint =
+						<&ete1_out_funnel_ete>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				funnel_ete_in_ete2: endpoint {
+					remote-endpoint =
+						<&ete2_out_funnel_ete>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+				funnel_ete_in_ete3: endpoint {
+					remote-endpoint =
+						<&ete3_out_funnel_ete>;
+				};
+			};
+
+			port@4 {
+				reg = <4>;
+				funnel_ete_in_ete4: endpoint {
+					remote-endpoint =
+						<&ete4_out_funnel_ete>;
+				};
+			};
+
+			port@5 {
+				reg = <5>;
+				funnel_ete_in_ete5: endpoint {
+					remote-endpoint =
+						<&ete5_out_funnel_ete>;
+				};
+			};
+
+			port@6 {
+				reg = <6>;
+				funnel_ete_in_ete6: endpoint {
+					remote-endpoint =
+						<&ete6_out_funnel_ete>;
+				};
+			};
+
+			port@7 {
+				reg = <7>;
+				funnel_ete_in_ete7: endpoint {
+					remote-endpoint =
+						<&ete7_out_funnel_ete>;
+				};
+			};
+		};
+	};
+
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sm8450", "qcom,scm";
@@ -4144,6 +4330,546 @@
 			};
 		};
 
+		stm@10002000 {
+			compatible = "arm,coresight-stm", "arm,primecell";
+			reg = <0x0 0x10002000 0x0 0x1000>,
+				<0x0 0x16280000 0x0 0x180000>;
+			reg-names = "stm-base", "stm-stimulus-base";
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					stm_out_funnel_in0: endpoint {
+						remote-endpoint =
+							<&funnel_in0_in_stm>;
+					};
+				};
+			};
+		};
+
+		funnel@10041000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x10041000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@7 {
+					reg = <7>;
+					funnel_in0_in_stm: endpoint {
+						remote-endpoint =
+							<&stm_out_funnel_in0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel_in0_out_funnel_qdss: endpoint {
+						remote-endpoint =
+							<&funnel_qdss_in_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		funnel@10042000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+
+			reg = <0x0 0x10042000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@4 {
+					reg = <4>;
+					funnel_in1_in_funnel_apss: endpoint {
+						remote-endpoint =
+							<&funnel_apss_out_funnel_in1>;
+					};
+				};
+
+				port@6 {
+					reg = <6>;
+					funnel_in1_in_funnel_dl_center: endpoint {
+						remote-endpoint =
+							<&funnel_dl_center_out_funnel_in1>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel_in1_out_funnel_qdss: endpoint {
+						remote-endpoint =
+							<&funnel_qdss_in_funnel_in1>;
+					};
+				};
+			};
+		};
+
+		funnel@10045000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x10045000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					funnel_qdss_in_funnel_in0: endpoint {
+						remote-endpoint =
+							<&funnel_in0_out_funnel_qdss>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					funnel_qdss_in_funnel_in1: endpoint {
+						remote-endpoint =
+							<&funnel_in1_out_funnel_qdss>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel_qdss_out_funnel_aoss: endpoint {
+						remote-endpoint =
+							<&funnel_aoss_in_funnel_qdss>;
+					};
+				};
+			};
+		};
+
+		replicator@10046000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x10046000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					replicator_qdss_in_replicator_swao: endpoint {
+						remote-endpoint =
+							<&replicator_swao_out_replicator_qdss>;
+					};
+				};
+			};
+
+			out-ports {
+
+				port {
+					replicator_qdss_out_replicator_etr: endpoint {
+						remote-endpoint =
+							<&replicator_etr_in_replicator_qdss>;
+					};
+				};
+			};
+		};
+
+		tmc_etr: tmc@10048000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x10048000 0x0 0x1000>;
+
+			iommus = <&apps_smmu 0x0600 0>;
+			arm,buffer-size = <0x10000>;
+
+			arm,scatter-gather;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					tmc_etr_in_replicator_etr: endpoint {
+						remote-endpoint =
+							<&replicator_etr_out_tmc_etr>;
+					};
+				};
+			};
+		};
+
+		replicator@1004e000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x1004e000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					replicator_etr_in_replicator_qdss: endpoint {
+						remote-endpoint =
+							<&replicator_qdss_out_replicator_etr>;
+					};
+				};
+			};
+
+			out-ports {
+
+				port {
+
+					replicator_etr_out_tmc_etr: endpoint {
+						remote-endpoint =
+							<&tmc_etr_in_replicator_etr>;
+					};
+				};
+			};
+		};
+
+		funnel@10b04000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+
+			reg = <0x0 0x10b04000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@6 {
+					reg = <6>;
+					funnel_aoss_in_tpda_aoss: endpoint {
+						remote-endpoint =
+							<&tpda_aoss_out_funnel_aoss>;
+					};
+				};
+
+				port@7 {
+					reg = <7>;
+					funnel_aoss_in_funnel_qdss: endpoint {
+						remote-endpoint =
+							<&funnel_qdss_out_funnel_aoss>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel_aoss_out_tmc_etf: endpoint {
+						remote-endpoint =
+							<&tmc_etf_in_funnel_aoss>;
+					};
+				};
+			};
+		};
+
+		tmc@10b05000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x10b05000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					tmc_etf_in_funnel_aoss: endpoint {
+						remote-endpoint =
+							<&funnel_aoss_out_tmc_etf>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					tmc_etf_out_replicator_swao: endpoint {
+						remote-endpoint =
+							<&replicator_swao_in_tmc_etf>;
+					};
+				};
+			};
+		};
+
+		replicator@10b06000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x10b06000 0x0 0x1000>;
+
+			qcom,replicator-loses-context;
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					replicator_swao_in_tmc_etf: endpoint {
+						remote-endpoint =
+							<&tmc_etf_out_replicator_swao>;
+					};
+				};
+			};
+
+			out-ports {
+
+				port {
+					replicator_swao_out_replicator_qdss: endpoint {
+						remote-endpoint =
+							<&replicator_qdss_in_replicator_swao>;
+					};
+				};
+			};
+		};
+
+		tpda@10b08000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+
+			reg = <0x0 0x10b08000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					tpda_aoss_in_tpdm_swao_prio_0: endpoint {
+						remote-endpoint =
+							<&tpdm_swao_prio_0_out_tpda_aoss>;
+					};
+				};
+
+				port@4 {
+					reg = <4>;
+					tpda_aoss_in_tpdm_swao: endpoint {
+						remote-endpoint =
+							<&tpdm_swao_out_tpda_aoss>;
+					};
+				};
+			};
+
+			out-ports {
+
+				port {
+					tpda_aoss_out_funnel_aoss: endpoint {
+						remote-endpoint =
+							<&funnel_aoss_in_tpda_aoss>;
+					};
+				};
+			};
+		};
+
+		tpdm@10b09000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x10b09000 0x0 0x1000>;
+
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					tpdm_swao_prio_0_out_tpda_aoss: endpoint {
+						remote-endpoint =
+							<&tpda_aoss_in_tpdm_swao_prio_0>;
+					};
+				};
+			};
+		};
+
+		tpdm@10b0d000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x10b0d000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					tpdm_swao_out_tpda_aoss: endpoint {
+						remote-endpoint =
+							<&tpda_aoss_in_tpdm_swao>;
+					};
+				};
+			};
+		};
+
+		tpdm@10c28000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x10c28000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					tpdm_dlct_out_tpda_dl_center_26: endpoint {
+						remote-endpoint =
+							<&tpda_dl_center_26_in_tpdm_dlct>;
+					};
+				};
+			};
+		};
+
+		tpdm@10c29000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x10c29000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					tpdm_ipcc_out_tpda_dl_center_27: endpoint {
+						remote-endpoint =
+							<&tpda_dl_center_27_in_tpdm_ipcc>;
+					};
+				};
+			};
+		};
+
+		cti@10c2a000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x10c2a000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@10c2b000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x10c2b000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		tpda@10c2e000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x10c2e000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1a {
+					reg = <26>;
+					tpda_dl_center_26_in_tpdm_dlct: endpoint {
+						remote-endpoint =
+							<&tpdm_dlct_out_tpda_dl_center_26>;
+					};
+				};
+
+				port@1b {
+					reg = <27>;
+					tpda_dl_center_27_in_tpdm_ipcc: endpoint {
+						remote-endpoint =
+							<&tpdm_ipcc_out_tpda_dl_center_27>;
+					};
+				};
+			};
+
+			out-ports {
+
+				port {
+					tpda_dl_center_out_funnel_dl_center: endpoint {
+						remote-endpoint =
+							<&funnel_dl_center_in_tpda_dl_center>;
+					};
+				};
+			};
+		};
+
+		funnel@10c2f000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x10c2f000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+
+				port {
+					funnel_dl_center_in_tpda_dl_center: endpoint {
+						remote-endpoint =
+							<&tpda_dl_center_out_funnel_dl_center>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel_dl_center_out_funnel_in1: endpoint {
+						remote-endpoint =
+							<&funnel_in1_in_funnel_dl_center>;
+					};
+				};
+			};
+		};
+
+		funnel@13810000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+
+			reg = <0x0 0x13810000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+
+				port {
+					funnel_apss_in_funnel_ete: endpoint {
+						remote-endpoint =
+							<&funnel_ete_out_funnel_apss>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					funnel_apss_out_funnel_in1: endpoint {
+						remote-endpoint =
+							<&funnel_in1_in_funnel_apss>;
+					};
+				};
+			};
+		};
+
+		cti@138e0000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x138e0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@138f0000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x138f0000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@13900000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x13900000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
 		sram@146aa000 {
 			compatible = "qcom,sm8450-imem", "syscon", "simple-mfd";
 			reg = <0 0x146aa000 0 0x1000>;
-- 
2.17.1


