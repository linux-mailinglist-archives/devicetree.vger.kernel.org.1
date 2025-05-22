Return-Path: <devicetree+bounces-179391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB91AC0149
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 02:15:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01F117AB4DB
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 00:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5493EDF49;
	Thu, 22 May 2025 00:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LCJb5/p3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951A933F7
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747872886; cv=none; b=SAa/Po6+8j5RbKFJkXrEZa7b81qQdutmdYAQgGcWZq/TvMN84psQzpgUVdebS4CtQFxkxwO0oFq4D4sMdfStRvPKdZl9kzJkGxieo83JGY3OqSIEsbMD/m3vn8Wvg9LppAERXue2keq3bqnZm8V91dScNnX4p7L5Rr7mbDhMcY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747872886; c=relaxed/simple;
	bh=nMNcfhLndVSZaWwF7hUP+mx0e9T9QX8l/caUTIzV3Gs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZlZOBz1LF5KOM95eSNk07LiAz9ZipBOAjGxMuJgXU1sOLTPt4rkmYsJLUqqBsLjnj6zQtSKd/xeMQ8TFpO/fW7nXnYKuI3AUXJpZN0uSYPRf0Tnd7vwVWxzA2RSW6si9jKs2LxZk5pQG5xct9SJ4mtjgaxoXWdPvgPWqyND8Db4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LCJb5/p3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LHxkn0000727
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=0wt/gxAtrk6
	6qf3nfzA+PWfV99jzSoP5D0OKYMZ6YA8=; b=LCJb5/p3/KlPJpt0kOp++zrE8hL
	sHjomMMY8dRc2q3GC1noKdYlbAXiav8ZmPyHQJ5Gw78j3u0JiouJVe2euRzq4I2b
	FXGnvr+tm0KN0/lrlgIzwCPsFxVgn0n8uEmIucdMJ3aQaRKeb2FWjgu6lLyVPoqG
	Cg7YG1df0yae6EAT3ZKjE8NrJ1dlpKF3vAOqmZzoBQrhuv5z7Pz0grcaOYZ5yDeS
	Js5vGvGtL49/0gKtgHLWEEHGTbmes2yFbMJSipg57DRNKFUys5OeRk2l9xg8EPtP
	mEo2y/5P6PMn7XYQc5LvVaqLoqHIyWVSf80/kx/3Jhoj9yXY23+WTyovwvw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95tjw1u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:43 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-30ebfc28a1eso6388948a91.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 17:14:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747872881; x=1748477681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0wt/gxAtrk66qf3nfzA+PWfV99jzSoP5D0OKYMZ6YA8=;
        b=h+FSOJyH9L/Hm0LcwENT5KU4QlqpMWLDzmNc4uRH3Snf4tDN7ptpKtEiAx0DoGLxdf
         +19xaS1mnTb1DaQg/S+J7eZNJY/cK9qi0XOrydZOpWZDt+JHcatMB5VmbbwIH9+98eYF
         5pfaIJmqBlIE3Uao+4utSQMjITOhHeA4d1WCYzDFhc+0XpJIIV+sa4A7XQTBhlxK+hF3
         IZDaAni/W7llMGzrTD39ru8/srQi27F5L53OUDM/CDaIfxglYZpzUfyQ8eGnJydW6yN5
         6MLPvR3/MlYwcmbgRNIOlp2S13YlSp6VXXKBPHAogAwdUO4Z5cS5w2PjhjTOymFrbqUF
         BySQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0CeemFzv227mXPHOt0gERHldAuBITkFJbPwLHu5+18KG+M+eofy4I1XZ71r5bObVcEAAZ/dC/Ukd3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4u5uZHnXFh66G3Snnc7Qze2Hw/WJZ7o0Crkaq3wkuhWGVALpk
	CadMke61QaUi4k849Wxj/yw8uV+hWS0RGRopauGwV9V5LYEY5wFdHOeIvI9yfSXUKS8UQcBu89v
	2RpjiVsr4pD6tt9VsyYcLIRuFJmu6/IV6EEXN2yIuLj4RH9LEMPEGAn7agRmUomjXZy4lUSXW
X-Gm-Gg: ASbGncuRv4F1ZGEH7nTVC9TJoy4+hiWigBT32buhYR/A+V1oAG5s7gWRluf8BGHzyEN
	gTIgdruyILJqIu+wm3OK+b8NkZBx/z9yZ++Zw/MG8idSaEte6rT59FIQ4Op6SkC68daIPd5np8+
	i1VcTV0QdhBIfW3rFv+IJwshR+zJBvyGgvSFMcq+nbXbkpRAlXBhXzyqbiWbiCJeFWG1Pgpr1iR
	vyywghrN0+SOhYR0FzG9A8f3//Ktq7kcZx95qbx2C/pJRjlXSrjzF7tN3UNpvTkIG0WZzsVnKph
	tV4CWfpv8kmRFYCVglchUPmVK3UqyPAmyUye+UlGB4AHIL/BBOpsDj6PcncfFg==
