Return-Path: <devicetree+bounces-250791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D89CEBDE3
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78CCE300EE7A
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C324E31A06C;
	Wed, 31 Dec 2025 11:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V7wx2oRG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C120pBaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C9E3195EC
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181633; cv=none; b=J0gh7j3Du6SdlMuENLDcqlAOdpFq14DUO4wsTiNDbejXSyMQvdc7E+QOd0AQjOeONyryB3/ytOtYKW5LRKLOpr0QYpvHbXRrC0GIJgDePWOAD8p/LgEulipJmMmZhj7G9szCmaNT00SfR1ax8CmpsphYDNoRPQuTmOwIbQ9Hwvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181633; c=relaxed/simple;
	bh=oZFElJcRCT/LHuAohL0RZew2I27BaYtu2DisIqxwb9U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BmNznInZfi9qU/w/7w/kZyPC+4qhWd8ZHy34Tv8iF+SLgCdh3wk7tzK8s/JPw9FCUulwR9YZ7uHzTxuirLg5x+O2AYh8qQkZZCtIws/abypnwYmFO+TKuBo7gdtz1sDEVvozaZYLXo6qpHnhw+Pz7w/PsppgUlwNjOMKJtCyxRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V7wx2oRG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C120pBaz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV62OmQ2050705
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=HBOKLq5ltZe
	y1Irj7CFQtO/EQ6PvqIKX5WfrEQq8PIs=; b=V7wx2oRGpZACWTLeDNNZo8VIUHe
	yahZ8kS3jtc/Zl2BLVJu1U/n4PXiUuTKlTa1CeZ3rpEx6i1Lxf+ccbz4rK/5gWS5
	JX0OJpg/OaDto/RqHuBEEpVPYBxynctDtUCTHkV5NGAyr0BfRg3MMl8mtGpD5W/0
	Hk1a3D9x/9CKqoq0Jk3EggKiFGYdvZTEjebwXMnxGCb2f+OCtojx/X0P3+c/qfBv
	xA9yeSt/Qy0Ywbz9fI6MGDXxuotth1Fp6f0/BWU14MGiLnpQ14SsmQTL5ZZR9C34
	HFfFPBUcXG1ec4t2q8EvFpKGg/zLtgzieD0ulFVbuZRmXKxhpca3ahpfKDQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcx748jah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:10 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so20452085b3a.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767181630; x=1767786430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBOKLq5ltZey1Irj7CFQtO/EQ6PvqIKX5WfrEQq8PIs=;
        b=C120pBazORtCopemgbWzT+er0mMBXVfApax57kY/41nRRFA2bTSQb06m7TR6YPmd6D
         /OWt0MEbjqaYrTVeA6SZ0f9yI89DKgONeamEyvZwUYTXVbuUxW+re+BC9lPAZ2VfHqae
         13ZllNBUTkIQ5L7CB4SZcNKyP4vrKOoA61ORCHKbs8A3ge5eqt4Oh89hHPZR25fKjs4h
         /biupZ6hw36j+v2u+Hr3GaOYCGiIQF8T7Sl/WdIGXNIjcs0ZHsrCSLXI9bAd65e+OL45
         +p64qJR5WiA6liBGTdi7MJNG/xpMxY2V+z6hxH+v89vdE9LUhD1Mai7CMilw95S2zV45
         87yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767181630; x=1767786430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HBOKLq5ltZey1Irj7CFQtO/EQ6PvqIKX5WfrEQq8PIs=;
        b=oYqgMy+yObQb3NErrWM2A1dRGGZSjwE7XZlxPEEu8SzFCCLoHQ6Mmr4oDptH4fGCvJ
         o3exjyj/JL2+q/OGeZoIs4oJXcFur7DETI9GSS6dhOUZMapDOEQKqEgV4bOVp34202pJ
         PBcODQ7BNFP6bYOnZzd03JrVZhkJosm2+in/86OJazhTW5FMciYeM0vtSMX0gitZ5CNH
         pVVmlB+r34JTQXBl8j3WR27OL5hzc5HFmL+3rSBuRl8Yx8HgwZ+EOOZQRFVUjqzHW0tH
         IsOD40b37KW5BXt+npHKDbKq3gaIA+eoiMen3YChdJ36i3O0HUwVX+osGOhJhnVs4cJo
         NO5A==
