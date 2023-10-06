Return-Path: <devicetree+bounces-6350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB457BB0FC
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 06:53:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB9191C20945
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 04:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC9B1FDC;
	Fri,  6 Oct 2023 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="fraDxTfS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0044F139B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 04:53:51 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53595DB;
	Thu,  5 Oct 2023 21:53:50 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3964e3Cx010052;
	Fri, 6 Oct 2023 04:53:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=9GFh1YS01daGYvKQdXjTgJDCh+b5kd4B1nYLfCB+O6A=;
 b=fraDxTfSIS/64oiZuUlhNQ6mqMAtb+Xwb0iw5ZaXq80ec8d4x9L6G4vHXgTJAwO94Nm0
 lR5cvV6/Zg94am4PZz/R/BSwFhRcvZD0lJBZXJffR3lPwhG1qrX1gq6Ijw//t5rRBkou
 Yclt7MGMI0WX57SRwq+iJ1tIN1kBRr5RZD57CNL5mHsExAwIsCmWlYoQ56WiuDJMyDxu
 ncfe+ir+2JWeHuB0qidR6YojYUbgeA33f2zqyd+tPFAgagjKpvrQoGokGHMpjmKIXU6Z
 cAxCr5Fq5Ck7VtlcpfNXnh0FFvjOC2G0m2Yb0Xm8/P/kZQA8nKpoSRh2IOqtpAolkpXD /w== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3thn05am04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Oct 2023 04:53:37 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3964rahf006966
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 6 Oct 2023 04:53:36 GMT
Received: from hu-devipriy-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 5 Oct 2023 21:53:31 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <thierry.reding@gmail.com>, <baruch@tkos.co.il>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <u.kleine-koenig@pengutronix.de>,
        <linux-pwm@vger.kernel.org>
Subject: [PATCH 0/4] Enable pwm support for IPQ5332 & IPQ9574 SoCs
Date: Fri, 6 Oct 2023 10:23:13 +0530
Message-ID: <20231006045317.1056625-1-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.34.1
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
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: dhqULUY4BVT7scxAlZMb_OrYfPUQUecf
X-Proofpoint-GUID: dhqULUY4BVT7scxAlZMb_OrYfPUQUecf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-06_01,2023-10-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 impostorscore=0 bulkscore=0 spamscore=0 mlxlogscore=549 priorityscore=1501
 mlxscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310060036
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable pwm support for IPQ5332 & IPQ9574 SoCs and document the
pwm compatibles.
While at it, use qcom,ipq6018-pwm as the fallback compatible and extend the
simple-mfd support for ipq5332 & ipq9574 targets.

This series depends on the below series which adds support
for the PWM driver on IPQ targets:
https://lore.kernel.org/linux-arm-msm/20231005160550.2423075-1-quic_devipriy@quicinc.com/

Devi Priya (4):
  dt-bindings: pwm: Document the pwm compatible for ipq5332 & ipq9574
  dt-bindings: mfd: qcom,tcsr: Extend simple-mfd & pwm support for IPQ
    targets
  arm64: dts: qcom: ipq9574: Add pwm support
  arm64: dts: qcom: ipq5332: Add pwm support

 .../devicetree/bindings/mfd/qcom,tcsr.yaml        |  9 ++++++---
 .../devicetree/bindings/pwm/qcom,ipq6018-pwm.yaml |  9 ++++++++-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi             | 15 ++++++++++++++-
 arch/arm64/boot/dts/qcom/ipq9574-rdp418.dts       | 12 ++++++++++++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi             | 15 ++++++++++++++-
 5 files changed, 54 insertions(+), 6 deletions(-)

-- 
2.34.1


