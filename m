Return-Path: <devicetree+bounces-7686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED437C5184
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:19:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF1031C20DB8
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6E81E501;
	Wed, 11 Oct 2023 11:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="QijTvPTl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19191DFEA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:19:16 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A9D78F;
	Wed, 11 Oct 2023 04:19:15 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B8phZW000559;
	Wed, 11 Oct 2023 11:18:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=DRVR115ULH05dEvTGRQlvYcaD3JskA4PUOvyleNRpIM=;
 b=QijTvPTl3CqjGvQvLBuj3rIhU+aONPBq/2DujmDeC9Fh0vP7nCxAVgn7dXzsMavNkXGL
 1mvlReGP1Z1y1xXOLlbZ0NNZp5E5CmxuaOZ0sSL/itoorILNQcRuysPTjO0eDcK4gkQ+
 zyZ6opcqxTqPetD9y4UGHfYj17BcMQyNiL4eXWciKey+s3V7ShMSFMsds7nDKFzC9eX/
 dN8IPxHBHEjS41wJ+5qwTrNvihzzdZZ/+obSRzBpNarMBhBQmQCYsKileMWHOi8LAci2
 gMLlNU+tZmPppRj4mFLa/y2+C4R91gx46nHa9Hhs+ximaaM1fhfOPw1F5fxHEAGDOcHq Zw== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tnnvw8mmj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:18:46 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 39BBIc0Y011193;
	Wed, 11 Oct 2023 11:18:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3tk0dkmawx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 11 Oct 2023 11:18:38 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 39BBIcRd011187;
	Wed, 11 Oct 2023 11:18:38 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 39BBIbTT011186;
	Wed, 11 Oct 2023 11:18:38 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id CBB0343B8; Wed, 11 Oct 2023 16:48:36 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
        linux-phy@lists.infradead.org
Subject: [PATCH v2 0/4] arm64: qcom: sa8775p: add support for EP PCIe
Date: Wed, 11 Oct 2023 16:48:25 +0530
Message-Id: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 1k85JyqyEewYSIU2u_O30ftyJ_7XE6Ux
X-Proofpoint-GUID: 1k85JyqyEewYSIU2u_O30ftyJ_7XE6Ux
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=399 bulkscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110099
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This series adds the relavent DT bindings, new compatible string,
update PHY, add support to EPF driver and add EP PCIe node in dtsi
file for ep pcie0 controller.

v1 -> v2:
- update description for dma
- Reusing qcom,sdx55-pcie-ep compatibe so remove compaitable
  for sa8775p
- sort the defines in phy header file and remove extra defines
- add const in return type pci_epf_header and remove MHI_EPF_USE_DMA
  flag as hdma patch is not ready
- add fallback compatiable as qcom,sdx55-pcie-ep, add iommu property

Mrinmay Sarkar (4):
  dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC
  phy: qcom-qmp-pcie: add endpoint support for sa8775p
  PCI: epf-mhi: Add support for SA8775P
  arm64: dts: qcom: sa8775p: Add ep pcie0 controller node

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 131 +++++++++++++++++----
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  48 ++++++++
 drivers/pci/endpoint/functions/pci-epf-mhi.c       |  17 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  41 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h         |   2 +
 5 files changed, 217 insertions(+), 22 deletions(-)

-- 
2.7.4


