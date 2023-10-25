Return-Path: <devicetree+bounces-11845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D59E07D6D75
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93682280FF6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DDA210F4;
	Wed, 25 Oct 2023 13:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="WdVDrQOX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C44615486
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:41:13 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 193B5131;
	Wed, 25 Oct 2023 06:41:12 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PAsLc0004906;
	Wed, 25 Oct 2023 13:41:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=YDcLR2G+C1hCLZLs09tyHiteEIWbio7pILnOdwsc5RI=;
 b=WdVDrQOXjkENMSTVuPpcRSkJeoFxBkkweB2Li9yzYlXhk/C4Bw+9r/5V5dSr4H8pY2x6
 DKSUnPLcBSiModXCxPeIkyk+joyU9yiBX6Ug57hKdd7OpmMGdEL+B/CVSY8J7xP7W3Dn
 EQcJAgVhxPh3mi7ipxqrjzk6ktWwa07vPe/LV6AP8oKM/EptnHnj4EGF5GTc+yn31EVB
 ITzs6Bm4WHIvgUC8PWxRXnf4IVhHG6I2QNM7bAF1HZu9DgDrA2t1fcCqXozM0TIcgDpz
 LqOTU2f9x/35UE9FsDKZ87JHVCZoH9kqCbCrMMTHGXaGXnb+S9EMsDnE9HZDeyIfqLsH Nw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3txumsh1b7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:41:09 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PDf80o022590
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:41:08 GMT
Received: from blr-ubuntu-87.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 06:41:03 -0700
From: Sibi Sankar <quic_sibis@quicinc.com>
To: <andersson@kernel.org>, <djakov@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <agross@kernel.org>, <conor+dt@kernel.org>, <quic_rjendra@quicinc.com>,
        <abel.vesa@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_tsoni@quicinc.com>,
        <neil.armstrong@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>
Subject: [PATCH 0/2] interconnect: qcom: Introduce interconnect drivers for SC8380XP
Date: Wed, 25 Oct 2023 19:10:47 +0530
Message-ID: <20231025134049.9734-1-quic_sibis@quicinc.com>
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
X-Proofpoint-GUID: sftaGhg-tQUIYETP4_IrP8ga6WKBm2FM
X-Proofpoint-ORIG-GUID: sftaGhg-tQUIYETP4_IrP8ga6WKBm2FM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_02,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 mlxlogscore=578 spamscore=0
 adultscore=0 clxscore=1011 phishscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250118

This series adds interconnect support for the Qualcomm SC8380XP platform, aka Snapdragon X Elite.

Dependencies: None
Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat

Rajendra Nayak (2):
  dt-bindings: interconnect: Add Qualcomm SC8380XP SoC
  interconnect: qcom: Add SC8380XP interconnect provider driver

 .../interconnect/qcom,sc8380xp-rpmh.yaml      |   83 +
 drivers/interconnect/qcom/Kconfig             |    9 +
 drivers/interconnect/qcom/Makefile            |    2 +
 drivers/interconnect/qcom/sc8380xp.c          | 2328 +++++++++++++++++
 drivers/interconnect/qcom/sc8380xp.h          |  192 ++
 .../interconnect/qcom,sc8380xp-rpmh.h         |  207 ++
 6 files changed, 2821 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sc8380xp-rpmh.yaml
 create mode 100644 drivers/interconnect/qcom/sc8380xp.c
 create mode 100644 drivers/interconnect/qcom/sc8380xp.h
 create mode 100644 include/dt-bindings/interconnect/qcom,sc8380xp-rpmh.h

-- 
2.17.1


