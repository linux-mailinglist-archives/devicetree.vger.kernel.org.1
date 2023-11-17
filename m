Return-Path: <devicetree+bounces-16657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 606E37EF30A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0F0AB209D4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1F630652;
	Fri, 17 Nov 2023 12:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="F88Iyf2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CDD7D6C;
	Fri, 17 Nov 2023 04:51:56 -0800 (PST)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AHAS0Dw006440;
	Fri, 17 Nov 2023 12:51:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=ela/3mLXNpka4YaeUgTuw//gmCYRK6poj0VOp/AhEfI=;
 b=F88Iyf2dFGVimtOcif8z1e+lNAkJ+aWSeTYE6jW3kyYiS6fNw10voGeaPxt3/g4DRSmA
 mjXqXe97cSMrj4O9edGkEp7thpamIGMSx5J+zavJ+4SeoxcBsLpumWEXPj9dATdbrgWq
 p1RS5wq9EgouUPa3vrCSp1IuTHuifijssnamVV+daeyuQCjEh/hciWcdw4B3vwOLRlqe
 cQT/9EqnykFYPhP5GoTk0THNSrLxJGBxaeD47xb1fYuefvQvXQKLRcxfxcAXEAu/x3FG
 LgiwzbwrGiKVOmS/zEy/yROtLXVEq5ofO7Z0APTPUOWF4xzZU6m7tsaXbCJtGLh/sIQu oQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ue5exrcsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 12:51:50 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AHCpMZO010340
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 12:51:22 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 17 Nov 2023 04:51:19 -0800
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Komal Bajaj <quic_kbajaj@quicinc.com>
Subject: [PATCH v4 1/3] dt-bindings: arm: qcom: Add QCM6490 IDP and QCS6490 RB3Gen2 board
Date: Fri, 17 Nov 2023 18:20:54 +0530
Message-ID: <20231117125056.32503-2-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117125056.32503-1-quic_kbajaj@quicinc.com>
References: <20231117125056.32503-1-quic_kbajaj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9o5AgHrXdR7cb21adpN3eJC-S8z8JGo-
X-Proofpoint-ORIG-GUID: 9o5AgHrXdR7cb21adpN3eJC-S8z8JGo-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_11,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 impostorscore=0 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 spamscore=0
 mlxlogscore=790 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311170095

Document the qcom,qcm6490-idp and qcs6490-rb3gen2 boards.
qcm6490-idp based off qcm6490 SoC derived from sc7280 meant for
various form factor including IoT and qcs6490-rb3gen2 based off
qcs6490 SoC derivative of qcm6490 without internal modem.

Co-developed by: Naina Mehta <quic_nainmeht@quicinc.com>
Signed-off by: Naina Mehta <quic_nainmeht@quicinc.com>
Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7f80f48a0954..d384182ce3cd 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -397,6 +397,8 @@ properties:
       - items:
           - enum:
               - fairphone,fp5
+              - qcom,qcm6490-idp
+              - qcom,qcs6490-rb3gen2
           - const: qcom,qcm6490

       - description: Qualcomm Technologies, Inc. Distributed Unit 1000 platform
--
2.42.0


