Return-Path: <devicetree+bounces-20110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9D67FDD17
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 17:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADE661C20D0D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E2F374FE;
	Wed, 29 Nov 2023 16:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="UeYw5SEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78B55D67;
	Wed, 29 Nov 2023 08:34:54 -0800 (PST)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3ATDtoJ3027172;
	Wed, 29 Nov 2023 16:34:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=sOCNGSxnifiKjtYwTIEEigv5++KLMmWHHCd2JaZpByY=;
 b=UeYw5SEZde//IYKvovI3jPex2M2WkYlWG9H4rT9Hakdlg6Ze85lMWkTjZa28TaUv6qjB
 HzGlBVRrjlg8sUtERKfxJHeBc+cEz8ju7uMdeURCdi8Sg6Vusep4MIaTPK/vt+YfKKuW
 buolMhlJGQdgKP7nGHZBLr1LRNWXxnA1itTTr09kuXCv6iXjdshVMJhDKandcfQTn3k7
 fzdS7hP39Pxp3HHjT/Ft4F2Aa0SVfl6OieqyTrGKU7V+TIEOg/8zBRCNrWlANEXqlCFt
 MvBdDNF4ey771mQaWfFfxqX07Hvr56ymb2ZLH/2tqlv5G4Z04Jpk/yBvXzW8Z1azmuLV 4g== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3up1gt97u0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Nov 2023 16:34:34 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3ATGY5T9032137
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Nov 2023 16:34:05 GMT
Received: from blr-ubuntu-253.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 29 Nov 2023 08:33:58 -0800
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
Subject: [PATCH V3 0/5] dts: qcom: Introduce X1E80100 platforms device tree
Date: Wed, 29 Nov 2023 22:03:36 +0530
Message-ID: <20231129163341.4800-1-quic_sibis@quicinc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UvmunXbPI45502YbADttorzD327BDpDN
X-Proofpoint-ORIG-GUID: UvmunXbPI45502YbADttorzD327BDpDN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-29_14,2023-11-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 malwarescore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311290126

This series adds the initial (clocks, pinctrl, rpmhpd, regulator, interconnect,
CPU, SoC and board compatibles) device tree support to boot to shell on the
Qualcomm X1E80100 platform, aka Snapdragon X Elite.

Our v1 post of the patchsets adding support for Snapdragon X Elite SoC had
the part number sc8380xp which is now updated to the new part number x1e80100
based on the new branding scheme and refers to the exact same SoC.

V3:
* Add more detail to the commit msg describing Oryon. [Rob]
* Add smem compatible and tcsr_hw nodes. [Abel]
* Re-name l2-cache, remove hyphen in reserved region. [Konrad]
* Describe certain secure gpios as unused. [Konrad]
* Pickup Rbs.

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
llcc: https://lore.kernel.org/lkml/20231117095315.2087-1-quic_sibis@quicinc.com/
misc-bindings: https://lore.kernel.org/lkml/20231117105635.343-1-quic_sibis@quicinc.com/

Release Link: https://www.qualcomm.com/news/releases/2023/10/qualcomm-unleashes-snapdragon-x-elite--the-ai-super-charged-plat

Abel Vesa (1):
  arm64: dts: qcom: x1e80100: Add Compute Reference Device

Rajendra Nayak (4):
  dt-bindings: arm: cpus: Add qcom,oryon compatible
  dt-bindings: arm: qcom: Document X1E80100 SoC and boards
  arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts
  arm64: defconfig: Enable X1E80100 SoC base configs

 .../devicetree/bindings/arm/cpus.yaml         |    1 +
 .../devicetree/bindings/arm/qcom.yaml         |    8 +
 arch/arm64/boot/dts/qcom/Makefile             |    2 +
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts     |  426 ++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     |  401 ++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 3517 +++++++++++++++++
 arch/arm64/configs/defconfig                  |    3 +
 7 files changed, 4358 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-crd.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100.dtsi

-- 
2.17.1


