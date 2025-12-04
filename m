Return-Path: <devicetree+bounces-244282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD72CA31F3
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 11:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4527311AC24
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F053328F6;
	Thu,  4 Dec 2025 09:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ccbgS7Tr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jJQlhhqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250F2D3A6A
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764842152; cv=none; b=Iitt8BK64jQTlbgswmKiPKs40F+D+COsS69X1q5ENKa1Bli9hcNzZ4JAEMi7AzJ92ZowF76VcIvrjwgZTeygKdEOjSg2Vcso2ijZb1jx/m8ot0/73NDQxbIkp3trIxphdWlpQV+pdfnX1lvSpnAN0eGJjQYMk+07xeiyTQ6TqqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764842152; c=relaxed/simple;
	bh=Q5WRkKpyNFdbwHCAdlIO1JtLhoqGJ6yKGFP0g8RLsAU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IR2CLPqUueif+vFwYzbAZm3ePM/JQLeOnpTcEWQiKFN0OA4PfSzQgGxhw2R+YuXhioBoodLBrJkhXsUbrRbXBTc39uXVKgXqUJQCbD7aCobhm1eiHeoIQfN+hfuKpm2fKj0NfFByQ2w2XtNFmk7mARH+PudCyWYv5aCCr+pmyrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ccbgS7Tr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jJQlhhqk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B476Yu3516631
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:55:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RTHii2RLOwx
	Qg87de6ltvKhXlBHDtZXgHyW74oiIDH8=; b=ccbgS7TrD/txKOXrC+7Ky0N5IHE
	WW7nfIV8WgcibHa31F654e0SBk/lyEFbyzuk/fLUv+u85TlyZZZAwSeY20cr98M9
	7gUo3GxVfkB7q7xVHyG/GHEXDrKrSJSPw2p8bkGDGRFHL+EkOUmagHbTjZYRTyGk
	S8uu7VqW71klRBgiSGhp1XSu+KaGVb/yvjqC6wFzcevZrJ0N+GZQLVrx9zDBO5cl
	Ac32ZjywAakm/AwyPbDJVG+EUQB4Gk8gGgaK7MU9+uxU1LRAgJeYTly9V8x7ZZ/Z
	wgL7b2RnKN2TcKFAe3vSDZScNOA2A/cq5HMQHF4gvZC0sn2M7NnLPnwpAlw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au5m30jy0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:55:49 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b8a12f0cb4so833119b3a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764842148; x=1765446948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTHii2RLOwxQg87de6ltvKhXlBHDtZXgHyW74oiIDH8=;
        b=jJQlhhqkbxj6ItbnJu142YNowtw2tjQwtNc6br+YEV0YkRum4lgcIWRGEq2ulo5m+k
         X2j7yxkKhduvCkzvhYj4TGLwx/CahaC4Bx8N40gi7lkfg2x80laFoNLzjChcjspLAtKh
         9SCVlvOyP83V4ZDsxLbyB7SFgJ+aXhVPVF4qlpagnhpjHMtC6oorFvJqr7UK9ubvXNFL
         riircJ3L3liKAj1fx6uBAecpPjsz1GaNQXcGkfX2K2o1X0T/nNmxqXx0exmMTcCTkLEY
         AIFKXCY33RzYlQi85nkQ6mtC5XD7u2w04dfcqKZBRwMyjb/lBtP6kMhL0KB/LCTpkWU7
         GZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764842148; x=1765446948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RTHii2RLOwxQg87de6ltvKhXlBHDtZXgHyW74oiIDH8=;
        b=nczYNE0MRlDpQRABgfIuCAa0gXHT/WfejhG/ebEt2jvwYUewySq7R8tbD3Cb5lK+Wb
         m8XQauZChWBhndHKhUKMOS+DlzVSNkca9PaKznDTnZ362NZCz8cVQQcuSBQZBXvGwxov
         LAsrm9NwjaoPeVGhwVyPLXCpl0QSuX5h8T735Qk6mlrTkwbVFE8Kz1pc3AoLgtb/Ctf8
         aRPic7jGNmrSJH75wwDVPOz/cs9ntwe+6bvLxJB2xfYpuRX1Dw2dUZDmGF4SLbQ4St9T
         pElwiVjL2jg91z8fO+5lCZGgiv6YTF4lU6nNQ7PbFZA0iOuMs6WHwanF4GsQo8+zw7HR
         zAfg==
