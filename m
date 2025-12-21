Return-Path: <devicetree+bounces-248606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EF6CD45F6
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 22:37:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6D443013548
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 21:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D1024A049;
	Sun, 21 Dec 2025 21:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RpW8pqMS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ro8F9WgK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB1526529A
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766352997; cv=none; b=o30MmRGi8eiJrzW/VqwLVKRbq0v545L6QDKnxzC7H/6ZHb2ke5OV/Z8tF1tt0ZNJa3uK9meUgkmYeFp5kvhUKCNpmtMWYA5YDHv5agRRw9e3NbR1DpyF+9m28mADuBgtTyPX8AzMyIjwIiN2QrSBcEJVqhsDYVu1ykB3GTjJ1zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766352997; c=relaxed/simple;
	bh=ZI/dat0pnePJL3uDPgam7hb7hJJGmBB96a+N9P+pXEU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FhfdeNkC/obYPcYJJJMRvC3IHtglTfk8DwIPY30jo2i5qwERubCmPwSfAdvizN2fGJqWFMAywy0UTaGJU+CZcQElIemqW8SogHUzYv/Hdqa/nlyyRngHEzVD+aM53jlH07Y5Fu6Mkxm9h8muLgNKAa2J/gwrQ7hVKG/Tcxlm8QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RpW8pqMS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ro8F9WgK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLKjJaO3859377
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LPwYAZthCsX
	O+QFdi7+uTYp6zaILxY0tD6IDNL46v60=; b=RpW8pqMS1xNcrfJo/kbs/d2xfER
	+e+VULeLyEiCGMaZbcTCk+JM56exryugfE25nCgZbblJLMwtwkoim292a82kAQTQ
	AxDqD3Wva36TcRMxHU3GNxy4HY7Xm8TJ3rBylLWPkvkTDhpVg+vUe7uFkexQvIdk
	uNXv0gBIQ9u8rZWwFz9t/LOgIgNK/O/gg9zlKypBijor+fhyoVt0bn36AcCDK6G6
	yYCpuwJ57X9fxnKtGFzar3eYDPa8uBUUY5Zz7L0Rzui46nd8zlhnnVEcxBdroyau
	vg7X7cBIED2muvFP+5jX4REdM1V2yUq8lIav8x42UbLHOKpdDFMxqVdMILg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mux2vdh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso3323504b3a.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 13:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766352990; x=1766957790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LPwYAZthCsXO+QFdi7+uTYp6zaILxY0tD6IDNL46v60=;
        b=Ro8F9WgKGtIFxPzW81HpNL5y8NfQn1TgTc8F89IDe5CI+CJ5fy1btZs2InvvFhxC0Q
         B6SAhKd/3f/t6HsharODJBuYgtkkaGSgeDOsrqANO+CEsfa9101BcgUWnUHGSrQBF5lb
         xmb0h2qI2R+1fR5r/uwWmt+D9X8CKCTAWUvle2ggUugWbX4iXjf9HOFapdVsj0ROyPtW
         izzpWakIHqn6iHvCklHk2fJJQ0ufzvEjjqLkrbz04bBc2TxiHPESwpnGScbmL+JZmWPH
         zRwwlIJvO8Rr0x2mTFL8HTlQ2v81n+DO20UA8GUqYuNbQr9Hs66cNLj49wS05VzR3Gex
         wwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766352990; x=1766957790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LPwYAZthCsXO+QFdi7+uTYp6zaILxY0tD6IDNL46v60=;
        b=r838eSLPbB9/J7WapDT8MCKPTTZHlD5qU2gBWdHcYcuQbIgpA6rTNOOBE7do8HJiKl
         QPxcl3UU06E3jCRBhF8UCyJlpBKbO+ei/PefFHkpRCfwh1QOggUOzrohH0Zj4P5wkpGT
         c7+coquUH86HMBunQwpsEwfAGMaHFSE1jNeVdoj5sakOHC6jL6/CiqRwm7jnL7djXGiD
         KyXjLQpMB/ZK314BDvG0/O1dh8cJIZ7KpuFDkdKrmPGKL/AjR2IDp5o46KwebFmAT5LF
         uyKZi4r8WsfK7lB/QG3UjRNofngU9qOvWaNfQWeWnO/SulMYnhAX7+2p0OipuIZjiy9H
         pXPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHaQJWcVHyZM+VAm5hSOHm66bpHilTbO7hdXKv182mOasZNLGnn2hGAPt1LGMuqbGoqwAs3VzTQWc2@vger.kernel.org
