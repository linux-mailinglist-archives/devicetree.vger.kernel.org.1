Return-Path: <devicetree+bounces-18256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C8B7F5DFC
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73900281B74
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7041623760;
	Thu, 23 Nov 2023 11:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="FTPmFASt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35BFDD49;
	Thu, 23 Nov 2023 03:39:04 -0800 (PST)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AN7GGeb017205;
	Thu, 23 Nov 2023 11:38:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=/HMvisoKKdxErewtmk40Y03V2X0AbT3pYgpBbk9Rjm0=;
 b=FTPmFAStJQvWCXT2JqgjETF98n35+85+FhhC6cdOFjW7NJIPSQAjSW7Vk+3++cO5Jh5P
 WehfG11ilifcqIrbWByqi9seXkmlz8uIMhSZCoiF7Y/cwtbVG9sgJDK434fImaqFdq50
 77nCb3ry0uxR4IIFMa/jzhJRtIfY9WMhjRLbsf5jF7mQwHmjOG3pcloVMTtxNT8JddJq
 Pv25Ax2zKCe9kl9HNe2XxEVfVldXecY+9n10n03ltcZ+y9Y0bhAvbTiRhvBxhgflbkwC
 5rqq/RwPZ3L9Lsbf1ZZq8p0p+QYSz2KJJ7XRh76XGDGs/zseIrTRZOZ/L7eS76CXh7Ri fg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uhf6ku4xj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Nov 2023 11:38:51 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3ANBcoHw001075
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Nov 2023 11:38:50 GMT
Received: from hu-jsuraj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Thu, 23 Nov 2023 03:38:40 -0800
From: Suraj Jaiswal <quic_jsuraj@quicinc.com>
To: <quic_jsuraj@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma
	<bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S.
 Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        "Jakub
 Kicinski" <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        "Jose
 Abreu" <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>, <netdev@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Prasad Sodagudi
	<psodagud@quicinc.com>,
        Andrew Halaney <ahalaney@redhat.com>
CC: <kernel@quicinc.com>
Subject: [PATCH net-next v3 1/3] dt-bindings: net: qcom,ethqos: add binding doc for fault IRQ for sa8775p
Date: Thu, 23 Nov 2023 17:08:13 +0530
Message-ID: <ff458955a24c0cb4ba41158b8b53fbef00c8237d.1700737841.git.quic_jsuraj@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1700737841.git.quic_jsuraj@quicinc.com>
References: <cover.1700737841.git.quic_jsuraj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: b_LEfvE0nJH2UYhSEG3J1ox4TGf0wXYC
X-Proofpoint-ORIG-GUID: b_LEfvE0nJH2UYhSEG3J1ox4TGf0wXYC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-23_09,2023-11-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 mlxlogscore=904 spamscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311230083

Add binding doc for fault IRQ. The fault IRQ will be
trigger for ECC,DPP,FSM error.

Signed-off-by: Suraj Jaiswal <quic_jsuraj@quicinc.com>
---
 Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 7bdb412a0185..e013cb51fb07 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -37,12 +37,14 @@ properties:
     items:
       - description: Combined signal for various interrupt events
       - description: The interrupt that occurs when Rx exits the LPI state
+      - description: The interrupt that occurs when HW fault occurs
 
   interrupt-names:
     minItems: 1
     items:
       - const: macirq
       - const: eth_lpi
+      - const: safety
 
   clocks:
     maxItems: 4
@@ -89,8 +91,9 @@ examples:
                <&gcc GCC_ETH_PTP_CLK>,
                <&gcc GCC_ETH_RGMII_CLK>;
       interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
-                   <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-      interrupt-names = "macirq", "eth_lpi";
+                   <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 782 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "macirq", "eth_lpi", "safety";
 
       rx-fifo-depth = <4096>;
       tx-fifo-depth = <4096>;
-- 
2.25.1