X-Forwarded-Encrypted: i=1; AJvYcCXLiIMpJtvGu9vKVsP8Wb3HkP5JgrYlAsBfBEJ/eVGrBWwXl4EDQI7AapjCF1waf0oQckqUoTXOMnAY@vger.kernel.org
X-Gm-Message-State: AOJu0YyhT3/6oBhMB38aucAQlRfdg8l6jKOL4Twh96VX3l7GKtmSS5qA
	vbFT7OKZHhrUpC9FL+ulb+3KlwSSfNfcl6oVPzskUMHkWUm92S9mYtm4E88vlFUjRx0/Ybm831F
	S48ZwLpJQ5W3jzVazkkjZVZ+ZkDBrX353L1kgPY9sBwJn2UtNWs/MfRO9VPIqsDF8
X-Gm-Gg: AY/fxX6uRBU7kyBzSeystP/y/iaC4cY0+ZetlrkFuDJeQzzjOjtaeQqYmNGchA2aMbY
	SF9NW0bLRAciA7HOYaNnH9VZo9Ieg6AlqMT0Q0sf62GJzODdEtHuz7lbSitLIRtMI5AgmePm1lD
	taECIGwTmd3jCQ09AZVF0mZ7XXD0DbVDC9lTTxWI7I+UsNFS+CXNsCvjQC2d/KyFqD9CmbiNUIE
	5r2DNRSFwi0alPPjYDWBzP+aQy4WEKvTrQ1G/L0OWFG/0GCfBNvOrrhe9/GJ/wUG2Zv7uOky3sn
	zoyz+638AzgcgVl0JSN26UaNKb951Yq8Y8Oe4cRZHrixy8sFn882LMI7d5ECBKYoBK2MLG0nh6u
	vRFm/mAR4XKLXB46rhVKK+zhvFnLcHzuxQQW1KjlSNoVp
X-Received: by 2002:a05:6a00:328a:b0:7ab:8d8a:1024 with SMTP id d2e1a72fcca58-7ff657a10e0mr32995124b3a.7.1767181629851;
        Wed, 31 Dec 2025 03:47:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTIBcnaPBx7tJq37ub/V9si/OnUbrFKHVnF1N4lIDVFtgp8uF+L31a7bYbgS+VyiCTMwNbww==
X-Received: by 2002:a05:6a00:328a:b0:7ab:8d8a:1024 with SMTP id d2e1a72fcca58-7ff657a10e0mr32995109b3a.7.1767181629364;
        Wed, 31 Dec 2025 03:47:09 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b5236b5sm34815656b3a.29.2025.12.31.03.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 03:47:09 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v4 1/3] of: Add convenience wrappers for of_map_id()
