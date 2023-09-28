Return-Path: <devicetree+bounces-4287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7B27B1E7C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CD8582825A4
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67B6A3B787;
	Thu, 28 Sep 2023 13:33:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBE93B2B3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:33:44 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2993F198;
	Thu, 28 Sep 2023 06:33:42 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38SB0UFX031882;
	Thu, 28 Sep 2023 13:33:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=nzGokz7/Nwo54cHR4d29oMCkeeJAUdLArHDO5mVWTHs=;
 b=Wm/gfpQaxcQ/Hr3PQsLZvKElkjSuZi8CrxSJ4Bg6jGRYd0rwdYWknT7oiKtydJ2SyHMm
 b3rlJgeJ1jd4feXscZcQRmNzvwhl4Da+Afh8dL36gB+rA9MjT//l24eL08rXGsw3FbER
 0LANZm3i+xZFKfEoYbGRou0xvJqGOFSjiG+hfUOpKZiUG0KGUk86LTu7LdmLTi3uPb33
 6yORshR9a7K7qcenLu8F1/eKUzt4rRKymVecq3N4WdvdvAnvMLgrBpF9C2ZwHpiazI4+
 H6qIw5XqmqB1j6QmalD256zBXpvynMnm3OqHWwMO9wRAYmlOaexvQ0XG4IF7BGiBjiVx oQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tct5gt20b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Sep 2023 13:33:34 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38SDXXHJ023121
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Sep 2023 13:33:33 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 28 Sep 2023 06:33:29 -0700
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Luca Weiss <luca.weiss@fairphone.com>,
        "Komal
 Bajaj" <quic_kbajaj@quicinc.com>
Subject: [PATCH 0/2] Initial support for the QCM6490 IDP
Date: Thu, 28 Sep 2023 19:03:10 +0530
Message-ID: <20230928133312.11371-1-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
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
X-Proofpoint-ORIG-GUID: i2AkTnqbPDrk5s5mAP3aIus0qPqrWaeJ
X-Proofpoint-GUID: i2AkTnqbPDrk5s5mAP3aIus0qPqrWaeJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-28_13,2023-09-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 mlxlogscore=712 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309280116
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add dt-binding and devicetree files for QCM6490 IDP.

This patch is based on commit 76934f4772e9 i.e
https://lore.kernel.org/lkml/20230919-fp5-initial-v2-6-14bb7cedadf5@fairphone.com/

Komal Bajaj (2):
  dt-bindings: arm: qcom: Add QCM6490 IDP board
  arm64: dts: qcom: qcm6490: Add qcm6490 dts file

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts      | 304 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcm6490.dtsi         | 137 ++++++++
 4 files changed, 443 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qcm6490-idp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/qcm6490.dtsi

--
2.42.0


