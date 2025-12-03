Return-Path: <devicetree+bounces-244026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF241C9F212
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 14:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D83673A70AA
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 13:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793EC2F8BDF;
	Wed,  3 Dec 2025 13:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NRpQckj3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="clSOKl0V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59942F7AB1
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 13:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764768432; cv=none; b=VJBzacp62qxT7d8KZ5086Lr7eViYFqfM6tRv/fWkQhwfUudwW5+8nPqn9hmZsZUyVkBviFv2+janNqys9CCxJcSo/bamSAL/aOB9gd7MTAhC70snLlZ3jaJmf3CHrLi9gL2VeuX5M0Nq1JJHGKXnsF6eJvt1xE+NfMiGTK2Oq7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764768432; c=relaxed/simple;
	bh=PEgmMcA6tcXQs4WHfh3euJKGWxFYZPxKrfbQQAB7wII=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=af0Yjf/Qdf8r/iJLXm+IKRy0Mson3PxaJAarDmrn30aaneDWH9DkRw4bhkiZkNqt3DwnX0j/IIdVhhKS0oi3mO5zzuvNywjHmjxzuSWHw6qhvSNxPKHBERwAzCn9VKzIssJ93YC62JF+Kg6sOhFfXmcQxfFb2SiyXF669ySSRaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NRpQckj3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=clSOKl0V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3BRpxg1975041
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 13:27:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G6RouoxK2Ma/UsqtjtMGIiFVgDGOOn8UTixVHNqHuD4=; b=NRpQckj3MxHvbYnm
	Ht8GyktATgQHXfjBbZ9dp91PYXegTgmeHOgTJQCfcPTTxbqNd3G+wvXeuR9ygeki
	LrWc0ibsOsj9OVqCUgCzBK/+L/lat8G9WCvI6c93985vciP5qi5BNJQKzOQwiFiC
	VlLXKbjB6pS6B+1kX5v2T6Y2DZqov5v9PnDVyKjNXq+Dzp7qaz+hAxTpIvgAcncP
	e6D146daEze9+Hn6VFqSKzSPZwwmTJm9QC4tBXEtJMV3acIUvTbmxHOkQiTvmrWO
	EvBCDEAj4z+zmN8YGIfp/UD4SSj+7RhZLxuz1UtbN4kTXIhB6+UZfEYZYNH/VxG9
	ooMCIw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmbtg96f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:27:09 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b96038aa68so892812b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 05:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764768429; x=1765373229; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6RouoxK2Ma/UsqtjtMGIiFVgDGOOn8UTixVHNqHuD4=;
        b=clSOKl0ViuOLb9/cootwMSjKbN78iQS9/x4FIo0roAkOZcEwUEabvv3JMwslGgzPsn
         S5d89X5AUIebmCmrqJeL8eWs1ZcKOH3NRBP/E3EYJBVCX76sPiv9rallAVAR5hIMDL6G
         hZ40C6+QcH9ZrL6KFA04tTwKsEBO1IQsNyzzhvuK272IE+LIP2L6U9E2FNeaB1WMQ2G/
         D5kQzLKHjNbGxgAsznSun8kRDaWohtbqY9KMpMNPcuWcA/Pm4jsYJzzy4mjd4TSUdZaU
         uulDrFr2JfOdWZtH+elBKCgJvGB6UE4m28p1/ql0TXMO6fT6s+4IiFA++dOjnnzwi0T2
         zTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764768429; x=1765373229;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G6RouoxK2Ma/UsqtjtMGIiFVgDGOOn8UTixVHNqHuD4=;
        b=f5WydgfylcwaftFiqCtgzw42BHya5/02LW74CTDjQsQulNFIENcb4/KAauTeLzF8g6
         BVsinn3pM+s9eFdrvGZzdZoL5yqy8yEwHYshTQCPjpINeo1xRzQyayQAFi4FHLSud/ho
         7bcwr4YX2vQSN605y2f4bf3NkWmhXM/345hhHsDAE+IlZF9K3TghXLYW0klnhMWtVqd5
         8X4qi9MjbiLmO/c+Xl1LFx7NCiTTp3mJNq65vRzVYOhCa5kdWgxlM8Q5Obmxvysun+As
         d12JjiqG1ttOx+SBvbyIKpmRfglEeXboI6ENDg/2+pWgJirHWjF45wY5Qm9iZvvSzNJ7
         RwHA==
