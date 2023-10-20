Return-Path: <devicetree+bounces-10265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD67D0856
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:21:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDC3D280FF9
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 06:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0462AC2D6;
	Fri, 20 Oct 2023 06:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="jiDPM9Ju"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F11C15B
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 06:21:18 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6663110E0;
	Thu, 19 Oct 2023 23:21:13 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39K58MW5002385;
	Fri, 20 Oct 2023 06:20:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=JIk2gX/el4YSdpH3SijmN7XQ28M3iMt/ElM1C5zqP/E=;
 b=jiDPM9JucQT1DkXP4iMGrEhh656iEs0ibXAUK+j/R2QyawntuhV6YYceqHkHzj6gsK20
 5ldoQfoMEwz31B5POtLzPxJUekKEyKalgKvMr7C0Epc0lVHg33Msr8hWzAjko3RNPxiQ
 1wKUaBbSwpkj4d/rMCIKA7b93Q/+vl2X/0m8ODw7AVLzh70H/tjCAcoGGH2h9YNSGeC4
 gK+OIrKBa5RPKiDD7xT7+9t2Emq0DtXRUqveRZaLVyR/ept9lhAqY7lpdA6SjkQM9Oa+
 0pRdmKCAfeLZStF52KToOakWb1V01vgytuTuloEALJij5jIXQUai6fGrfE5vvW6wmPY5 Kw== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tubwmgwa8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 06:20:47 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39K6KlWx028887
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 06:20:47 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Thu, 19 Oct 2023 23:20:41 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <rafael@kernel.org>, <viresh.kumar@linaro.org>, <ilia.lin@kernel.org>,
        <sivaprak@codeaurora.org>, <quic_kathirav@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-pm@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v5 9/9] arm64: dts: qcom: ipq9574: populate the opp table based on the eFuse
Date: Fri, 20 Oct 2023 11:49:39 +0530
Message-ID: <14ab08b7cfd904433ca6065fac798d4f221c9d95.1697781921.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1697781921.git.quic_varada@quicinc.com>
References: <cover.1697781921.git.quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: xNbPQKZ-3vaSOkqbbVmimm7LtiBOybVT
X-Proofpoint-GUID: xNbPQKZ-3vaSOkqbbVmimm7LtiBOybVT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_04,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=972
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310200053

IPQ95xx SoCs have different OPPs available for the CPU based on
SoC variant. This can be determined from an eFuse register
present in the silicon.

Add support to read the eFuse and populate the OPPs based on it.

Frequency	1.2GHz	1.8GHz	1.5GHz	No	opp-supported-hw
					Limit
------------------------------------------------------------
936000000	1	1	1	1	0xf
1104000000	1	1	1	1	0xf
1200000000	1	1	1	1	0xf
1416000000	0	1	1	1	0x7
1488000000	0	1	1	1	0x7
1800000000	0	1	0	1	0x5
2208000000	0	0	0	1	0x1
-----------------------------------------------------------

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v2:	cpu_speed_bin -> cpu-speed-bin in node name
	Move comment to commit log
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index cc84f25..5f83ee4 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -106,42 +106,56 @@
 	};
 
 	cpu_opp_table: opp-table-cpu {
-		compatible = "operating-points-v2";
+		compatible = "operating-points-v2-kryo-cpu";
 		opp-shared;
+		nvmem-cells = <&cpu_speed_bin>;
 
 		opp-936000000 {
 			opp-hz = /bits/ 64 <936000000>;
 			opp-microvolt = <725000>;
+			opp-supported-hw = <0xf>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1104000000 {
 			opp-hz = /bits/ 64 <1104000000>;
 			opp-microvolt = <787500>;
+			opp-supported-hw = <0xf>;
+			clock-latency-ns = <200000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <862500>;
+			opp-supported-hw = <0xf>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1416000000 {
 			opp-hz = /bits/ 64 <1416000000>;
 			opp-microvolt = <862500>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1488000000 {
 			opp-hz = /bits/ 64 <1488000000>;
 			opp-microvolt = <925000>;
+			opp-supported-hw = <0x7>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1800000000 {
 			opp-hz = /bits/ 64 <1800000000>;
 			opp-microvolt = <987500>;
+			opp-supported-hw = <0x5>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-2208000000 {
 			opp-hz = /bits/ 64 <2208000000>;
 			opp-microvolt = <1062500>;
+			opp-supported-hw = <0x1>;
 			clock-latency-ns = <200000>;
 		};
 	};
@@ -223,6 +237,11 @@
 			reg = <0x000a4000 0x5a1>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			cpu_speed_bin: cpu-speed-bin@15 {
+				reg = <0x15 0x2>;
+				bits = <7 2>;
+			};
 		};
 
 		cryptobam: dma-controller@704000 {
-- 
2.7.4


