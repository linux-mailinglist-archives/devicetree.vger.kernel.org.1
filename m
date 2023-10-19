Return-Path: <devicetree+bounces-9858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 117DA7CEDF0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 04:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 150DF1C20A47
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 02:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3CEF80C;
	Thu, 19 Oct 2023 02:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="FJ0wDwbu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01E7F0
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 02:19:59 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE739B;
	Wed, 18 Oct 2023 19:19:57 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J1rOGF013661;
	Thu, 19 Oct 2023 02:19:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=/+uaH8m+OBqW0tnjLaWiubLxqjWShsYiopeevHxEDSM=;
 b=FJ0wDwbupOPlYwWt5/faxFY/7pCm5iirhtOG34Zfyfx6ohgjFmtdfkuX3PtaOWApq5LF
 pvZwkt0f/HdELbe+AYgm8u8DptkJGgVAhhEO/jVRgEntM2n0yds7Wt+8vOO8TLIBg/sx
 Njafdu5f883MJqY1rHTMtab1p6A7tZrn14Gs20O9y2ejtlWSYXA3Usjb2L2+HVALSTo7
 4f0hFRm09cmHVnW80/V0Sm+oXzJZITPjgpPqSzWfk8wwMVXaoxAoy7Y1HSUZ9XGGyYAn
 q2qGfTT2N5IFNLOk7zYYjItC2jJeRz4AQDndcV4R/9er36qpWjI5lAorEtR9GZDTtnn7 rw== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tt8xsam20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 02:19:41 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J2Jef0004188
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 02:19:40 GMT
Received: from hu-c-gdjako-lv.qualcomm.com (10.49.16.6) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 18 Oct 2023 19:19:39 -0700
From: Georgi Djakov <quic_c_gdjako@quicinc.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <will@kernel.org>, <robin.murphy@arm.com>,
        <joro@8bytes.org>
CC: <devicetree@vger.kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux.dev>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <quic_cgoldswo@quicinc.com>,
        <quic_sukadev@quicinc.com>, <quic_pdaly@quicinc.com>,
        <quic_sudaraja@quicinc.com>, <djakov@kernel.org>
Subject: [PATCH 0/6] Add support for Translation Buffer Units
Date: Wed, 18 Oct 2023 19:19:17 -0700
Message-ID: <20231019021923.13939-1-quic_c_gdjako@quicinc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0Y91xaZkUXfe7YLR7kOtDeR8PiWH_7ZT
X-Proofpoint-ORIG-GUID: 0Y91xaZkUXfe7YLR7kOtDeR8PiWH_7ZT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-19_02,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 mlxscore=0 suspectscore=0 clxscore=1011
 impostorscore=0 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=532 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2309180000 definitions=main-2310190018

The TCUs (Translation Control Units) and TBUs (Translation Buffer
Units) are key components of the ARM MMU-500. Multiple TBUs are
connected to a single TCU over an interconnect. Each TBU contains
a TLB that caches page tables. The MMU-500 implements a TBU for each
connected master, and the TBU is designed, so that it is local to the
master.

The Qualcomm sdm845 platform has an implementation of the ARM SMMU-500,
that consists of a single TCU and multiple TBUs. Support for the TCU
is already present and this patchset is adds support for TBUs that
allow us to use some of the debug features to include more info when
a context fault occurs.

Each TBU requires some resources like power-domains, interconnects and
clocks to be described in DT. These resources will be being controlled
by the TBU driver when they in use.

Georgi Djakov (6):
  dt-bindings: iommu: Add Translation Buffer Unit bindings
  iommu/arm-smmu-qcom: Add support for TBUs
  iommu/arm-smmu-qcom: Add Qualcomm TBU driver
  iommu/arm-smmu: Allow using a threaded handler for context interrupts
  iommu/arm-smmu-qcom: Use a custom context fault handler for sdm845
  arm64: dts: qcom: sdm845: Add DT nodes for the TBUs

 .../devicetree/bindings/iommu/arm,smmu.yaml   |  13 +
 .../bindings/iommu/qcom,qsmmuv500-tbu.yaml    |  67 +++
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  85 +++
 drivers/iommu/Kconfig                         |   8 +
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c    | 544 ++++++++++++++++++
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.h    |   4 +-
 drivers/iommu/arm/arm-smmu/arm-smmu.c         |  12 +-
 drivers/iommu/arm/arm-smmu/arm-smmu.h         |   3 +
 8 files changed, 733 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml


