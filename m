Return-Path: <devicetree+bounces-10840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 896507D2DFF
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:21:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B24221C209C4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC02012B93;
	Mon, 23 Oct 2023 09:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="XIAn6hVw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B04812B9F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:21:29 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F6CCD65;
	Mon, 23 Oct 2023 02:21:28 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39N7UfoT017983;
	Mon, 23 Oct 2023 09:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=XjY/aLYCXQIKfzAL6rkhVazPSSEJptdIg8VY6/AWpho=;
 b=XIAn6hVwf6kEbVgG6RziMzvEfvAgxqjSiZGsxVvpNiuzC9ygIugkUx6DD49IaKUUbwK4
 gfa9nRdzbQuLtBq+lj25XXhdk3B1dpqW6E/I+TtAsB8vmNsdLP0UQgdO//gq0yMYlyEE
 /TyyK+avhDO8gKHu8q+Saf2ozqG3eLoPONqILymkALV6ab1KUc7aE/XEt8kcPEnJKkFI
 xDzRLKfc95W2yv72ViGIOAh8jmZtENeLJE5Uq/vF6HR4Vl61MHY3ctxCXqrZ8ii8dbe6
 JXmEfLQejlt7B1ao2xTsPDfbim4Y/Mqd05zwCtQ1cVm9tApslxMzpcjcIM+2tAcRx/Wq vQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tv4bm4ah3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 09:21:25 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39N9LPO4018504
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 09:21:25 GMT
Received: from zhenhuah-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 23 Oct 2023 02:21:19 -0700
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>, Zhenhua Huang <quic_zhenhuah@quicinc.com>
Subject: [PATCH v1 2/5] dt-bindings: sram: qcom,imem: document sm8250
Date: Mon, 23 Oct 2023 17:20:54 +0800
Message-ID: <1698052857-6918-3-git-send-email-quic_zhenhuah@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: OVbN_iv_SKAOCIy1OPlCk9HOSEGoneAs
X-Proofpoint-ORIG-GUID: OVbN_iv_SKAOCIy1OPlCk9HOSEGoneAs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_07,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 mlxlogscore=815 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310230080

Add compatible for sm8250 IMEM.

Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index e9eaa7a..f7c4d3d 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,sdx55-imem
           - qcom,sdx65-imem
           - qcom,sm6375-imem
+          - qcom,sm8250-imem
           - qcom,sm8450-imem
       - const: syscon
       - const: simple-mfd
-- 
2.7.4


