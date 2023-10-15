Return-Path: <devicetree+bounces-8682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D6B7C9B19
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E0DE2814CD
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 19:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6CC11701;
	Sun, 15 Oct 2023 19:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="hsSFTabr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67D9C8EA
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 19:39:55 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A98A9;
	Sun, 15 Oct 2023 12:39:54 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39FJdMPC006970;
	Sun, 15 Oct 2023 19:39:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=KsZ/h7locFrMANe5wcaopGWvLGiNj9i/vkCFjybCCqw=;
 b=hsSFTabrmtB/XHQywZlRXc5sKiUIFYWmNXD3yji6rcaX5zyTP3w+H4JpG3rKJN5348WG
 Jir3So3PL7l5X73F5mWV3XW4BS/dac5cKJ0+FxN/IT/S0lwGfFtgVxcsaXWGwS+iTi8a
 +nDh1cAIPlLd/3VM0Qh8co4uT6IU5wvIZCEOr40ZJ8AghPpScnpHn0QFttKTT3kjfLEh
 IxzqT+hu571lu+3XEeBvp2UZoxmbKPrw8yXRJaKmS/KJ/WMDo2AVSNZtUT9rfQGRZOPC
 fFFenb1ZjiV3q/YsrciKVKmjebjRL7TH+xC7JX2ZvxfJyWcEu1nElXByGqLwahMhhE8i sw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tqgpp2v1s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 15 Oct 2023 19:39:30 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39FJdUlC018875
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 15 Oct 2023 19:39:30 GMT
Received: from hu-omprsing-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Sun, 15 Oct 2023 12:39:25 -0700
From: Om Prakash Singh <quic_omprsing@quicinc.com>
To: <quic_omprsing@quicinc.com>
CC: <neil.armstrong@linaro.org>, <konrad.dybcio@linaro.org>,
        <agross@kernel.org>, <andersson@kernel.org>, <conor+dt@kernel.org>,
        <davem@davemloft.net>, <devicetree@vger.kernel.org>,
        <herbert@gondor.apana.org.au>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <marijn.suijten@somainline.org>,
        <robh+dt@kernel.org>, <vkoul@kernel.org>
Subject: [PATCH V1 1/4] dt-bindings: crypto: qcom,prng: document SA8775P
Date: Mon, 16 Oct 2023 01:08:58 +0530
Message-ID: <20231015193901.2344590-2-quic_omprsing@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
References: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: z972gMKlxSNBIK0iLIpJj0KNzqRlYjPg
X-Proofpoint-GUID: z972gMKlxSNBIK0iLIpJj0KNzqRlYjPg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-15_06,2023-10-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 phishscore=0
 mlxlogscore=970 adultscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310150179
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document SA8775P compatible for the True Random Number Generator.

Signed-off-by: Om Prakash Singh <quic_omprsing@quicinc.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index 633993f801c6..85e6b1c199f5 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,sm8450-trng
               - qcom,sm8550-trng
+              - qcom,sa8775p-trng
           - const: qcom,trng
 
   reg:
-- 
2.25.1


