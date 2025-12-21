Return-Path: <devicetree+bounces-248607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ABCCD45F3
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 22:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C298A301356B
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 21:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8237D26B2D7;
	Sun, 21 Dec 2025 21:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ViGoJeBV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S//9AJ0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5308826980F
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766353000; cv=none; b=jzNmrBiQevuxT3u0c2lqD3/j2zz2OAeYma0l0D5CINmtpcKYntBeA0etC3D+Tb3I247flF/fYVv6109SFXXnYoUGvYq1mQCWZbKs0YzqEBOny4coYctgMNV4K9zy8Numgj1e0Xid+Y85QvzrvkDJ9PirTWc0daBAUyifi0yWSvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766353000; c=relaxed/simple;
	bh=16TSlotBLzuOien7sfW4ukR/bjvgeC0dcRNpEifG7Xg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MPTbJl9ooRcm+1f6yxx8mKC/yAyUApi51QZNtVjS69EW2lLOZUYm8NupeyzYHM1xGVC3+yg17qolQA8lTQrnjExHSt93fydOgjkdVI7IIKFAvN+KO7i5bdD7ZiD98O8lVRStBqrIfZ5JXeyFyXzSixak5H7o7WJdfxAjMbJVZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ViGoJeBV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S//9AJ0X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLJj1No983038
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RqYSFgOLrB+
	uWxpGTvI492+ogxltyaVnqIFarGItNPU=; b=ViGoJeBVoo+qMjadqwFLZObEOSO
	c00Y2HktniIFEq7cDO15DlfG7N6peWCm303j3V+pt6McZ+dQQk7/CIz48FnFz7YZ
	YByPWAFSF1EnoBZ+UoXSecWN3nPqeCCfVkUNnWLnwds9uSp3tzhMbGiwLg//U5uP
	hAg9W8PFX8UhcAyMPkxORyt35iWoSE/J9Zr+lppIItgSJPD7AXAcB5CoveSa0VvC
	eSbdXDDgeW4pQGD3JcBWgRZslfFGCqRelubASSamIFvqi11RPXRuX8QKpu9cSvps
	gVgpOs/kNFcY5cawOgWXj2Jj0TBud6NbHQblZc5PS/Vcze74viE5NjFRZOg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mydtwn1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d43fcb2fso105939985ad.3
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 13:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766352997; x=1766957797; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RqYSFgOLrB+uWxpGTvI492+ogxltyaVnqIFarGItNPU=;
        b=S//9AJ0X9KJIMM6D9bUfAvcTq18OKokPVM1Ynb3nZYxzbcBtMmYEnmaApUK2z980j8
         qYf27fQY1ij7IlXnOdOL/1AGU9M5W5174ODgWFX8KEqCcls/Q4OhwUGbWvktrQa8LUUQ
         IaoUfAIUuHw3Z3fOhOjo8N3h+3i1vj8bx3iIa194CFgnnkNtxLLK28LQlNjgMzPf8Xer
         IXIZnPWYQ8iXe4LaTva3zavqqcRWFA26uhAGgQL3Gj8fNVsi4m0a486d2UPpTqfKzolB
         WpRlkcak69l5eGkWO/0sFrnscQaTsEKgob8kkMPGpP42NRlrf/WcT6G0TW8s44JT/6C6
         gF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766352997; x=1766957797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RqYSFgOLrB+uWxpGTvI492+ogxltyaVnqIFarGItNPU=;
        b=ZPPExTxd3HAf+BIRfHL4N53qjFBXuxtHVYWeGy93qroVSHcQk05qk9MPJ91O+E1XwZ
         U4d6D6qUc5zhFgAJukdoDUotY97cyUiPw9F2VYEZPUGdJzV2tAXEHQskPBYYl7Ca/h3e
         cMEi4rKJVYoGk1y/ROFjLnxtBs8EZnOWNL7Qc73AVIY0UTFbfRVotofYROys/vR9zhFz
         YqJwdxj4BrEGRQu3v1Fqhk6Sj7jpHnqnMeDqQhiuKMZUWefMU/xO17J5QNGk22Khtc5z
         Xp5VTqYDpMjCHl9xk7yKkINoV6tGhpRRp5ENdEZ+SgafgFWLYaid3tsgjVn6RAhxPdz0
         iqiw==