X-Received: by 2002:a17:90b:52c5:b0:2f2:a664:df20 with SMTP id 98e67ed59e1d1-30e830ca279mr35177110a91.7.1747872880715;
        Wed, 21 May 2025 17:14:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2wgsuQGaz+C0jblpeyM+oe1ytmP5yScHwvWn7GeOv1/OzOxKJBeJfvPoeFXQLkSAk1xELtA==
X-Received: by 2002:a17:90b:52c5:b0:2f2:a664:df20 with SMTP id 98e67ed59e1d1-30e830ca279mr35177062a91.7.1747872880293;
        Wed, 21 May 2025 17:14:40 -0700 (PDT)
Received: from hu-mrana-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f3651611bsm4617101a91.49.2025.05.21.17.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 17:14:39 -0700 (PDT)
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
To: linux-pci@vger.kernel.org, lpieralisi@kernel.org, kw@linux.com,
        robh@kernel.org, bhelgaas@google.com, andersson@kernel.org,
        manivannan.sadhasivam@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, quic_ramkri@quicinc.com,
        quic_nkela@quicinc.com, quic_shazhuss@quicinc.com,
        quic_msarkar@quicinc.com, quic_nitegupt@quicinc.com,
        Mayank Rana <mayank.rana@oss.qualcomm.com>
Subject: [PATCH v4 4/4] PCI: qcom: Add support for Qualcomm SA8255p based PCIe root complex
Date: Wed, 21 May 2025 17:14:25 -0700
Message-Id: <20250522001425.1506240-5-mayank.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250522001425.1506240-1-mayank.rana@oss.qualcomm.com>
References: <20250522001425.1506240-1-mayank.rana@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=682e6c73 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=-evKrK6A_rNxfzosICwA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: pQ_gLUxt-gzonS5kg9qVXP-gODkewdlA
X-Proofpoint-GUID: pQ_gLUxt-gzonS5kg9qVXP-gODkewdlA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAwMCBTYWx0ZWRfX1NIJ+W0aGN1p
 knv9+lRVfTZRnDNPd0PsBWAwvBqJLDFdGPFpkYRU684P3DvQS1s+e4XXIFkD+lpvvg+46KcqBQZ
 TGCOcUHNqVXPRYf0GIwP2OUrqeYNFxLIPqBwLbOgx+hbId7pHg9B257mtct3Eb/ZXfxryxJe22j
 yXXB/Zhqfhkg88pnghUPHxd1ypTB9vxQdddpbPXYUkPiVVdeC0YyL/CDuJwImn4r+SkkpQGIO7D
 w6+mugKytYKE7gDLocsdZzMQoXXNahL4AsFu8+0vRLU+QPvRS6Gsph5DMnZMVWx61iO7IdH/7Vv
 3Fm6rmMkfDyBoihVdI3zqb8DjdOzO4wxSfREUl6Dl1Od0kaDR07rz4TOM5vSeg7i/8PXf44iVjw
 4I3659wocEkedsFCN1bXyI2P1r3fca8oRiv7s6Pc/JmniPs4ZZNyiWLa+SwFSDwOD+Q5nmI8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220000

Add functionality to enable resource management through firmware and
enumerate ECAM compliant root complex on SA8255p ride platform, where
PCIe root complex is firmware managed and configured into ECAM
compliant mode.

Signed-off-by: Mayank Rana <mayank.rana@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/Kconfig     |   1 +
 drivers/pci/controller/dwc/pcie-qcom.c | 114 +++++++++++++++++++++++--
 2 files changed, 106 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index b6d6778b0698..0fe76bd39d69 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -275,6 +275,7 @@ config PCIE_QCOM
 	select PCIE_DW_HOST
 	select CRC8
 	select PCIE_QCOM_COMMON
+	select PCI_HOST_COMMON
 	help
 	  Say Y here to enable PCIe controller support on Qualcomm SoCs. The
 	  PCIe controller uses the DesignWare core plus Qualcomm-specific
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index dc102d8bd58c..d32b91d5addd 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -21,7 +21,9 @@
 #include <linux/limits.h>
 #include <linux/init.h>
 #include <linux/of.h>
+#include <linux/of_pci.h>
 #include <linux/pci.h>
+#include <linux/pci-ecam.h>
 #include <linux/pm_opp.h>
 #include <linux/pm_runtime.h>
 #include <linux/platform_device.h>
@@ -255,10 +257,12 @@ struct qcom_pcie_ops {
   * @ops: qcom PCIe ops structure
   * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache
   * snooping
+  * @firmware_managed: Set if ecam compliant PCIe root complex is firmware managed
   */
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	bool override_no_snoop;
+	bool firmware_managed;
 	bool no_l0s;
 };
 
@@ -1426,6 +1430,10 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.no_l0s = true,
 };
 
+static const struct qcom_pcie_cfg cfg_fw_managed = {
+	.firmware_managed = true,
+};
+
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = qcom_pcie_link_up,
 	.start_link = qcom_pcie_start_link,
