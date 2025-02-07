Return-Path: <devicetree+bounces-143742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 586D3A2B694
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 00:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7D4D16753E
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 23:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4457237715;
	Thu,  6 Feb 2025 23:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TAIHOo7T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BBE23AE71
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 23:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738884561; cv=none; b=q8sw7+MppgVL1QELS8YlBg4GNsjDLl5f1CoRG88nuEjk3HYnI6d0Hvw6UwWaAgNtvAcwFoIuO+f5EomZkdDZKNdHDVXUbvxlGkQgEDGpsq4O9eId3q0i7XwguzBbgnlMp05R9U0wf1omxaHnEPx++agFlUnzSm/hUlogLSn05Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738884561; c=relaxed/simple;
	bh=uY93T0yUB36H70prew0kSW+OhiMEx+NY8OCEPWlQkBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bAph2a3k4C7GpdNlu4chCk3HV8lyVgO4TIOAdlC4NH5ticdfrNa0OfeD4wz4CK1N4BbQoFzaBkLKKJ0x0v8923btRv0KAbsUZVbpE/uNgHXdFiM9soWRtWmw9o5iqDYyr2DFAAdl7N1iIJkv74IT67y7xzBMLKE9M+LX6YSE7aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TAIHOo7T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 516IskkF022941
	for <devicetree@vger.kernel.org>; Thu, 6 Feb 2025 23:29:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6pWXiIdrgRFwUyrRZilnZJMRSt5DtiWHnfUqWM5BgNo=; b=TAIHOo7TGZfFO2cC
	HwPsTdUzwmGm3WsBOMp5fEelQzItkoKd/+nwC9HrrEKPn07BWhvp7WA21jTSa1yP
	gfxzOu8Afbd8yuV7FxEXYC2iXKzWrRAwWx+8QCxJcKb/lfP9jphwVEEz8/Vs4mDm
	Z/+cluCuueQ+a5OQEfEgu4TlT9q1kwhPuM4TKw49+WDrSjkS4cDOd8SUqfVxUCt6
	zFSUEz6e0iVOaHAoZdbaUfp6HTVOdcolLV0Yfi/asN9cKqzI1bYlYzqXjjQ+5aT7
	L53I7A/s/85AKbNS8BTjJC0dmf9qpWjmwBZinwcViJETZtbuuKRFZZtPuCrjlyZ6
	bJQPDw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44n2rt8htn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 23:29:18 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-216266cc0acso51488155ad.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 15:29:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738884558; x=1739489358;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pWXiIdrgRFwUyrRZilnZJMRSt5DtiWHnfUqWM5BgNo=;
        b=hL0Wr87rZoWM4BpXWohI0ArGLqLzTYSgz7USJQcciUc1Z6w/4YTF3Ld7FQCT9ccWDy
         K2oFaMIdTEtLkfFj879lXZNLxIVJ91tt0JZ8x2lN4Y5YXdS7GMK1Eio1kd3dsAdfV+i2
         0khtoSwoWzMmcRbzPTGh3KFcZNI/jszB7JDaoFVANAlXHlygzJoavjw2RvKpVyTK9yNs
         cy5+vCpu3LxENYvmOgbseb+R/dc39V+lYl7iEpc8Zj0UliYGPUAy19hfR5hZMJcmBySZ
         93xty5ETHfj/7z8ECetePuti8X75AUlIvHxBoHXEPWuC85gNOvyI3mDv+tWJxRVweEh9
         quyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDxt7WF2xXHxEoJfuiGE1dMbDrC5lzg8xoFjC1seWwGmLUfhx/qsBPZsBmPhi9kghax6TEpxcbO2ek@vger.kernel.org
X-Gm-Message-State: AOJu0YwXo3ZppCyS6Xz8hoN2vQbe3c5VwRcppK5szu0Ou+cErHOxwrsM
	wLi8aLnegBEWMa/Q9BssOyDkVJZt4rYL021uq7Hddeni5Aqpn3MMUMtnq/g+YsCXer1/llDOzYR
	hqxEqmDdqpEDHxCeljf5+7YAyplnYduy6V/XaRZFaYnME17AeiW8J+QVv79qE
