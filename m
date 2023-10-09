Return-Path: <devicetree+bounces-7018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D8B7BEA68
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89A9E1C20AA1
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D24833B7AA;
	Mon,  9 Oct 2023 19:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="HIX81vKt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5ACCBA4B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 19:15:10 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B71B4;
	Mon,  9 Oct 2023 12:15:08 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 399HiYee025944;
	Mon, 9 Oct 2023 19:14:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=tWRKWpXhvsDqqfeaAHHgGggYdW5N5cRaEvFAjiLKlRY=;
 b=HIX81vKtkiNZN6d8zilW9zLPEyg013s9x6cgadaqWPyYeb8x/89v10HLSQ+eMj6FPfOA
 g5QoJUaY5Yw6BL16U+IVaLdwfOcd0wWN+k9W0ms+rgp7y3NtvcHie72ARWPeg1MgRrUE
 HjAAT7Y5VxrdnJV6k8Q/pnnq7onXbwh08pP/yheEKVK+AVK9MAvsepR964njycb1SsLv
 bgTNzaH8hCwezjshDqzvahkUPhI0tU3GNXHYqY5kS+nTFQq26toFyaSMTq4dcwK4vQt7
 ZQGbbZId+s1H5YFOtDuEIswNFpgZZ0HEmnOx9Gk2/oWIjNPyIsq0DIKk9vauclpN4nfL lA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tmj0y8tts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 19:14:55 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 399JEsKB002376
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Oct 2023 19:14:54 GMT
Received: from car-linux11.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Mon, 9 Oct 2023 12:14:54 -0700
From: Nikunj Kela <quic_nkela@quicinc.com>
To: <sudeep.holla@arm.com>
CC: <cristian.marussi@arm.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        Nikunj Kela
	<quic_nkela@quicinc.com>
Subject: [PATCH v6 1/2] dt-bindings: arm: Add new compatible for smc/hvc transport for SCMI
Date: Mon, 9 Oct 2023 12:14:36 -0700
Message-ID: <20231009191437.27926-2-quic_nkela@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231009191437.27926-1-quic_nkela@quicinc.com>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20231009191437.27926-1-quic_nkela@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: _8a3jWOtXvc0wNqj94usnSsS4GcB3Eqf
X-Proofpoint-ORIG-GUID: _8a3jWOtXvc0wNqj94usnSsS4GcB3Eqf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_17,2023-10-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 impostorscore=0 priorityscore=1501 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310090157
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Introduce compatible "qcom,scmi-smc" for SCMI smc/hvc transport channel for
Qualcomm virtual platforms.

This compatible mandates populating an additional parameter 'capability-id'
from the last 8 bytes of the shmem channel.

Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Reviewed-by: Brian Masney <bmasney@redhat.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 Documentation/devicetree/bindings/firmware/arm,scmi.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
index 563a87dfb31a..4591523b51a0 100644
--- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
+++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
@@ -38,6 +38,9 @@ properties:
                      with shmem address(4KB-page, offset) as parameters
         items:
           - const: arm,scmi-smc-param
+      - description: SCMI compliant firmware with Qualcomm SMC/HVC transport
+        items:
+          - const: qcom,scmi-smc
       - description: SCMI compliant firmware with SCMI Virtio transport.
                      The virtio transport only supports a single device.
         items:
@@ -313,6 +316,7 @@ else:
           enum:
             - arm,scmi-smc
             - arm,scmi-smc-param
+            - qcom,scmi-smc
   then:
     required:
       - arm,smc-id
-- 
2.17.1


