Return-Path: <devicetree+bounces-13028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A3D7DC5C0
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 06:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B4711F2222C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 05:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEAEFCA7F;
	Tue, 31 Oct 2023 05:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eMtccMgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF93CA68
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 05:12:16 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 598F2F5;
	Mon, 30 Oct 2023 22:12:15 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39V4PHQw025204;
	Tue, 31 Oct 2023 05:12:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=RsQx3p3Jdt45deKD8q2naBRmwFH/7pLMEOjfr52W8xs=;
 b=eMtccMgJrp9IZ0kTdJSRgf4TEIWhka46NAaZN80JDV9hkwrsgkUEhBPVxYtPUsXY0NeO
 /3uEdYybTZdTpMyHDehAwsofTq865mBIzyznhKigwhwZjngOw6eUnFedXN1cc1GBkE1B
 Wi8kQ6oCrbw1AXdd6TRDzwiU5xgjpV4m/9vI1PiKp14SBvg4mMta42fMrx3CX0V+4QSe
 +UQ8o9AfCTiM4E8STQEM2WQKdSAXMQZo/YV7jFHYW4k32eVsUclADXnYwsGTXNV1L91R
 qAS9m9BIWTaiR0HW4aVEl9zQ13IwdFvFgPBWWTp773uoxgS9Od5qkFOSpfFNNMN84ZOm Ng== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u2egssn98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 05:12:07 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 39V5C3p3010087;
	Tue, 31 Oct 2023 05:12:04 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3u0ucktxaj-1;
	Tue, 31 Oct 2023 05:12:03 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 39V5C3Ne010081;
	Tue, 31 Oct 2023 05:12:03 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 39V5C3mJ010079;
	Tue, 31 Oct 2023 05:12:03 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id F237C450D; Tue, 31 Oct 2023 10:42:01 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
        quic_schintav@quicinc.com, quic_shijose@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mhi@lists.linux.dev
Subject: [PATCH v6 4/4] arm64: dts: qcom: sa8775p: Add ep pcie0 controller node
Date: Tue, 31 Oct 2023 10:41:48 +0530
Message-Id: <1698729108-27356-5-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1698729108-27356-1-git-send-email-quic_msarkar@quicinc.com>
References: <1698729108-27356-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: nJT0Zd_xpoxTGLx4nMS-Vzwk7I6Pjsrc
X-Proofpoint-GUID: nJT0Zd_xpoxTGLx4nMS-Vzwk7I6Pjsrc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_13,2023-10-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 mlxlogscore=999 adultscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2310310039
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add ep pcie dtsi node for pcie0 controller found on sa8775p platform.
It supports gen4 and x2 link width. Limiting the speed to Gen3 due to
stability issues.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 46 +++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 13dd44d..7eab458 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -3586,6 +3586,52 @@
 		status = "disabled";
 	};
 
+	pcie0_ep: pcie-ep@1c00000 {
+		compatible = "qcom,sa8775p-pcie-ep";
+		reg = <0x0 0x01c00000 0x0 0x3000>,
+		      <0x0 0x40000000 0x0 0xf20>,
+		      <0x0 0x40000f20 0x0 0xa8>,
+		      <0x0 0x40001000 0x0 0x4000>,
+		      <0x0 0x40200000 0x0 0x100000>,
+		      <0x0 0x01c03000 0x0 0x1000>,
+		      <0x0 0x40005000 0x0 0x2000>;
+		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+			    "mmio", "dma";
+
+		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+			<&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			<&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+			<&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+			<&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+
+		clock-names = "aux",
+			      "cfg",
+			      "bus_master",
+			      "bus_slave",
+			      "slave_q2a";
+
+		interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
+
+		interrupt-names = "global", "doorbell", "dma";
+
+		interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
+				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_0 0>;
+		interconnect-names = "pcie-mem", "cpu-pcie";
+
+		iommus = <&pcie_smmu 0x0000 0x7f>;
+		resets = <&gcc GCC_PCIE_0_BCR>;
+		reset-names = "core";
+		power-domains = <&gcc PCIE_0_GDSC>;
+		phys = <&pcie0_phy>;
+		phy-names = "pciephy";
+		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
+		num-lanes = <2>;
+
+		status = "disabled";
+	};
+
 	pcie0_phy: phy@1c04000 {
 		compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy";
 		reg = <0x0 0x1c04000 0x0 0x2000>;
-- 
2.7.4