@@ -1577,6 +1585,50 @@ static irqreturn_t qcom_pcie_global_irq_thread(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static void qcom_pci_free_msi(void *ptr)
+{
+	struct dw_pcie_rp *pp = (struct dw_pcie_rp *)ptr;
+
+	if (pp && pp->has_msi_ctrl)
+		dw_pcie_free_msi(pp);
+}
+
+static int qcom_pcie_ecam_host_init(struct pci_config_window *cfg)
+{
+	struct device *dev = cfg->parent;
+	struct dw_pcie_rp *pp;
+	struct dw_pcie *pci;
+	int ret;
+
+	pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
+	if (!pci)
+		return -ENOMEM;
+
+	pci->dev = dev;
+	pp = &pci->pp;
+	pci->dbi_base = cfg->win;
+	pp->num_vectors = MSI_DEF_NUM_VECTORS;
+
+	ret = dw_pcie_msi_host_init(pp);
+	if (ret)
+		return ret;
+
+	pp->has_msi_ctrl = true;
+	dw_pcie_msi_init(pp);
+
+	return devm_add_action_or_reset(dev, qcom_pci_free_msi, pp);
+}
+
+/* ECAM ops */
+static const struct pci_ecam_ops pci_qcom_ecam_ops = {
+	.init		= qcom_pcie_ecam_host_init,
+	.pci_ops	= {
+		.map_bus	= pci_ecam_map_bus,
+		.read		= pci_generic_config_read,
+		.write		= pci_generic_config_write,
+	}
+};
+
 static int qcom_pcie_probe(struct platform_device *pdev)
 {
 	const struct qcom_pcie_cfg *pcie_cfg;
@@ -1591,11 +1643,51 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 	char *name;
 
 	pcie_cfg = of_device_get_match_data(dev);
-	if (!pcie_cfg || !pcie_cfg->ops) {
-		dev_err(dev, "Invalid platform data\n");
+	if (!pcie_cfg) {
+		dev_err(dev, "No platform data\n");
+		return -EINVAL;
+	}
+
+	if (!pcie_cfg->firmware_managed && !pcie_cfg->ops) {
+		dev_err(dev, "No platform ops\n");
 		return -EINVAL;
 	}
 
+	pm_runtime_enable(dev);
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0)
+		goto err_pm_runtime_put;
+
+	if (pcie_cfg->firmware_managed) {
+		struct pci_host_bridge *bridge;
+		struct pci_config_window *cfg;
+
+		bridge = devm_pci_alloc_host_bridge(dev, 0);
+		if (!bridge) {
+			ret = -ENOMEM;
+			goto err_pm_runtime_put;
+		}
+
+		/* Parse and map our configuration space windows */
+		cfg = pci_host_common_init(dev, bridge, &pci_qcom_ecam_ops);
+		if (IS_ERR(cfg)) {
+			ret = PTR_ERR(cfg);
+			goto err_pm_runtime_put;
+		}
+
+		bridge->sysdata = cfg;
+		bridge->ops = (struct pci_ops *)&pci_qcom_ecam_ops.pci_ops;
+		bridge->msi_domain = true;
+
+		ret = pci_host_probe(bridge);
+		if (ret) {
+			dev_err(dev, "pci_host_probe() failed:%d\n", ret);
+			goto err_pm_runtime_put;
+		}
+
+		return ret;
+	}
+
 	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
 	if (!pcie)
 		return -ENOMEM;
@@ -1604,11 +1696,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 	if (!pci)
 		return -ENOMEM;
 
-	pm_runtime_enable(dev);
-	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
-		goto err_pm_runtime_put;
-
 	pci->dev = dev;
 	pci->ops = &dw_pcie_ops;
 	pp = &pci->pp;
@@ -1751,9 +1838,13 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 
 static int qcom_pcie_suspend_noirq(struct device *dev)
 {
-	struct qcom_pcie *pcie = dev_get_drvdata(dev);
+	struct qcom_pcie *pcie;
 	int ret = 0;
 
+	pcie = dev_get_drvdata(dev);
+	if (!pcie)
+		return 0;
+
 	/*
 	 * Set minimum bandwidth required to keep data path functional during
 	 * suspend.
@@ -1807,9 +1898,13 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
 
 static int qcom_pcie_resume_noirq(struct device *dev)
 {
-	struct qcom_pcie *pcie = dev_get_drvdata(dev);
+	struct qcom_pcie *pcie;
 	int ret;
 
+	pcie = dev_get_drvdata(dev);
+	if (!pcie)
+		return 0;
+
 	if (pm_suspend_target_state != PM_SUSPEND_MEM) {
 		ret = icc_enable(pcie->icc_cpu);
 		if (ret) {
@@ -1843,6 +1938,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-ipq9574", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
 	{ .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
+	{ .compatible = "qcom,pcie-sa8255p", .data = &cfg_fw_managed },
 	{ .compatible = "qcom,pcie-sa8540p", .data = &cfg_sc8280xp },
 	{ .compatible = "qcom,pcie-sa8775p", .data = &cfg_1_34_0},
 	{ .compatible = "qcom,pcie-sc7280", .data = &cfg_1_9_0 },
-- 
2.25.1