Date: Wed, 31 Dec 2025 17:12:55 +0530
Message-Id: <20251231114257.2382820-2-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
References: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: i8XQx1W7TmoodZQiaWcCJ2FUfRvV_ACz
X-Proofpoint-GUID: i8XQx1W7TmoodZQiaWcCJ2FUfRvV_ACz
X-Authority-Analysis: v=2.4 cv=HNvO14tv c=1 sm=1 tr=0 ts=69550d3e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8
 a=wrOk0Nx1w3hKWqktZycA:9 a=zc0IvFSfCIW2DFIPzwfm:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwMyBTYWx0ZWRfX9bRgaUso/9ue
 mzbM0BM7HNBc3lowfBrokZIjmIxw6P0PUkwydHloS/guPw2d5MSiJ1v35KtagOrFk/gutQejL+8
 +N9D7Qz5774SlMlJcB5eQ6fDbneFXyfahR1hsZQQD7A7eKIh2ELXdk3pvqQC9oYL+K4iLqOAjnV
 95yfr7jZjyWKCq05b4FFnJ3hRX03jZkxprGOyEnKuDl3IXn2zAnCzvP3jcuO8M9L3bxOVqwed+a
 5zMUWe3LaBHkUqGzeYYT/y0hEfVtvoX6Jg4udmKmwHD/lj9WImtNZLU9cYKiBYIsz+1fcbkMxTl
 Jwe9gC9G1HaAhEz5QGrMiuvWy2rhyZjXP2VOaeMJRcccLiGW/8fQb9eG/pm8YRVfrJPyKX25jJc
 XWpUjL6HFJ+WDLyQALxr/u8eXwN3a/1GKU7iZcz1iTwtrzMk3qZSIIhSnaSi42PKgkkRqYnc6rj
 zDpPZF5kLG+gtB/4X3A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310103

From: Robin Murphy <robin.murphy@arm.com>

Since we now have quite a few users parsing "iommu-map" and "msi-map"
properties, give them some wrappers to conveniently encapsulate the
appropriate sets of property names. This will also make it easier to
then change of_map_id() to correctly account for specifier cells.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/cdx/cdx_msi.c                    |  3 +--
 drivers/iommu/of_iommu.c                 |  4 +---
 drivers/irqchip/irq-gic-its-msi-parent.c |  4 ++--
 drivers/of/irq.c                         |  3 +--
 drivers/pci/controller/dwc/pci-imx6.c    |  6 ++----
 drivers/pci/controller/pcie-apple.c      |  3 +--
 drivers/xen/grant-dma-ops.c              |  3 +--
 include/linux/of.h                       | 14 ++++++++++++++
 8 files changed, 23 insertions(+), 17 deletions(-)