X-Forwarded-Encrypted: i=1; AJvYcCX4VzsjvtBOludAmzbSC359G9GENfvTHnPE0b9j+iB5Wl/Ya25zCUEEyrwGMophnG6Ja+1EIukaS76/@vger.kernel.org
X-Gm-Message-State: AOJu0YzSOUfsaVkcvMsWX9goP0zx9G6cXzaWlkxCvsct5HL2pXhnciSk
	jcGjUawDRUJnasBldkxAQMH88wdsvPVU0S3sjZe6rh7nEE9C4nWj8nwiW8hXbT52NARS5gaZBR2
	/6QX5we73Vp48MLc3wWov8CKRPeEwsa/T0vK7bVKBrjmR7PcWsf4mC3GIHElza0u8
X-Gm-Gg: ASbGncuIu011VpZPPwhbcOlciHUIEVbb1keBLzVysh7YEzfU7zDlwSDGNdKVVSCxO0k
	cb7GKRh0JxhVW19OVvMpdutdYa7qpyNEKf8sIvlexkyv4A7s4Ar8lxydFTUod0x4hwUuQCORcu2
	ZTp5A9b4EVYERY7YEvhfHR42r8kLztZkCuQKyfUfSwVj7XhHX9B07eI+QVAcLVrYaMOiH0gFug/
	TbL61MOmWucREYuziz0RfV0IDs/omzHpAvBJP+etcpjZnoL9n3nvi+gkiEkWyzfRU/1zMTZ5m9J
	CsV+61pxKMMMDsIAKujuShacVn4Ib+W7jI4GXsq0u4Cw2opxTPwPgNsyvMWDa6CG2T+IfAhIsa1
	P3VxzqVVlZ19KOl1QfuNWWb/ol+588Ym/dJenaSga1fE=
X-Received: by 2002:a05:6a00:3d10:b0:7a9:d8a8:992a with SMTP id d2e1a72fcca58-7dd789c5f1emr6693672b3a.13.1764768429218;
        Wed, 03 Dec 2025 05:27:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGinZ8Y7e3RuxTljGQgsvfg/7CZa7++tyONDr9TSdQ1s6dL2fTMnrdfeiS7Jpe8xuUSDY0Kbg==
X-Received: by 2002:a05:6a00:3d10:b0:7a9:d8a8:992a with SMTP id d2e1a72fcca58-7dd789c5f1emr6693630b3a.13.1764768428730;
        Wed, 03 Dec 2025 05:27:08 -0800 (PST)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d15e6e6e06sm20287524b3a.43.2025.12.03.05.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 05:27:08 -0800 (PST)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Wed, 03 Dec 2025 18:56:48 +0530
Subject: [PATCH 2/2] PCI: qcom-ep: Add support for firmware-managed PCIe
 Endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-firmware_managed_ep-v1-2-295977600fa5@oss.qualcomm.com>
