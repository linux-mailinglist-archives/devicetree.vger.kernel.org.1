Return-Path: <devicetree+bounces-11864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A67D6DC1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13AEC1F218AA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B81328DCA;
	Wed, 25 Oct 2023 13:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ozTYfSPL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BFA1172D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:56:18 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 996B0182;
	Wed, 25 Oct 2023 06:56:16 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PDuCK6012009;
	Wed, 25 Oct 2023 13:56:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=hJqqXJ+nQXwKYzzn1uZmYc7vEPBjCdWsjE2YvQrr75U=;
 b=ozTYfSPLWCHiZ8EEM2GSC77tpdeKeqWUEsWVgVoXx5Qah0eLGXcIx12XhzedC/J60TT7
 vN0zqaMo9BpKBXt8vxwYfblUJWORNkwfslvx/JqRGcNNPw05Gsiud+pOdOBKTaUeoB8C
 jAJTqHMXjWeKp3AG1/uF5xwhCEM/Mx2bd3biJwWd6d+wgO5IVVO8fuB5P95/KmGcKCYG
 Z1wW1kGofenm/zOBEdnXwpsvE3ArWGaJltVXPbUfSmTzcBa+tYGIDmEcL9APrXtVzRMx
 D+3YwEovEDuWJz1oLgz+ykPpWMsXW7oVRM0ynZ85F+SDWq3bQH6STDMuQuZdXIsQ7SFS 5Q== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3txumsh23s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:56:12 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PDuB18017656
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:56:11 GMT
Received: from blr-ubuntu-87.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 06:56:06 -0700
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
Subject: [PATCH 0/2] regulator: qcom-rpmh: Add regulator support for SC8380XP
Date: Wed, 25 Oct 2023 19:25:48 +0530
Message-ID: <20231025135550.13162-1-quic_sibis@quicinc.com>
X-Mailer: git-send-email 2.17.1
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
X-Proofpoint-GUID: luhppdcX97cV-4vjJfdiRX2M6iBJ-rI8
X-Proofpoint-ORIG-GUID: luhppdcX97cV-4vjJfdiRX2M6iBJ-rI8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_03,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 mlxlogscore=700 spamscore=0
 adultscore=0 clxscore=1011 phishscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250120

This series adds regulator support for the Qualcomm SC8380XP platform, aka Snapdragon X Elite.

Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat

Rajendra Nayak (2):
  dt-bindings: regulator: qcom,rpmh: Add PMC8380 compatible
  regulator: qcom-rpmh: Add regulators support for PMC8380

 .../regulator/qcom,rpmh-regulator.yaml        | 12 ++++++++++++
 drivers/regulator/qcom-rpmh-regulator.c       | 19 +++++++++++++++++++
 2 files changed, 31 insertions(+)

-- 
2.17.1