X-Gm-Gg: ASbGncvL+8wvkbnk8trOAgVGboKZLMV8PcyGCDvtYH3hEYQ22QzbvcA1RB4qlOsRTUp
	edoNE2j+/SgLH8qdEiNeOePH+VWYf2PMShMARDs4y0JpqENxPmmxlGHCp1PU51Vxj4XjZMJOypA
	s6P0Rm9gKcFggBp50LE6Ea/P/phF+FzyOf/Zwx1TTxs/KljbNGGaswphLk/YTy+nJIDSlviG35P
	LxEw+6nXbaew3XThmAnz7ejtrfYklhdxwxx69JNUrCByXTUo8zXGQ9neC4sFC0YstRzSQwfa+Nk
	6coprgECmXlMx/duLOiKRtsi1y3u+/xAsfQUgTDb
X-Received: by 2002:a05:6a00:909c:b0:725:4915:c0f with SMTP id d2e1a72fcca58-7305e504eaemr1346611b3a.11.1738884557749;
        Thu, 06 Feb 2025 15:29:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMlmubEM1tEV5w3QDKomU/ar27dKIKjLKn2kUcyPtPqM/HtBAHBYpz6Ib8q/iljUxg+UQO9g==
X-Received: by 2002:a05:6a00:909c:b0:725:4915:c0f with SMTP id d2e1a72fcca58-7305e504eaemr1346564b3a.11.1738884557236;
        Thu, 06 Feb 2025 15:29:17 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73048ae7f6esm1845905b3a.74.2025.02.06.15.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 15:29:16 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 07 Feb 2025 04:58:57 +0530
Subject: [PATCH v4 2/4] PCI: dwc: Add ECAM support with iATU configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-ecam_v4-v4-2-94b5d5ec5017@oss.qualcomm.com>
References: <20250207-ecam_v4-v4-0-94b5d5ec5017@oss.qualcomm.com>
In-Reply-To: <20250207-ecam_v4-v4-0-94b5d5ec5017@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738884540; l=10051;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=uY93T0yUB36H70prew0kSW+OhiMEx+NY8OCEPWlQkBg=;
 b=x8v0r/PRJSutajaFkl4I4fDV+YJ/r+2X/QfChZezxn1QueqE+L59BVSRoHVGCckak7ikUT6EB
 RK6pnuh4nuRCiLvQ48+sKJjpFyEXCjyvJyCgMMHGrJjKv/2o/ijEvY0
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: tWuT3oLf2V-l9VWapqLoiaC7CFiSkdEW
X-Proofpoint-GUID: tWuT3oLf2V-l9VWapqLoiaC7CFiSkdEW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_07,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 mlxlogscore=999
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502060182

The current implementation requires iATU for every configuration
space access which increases latency & cpu utilization.

Designware databook 5.20a, section 3.10.10.3 says about CFG Shift Feature,
which shifts/maps the BDF (bits [31:16] of the third header DWORD, which
would be matched against the Base and Limit addresses) of the incoming
CfgRd0/CfgWr0 down to bits[27:12]of the translated address.

Configuring iATU in config shift feature enables ECAM feature to access the
config space, which avoids iATU configuration for every config access.

Add "ctrl2" into struct dw_pcie_ob_atu_cfg  to enable config shift feature.

As DBI comes under config space, this avoids remapping of DBI space
separately. Instead, it uses the mapped config space address returned from
ECAM initialization. Change the order of dw_pcie_get_resources() execution
to achieve this.

Enable the ECAM feature if the config space size is equal to size required
to represent number of buses in the bus range property, add a function
which checks this. The DWC glue drivers uses this function and decide to
enable ECAM mode or not.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/Kconfig                |   1 +
 drivers/pci/controller/dwc/pcie-designware-host.c | 133 +++++++++++++++++++---
 drivers/pci/controller/dwc/pcie-designware.c      |   2 +-
 drivers/pci/controller/dwc/pcie-designware.h      |  11 ++
 4 files changed, 132 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index b6d6778b0698..73c3aed6b60a 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -9,6 +9,7 @@ config PCIE_DW
 config PCIE_DW_HOST
 	bool
 	select PCIE_DW
+	select PCI_HOST_COMMON
 
 config PCIE_DW_EP
 	bool
diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index ffaded8f2df7..826ff9338646 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -418,6 +418,66 @@ static void dw_pcie_host_request_msg_tlp_res(struct dw_pcie_rp *pp)
 	}
 }
 