X-Forwarded-Encrypted: i=1; AJvYcCUW6XpNlNrDfjKeIJwfK7ndKQ6YjnWm1lp/lFxNrEg/idBHl22uTLzszvJqwaepwI/4NkhKHwxeVCkm@vger.kernel.org
X-Gm-Message-State: AOJu0YxUVlnmRLsjSU0hJL+iK/w/0idXUkvB454xE1nV2EW0j+nKloCW
	GAme38kT3rG9aU1gVN2KOeqJIyM84+SZ27aZ5cF1x5wImEv1YwilIeiQyijsckaGoqg/xBv048M
	OUJKhE87NDq3+kyWLLaTOmb1Ia2l6NyJ+yV+ZDkKlVgMsSsizptQIREnS2o9CgrfV
X-Gm-Gg: AY/fxX4Jm3dPmdhSemC4PnupOMqFMSxOWby7mPyiU4nqnqk4GU0/ZvUrWSguZ+EMoVD
	A8Q/podJv8Zh+DhK5LgU5eWZXzfg7ofD24maDuADapVYRcwCN2ekL0tH4ImCsr9oZGWu3BoHbcC
	xG7f8zw9pLQzKC7UUD1bzIcIt+ot7kqfJxjm+P3AbZUEHfQLDQCSpTYTNFGkUqxVepQpKFk1cit
	GT2Kxxhce5hVByIOwBr6Rmb/JtUcE9qR2c3N1Xni9JSzlJtbi18V7CRaRTqx0HSNkkSHRYsietE
	qg9b/4ACMff02DHEUBZnMDV1Kgpw0Zcdmpe3riqqXB3yPpsG+lOrkwbFbUbP+vj35JDVUwb8Tcf
	sZsT8kVN1fKsKYdLyy++xX6hYZWGQrDh1I6GgQHOzvXZG
X-Received: by 2002:a17:902:e74c:b0:24b:270e:56c7 with SMTP id d9443c01a7336-2a2f22069e3mr99336185ad.7.1766352996607;
        Sun, 21 Dec 2025 13:36:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEu5g6C1Tc1/CWkGZfdt5tr82xA9G23JSzp10gkHSKJVdHoKnPqLmFdhu0g4UYH98Hmqj3g+A==
X-Received: by 2002:a17:902:e74c:b0:24b:270e:56c7 with SMTP id d9443c01a7336-2a2f22069e3mr99335915ad.7.1766352996108;
        Sun, 21 Dec 2025 13:36:36 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70dcc7c8sm10950163a91.15.2025.12.21.13.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 13:36:35 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v3 2/3] of: factor arguments passed to of_map_id() into a struct
Date: Mon, 22 Dec 2025 03:06:01 +0530
Message-Id: <20251221213602.2413124-3-vijayanand.jitta@oss.qualcomm.com>
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
X-Proofpoint-GUID: ezmIjeoWWIfVmRI5D0iiVpRwQyffuy-j
X-Proofpoint-ORIG-GUID: ezmIjeoWWIfVmRI5D0iiVpRwQyffuy-j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDIwNCBTYWx0ZWRfX59Ptr3oM7noL
 nbZEwR94tZuxhPURDHBcvuymzK4MleVl/jjDF2iqMaNcvPUn6YUIDyeRafNutX7tBopakV4oHlF
 lO+gH8G8bG4RKWpXg69YPTxlpCLENnOSeczFRxfq8t7XGeLWgl6DwSoEraXqM+otufPKuLE+yim
 sqJtmaJrNIOMTRrAbmay10zk77L3toRwF+B+s9hq8xbD2Oy0SWeEE0y6fX0Wx53R48UZ1oSVwBe
 j6C1YT7jGBg4zsv7VxmHGxzFpoZ5LhZ9HfqArHltkUkGg0CbuIfRvPBPoLEdiH0a8c5uVvI9Y9d
 /ScOr6SgrmP4VqqDUOsChAatwig6KzxLd4/DVF8UkTYmMiuTJudmrXq1+hwbxEy0Tlrw38vPcJs
 RbUjNmAyprLlebyKZpYX4hx3y2Z+3s+43julHwZN6l+hNGjVL3kjzxPY/6vefr/YYrn8u7hm4E0
 od6k19LyLQqkDZYSMpg==