References: <20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com>
In-Reply-To: <20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        quic_vbadigan@quicinc.com, quic_shazhuss@quicinc.com,
        konrad.dybcio@oss.qualcomm.com,
        Mrinmay sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Rama Krishna <quic_ramkri@quicinc.com>,
        Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>,
        Nitesh Gupta <quic_nitegupt@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764768410; l=5827;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=PEgmMcA6tcXQs4WHfh3euJKGWxFYZPxKrfbQQAB7wII=;
 b=XOmKmDruCRXctzFOs1E3WzShUQFjDjIaHZoI+VFtkS+heCMQ7pqmg6IGIKcyh3Ef/Gf5sdOnO
 1jukGaZ8zGXDIuaEICVd0yJwDSS6cBjofSiNLaVXCLBMMl5fdlL1QL8
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Authority-Analysis: v=2.4 cv=KNBXzVFo c=1 sm=1 tr=0 ts=69303aad cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2tdM-IJ1x2Ue4swjlzoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 1ZseGV_i0pW-bx3FTF6rF2IfYflpS5g_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDEwNyBTYWx0ZWRfX4YXtd9iPRXn6
 dct2urasSYmqMeL6SMeWrFksngJfPAV/Bhh0pVBjjSNBfzwBI3kQQ+NC231pDlp7g+7lL6sNDaO
 X7FIvvoJqVUI6QdxshBRjICBiTxuxXYvJS6dbD54QxIguhQgmI8Rpr2GpsSieftukkphUh7bCkT
 5u/cwBOMOrfF+KsebjnragiY1AN+9L1jAf0N3GzteHVG0OOKyqwrJPwm/T/90eFDCqTPv/P4is9
 FznEkCMEav6ynBHCV/3uZfQWoGQQYgyFvG4Gt9tW9/Yz8d70pmVACcnsgZ0ur6F9ReDfWSp2rLf
 eDkf7JeD7bpeQtZjMFB+y6uWBChrvQZ2IZu5Q633GBV+6ncY6UeVcWAEXqm1o73M/vr6DlsjocB
 amunownG3j+qu8f1ntpVHmeGenr4+g==
X-Proofpoint-ORIG-GUID: 1ZseGV_i0pW-bx3FTF6rF2IfYflpS5g_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-03_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030107

Some Qualcomm platforms use firmware to manage PCIe resources such as
clocks, resets, and PHY through the SCMI interface. In these cases,
the Linux driver should not perform resource enable or disable
operations directly. Additionally, runtime PM support has been enabled
to ensure proper power state transitions.

This commit introduces a `firmware_managed` flag in the Endpoint
configuration structure. When set, the driver skips resource handling
and uses generic runtime PM calls to let firmware do resource management.

