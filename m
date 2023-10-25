Return-Path: <devicetree+bounces-11865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA867D6DC2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB93B1C20C61
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5235028DD1;
	Wed, 25 Oct 2023 13:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ChAAiXaE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF4728DC7
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:56:25 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50A83133;
	Wed, 25 Oct 2023 06:56:21 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PCw2IA019358;
	Wed, 25 Oct 2023 13:56:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=YNYMvM3/gNlOzXUsHVJc7msxabi4A33w1FZ4xoX2UOY=;
 b=ChAAiXaED3eOWCJJ3WT/4be4UFKDBsq5oIO7xCpTrDY7VobpLCfDx7j2gTCUWpqPr+RI
 K9W6FC8nH8nNnI5osUPMKh/SERhSvtREK1IFLSlANYMZcLE1MTkkV0GDqrIIK41FBwDf
 KnxvSLL35HZY7B3ITaoo86xxjNzV0HWO0dQ1jtjlS2+aRMDH/qvm83+cXP2zJ4OEFky6
 g6idYIQ0UuEVv0ncevHmQE5vpj186xUu1+q20fPDPHDBC/XIsh4L/HYLVurrXKzPN//z
 gx1TOqoVGllfXDb9IV4DsyToGS++GPQW1wps4EYU8HDe81pXbdqgc4rwAutvosM+g/BW Uw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tx7r83sr5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:56:17 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PDuHeN022628
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:56:17 GMT
Received: from blr-ubuntu-87.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 06:56:11 -0700
From: Sibi Sankar <quic_sibis@quicinc.com>
To: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <broonie@kernel.org>,
        <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <agross@kernel.org>, <conor+dt@kernel.org>, <quic_rjendra@quicinc.com>,
        <abel.vesa@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_tsoni@quicinc.com>, <neil.armstrong@linaro.org>,
        Sibi Sankar
	<quic_sibis@quicinc.com>
Subject: [PATCH 1/2] dt-bindings: regulator: qcom,rpmh: Add PMC8380 compatible
Date: Wed, 25 Oct 2023 19:25:49 +0530
Message-ID: <20231025135550.13162-2-quic_sibis@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231025135550.13162-1-quic_sibis@quicinc.com>
References: <20231025135550.13162-1-quic_sibis@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: -CSpPTiwsMaR-X7X50PWDHwPGaevAoIk
X-Proofpoint-GUID: -CSpPTiwsMaR-X7X50PWDHwPGaevAoIk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_03,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=994 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250120

From: Rajendra Nayak <quic_rjendra@quicinc.com>

Add PMC8380 compatibles for PMIC found in SC8380XP platform.

Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
---
 .../bindings/regulator/qcom,rpmh-regulator.yaml      | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 127a6f39b7f0..acd37f28ef53 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -50,6 +50,7 @@ description: |
       For PM8550, smps1 - smps6, ldo1 - ldo17, bob1 - bob2
       For PM8998, smps1 - smps13, ldo1 - ldo28, lvs1 - lvs2
       For PMI8998, bob
+      For PMC8380, smps1 - smps8, ldo1 - lodo3
       For PMR735A, smps1 - smps3, ldo1 - ldo7
       For PMX55, smps1 - smps7, ldo1 - ldo16
       For PMX65, smps1 - smps8, ldo1 - ldo21
@@ -78,6 +79,7 @@ properties:
       - qcom,pm8998-rpmh-regulators
       - qcom,pmc8180-rpmh-regulators
       - qcom,pmc8180c-rpmh-regulators
+      - qcom,pmc8380-rpmh-regulators
       - qcom,pmg1110-rpmh-regulators
       - qcom,pmi8998-rpmh-regulators
       - qcom,pmm8155au-rpmh-regulators
@@ -364,6 +366,16 @@ allOf:
       patternProperties:
         "^vdd-s([1-9]|1[0-3])-supply$": true
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pmc8380-rpmh-regulators
+    then:
+      patternProperties:
+        "^vdd-l[1-3]-supply$": true
+        "^vdd-s[1-8]-supply$": true
+
   - if:
       properties:
         compatible:
-- 
2.17.1