X-Authority-Analysis: v=2.4 cv=N6wk1m9B c=1 sm=1 tr=0 ts=69486865 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=BO5FrL0GhfMJBgYdYhUA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512210204

From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>

Introduce a new struct type where the optional arguments passed to
of_map_id() are Currently embedded as of_phandle_args struct.
Subsequent patches add additional arguments to the struct that the
caller expects to be filled of_map_id().

Suggested-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/iommu/of_iommu.c              |  5 +++-
 drivers/of/base.c                     | 39 ++++++++++++++-------------
 drivers/pci/controller/dwc/pci-imx6.c |  6 ++++-
 drivers/pci/controller/pcie-apple.c   |  5 +++-
 drivers/xen/grant-dma-ops.c           |  4 ++-
 include/linux/of.h                    | 24 ++++++++++++-----
 6 files changed, 53 insertions(+), 30 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index a511ecf21fcd..74779b77ba13 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -46,9 +46,12 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 				     const u32 *id)
 {
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
+	struct of_map_id_arg arg = {
+		.map_args = iommu_spec,
+	};
 	int err;
 
-	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
+	err = of_map_iommu_id(master_np, *id, &arg);
 	if (err)
 		return err;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7043acd971a0..4dca3d37a34b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2051,8 +2051,11 @@ int of_find_last_cache_level(unsigned int cpu)
  * @id: device ID to map.
  * @map_name: property name of the map to use.
  * @map_mask_name: optional property name of the mask to use.
- * @target: optional pointer to a target device node.
- * @id_out: optional pointer to receive the translated ID.
+ * @arg: contains the optional params, wrapped in a struct of_phandle_args,
+ *	which includes:
+ *	np: pointer to the target device node
+ *	args_count: number of arguments
+ *	args[]: array to receive the translated ID(s).
  *
  * Given a device ID, look up the appropriate implementation-defined
  * platform ID and/or the target device which receives transactions on that
@@ -2066,21 +2069,21 @@ int of_find_last_cache_level(unsigned int cpu)
  */
 int of_map_id(const struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
-	       struct device_node **target, u32 *id_out)
+	       struct of_map_id_arg *arg)
 {
 	u32 map_mask, masked_id;
 	int map_len;
 	const __be32 *map = NULL;
 
-	if (!np || !map_name || (!target && !id_out))
+	if (!np || !map_name || !arg || (!arg->map_args.np && !arg->map_args.args))
 		return -EINVAL;
 
 	map = of_get_property(np, map_name, &map_len);
 	if (!map) {
-		if (target)
+		if (arg->map_args.np)
 			return -ENODEV;
 		/* Otherwise, no map implies no translation */
-		*id_out = id;
+		*arg->map_args.args = id;
 		return 0;
 	}
 
@@ -2122,18 +2125,16 @@ int of_map_id(const struct device_node *np, u32 id,
 		if (!phandle_node)
 			return -ENODEV;
 
-		if (target) {
-			if (*target)
-				of_node_put(phandle_node);
-			else
-				*target = phandle_node;
+		if (arg->map_args.np)
+			of_node_put(phandle_node);
+		else
+			arg->map_args.np = phandle_node;
 
-			if (*target != phandle_node)
-				continue;
-		}
+		if (arg->map_args.np != phandle_node)
+			continue;
 
-		if (id_out)
-			*id_out = masked_id - id_base + out_base;
+		if (arg->map_args.args)
+			*arg->map_args.args = masked_id - id_base + out_base;
 
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
 			np, map_name, map_mask, id_base, out_base,
@@ -2142,11 +2143,11 @@ int of_map_id(const struct device_node *np, u32 id,
 	}
 
 	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
-		id, target && *target ? *target : NULL);
+		id, arg->map_args.np  ? arg->map_args.np : NULL);
 
 	/* Bypasses translation */
