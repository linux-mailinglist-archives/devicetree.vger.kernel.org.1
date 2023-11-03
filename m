Return-Path: <devicetree+bounces-13828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 632877E0B4E
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 23:53:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CCEB1C209C9
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 22:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6963324A02;
	Fri,  3 Nov 2023 22:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="awHe4lJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5AD24A00
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 22:53:22 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 904831A8;
	Fri,  3 Nov 2023 15:53:21 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A3MkrGb010990;
	Fri, 3 Nov 2023 22:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=C0DFSQTjA3poU/K9tRR+t9DLMKQK2kSePoJ4WQEd1Gs=;
 b=awHe4lJ1BrWqcPJtgMsL9Mi/5NyOg8g2iY3hhSUMg1TzzKn0GcVbxbm/jUJYOTNUE+7g
 CLgqk+k6yFHFs+0OiVRJia7ExACDOs4ljS2jS1H3j73MWoM74ubMV5XcG/dVH7ZbwPHI
 pQPJGXQ51KZKtepanWdzT0UZ9SgcnRswbwhONE+TBl+VJyMokA7VXpnSaehJ/1Dq0KRX
 NixRyMDugvdOeN6JpfSBM/5eRELjLPz/IqTdUt3GOr9dd9VJdw0hAK8O6+hUOdFDqRfx
 YYInMMIzNePV9ZpIOYVQ/CNEyPrhMhBNz1Yzbj1DFi0zYTQKhG2RsVlPJs5xKITTrTRt Rg== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u4sfta5xu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Nov 2023 22:53:14 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A3MrDD3005266
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 Nov 2023 22:53:13 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Fri, 3 Nov 2023 15:53:12 -0700
From: Elliot Berman <quic_eberman@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Herbert Xu
	<herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        "Rob
 Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>,
        Elliot Berman
	<quic_eberman@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH] dt-bindings: crypto: qcom,prng: Add SM8450
Date: Fri, 3 Nov 2023 15:52:54 -0700
Message-ID: <20231103225255.867243-1-quic_eberman@quicinc.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: -rgFJIMbNoK7N737qefsnRhtlog7LCKR
X-Proofpoint-ORIG-GUID: -rgFJIMbNoK7N737qefsnRhtlog7LCKR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-03_21,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 adultscore=0 spamscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=884 suspectscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311030194

From: Konrad Dybcio <konrad.dybcio@linaro.org>

SM8450's PRNG does not require a core clock reference. Add a new
compatible with a qcom,prng-ee fallback and handle that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
I noticed this patch got missed while running make dtbs_check. No
changes to this patch from the original version:

https://lore.kernel.org/all/2c208796-5ad6-c362-dabc-1228b978ca1d@linaro.org/

 .../devicetree/bindings/crypto/qcom,prng.yaml | 24 +++++++++++++++----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index bb42f4588b40..36b0ebd9a44b 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -11,9 +11,13 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,prng  # 8916 etc.
-      - qcom,prng-ee  # 8996 and later using EE
+    oneOf:
+      - enum:
+          - qcom,prng  # 8916 etc.
+          - qcom,prng-ee  # 8996 and later using EE
+      - items:
+          - const: qcom,sm8450-prng-ee
+          - const: qcom,prng-ee
 
   reg:
     maxItems: 1
@@ -28,8 +32,18 @@ properties:
 required:
   - compatible
   - reg
-  - clocks
-  - clock-names
+
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: qcom,sm8450-prng-ee
+    then:
+      required:
+        - clocks
+        - clock-names
 
 additionalProperties: false
 
-- 
2.41.0