diff --git a/drivers/cdx/cdx_msi.c b/drivers/cdx/cdx_msi.c
index 91b95422b263..63b3544ec997 100644
--- a/drivers/cdx/cdx_msi.c
+++ b/drivers/cdx/cdx_msi.c
@@ -128,8 +128,7 @@ static int cdx_msi_prepare(struct irq_domain *msi_domain,
 	int ret;
 
 	/* Retrieve device ID from requestor ID using parent device */
-	ret = of_map_id(parent->of_node, cdx_dev->msi_dev_id, "msi-map", "msi-map-mask",
-			NULL, &dev_id);
+	ret = of_map_msi_id(parent->of_node, cdx_dev->msi_dev_id, NULL, &dev_id);
 	if (ret) {
 		dev_err(dev, "of_map_id failed for MSI: %d\n", ret);
 		return ret;
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 6b989a62def2..a511ecf21fcd 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -48,9 +48,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_id(master_np, *id, "iommu-map",
-			 "iommu-map-mask", &iommu_spec.np,
-			 iommu_spec.args);
+	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
 	if (err)
 		return err;
 
diff --git a/drivers/irqchip/irq-gic-its-msi-parent.c b/drivers/irqchip/irq-gic-its-msi-parent.c
index eb1473f1448a..0884c4cbd245 100644
--- a/drivers/irqchip/irq-gic-its-msi-parent.c
+++ b/drivers/irqchip/irq-gic-its-msi-parent.c
@@ -166,7 +166,7 @@ static int of_pmsi_get_dev_id(struct irq_domain *domain, struct device *dev,
 	if (ret) {
 		struct device_node *np = NULL;
 
-		ret = of_map_id(dev->of_node, dev->id, "msi-map", "msi-map-mask", &np, dev_id);
+		ret = of_map_msi_id(dev->of_node, dev->id, &np, dev_id);
 		if (np)
 			of_node_put(np);
 	}
@@ -211,7 +211,7 @@ static int of_v5_pmsi_get_msi_info(struct irq_domain *domain, struct device *dev
 	if (ret) {
 		struct device_node *np = NULL;
 
-		ret = of_map_id(dev->of_node, dev->id, "msi-map", "msi-map-mask", &np, dev_id);
+		ret = of_map_msi_id(dev->of_node, dev->id, &np, dev_id);
 		if (np) {
 			ret = its_translate_frame_address(np, pa);
 			of_node_put(np);
diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 1cd93549d093..9549dda8f9d6 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -725,8 +725,7 @@ u32 of_msi_xlate(struct device *dev, struct device_node **msi_np, u32 id_in)
 	 * "msi-map" or an "msi-parent" property.
 	 */
 	for (parent_dev = dev; parent_dev; parent_dev = parent_dev->parent) {
-		if (!of_map_id(parent_dev->of_node, id_in, "msi-map",
-				"msi-map-mask", msi_np, &id_out))
+		if (!of_map_msi_id(parent_dev->of_node, id_in, msi_np, &id_out))
 			break;
 		if (!of_check_msi_parent(parent_dev->of_node, msi_np))
 			break;
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 4668fc9648bf..c8da2e88e9c6 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1106,8 +1106,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_id(dev->of_node, rid, "iommu-map", "iommu-map-mask",
-			  &target, &sid_i);
+	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
 	if (target) {
 		of_node_put(target);
 	} else {
@@ -1120,8 +1119,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	}
 
 	target = NULL;
-	err_m = of_map_id(dev->of_node, rid, "msi-map", "msi-map-mask",
-			  &target, &sid_m);
+	err_m = of_map_msi_id(dev->of_node, rid, &target, &sid_m);
 
 	/*
 	 *   err_m      target
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index 0380d300adca..ce21728d6e51 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -791,8 +791,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 	dev_dbg(&pdev->dev, "added to bus %s, index %d\n",
 		pci_name(pdev->bus->self), port->idx);
 
-	err = of_map_id(port->pcie->dev->of_node, rid, "iommu-map",
-			"iommu-map-mask", NULL, &sid);
+	err = of_map_iommu_id(port->pcie->dev->of_node, rid, NULL, &sid);
 	if (err)
 		return err;
 
diff --git a/drivers/xen/grant-dma-ops.c b/drivers/xen/grant-dma-ops.c
index 29257d2639db..b661f9c1f4fe 100644
--- a/drivers/xen/grant-dma-ops.c
+++ b/drivers/xen/grant-dma-ops.c
@@ -321,8 +321,7 @@ static int xen_dt_grant_init_backend_domid(struct device *dev,
 		struct pci_dev *pdev = to_pci_dev(dev);
 		u32 rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
 
-		if (of_map_id(np, rid, "iommu-map", "iommu-map-mask", &iommu_spec.np,
-				iommu_spec.args)) {
+		if (of_map_iommu_id(np, rid, &iommu_spec.np, iommu_spec.args)) {
 			dev_dbg(dev, "Cannot translate ID\n");
 			return -ESRCH;
 		}
diff --git a/include/linux/of.h b/include/linux/of.h
index 121a288ca92d..8cd486d89da2 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1435,6 +1435,20 @@ static inline int of_property_read_s32(const struct device_node *np,
 	return of_property_read_u32(np, propname, (u32*) out_value);
 }
 
+static inline int of_map_iommu_id(const struct device_node *np, u32 id,
+				  struct device_node **target, u32 *id_out)
+{
+	return of_map_id(np, id, "iommu-map", "iommu-map-mask",
+			 target, id_out);
+}
+
+static inline int of_map_msi_id(const struct device_node *np, u32 id,
+				struct device_node **target, u32 *id_out)
+{
+	return of_map_id(np, id, "msi-map", "msi-map-mask",
+			 target, id_out);
+}
+
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
 	for (of_phandle_iterator_init((it), (np), (ln), (cn), (cc)),	\
 	     err = of_phandle_iterator_next(it);			\
-- 
2.34.1