+static int dw_pcie_config_ecam_iatu(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct dw_pcie_ob_atu_cfg atu = {0};
+	resource_size_t bus_range_max;
+	struct resource_entry *bus;
+	int ret;
+
+	bus = resource_list_first_type(&pp->bridge->windows, IORESOURCE_BUS);
+
+	/*
+	 * Root bus under the host bridge doesn't require any iATU configuration
+	 * as DBI space will represent Root bus configuration space.
+	 * Immediate bus under Root Bus, needs type 0 iATU configuration and
+	 * remaining buses need type 1 iATU configuration.
+	 */
+	atu.index = 0;
+	atu.type = PCIE_ATU_TYPE_CFG0;
+	atu.cpu_addr = pp->cfg0_base + SZ_1M;
+	atu.size = SZ_1M;
+	atu.ctrl2 = PCIE_ATU_CFG_SHIFT_MODE_ENABLE;
+	ret = dw_pcie_prog_outbound_atu(pci, &atu);
+	if (ret)
+		return ret;
+
+	bus_range_max = resource_size(bus->res);
+
+	if (bus_range_max < 2)
+		return 0;
+
+	/* Configure remaining buses in type 1 iATU configuration */
+	atu.index = 1;
+	atu.type = PCIE_ATU_TYPE_CFG1;
+	atu.cpu_addr = pp->cfg0_base + SZ_2M;
+	atu.size = (SZ_1M * (bus_range_max - 2));
+	atu.ctrl2 = PCIE_ATU_CFG_SHIFT_MODE_ENABLE;
+
+	return dw_pcie_prog_outbound_atu(pci, &atu);
+}
+
+static int dw_pcie_create_ecam_window(struct dw_pcie_rp *pp, struct resource *res)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct device *dev = pci->dev;
+	struct resource_entry *bus;
+
+	bus = resource_list_first_type(&pp->bridge->windows, IORESOURCE_BUS);
+	if (!bus)
+		return -ENODEV;
+
+	pp->cfg = pci_ecam_create(dev, res, bus->res, &pci_generic_ecam_ops);
+	if (IS_ERR(pp->cfg))
+		return PTR_ERR(pp->cfg);
+
+	pci->dbi_base = pp->cfg->win;
+	pci->dbi_phys_addr = res->start;
+
+	return 0;
+}
+
 int dw_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -431,10 +491,6 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 
 	raw_spin_lock_init(&pp->lock);
 
-	ret = dw_pcie_get_resources(pci);
-	if (ret)
-		return ret;
-
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "config");
 	if (!res) {
 		dev_err(dev, "Missing \"config\" reg space\n");
@@ -444,9 +500,28 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 	pp->cfg0_size = resource_size(res);
 	pp->cfg0_base = res->start;
 
-	pp->va_cfg0_base = devm_pci_remap_cfg_resource(dev, res);
-	if (IS_ERR(pp->va_cfg0_base))
-		return PTR_ERR(pp->va_cfg0_base);
+	if (pp->ecam_mode) {
+		ret = dw_pcie_create_ecam_window(pp, res);
+		if (ret)
+			return ret;
+
+		bridge->ops = (struct pci_ops *)&pci_generic_ecam_ops.pci_ops;
+		pp->bridge->sysdata = pp->cfg;
+		pp->cfg->priv = pp;
+	} else {
+		pp->va_cfg0_base = devm_pci_remap_cfg_resource(dev, res);
+		if (IS_ERR(pp->va_cfg0_base))
+			return PTR_ERR(pp->va_cfg0_base);
+
+		/* Set default bus ops */
+		bridge->ops = &dw_pcie_ops;
+		bridge->child_ops = &dw_child_pcie_ops;
+		bridge->sysdata = pp;
+	}
+
+	ret = dw_pcie_get_resources(pci);
+	if (ret)
+		return ret;
 
 	bridge = devm_pci_alloc_host_bridge(dev, 0);
 	if (!bridge)
@@ -462,14 +537,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 		pp->io_base = pci_pio_to_address(win->res->start);
 	}
 
-	/* Set default bus ops */
-	bridge->ops = &dw_pcie_ops;
-	bridge->child_ops = &dw_child_pcie_ops;
-
 	if (pp->ops->init) {
 		ret = pp->ops->init(pp);
 		if (ret)
-			return ret;
+			goto err_free_ecam;
 	}
 
 	if (pci_msi_enabled()) {
@@ -504,6 +575,14 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 
 	dw_pcie_iatu_detect(pci);
 
+	if (pp->ecam_mode) {
+		ret = dw_pcie_config_ecam_iatu(pp);
+		if (ret) {
+			dev_err(dev, "Failed to confuure iATU\n");
+			goto err_free_msi;
+		}
+	}
+
 	/*
 	 * Allocate the resource for MSG TLP before programming the iATU
 	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
@@ -539,8 +618,6 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 		/* Ignore errors, the link may come up later */
 		dw_pcie_wait_for_link(pci);
 
-	bridge->sysdata = pp;
-
 	ret = pci_host_probe(bridge);
 	if (ret)
 		goto err_stop_link;
@@ -564,6 +641,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 	if (pp->ops->deinit)
 		pp->ops->deinit(pp);
 
+err_free_ecam:
+	if (pp->cfg)
+		pci_ecam_free(pp->cfg);
+
 	return ret;
 }
 EXPORT_SYMBOL_GPL(dw_pcie_host_init);