X-Gm-Message-State: AOJu0YxORidHXbzEQhBg13pgakKAtNgk6tckrOXRKbbah/XHtnOUcute
	bLOdqGwH9T8rM6jCl4ZaWxQNGeHSbBfLbANPPwsR0k8tZUeE8x92xurtD+odOw+FLqvDgl9OD7u
	WFgm8Cz4zBrWb7CIAxNMjHaCXsOQj0GShTqJRpG19WLQFmuA2ILuDS95aPBA1GZO7
X-Gm-Gg: AY/fxX711afZyqzUikmq+DhuYftIj8YPCH+u2Kj6W89AppVosuHnX/3ezZo0rwc2VoV
	N3A/ZkZVRcizTSIGVq+mXld2Y+MWEGKC9lwTbDXwOOfu1gWX7pj2aAsMKcIcTO952I9oVXfLsul
	Llv5mZeZsy0KIjUCh1kjqnIguMrEFS4IwRnq5E6QHlpnMUaCBwhJ68OrjvevLqv5J6nTdg+Yr1S
	hyfHw8OMypMra9wDfQhbKjy3m0/qniPrbtnMQkbb7UQ+/UGVEvdGtacLJs4h0eIgXvLxF4NJW2B
	kLKXJ07sfAys32HksfhBRnuYftBncB97ycS28qYRjCzp+SJD36hiEPoF4OezhdZeuXYfejAw5jQ
	SGlR0DfLNzzabfrGe0XbEVVJDr/e3UdHvtX83wATh+14Q
X-Received: by 2002:a05:6a21:338a:b0:35f:6e12:186f with SMTP id adf61e73a8af0-376a7aed68cmr8628730637.23.1766352989838;
        Sun, 21 Dec 2025 13:36:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFd1nWrqRTbCiMSBO6UqtQqKGo3Vxxy0BoNOtDC2XC5Q4ZeI6Hvgt2VnL6bDeMMm/1vB1QfNA==
X-Received: by 2002:a05:6a21:338a:b0:35f:6e12:186f with SMTP id adf61e73a8af0-376a7aed68cmr8628701637.23.1766352989279;
        Sun, 21 Dec 2025 13:36:29 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70dcc7c8sm10950163a91.15.2025.12.21.13.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 13:36:28 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v3 1/3] of: Add convenience wrappers for of_map_id()
Date: Mon, 22 Dec 2025 03:06:00 +0530
Message-Id: <20251221213602.2413124-2-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com>
References: <20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 0TaeimRdOwDBH9LjKo_b66DK3XenmZQ_
X-Authority-Analysis: v=2.4 cv=EvnfbCcA c=1 sm=1 tr=0 ts=6948685f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=zC5qE-s5kk4CCBLE0fQA:9
 a=2VI0MkxyNR6bbpdq8BZq:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: 0TaeimRdOwDBH9LjKo_b66DK3XenmZQ_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDIwNCBTYWx0ZWRfX8QNF/pd1/80l
 8u3seqCCF1VjtgbU5y6lYjvDO+4/Pt2r1GKOWxpOU9VR55Q3BvJ6NaXR0JoBSrT3VFQ0a4+s/Z5
 azZD+1D2bqkQNp34HgQc/Aq6nc8AdDzK5XytuCKGpTIAS+wsA1IDhfFXfhoUid8Ii8Qafbkn0f7
 1109ov++Bc650i4T1u+aFMRx54bbdZ1+KsP26gMrnosceKhs0VADUEpi9r3DGqw2+90HbTdzSol
 qpVhiaTwsHvfKhsAnIgTlyzJV0lMrgUtz7uWdCGZ63yTMbnO/X8Gk6lEVuorDXh4aZghFj0wDUr
 jhbdl/3tQmEWBU+OhEbYm0w3PmkF6KoDZlsYOkuVElZsQ58nUTTOtKkijkzHDkLojaLcOm4rS2H
 g6YZyraxYZjsxUchggj8GczXJ8cFJMpGj+/3YAtcLvO3nxJsMhQXV8+RnBnU2yFZ+EcfgtoSvQd
 oboKk72QOBkT+V5vX/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512210204

From: Robin Murphy <robin.murphy@arm.com>

Since we now have quite a few users parsing "iommu-map" and "msi-map"
properties, give them some wrappers to conveniently encapsulate the
appropriate sets of property names. This will also make it easier to
then change of_map_id() to correctly account for specifier cells.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


