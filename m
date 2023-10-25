Return-Path: <devicetree+bounces-11879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 027D57D6E6E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:07:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFC85281CA6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0020128E15;
	Wed, 25 Oct 2023 14:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ga6L/TZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96BFA28E04
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:07:52 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51BDD138;
	Wed, 25 Oct 2023 07:07:51 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PDPqlc027561;
	Wed, 25 Oct 2023 14:07:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=paTHhorFoV0+3eopi3ZOENz95C7tNzgHSf7lKvtL8h8=;
 b=ga6L/TZ+TGxRq2P1wGlkEiK27jTYSNLwKkbHJKQXxAF4OaRGPbQeFTmny4GG/hlRq1fK
 JflV5aVYpL8VCkeA0BP/xJspxAnRTLGfUt+2N8CWPS8I/UQXw610om1xdMSDGHNnOufm
 zFh23J4pQptsE0u97IhOWXuQQ8c7Ja5HVl7YNN1mFyXRo+Oe+/SoLBAJAH0ySXgOLbp8
 5MQ/hYNP9UcsmdI05KJ8L6MWCiSyWopAEkEWd1XfuowC5LvtN5AfhMmivr1ZQhJtmKuT
 G0isWh8lNlHnQePNOCIQWSTp0pJMOAmtaG80DG4Ro0sYQuEGFcghDbb8zdnLunmvFFBl FQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3txngvhne8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 14:07:35 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PE7YpP006817
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 14:07:34 GMT
Received: from blr-ubuntu-87.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 07:07:28 -0700
From: Sibi Sankar <quic_sibis@quicinc.com>
To: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <will@kernel.org>,
        <robin.murphy@arm.com>, <joro@8bytes.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <agross@kernel.org>, <vkoul@kernel.org>, <quic_gurus@quicinc.com>,
        <conor+dt@kernel.org>, <quic_rjendra@quicinc.com>,
        <abel.vesa@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <iommu@lists.linux.dev>,
        <quic_tsoni@quicinc.com>, <neil.armstrong@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Subject: [PATCH 3/3] dt-bindings: firmware: qcom,scm: document SCM on SC8380XP SoCs
Date: Wed, 25 Oct 2023 19:36:40 +0530
Message-ID: <20231025140640.22601-4-quic_sibis@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231025140640.22601-1-quic_sibis@quicinc.com>
References: <20231025140640.22601-1-quic_sibis@quicinc.com>
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
X-Proofpoint-GUID: 0L0QsYZ32gjvZfJfB-efXBWqulnnNkJ_
X-Proofpoint-ORIG-GUID: 0L0QsYZ32gjvZfJfB-efXBWqulnnNkJ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_03,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250122

Document scm compatible for SC8380XP SoCs.

Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 0613a37a851a..7941e71cb3e8 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -48,6 +48,7 @@ properties:
           - qcom,scm-sc7280
           - qcom,scm-sc8180x
           - qcom,scm-sc8280xp
+          - qcom,scm-sc8380xp
           - qcom,scm-sdm670
           - qcom,scm-sdm845
           - qcom,scm-sdx55
-- 
2.17.1