X-Forwarded-Encrypted: i=1; AJvYcCVHLKethNaLRik8Ah4XyDpFBOFPRoZbqbqvkI2hmqFPVKbyQdWad4ocOwdkMeHdtz80HVraX6RjgZAc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0TqtbLBYNXCdnw8nwjV4U36wrubchGxvQHJUpGD3baM49pJfN
	lsbxTXpOtB+t2hqwDBlcwzJbKFF5owF1ztWGSdBDwjnPifCnXxN0Jdfa0rsYFqNskoIQ3hMugo4
	8Tu5je3uNZp0BILxrfpLj3fLX/uqUmrmPTsbzsDOY5sjFASXHEyIszU3WXKwlIRhj
X-Gm-Gg: ASbGncs1gC4yYQzWxuCgiCcHjaBALQ6z5uRpoqSrU+gIjPCAlkrv109gPmI+rmAuG74
	kpeUMXj/RgYW4O26cmig7H53cexGuync1YQdvxc9vmk4OD1hvgGfAhvdUAVtonG31mIHCQq2MbI
	BYlzK87aXAzJ0uM3BHgL4/1ok+d522QTJUqQDUYNn6fxbJinS9HIplcY0Qzz3E132qPRSHvbm3H
	KSGOrI/QvFCzMtsIT6GSd4VGHjuUiUeArku97jX++qnjIwAo4rhgtk29U4zLw76uI/Z9n09c/M0
	WJJu9OlEwusRaSkC7oO6phFpBWj9aW1mpeOO/sVdAC8SKOsRl2h6Vu5L0SO34yKOx53GiK8NVCb
	t6eayw5Eef8wH46IdmixkrGsRL6OTs37htKRodpIV+3zd
X-Received: by 2002:a05:6a20:914f:b0:35d:3533:3dc3 with SMTP id adf61e73a8af0-364034d65e7mr3167134637.0.1764842148330;
        Thu, 04 Dec 2025 01:55:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3bSXLdxVXUYRIgsjlgz0h6EiUD4YFBwgWd3A851Q4FLR+fZ2b9jkBuDemkSTpDV7tY93+Yw==
X-Received: by 2002:a05:6a20:914f:b0:35d:3533:3dc3 with SMTP id adf61e73a8af0-364034d65e7mr3167110637.0.1764842147824;
        Thu, 04 Dec 2025 01:55:47 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6817389fdsm1380436a12.1.2025.12.04.01.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 01:55:47 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, charan.kalla@oss.qualcomm.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, vijayanand.jitta@oss.qualcomm.com
Subject: [PATCH v2 1/3] of: Add convenience wrappers for of_map_id()
Date: Thu,  4 Dec 2025 15:25:28 +0530
Message-Id: <20251204095530.8627-2-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
References: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: iB6J62Hm-HRKtwETQmmX1qGPCOdd4OjE
X-Proofpoint-ORIG-GUID: iB6J62Hm-HRKtwETQmmX1qGPCOdd4OjE
X-Authority-Analysis: v=2.4 cv=esHSD4pX c=1 sm=1 tr=0 ts=69315aa6 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=zC5qE-s5kk4CCBLE0fQA:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA4MSBTYWx0ZWRfX4MOVih2XmVNm
 jX3K4yk3u5MrFf+50zW+DYJayuni2Xnnn4ErIjM9ifgbnYJ9c177dt7EDBrJVNMdgIUDe9o7QxB
 6C2BAa4BosMNb8P99Ln3KBf8b/rtHaZ5Ach8KBfFrTOzLhgN+Nun0Y0Kw/TBHG9y4yRMwpgzdEO
 Fk5gtsB/cPu0blJGXNBZprgNiznH9Cpqwrokvkko96v0LTrXgjAuDHoUjtnAgZ2lO2ZQxs2OJnm
 gmHgWtOasWNzxSOJQIB4IDnMRSCyFV7PcZp/o+aWndsa6XVFLwRnjNzQtmtGMpf6Fmr5P6yb1sa
 9ejmj7+FPoe97eoPLGEAKrFAK78zPjIbZp9JDaHycZWXe6voOu3R7yiMCRd2LOIZLwBkjvdGMoQ
 fuFMf9e5MgmAU/qPm3l5yhxUCPBSCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040081

From: Robin Murphy <robin.murphy@arm.com>

Since we now have quite a few users parsing "iommu-map" and "msi-map"
properties, give them some wrappers to conveniently encapsulate the
appropriate sets of property names. This will also make it easier to
then change of_map_id() to correctly account for specifier cells.

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


