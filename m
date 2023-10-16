Return-Path: <devicetree+bounces-8953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CE17CAB9D
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 16:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 433A41C2093A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 14:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D73E28DAB;
	Mon, 16 Oct 2023 14:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="g2tkhoKX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D130B28E02
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:35:03 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE7B19B;
	Mon, 16 Oct 2023 07:35:02 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39GBmIJU000326;
	Mon, 16 Oct 2023 14:34:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=0WZkMc2C+j8zX09SgVRcHLmnBapy2P6tKs/X88ldHaQ=;
 b=g2tkhoKXKd/Fliq6JsXr2/Cb8Bp1FSEU4/ndKG1OtCCZBHkEpT1KpMpJ5F4pw5799Jve
 IR3HNpipan4sM7sbBINe80EZ29ubp1lu9QSjLcYRBNtbhYqT8n4KP+UVOEqF/En/yblu
 xi9t5rkxwsHD27HnLlGIkCn/axa4W5DoqyMyKR8/pCIfL3cshyHNhm8OcnM7wEXXuUIF
 5hVnb6InlK4iAXS65mFaw1O5HN1HtGDhpgqw0XMpVHST9SNA5uAnfLGDv3P1KOlJqIH9
 9zCV3tpPHmc9jpGRXUOfUPIOaZmjCJEpbTAC2JAWbSkStFs3nPC/+UpU1eUP032kwkUe 6Q== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tqkrpca6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Oct 2023 14:34:51 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39GEYo7j008070
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Oct 2023 14:34:50 GMT
Received: from hu-omprsing-hyd.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Mon, 16 Oct 2023 07:34:45 -0700
From: Om Prakash Singh <quic_omprsing@quicinc.com>
To: <quic_omprsing@quicinc.com>
CC: <neil.armstrong@linaro.org>, <konrad.dybcio@linaro.org>,
        <agross@kernel.org>, <andersson@kernel.org>, <conor+dt@kernel.org>,
        <davem@davemloft.net>, <devicetree@vger.kernel.org>,
        <herbert@gondor.apana.org.au>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <marijn.suijten@somainline.org>,
        <robh+dt@kernel.org>, <vkoul@kernel.org>
Subject: [PATCH V2] dt-bindings: crypto: qcom,prng: document SA8775P and SC7280
Date: Mon, 16 Oct 2023 20:04:28 +0530
Message-ID: <20231016143428.2992168-1-quic_omprsing@quicinc.com>
X-Mailer: git-send-email 2.25.1
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
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: FY6YJkgK1AYqWSesuMJ3ToTBARFAJefi
X-Proofpoint-GUID: FY6YJkgK1AYqWSesuMJ3ToTBARFAJefi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-16_07,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=937 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310160126
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document SA8775P and SC7280 compatible for the True Random Number
Generator.

Signed-off-by: Om Prakash Singh <quic_omprsing@quicinc.com>
---

Changes in V2:
  - Squashed two separate patches for SA8775P and SC7280 in one.
  - Sort entries in alphabetic order.

 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index 633993f801c6..13070db0f70c 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -17,6 +17,8 @@ properties:
           - qcom,prng-ee  # 8996 and later using EE
       - items:
           - enum:
+              - qcom,sa8775p-trng
+              - qcom,sc7280-trng
               - qcom,sm8450-trng
               - qcom,sm8550-trng
           - const: qcom,trng
-- 
2.25.1


