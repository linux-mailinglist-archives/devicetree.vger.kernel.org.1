Return-Path: <devicetree+bounces-7494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A38437C483B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 05:15:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2A861C20C86
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 03:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F6A6124;
	Wed, 11 Oct 2023 03:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ByvjL0ku"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C799F354F7
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:15:06 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1235691;
	Tue, 10 Oct 2023 20:15:05 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B1HL0b013325;
	Wed, 11 Oct 2023 03:14:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=HtORdbKx2SBUhvrj4Xa1+ldf1twR5jrAv/+9dZMZjTw=;
 b=ByvjL0kueDA5AAeCnE5GUamw9WVquI29mWKg5b4JWGQn3huZ15etqxN/P46p/hmNVIOK
 Q4W/VKWvIccl7YX+56ublyBTgv6sfytFAeYgeW1D8jHKI4k8YCBVIvgrGV6EqxehqoaG
 w/c5O1EqY9mVtFpqeot8svh6YfWKvoHIrz/9bbLqvkE0OkzIBKwCPRI+x9VQjgL3XwQM
 dXqKBZzOG9SfFsBKg9L8bRnEAy4x6XZsBpSW9t8GDUm1S5ZDNi8XA4N+Z4Ch5Mtmmo5W
 taZ3gF6q49f8LCVD4E0Nkx/u4DsXQrchmF3dXPwnW7hrWN4ZMQY6pqDfuU+kxRIqi8bz JA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tna9c92wq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 03:14:50 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39B3EnC2031795
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 03:14:49 GMT
Received: from tengfan2-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 10 Oct 2023 20:14:41 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fa@nxp.com>,
        <quic_tsoni@quicinc.com>, <quic_shashim@quicinc.com>,
        <quic_kaushalk@quicinc.com>, <quic_tdas@quicinc.com>,
        <quic_tingweiz@quicinc.com>, <quic_aiquny@quicinc.com>,
        <kernel@quicinc.com>, Tengfei Fan <quic_tengfan@quicinc.com>
Subject: [PATCH v5 RESEND 0/7] soc: qcom: Add uart console support for SM4450
Date: Wed, 11 Oct 2023 11:14:08 +0800
Message-ID: <20231011031415.3360-1-quic_tengfan@quicinc.com>
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
X-Proofpoint-GUID: B5AsBB3mcQvFwLpphjKJtNOz0tBrb-ay
X-Proofpoint-ORIG-GUID: B5AsBB3mcQvFwLpphjKJtNOz0tBrb-ay
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_19,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 spamscore=0 malwarescore=0 mlxscore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1011 mlxlogscore=565
 suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2309180000 definitions=main-2310110027
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series add base description of UART, TLMM, RPMHCC, GCC and RPMh PD
nodes which helps SM4450 boot to shell with console on boards with this
SoC.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
Resend this patch series for get more review.

This patch series depends on below patch series:
"[PATCH v2 0/4] clk: qcom: Add support for GCC and RPMHCC on SM4450"
https://lore.kernel.org/linux-arm-msm/20230909123431.1725728-1-quic_ajipan@quicinc.com/
"[PATCH v4 0/2] pinctl: qcom: Add SM4450 pinctrl driver"
https://lore.kernel.org/linux-arm-msm/20230920082102.5744-1-quic_tengfan@quicinc.com/

v4 -> v5:
  - separate reserved gpios setting from enable UART console patch

v3 -> v4:
  - adjustment the sequence of property and property-names
  - update 0 to 0x0 for reg params
  - remove unrelated change
  - separate SoC change and board change

v2 -> v3:
  - fix dtbs_check warning
  - remove interconnect, iommu, scm and tcsr related code
  - rearrangement dt node
  - remove smmu, scm and tcsr related documentation update
  - enable CONFIG_SM_GCC_4450 in defconfig related patch

v1 -> v2:
  - setting "qcom,rpmh-rsc" compatible to the first property
  - keep order by unit address
  - move tlmm node into soc node
  - update arm,smmu.yaml
  - add enable pinctrl and interconnect defconfig patches
  - remove blank line
  - redo dtbs_check check

previous discussion here:
[1] v4: https://lore.kernel.org/linux-arm-msm/20230922081026.2799-1-quic_tengfan@quicinc.com
[2] v3: https://lore.kernel.org/linux-arm-msm/20230920082102.5744-1-quic_tengfan@quicinc.com
[3] v2: https://lore.kernel.org/linux-arm-msm/20230915021509.25773-1-quic_tengfan@quicinc.com
[4] v1: https://lore.kernel.org/linux-arm-msm/20230908065847.28382-1-quic_tengfan@quicinc.com

Ajit Pandey (1):
  arm64: dts: qcom: sm4450: Add apps_rsc and cmd_db node

Tengfei Fan (6):
  dt-bindings: interrupt-controller: qcom,pdc: document qcom,sm4450-pdc
  arm64: dts: qcom: sm4450: Add RPMH and Global clock
  arm64: dts: qcom: add uart console support for SM4450
  arm64: dts: qcom: sm4450-qrd: add QRD4450 uart support
  arm64: dts: qcom: sm4450-qrd: mark QRD4450 reserved gpios
  arm64: defconfig: enable clock controller and pinctrl

 .../interrupt-controller/qcom,pdc.yaml        |   1 +
 arch/arm64/boot/dts/qcom/sm4450-qrd.dts       |  19 +++-
 arch/arm64/boot/dts/qcom/sm4450.dtsi          | 107 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   2 +
 4 files changed, 127 insertions(+), 2 deletions(-)


base-commit: 940fcc189c51032dd0282cbee4497542c982ac59
-- 
2.17.1


