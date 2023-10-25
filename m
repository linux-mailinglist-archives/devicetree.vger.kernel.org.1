Return-Path: <devicetree+bounces-11946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 444967D720C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E72B1C20D6A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE762AB48;
	Wed, 25 Oct 2023 17:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="VXcyZ1bt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3972AB2B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:07:13 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B826133;
	Wed, 25 Oct 2023 10:07:12 -0700 (PDT)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PFhfRa006993;
	Wed, 25 Oct 2023 17:07:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=/GbdsTHcBTeMdk2nrGkNsicVUpEdodOMhaqnSIBEsaQ=;
 b=VXcyZ1btG1S808V8K6edoARSvXeprYuyl1A3e3aSXJTX0CmOgwAT53dri9HGRTT5Q8wo
 Hw2bSB9DGgBXZoB16tiwptddwlCC1X3eP0NGSKoDyVbEr2Xye2p/d09eOzB3p7iFNJo8
 8oqYA/7bdaajppygk7Y2fUe1VG7Mv3SmjbYaHUi93xmmGviO6s06kww6l86c+383MSnQ
 IUN2aaaj0h2o7RD516bkR19w/f5/DTXCU6DhInb0be1nAjwNXNqFfYZcXA1fah37n/Sf
 FID59FvvuFC4pYrpMMK9NavDurrzSitv1rrLQAKUH+7TBi4o01vsCKq1sXH/dGpZjv+d bQ== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ty5wdr8ap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 17:07:07 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PH76Sd017720
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 17:07:06 GMT
Received: from hu-mojha-hyd.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 10:07:03 -0700
From: Mukesh Ojha <quic_mojha@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Mukesh Ojha <quic_mojha@quicinc.com>
Subject: [PATCH v2 1/4] dt-bindings: mfd: qcom,tcsr: Add compatible for sm8250/sm8350
Date: Wed, 25 Oct 2023 22:36:38 +0530
Message-ID: <1698253601-11957-1-git-send-email-quic_mojha@quicinc.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: vygGjcVFlcHL_e-Kg8whwgCYYE48I4hf
X-Proofpoint-ORIG-GUID: vygGjcVFlcHL_e-Kg8whwgCYYE48I4hf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_05,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 spamscore=0 mlxscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=689 phishscore=0
 malwarescore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310170001 definitions=main-2310250149

Document the compatible for both sm8250 and sm8350 SoCs.

Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
---
Changes in v2:
 - Removed sm8550.
 - Removed regular expression from commit text/subject.

 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index 33c3d023a106..798705ab6a46 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -29,6 +29,8 @@ properties:
           - qcom,sdx65-tcsr
           - qcom,sm4450-tcsr
           - qcom,sm8150-tcsr
+          - qcom,sm8250-tcsr
+          - qcom,sm8350-tcsr
           - qcom,sm8450-tcsr
           - qcom,tcsr-apq8064
           - qcom,tcsr-apq8084
-- 
2.7.4