-	if (id_out)
-		*id_out = id;
+	if (arg->map_args.args)
+		*arg->map_args.args = id;
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index c8da2e88e9c6..8dcdde2efb8a 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1101,12 +1101,16 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 {
 	struct device *dev = imx_pcie->pci->dev;
 	struct device_node *target;
+	struct of_map_id_arg arg = {};
 	u32 sid_i, sid_m;
 	int err_i, err_m;
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
+
+	arg.map_args.np = target;
+	arg.map_args.args[0] = sid_i;
+	err_i = of_map_iommu_id(dev->of_node, rid, &arg);
 	if (target) {
 		of_node_put(target);
 	} else {
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index ce21728d6e51..dea4a38cb4bb 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -782,6 +782,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 {
 	u32 sid, rid = pci_dev_id(pdev);
 	struct apple_pcie_port *port;
+	struct of_map_id_arg arg = {};
 	int idx, err;
 
 	port = apple_pcie_get_port(pdev);
@@ -791,7 +792,9 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 	dev_dbg(&pdev->dev, "added to bus %s, index %d\n",
 		pci_name(pdev->bus->self), port->idx);
 
-	err = of_map_iommu_id(port->pcie->dev->of_node, rid, NULL, &sid);
+	arg.map_args.np = NULL;
+	arg.map_args.args[0] = sid;
+	err = of_map_iommu_id(port->pcie->dev->of_node, rid, &arg);
 	if (err)
 		return err;
 
diff --git a/drivers/xen/grant-dma-ops.c b/drivers/xen/grant-dma-ops.c
index b661f9c1f4fe..d455104de159 100644
--- a/drivers/xen/grant-dma-ops.c
+++ b/drivers/xen/grant-dma-ops.c
@@ -319,9 +319,11 @@ static int xen_dt_grant_init_backend_domid(struct device *dev,
 
 	if (dev_is_pci(dev)) {
 		struct pci_dev *pdev = to_pci_dev(dev);
+		struct of_map_id_arg arg = {};
 		u32 rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
 
-		if (of_map_iommu_id(np, rid, &iommu_spec.np, iommu_spec.args)) {
+		arg.map_args = iommu_spec;
+		if (of_map_iommu_id(np, rid, &arg)) {
 			dev_dbg(dev, "Cannot translate ID\n");
 			return -ESRCH;
 		}
diff --git a/include/linux/of.h b/include/linux/of.h
index 8cd486d89da2..0b0d545b80a3 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -74,6 +74,10 @@ struct of_phandle_args {
 	uint32_t args[MAX_PHANDLE_ARGS];
 };
 
+struct of_map_id_arg {
+	struct of_phandle_args map_args;
+};
+
 struct of_phandle_iterator {
 	/* Common iterator information */
 	const char *cells_name;
@@ -458,7 +462,7 @@ bool of_console_check(const struct device_node *dn, char *name, int index);
 
 int of_map_id(const struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
-	       struct device_node **target, u32 *id_out);
+	       struct of_map_id_arg *arg);
 
 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
 
@@ -907,7 +911,7 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
 
 static inline int of_map_id(const struct device_node *np, u32 id,
 			     const char *map_name, const char *map_mask_name,
-			     struct device_node **target, u32 *id_out)
+			     struct of_map_id_arg *arg)
 {
 	return -EINVAL;
 }
@@ -1436,17 +1440,23 @@ static inline int of_property_read_s32(const struct device_node *np,
 }
 
 static inline int of_map_iommu_id(const struct device_node *np, u32 id,
-				  struct device_node **target, u32 *id_out)
+				  struct of_map_id_arg *arg)
 {
-	return of_map_id(np, id, "iommu-map", "iommu-map-mask",
-			 target, id_out);
+	return of_map_id(np, id, "iommu-map", "iommu-map-mask", arg);
 }
 
 static inline int of_map_msi_id(const struct device_node *np, u32 id,
 				struct device_node **target, u32 *id_out)
 {
-	return of_map_id(np, id, "msi-map", "msi-map-mask",
-			 target, id_out);
+	struct of_map_id_arg arg = {
+		.map_args = {
+			.np = *target,
+			.args_count = 1,
+			.args = { *id_out },
+		},
+	};
+
+	return of_map_id(np, id, "msi-map", "msi-map-mask", &arg);
 }
 
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
-- 
2.34.1


