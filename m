Return-Path: <devicetree+bounces-16635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B52877EF1F5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C7BF280A89
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 11:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392363033E;
	Fri, 17 Nov 2023 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YmX2uRDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 850F0D56;
	Fri, 17 Nov 2023 03:40:24 -0800 (PST)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AHBRika005588;
	Fri, 17 Nov 2023 11:40:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=zTZJi7EnLk1lHJmph3SFPSN9oW4rOikhO8rYh4OFqc4=;
 b=YmX2uRDQsdzamh32CRAI0CRI5fpj2JTNA6hpz61d/AnGEO3XGT0kF1z79dDgObqvj4O9
 AJCsvWHe/pceM+dk2KVGSlN0DnSjFFQdR29/bg4jaKUM58Tnh3L9dOllh/CBx+34Fv2R
 ZE4QxdUTuiY5XV271k7/6iWSsTAML+zZCBV9E5SEAzQgQItm45GFlEkkd/eHOjuHDeqf
 r6r8Oo/TxLej6mqvel9E6x5wjAyJ6v55nPrgJvz8NBYvZo+A4z0fdliMgaayc/AzchzY
 vJ9Ewg6gg/NCtFDFiuAxa7oZEh1bTFVC+O+q1NPRpQ5ChNHVUfb4VomBoKUpGzlGFLlT 2g== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ue6var2cd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 11:40:00 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AHBdwCg004382
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 11:39:58 GMT
Received: from blr-ubuntu-87.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 17 Nov 2023 03:39:51 -0800
From: Sibi Sankar <quic_sibis@quicinc.com>
To: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <ulf.hansson@linaro.org>
CC: <agross@kernel.org>, <conor+dt@kernel.org>, <ayan.kumar.halder@amd.com>,
        <j@jannau.net>, <dmitry.baryshkov@linaro.org>,
        <nfraprado@collabora.com>, <m.szyprowski@samsung.com>,
        <u-kumar1@ti.com>, <peng.fan@nxp.com>, <lpieralisi@kernel.org>,
        <quic_rjendra@quicinc.com>, <abel.vesa@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <quic_tsoni@quicinc.com>, <neil.armstrong@linaro.org>,
        Sibi Sankar
	<quic_sibis@quicinc.com>
Subject: [PATCH V2 0/5] dts: qcom: Introduce X1E80100 platforms device tree
Date: Fri, 17 Nov 2023 17:09:26 +0530
Message-ID: <20231117113931.26660-1-quic_sibis@quicinc.com>
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
X-Proofpoint-GUID: fdz1zCHqMhuvRpwAjQL-idsBaHSBgTjd
X-Proofpoint-ORIG-GUID: fdz1zCHqMhuvRpwAjQL-idsBaHSBgTjd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_09,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311170087

This series adds the initial (clocks, pinctrl, rpmhpd, regulator, interconnect,
CPU, SoC and board compatibles) device tree support to boot to shell on the
Qualcomm X1E80100 platform, aka Snapdragon X Elite.

Our v1 post of the patchsets adding support for Snapdragon X Elite SoC had
the part number sc8380xp which is now updated to the new part number x1e80100
based on the new branding scheme and refers to the exact same SoC.

v2:
* Update the part number from sc8380xp to x1e80100.
* Fixup ordering in the SoC/board bindings. [Krzysztof]
* Add pdc node and add wakeup tlmm parent. [Rajendra]
* Add cpu/cluster idle states. [Bjorn]
* Document reserved gpios. [Konrad]
* Remove L1 and add missing props to L2. [Konrad]
* Remove region suffix. [Konrad]
* Append digits to gcc node. [Konrad]
* Add ICC_TAGS instead of leaving it unspecified. [Konrad]
* Remove double space. [Konrad]
* Leave the size index of memory node untouched. [Konrad]
* Override the serial uart with "qcom,geni-debug-uart" in the board files. [Rajendra]
* Add additional details to patch 5 commit message. [Konrad/Krzysztof]

Dependencies:
clks: https://lore.kernel.org/lkml/20231117092737.28362-1-quic_sibis@quicinc.com/
interconnect: https://lore.kernel.org/lkml/20231117103035.25848-1-quic_sibis@quicinc.com/
llcc: https://lore.kernel.org/lkml/20231117095315.2087-1-quic_sibis@quicinc.com/
misc-bindings: https://lore.kernel.org/lkml/20231117105635.343-1-quic_sibis@quicinc.com/
pinctrl: https://lore.kernel.org/lkml/20231117093921.31968-1-quic_sibis@quicinc.com/
rpmhpd: https://lore.kernel.org/lkml/20231117104254.28862-1-quic_sibis@quicinc.com/

Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat

Rajendra Nayak (4):
  dt-bindings: arm: cpus: Add qcom,oryon compatible
  dt-bindings: arm: qcom: Document X1E80100 SoC and boards
  arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts
  arm64: defconfig: Enable X1E80100 SoC base configs

Sibi Sankar (1):
  arm64: dts: qcom: x1e80100: Add Compute Reference Device

 .../devicetree/bindings/arm/cpus.yaml         |    1 +
 .../devicetree/bindings/arm/qcom.yaml         |    8 +
 arch/arm64/boot/dts/qcom/Makefile             |    2 +
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts     |  425 ++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     |  400 ++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 3509 +++++++++++++++++
 arch/arm64/configs/defconfig                  |    3 +
 7 files changed, 4348 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-crd.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100.dtsi

-- 
2.17.1