A new compatible string is added for SA8255P platforms where firmware
manages resources.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 80 ++++++++++++++++++++++++-------
 1 file changed, 64 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index f1bc0ac81a928b928ab3f8cc7bf82558fc430474..38358c9fa7ab32fd36efcea0a42c52f1f86a523a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -168,11 +168,13 @@ enum qcom_pcie_ep_link_status {
  * @hdma_support: HDMA support on this SoC
  * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache snooping
  * @disable_mhi_ram_parity_check: Disable MHI RAM data parity error check
+ * @firmware_managed: Set if the Endpoint controller is firmware managed
  */
 struct qcom_pcie_ep_cfg {
 	bool hdma_support;
 	bool override_no_snoop;
 	bool disable_mhi_ram_parity_check;
+	bool firmware_managed;
 };
 
 /**
@@ -377,6 +379,15 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 
 static void qcom_pcie_disable_resources(struct qcom_pcie_ep *pcie_ep)
 {
+	struct device *dev = pcie_ep->pci.dev;
+	int ret;
+
+	ret = pm_runtime_put_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to disable endpoint device: %d\n", ret);
+		return;
+	}
+
 	icc_set_bw(pcie_ep->icc_mem, 0, 0);
 	phy_power_off(pcie_ep->phy);
 	phy_exit(pcie_ep->phy);
@@ -390,12 +401,22 @@ static int qcom_pcie_perst_deassert(struct dw_pcie *pci)
 	u32 val, offset;
 	int ret;
 
-	ret = qcom_pcie_enable_resources(pcie_ep);
-	if (ret) {
-		dev_err(dev, "Failed to enable resources: %d\n", ret);
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to enable endpoint device: %d\n", ret);
 		return ret;
 	}
 
+	/* Enable resources if Endpoint controller is not firmware-managed */
+	if (!(pcie_ep->cfg && pcie_ep->cfg->firmware_managed)) {
+		ret = qcom_pcie_enable_resources(pcie_ep);
+		if (ret) {
+			dev_err(dev, "Failed to enable resources: %d\n", ret);
+			pm_runtime_put_sync(dev);
+			return ret;
+		}
+	}
+
 	/* Perform cleanup that requires refclk */
 	pci_epc_deinit_notify(pci->ep.epc);
 	dw_pcie_ep_cleanup(&pci->ep);
@@ -630,16 +651,6 @@ static int qcom_pcie_ep_get_resources(struct platform_device *pdev,
 		return ret;
 	}
 
-	pcie_ep->num_clks = devm_clk_bulk_get_all(dev, &pcie_ep->clks);
-	if (pcie_ep->num_clks < 0) {
-		dev_err(dev, "Failed to get clocks\n");
-		return pcie_ep->num_clks;
-	}
-
-	pcie_ep->core_reset = devm_reset_control_get_exclusive(dev, "core");
-	if (IS_ERR(pcie_ep->core_reset))
-		return PTR_ERR(pcie_ep->core_reset);
-
 	pcie_ep->reset = devm_gpiod_get(dev, "reset", GPIOD_IN);
 	if (IS_ERR(pcie_ep->reset))
 		return PTR_ERR(pcie_ep->reset);
@@ -652,9 +663,22 @@ static int qcom_pcie_ep_get_resources(struct platform_device *pdev,
 	if (IS_ERR(pcie_ep->phy))
 		ret = PTR_ERR(pcie_ep->phy);
 
-	pcie_ep->icc_mem = devm_of_icc_get(dev, "pcie-mem");
-	if (IS_ERR(pcie_ep->icc_mem))
-		ret = PTR_ERR(pcie_ep->icc_mem);
+	/* Populate resources if Endpoint controller is not firmware-managed */
+	if (!(pcie_ep->cfg && pcie_ep->cfg->firmware_managed)) {
+		pcie_ep->num_clks = devm_clk_bulk_get_all(dev, &pcie_ep->clks);
+		if (pcie_ep->num_clks < 0) {
+			dev_err(dev, "Failed to get clocks\n");
+			return pcie_ep->num_clks;
+		}
+
+		pcie_ep->core_reset = devm_reset_control_get_exclusive(dev, "core");
+		if (IS_ERR(pcie_ep->core_reset))
+			return PTR_ERR(pcie_ep->core_reset);
+
+		pcie_ep->icc_mem = devm_of_icc_get(dev, "pcie-mem");
+		if (IS_ERR(pcie_ep->icc_mem))
+			ret = PTR_ERR(pcie_ep->icc_mem);
+	}
 
 	return ret;
 }
@@ -874,6 +898,16 @@ static int qcom_pcie_ep_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, pcie_ep);
 
+	pm_runtime_set_active(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to enable endpoint device: %d\n", ret);
+		return ret;
+	}
+
 	ret = qcom_pcie_ep_get_resources(pdev, pcie_ep);
 	if (ret)
 		return ret;
@@ -897,6 +931,12 @@ static int qcom_pcie_ep_probe(struct platform_device *pdev)
 	pcie_ep->debugfs = debugfs_create_dir(name, NULL);
 	qcom_pcie_ep_init_debugfs(pcie_ep);
 
+	ret = pm_runtime_put_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "Failed to disable endpoint device: %d\n", ret);
+		goto err_disable_irqs;
+	}
+
 	return 0;
 
 err_disable_irqs:
@@ -930,7 +970,15 @@ static const struct qcom_pcie_ep_cfg cfg_1_34_0 = {
 	.disable_mhi_ram_parity_check = true,
 };
 
+static const struct qcom_pcie_ep_cfg cfg_1_34_0_fw_managed = {
+	.hdma_support = true,
+	.override_no_snoop = true,
+	.disable_mhi_ram_parity_check = true,
+	.firmware_managed = true,
+};
+
 static const struct of_device_id qcom_pcie_ep_match[] = {
+	{ .compatible = "qcom,sa8255p-pcie-ep", .data = &cfg_1_34_0_fw_managed},
 	{ .compatible = "qcom,sa8775p-pcie-ep", .data = &cfg_1_34_0},
 	{ .compatible = "qcom,sdx55-pcie-ep", },
 	{ .compatible = "qcom,sm8450-pcie-ep", },

-- 
2.25.1


