Return-Path: <devicetree+bounces-1779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8FC7A8412
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A009A1C20D00
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CEA43AC1C;
	Wed, 20 Sep 2023 13:55:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9A3347C4
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:55:50 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EE3F183;
	Wed, 20 Sep 2023 06:55:48 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38KD2jtS029243;
	Wed, 20 Sep 2023 13:55:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=gmiNOzH70KTIQKvlXxIDsxkrtjc5h3SDXj+dbWfOA10=;
 b=BgssTlGuvo1MkbEIocWpMK16Ybdj/c5+ghULxODc88LAHMSxuMupi8LpTfxa3JXSv9l8
 YNcI4GO2i8j1pX4hix4KMlfmUeOC4fTuuCYh+q7LvBHtLUH+L966PkqsWbOCe7spYeNy
 mj78qCKt0Cazyxs3mVbL8x1covEa87NG+8Pf/svbg+HIbc5HANsZ7z/Vqvql6rF3cIBc
 DxG68CmxpyvQXo+YL/2wTbk9loj+8JehpzMJTOTJNfZul/c8KX4QbFS1CneqOoJz/Q4d
 /QFW0+RPAuSu5ZJsTjuK5SBAF4U6MGnqCEXfRRStmD38kt36YgUqZmIIPTwN9zDNSDzE YQ== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t7amnb3cb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Sep 2023 13:55:23 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38KDtJfQ008187;
	Wed, 20 Sep 2023 13:55:19 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3t55ekk8nc-1;
	Wed, 20 Sep 2023 13:55:19 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38KDtJ1p008180;
	Wed, 20 Sep 2023 13:55:19 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 38KDtJmX008179;
	Wed, 20 Sep 2023 13:55:19 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id 5A3004070; Wed, 20 Sep 2023 19:25:18 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        quic_parass@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
        linux-phy@lists.infradead.org
Subject: [PATCH v1 0/5] arm64: qcom: sa8775p: add support for EP PCIe
Date: Wed, 20 Sep 2023 19:25:07 +0530
Message-Id: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: fPKXbNU7iR4WPwLLNIOZvtyCsimCg41G
X-Proofpoint-ORIG-GUID: fPKXbNU7iR4WPwLLNIOZvtyCsimCg41G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-20_05,2023-09-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1011 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 mlxlogscore=523 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309200114
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.6
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

Mrinmay Sarkar (5):
  dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC
  PCI: qcom-ep: Add support for SA8775P SoC
  phy: qcom-qmp-pcie: add endpoint support for sa8775p
  PCI: epf-mhi: Add support for SA8775P
  arm64: dts: qcom: sa8775p: Add ep pcie0 controller node

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 130 +++++++++++++++++----
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  45 +++++++
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |   1 +
 drivers/pci/endpoint/functions/pci-epf-mhi.c       |  18 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  41 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v5.h |   1 +
 7 files changed, 216 insertions(+), 22 deletions(-)

-- 
2.7.4


