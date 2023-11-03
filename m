Return-Path: <devicetree+bounces-13711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3D97E01AF
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 11:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CE5D1C20DD7
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 10:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9047714F88;
	Fri,  3 Nov 2023 10:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="CqWTYuZR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4830214276
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 10:54:58 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC160123;
	Fri,  3 Nov 2023 03:54:53 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A36uP1Q007216;
	Fri, 3 Nov 2023 10:54:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=zJIxMj8i903lRQualscB1Cxu9wrn8Os5GCB+f70+kf0=;
 b=CqWTYuZRBWmqeuHoLNdxfoYDQcWN0f2MjAZW8sjmtSyK4qCjJggjlxebLear127vb2aJ
 e1wTLAL0ltm56EXBhri7gsu692jgVEbV9Qoy1H3yMFWWTTL29Y+VSFm6b6zS75WHIZPa
 +/0jIcvZThXQZjkmbbRL1kpA8+wZ9nJJgDGWHaLYyyImGEJIfOXMz1DIEeuvWAeBE71h
 S/mOU9VF40+K+KBkqGn8vmeJfwKIWXExhUZPBUhrVVxO/bI4vqZz0aecAbjIEn1YMA9C
 FWp020ul8a1BhIsdG8+du3C8zn4v1INKkRgzP+u4TdqtAlWp6oKFWPZohHBehbfz3Jd+ 5w== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u4ss98p72-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Nov 2023 10:54:46 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3A3AshmT001914;
	Fri, 3 Nov 2023 10:54:43 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3u0ucmcqbp-1;
	Fri, 03 Nov 2023 10:54:43 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3A3Ashms001907;
	Fri, 3 Nov 2023 10:54:43 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-anshar-hyd.qualcomm.com [10.213.110.5])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3A3Asg6H001905;
	Fri, 03 Nov 2023 10:54:43 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 4089000)
	id 0DCC252A387; Fri,  3 Nov 2023 16:24:42 +0530 (+0530)
From: Ankit Sharma <quic_anshar@quicinc.com>
To: cros-qcom-dts-watchers@chromium.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: Ankit Sharma <quic_anshar@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_ashayj@quicinc.com, quic_atulpant@quicinc.com,
        quic_rgottimu@quicinc.com, quic_shashim@quicinc.com,
        quic_pkondeti@quicinc.com
Subject: [PATCH v2] arm64: dts: qcom: sc7280: Add capacity and DPC properties
Date: Fri,  3 Nov 2023 16:24:40 +0530
Message-Id: <20231103105440.23904-1-quic_anshar@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: OOF7__Xzbn3Gk3pYcGFYgCsrv7wHsagb
X-Proofpoint-GUID: OOF7__Xzbn3Gk3pYcGFYgCsrv7wHsagb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-03_11,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1015
 mlxscore=0 mlxlogscore=882 suspectscore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311030090
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
used to build Energy Model which in turn is used by EAS to take
placement decisions. So add it to SC7280 soc.

Signed-off-by: Ankit Sharma <quic_anshar@quicinc.com>
---
changes in v2: https://lore.kernel.org/all/20231103095358.29312-1-quic_anshar@quicinc.com/
 - updated commit message and subject.

 arch/arm64/boot/dts/qcom/sc7280.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 8601253aec70..b1890824188c 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -176,6 +176,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_0>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -204,6 +206,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_100>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -227,6 +231,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_200>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -250,6 +256,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_300>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
@@ -273,6 +281,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_400>;
 			operating-points-v2 = <&cpu4_opp_table>;
+			capacity-dmips-mhz = <1946>;
+			dynamic-power-coefficient = <520>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -296,6 +306,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_500>;
 			operating-points-v2 = <&cpu4_opp_table>;
+			capacity-dmips-mhz = <1946>;
+			dynamic-power-coefficient = <520>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -319,6 +331,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_600>;
 			operating-points-v2 = <&cpu4_opp_table>;
+			capacity-dmips-mhz = <1946>;
+			dynamic-power-coefficient = <520>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
@@ -342,6 +356,8 @@
 					   &CLUSTER_SLEEP_0>;
 			next-level-cache = <&L2_700>;
 			operating-points-v2 = <&cpu7_opp_table>;
+			capacity-dmips-mhz = <1985>;
+			dynamic-power-coefficient = <552>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
 					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
 			qcom,freq-domain = <&cpufreq_hw 2>;
-- 
2.17.1


