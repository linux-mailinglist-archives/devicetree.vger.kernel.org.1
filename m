Return-Path: <devicetree+bounces-11860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FC17D6DAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36D8C1C20D49
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FEB728DC0;
	Wed, 25 Oct 2023 13:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="jlzbVKNd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB9228DB0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:51:52 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78136183;
	Wed, 25 Oct 2023 06:51:49 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PDPwAc031410;
	Wed, 25 Oct 2023 13:51:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=2puYTceWJ8DwCbWwt9w1wkUS6+QbFQPa4PwAzf59AP4=;
 b=jlzbVKNdtFQXt/jZXu9wAy9LJ4HM7IubviifZ8gO3UciuvmcMMzsev8qT5dL/S68eVbb
 WuSpwfKw8qTy2nRLu4IPggvMNPFp5uq7KVTVc8SIAVy9EUuV3kqUesTmEZ0uAmoybOqs
 obkZu4KGjDVs1ehI44sWxuLhgEmZFmeQS8sE8Iw2m/Tofmkt9gdZ3sWhSsEgHc9jxnpl
 BcTR8QdlEHUV7vs1N3iBHZ8wykd56bEYcQ+SSy2+IIoJCdrurvzi6Nay9eoa4kk7mdD+
 aUZDYxhf7sa4VS/o7IGfkOObCIgco7bfbTzdIg2RlH3nlH9NVV8JZtwudryFimQAFx7C 7w== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3txuj7h0bq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:51:43 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PDpIHS018394
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:51:18 GMT
Received: from blr-ubuntu-87.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 06:51:12 -0700
From: Sibi Sankar <quic_sibis@quicinc.com>
To: <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <agross@kernel.org>, <conor+dt@kernel.org>, <quic_rjendra@quicinc.com>,
        <abel.vesa@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-gpio@vger.kernel.org>, <quic_tsoni@quicinc.com>,
        <neil.armstrong@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>
Subject: [PATCH 0/2] pinctrl: qcom: Introduce Pinctrl/GPIO for SC8380XP
Date: Wed, 25 Oct 2023 19:20:56 +0530
Message-ID: <20231025135058.11268-1-quic_sibis@quicinc.com>
X-Mailer: git-send-email 2.17.1
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
X-Proofpoint-ORIG-GUID: BvTMePDD64dfBC9_j67t2wQdLZAQryZ3
X-Proofpoint-GUID: BvTMePDD64dfBC9_j67t2wQdLZAQryZ3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_02,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 mlxscore=0 adultscore=0 mlxlogscore=507
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310250120

This series adds pinctrl/gpio support for the Qualcomm SC8380XP platform, aka Snapdragon X Elite.

Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat

Rajendra Nayak (2):
  dt-bindings: pinctrl: qcom: Add SC8380XP pinctrl
  pinctrl: qcom: Add SC8380XP pinctrl driver

 .../bindings/pinctrl/qcom,sc8380xp-tlmm.yaml  |  143 ++
 drivers/pinctrl/qcom/Kconfig.msm              |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-sc8380xp.c       | 1876 +++++++++++++++++
 4 files changed, 2030 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sc8380xp-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sc8380xp.c

-- 
2.17.1