@@ -584,6 +665,9 @@ void dw_pcie_host_deinit(struct dw_pcie_rp *pp)
 
 	if (pp->ops->deinit)
 		pp->ops->deinit(pp);
+
+	if (pp->cfg)
+		pci_ecam_free(pp->cfg);
 }
 EXPORT_SYMBOL_GPL(dw_pcie_host_deinit);
 
@@ -999,3 +1083,24 @@ int dw_pcie_resume_noirq(struct dw_pcie *pci)
 	return ret;
 }
 EXPORT_SYMBOL_GPL(dw_pcie_resume_noirq);
+
+bool dw_pcie_ecam_supported(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct platform_device *pdev = to_platform_device(pci->dev);
+	struct resource *config_res, *bus_range;
+	u64 bus_config_space_count;
+
+	bus_range = resource_list_first_type(&pp->bridge->windows, IORESOURCE_BUS)->res;
+	if (!bus_range)
+		return false;
+
+	config_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "config");
+	if (!config_res)
+		return false;
+
+	bus_config_space_count = resource_size(config_res) >> PCIE_ECAM_BUS_SHIFT;
+
+	return !!(bus_config_space_count >= resource_size(bus_range));
+}
+EXPORT_SYMBOL_GPL(dw_pcie_ecam_supported);
diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 145e7f579072..523ca7f267fb 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -509,7 +509,7 @@ int dw_pcie_prog_outbound_atu(struct dw_pcie *pci,
 		val = dw_pcie_enable_ecrc(val);
 	dw_pcie_writel_atu_ob(pci, atu->index, PCIE_ATU_REGION_CTRL1, val);
 
-	val = PCIE_ATU_ENABLE;
+	val = PCIE_ATU_ENABLE | atu->ctrl2;
 	if (atu->type == PCIE_ATU_TYPE_MSG) {
 		/* The data-less messages only for now */
 		val |= PCIE_ATU_INHIBIT_PAYLOAD | atu->code;
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 501d9ddfea16..d0ba8855ba2a 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -20,6 +20,7 @@
 #include <linux/irq.h>
 #include <linux/msi.h>
 #include <linux/pci.h>
+#include <linux/pci-ecam.h>
 #include <linux/reset.h>
 
 #include <linux/pci-epc.h>
@@ -171,6 +172,7 @@
 #define PCIE_ATU_REGION_CTRL2		0x004
 #define PCIE_ATU_ENABLE			BIT(31)
 #define PCIE_ATU_BAR_MODE_ENABLE	BIT(30)
+#define PCIE_ATU_CFG_SHIFT_MODE_ENABLE	BIT(28)
 #define PCIE_ATU_INHIBIT_PAYLOAD	BIT(22)
 #define PCIE_ATU_FUNC_NUM_MATCH_EN      BIT(19)
 #define PCIE_ATU_LOWER_BASE		0x008
@@ -343,6 +345,7 @@ struct dw_pcie_ob_atu_cfg {
 	u8 func_no;
 	u8 code;
 	u8 routing;
+	u32 ctrl2;
 	u64 cpu_addr;
 	u64 pci_addr;
 	u64 size;
@@ -381,6 +384,8 @@ struct dw_pcie_rp {
 	int			msg_atu_index;
 	struct resource		*msg_res;
 	bool			use_linkup_irq;
+	bool			ecam_mode;
+	struct pci_config_window *cfg;
 };
 
 struct dw_pcie_ep_ops {
@@ -686,6 +691,7 @@ void dw_pcie_host_deinit(struct dw_pcie_rp *pp);
 int dw_pcie_allocate_domains(struct dw_pcie_rp *pp);
 void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus, unsigned int devfn,
 				       int where);
+bool dw_pcie_ecam_supported(struct dw_pcie_rp *pp);
 #else
 static inline int dw_pcie_suspend_noirq(struct dw_pcie *pci)
 {
@@ -726,6 +732,11 @@ static inline void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus,
 {
 	return NULL;
 }
+
+static inline bool dw_pcie_ecam_supported(struct dw_pcie_rp *pp)
+{
+	return 0;
+}
 #endif
 
 #ifdef CONFIG_PCIE_DW_EP

-- 
2.34.1


