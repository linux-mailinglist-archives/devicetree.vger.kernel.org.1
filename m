Return-Path: <devicetree+bounces-21176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A86802AC5
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 05:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 687301C2099E
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 04:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9221B468B;
	Mon,  4 Dec 2023 04:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="SIR3yFUz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74FB2D7;
	Sun,  3 Dec 2023 20:14:32 -0800 (PST)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B43TDCM032692;
	Mon, 4 Dec 2023 04:14:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=DGp7GypliVESVnbAw1V5x8IdWqqOnrDZe/rDVpEhIE0=;
 b=SIR3yFUzuuLki5ZItt2TiT3CpU4ziULwN0ZaDUf7ugmI8Vl02Fr2SNVgZXhWPaTbJpSF
 d2rRAvaG96HIUCT0fwnlqfpZGyZni9BFJzd0AFzdiyIj+RnjNdjxS7z5BU0A2lnT5h18
 ir8sO6w9qA7Cx7Wd5LhMoK8KeYkRhsxp8+8+LbqEI87UTeD21HwB23C6BmAR7GUtTGm7
 M1Hp8xBzwsJmr97QZ1POlnPrI+GTWJU/nurgiPJxpHiEuPuInYvQYbvQUzBleGyuPB54
 S7zKq//WzQmRNJ1O4G8Y1qNwVh1oSnPi0tRRorrfY1oXcPa68VYHVfc8nL2gPcp//Yvy vw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uqv672wk1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 04 Dec 2023 04:14:05 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3B44E43a001538
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 4 Dec 2023 04:14:04 GMT
Received: from hu-obabatun-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Sun, 3 Dec 2023 20:14:01 -0800
From: Oreoluwa Babatunde <quic_obabatun@quicinc.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <robh+dt@kernel.org>,
        <frowand.list@gmail.com>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <kernel@quicinc.com>, Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Subject: [RFC PATCH v2 4/6] of: reserved_mem: Add code to use unflattened DT for reserved_mem nodes
Date: Sun, 3 Dec 2023 20:13:37 -0800
Message-ID: <20231204041339.9902-5-quic_obabatun@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231204041339.9902-1-quic_obabatun@quicinc.com>
References: <20231204041339.9902-1-quic_obabatun@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: BpblN0kxGe719fkD9M5twh5uFLLEWlhS
X-Proofpoint-GUID: BpblN0kxGe719fkD9M5twh5uFLLEWlhS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-04_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 clxscore=1015 mlxscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxlogscore=508 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311060000 definitions=main-2312040029

The unflattened devicetree APIs are available to be used right after
paging_init() runs. Therefore, use the unflattened devicetree APIs to
process the reserved memory regions from this point.

Using the unflattened devicetree APIs is more efficient than using the
flattened devicetree APIs.

Signed-off-by: Oreoluwa Babatunde <quic_obabatun@quicinc.com>
---
 drivers/of/fdt.c                | 51 +--------------------
 drivers/of/of_private.h         |  4 +-
 drivers/of/of_reserved_mem.c    | 79 +++++++++++++++++++++++++--------
 include/linux/of_fdt.h          |  1 -
 include/linux/of_reserved_mem.h |  2 +-
 kernel/dma/coherent.c           |  4 +-
 kernel/dma/contiguous.c         |  8 ++--
 kernel/dma/swiotlb.c            | 10 ++---
 8 files changed, 76 insertions(+), 83 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 46adce306bbd..12769dd53c34 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -558,55 +558,6 @@ static int __init __reserved_mem_check_root(unsigned long node)
 	return 0;
 }
 
-/*
- * Save the reserved_mem reg nodes in the reserved_mem array
- */
-void __init fdt_scan_reserved_mem_reg_nodes(void)
-
-{
-	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
-	const void *fdt = initial_boot_params;
-	phys_addr_t base, size;
-	const __be32 *prop;
-	int node, child;
-	int len;
-
-	node = fdt_path_offset(fdt, "/reserved-memory");
-	if (node < 0) {
-		pr_err("Reserved memory: Did not find reserved-memory node\n");
-		return;
-	}
-
-	if (__reserved_mem_check_root(node) != 0) {
-		pr_err("Reserved memory: unsupported node format, ignoring\n");
-		return;
-	}
-
-	fdt_for_each_subnode(child, fdt, node) {
-		const char *uname;
-
-		prop = of_get_flat_dt_prop(child, "reg", &len);
-		if (!prop)
-			continue;
-
-		if (!of_fdt_device_is_available(fdt, child))
-			continue;
-
-		uname = fdt_get_name(fdt, child, NULL);
-		if (len && len % t_len != 0) {
-			pr_err("Reserved memory: invalid reg property in '%s', skipping node.\n",
-			       uname);
-			continue;
-		}
-
-		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
-		size = dt_mem_next_cell(dt_root_size_cells, &prop);
-
-		if (size)
-			fdt_reserved_mem_save_node(child, uname, base, size);
-	}
-}
-
 /*
  * fdt_scan_reserved_mem() - scan a single FDT node for reserved memory.
  */
@@ -1393,7 +1344,7 @@ void __init unflatten_device_tree(void)
 	unittest_unflatten_overlay_base();
 
 	/*Initialize the reserved_mem regions*/
-	fdt_init_reserved_mem();
+	init_reserved_mem();
 }
 
 /**
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index 57694a704b00..575e2b4119e0 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -176,8 +176,8 @@ static inline struct device_node *__of_get_dma_parent(const struct device_node *
 }
 #endif
 
-void fdt_init_reserved_mem(void);
-void fdt_reserved_mem_save_node(unsigned long node, const char *uname,
+void init_reserved_mem(void);
+void dt_reserved_mem_save_node(struct device_node *node, const char *uname,
 			       phys_addr_t base, phys_addr_t size);
 
 #endif /* _LINUX_OF_PRIVATE_H */
diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index d62f1956024c..2ef9edcb8c93 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -55,9 +55,9 @@ static int __init early_init_dt_alloc_reserved_memory_arch(phys_addr_t size,
 }
 
 /*
- * fdt_reserved_mem_save_node() - save fdt node for second pass initialization
+ * dt_reserved_mem_save_node() - save dt node for second pass initialization
  */
-void __init fdt_reserved_mem_save_node(unsigned long node, const char *uname,
+void __init dt_reserved_mem_save_node(struct device_node *node, const char *uname,
 				      phys_addr_t base, phys_addr_t size)
 {
 	struct reserved_mem *rmem = &reserved_mem[reserved_mem_count];
@@ -67,7 +67,7 @@ void __init fdt_reserved_mem_save_node(unsigned long node, const char *uname,
 		return;
 	}
 
-	rmem->fdt_node = node;
+	rmem->dev_node = node;
 	rmem->name = uname;
 	rmem->base = base;
 	rmem->size = size;
@@ -76,6 +76,54 @@ void __init fdt_reserved_mem_save_node(unsigned long node, const char *uname,
 	return;
 }
 
+/*
+ * Save the reserved_mem reg nodes in the reserved_mem array
+ */
+static void __init scan_reserved_mem_reg_nodes(void)
+
+{
+	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
+	struct device_node *node, *child;
+	phys_addr_t base, size;
+	const __be32 *prop;
+	int len;
+
+	node = of_find_node_by_path("/reserved-memory");
+	if (node < 0) {
+		pr_err("Reserved memory: Did not find reserved-memory node\n");
+		return;
+	}
+
+	for_each_child_of_node(node, child) {
+		const char *uname;
+		struct reserved_mem *rmem;
+
+		if (!of_device_is_available(child))
+			continue;
+
+		prop = of_get_property(child, "reg", &len);
+		if (!prop) {
+			rmem = of_reserved_mem_lookup(child);
+			if (rmem)
+				rmem->dev_node = child;
+			continue;
+		}
+
+		uname = of_node_full_name(child);
+		if (len && len % t_len != 0) {
+			pr_err("Reserved memory: invalid reg property in '%s', skipping node.\n",
+			       uname);
+			continue;
+		}
+
+		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
+		size = dt_mem_next_cell(dt_root_size_cells, &prop);
+
+		if (size)
+			dt_reserved_mem_save_node(child, uname, base, size);
+	}
+}
+
 /*
  * __reserved_mem_alloc_in_range() - allocate reserved memory described with
  *	'alloc-ranges'. Choose bottom-up/top-down depending on nearby existing
@@ -210,7 +258,7 @@ int __init __reserved_mem_alloc_size(unsigned long node, const char *uname)
 		       uname, (unsigned long)(size / SZ_1M));
 		return -ENOMEM;
 	}
-	fdt_reserved_mem_save_node(node, uname, base, size);
+	dt_reserved_mem_save_node(NULL, uname, base, size);
 	return 0;
 }
 
@@ -230,7 +278,7 @@ static int __init __reserved_mem_init_node(struct reserved_mem *rmem)
 		reservedmem_of_init_fn initfn = i->data;
 		const char *compat = i->compatible;
 
-		if (!of_flat_dt_is_compatible(rmem->fdt_node, compat))
+		if (!of_device_is_compatible(rmem->dev_node, compat))
 			continue;
 
 		ret = initfn(rmem);
@@ -263,11 +311,6 @@ static int __init __rmem_cmp(const void *a, const void *b)
 	if (ra->size > rb->size)
 		return 1;
 
-	if (ra->fdt_node < rb->fdt_node)
-		return -1;
-	if (ra->fdt_node > rb->fdt_node)
-		return 1;
-
 	return 0;
 }
 
@@ -299,29 +342,29 @@ static void __init __rmem_check_for_overlap(void)
 }
 
 /**
- * fdt_init_reserved_mem() - allocate and init all saved reserved memory regions
+ * init_reserved_mem() - allocate and init all saved reserved memory regions
  */
-void __init fdt_init_reserved_mem(void)
+void __init init_reserved_mem(void)
 {
 	int i;
 
-	fdt_scan_reserved_mem_reg_nodes();
+	scan_reserved_mem_reg_nodes();
 
 	/* check for overlapping reserved regions */
 	__rmem_check_for_overlap();
 
 	for (i = 0; i < reserved_mem_count; i++) {
 		struct reserved_mem *rmem = &reserved_mem[i];
-		unsigned long node = rmem->fdt_node;
+		struct device_node *node = rmem->dev_node;
 		int len;
 		const __be32 *prop;
 		int err = 0;
 		bool nomap;
 
-		nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
-		prop = of_get_flat_dt_prop(node, "phandle", &len);
+		nomap = of_get_property(node, "no-map", NULL) != NULL;
+		prop = of_get_property(node, "phandle", &len);
 		if (!prop)
-			prop = of_get_flat_dt_prop(node, "linux,phandle", &len);
+			prop = of_get_property(node, "linux,phandle", &len);
 		if (prop)
 			rmem->phandle = of_read_number(prop, len/4);
 
@@ -337,7 +380,7 @@ void __init fdt_init_reserved_mem(void)
 		} else {
 			phys_addr_t end = rmem->base + rmem->size - 1;
 			bool reusable =
-				(of_get_flat_dt_prop(node, "reusable", NULL)) != NULL;
+				(of_get_property(node, "reusable", NULL)) != NULL;
 
 			pr_info("%pa..%pa (%lu KiB) %s %s %s\n",
 				&rmem->base, &end, (unsigned long)(rmem->size / SZ_1K),
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index 7b2a5d93d719..d69ad5bb1eb1 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -73,7 +73,6 @@ extern int early_init_dt_scan_root(void);
 extern bool early_init_dt_scan(void *params);
 extern bool early_init_dt_verify(void *params);
 extern void early_init_dt_scan_nodes(void);
-extern void fdt_scan_reserved_mem_reg_nodes(void);
 
 extern const char *of_flat_dt_get_machine_name(void);
 extern const void *of_flat_dt_match_machine(const void *default_match,
diff --git a/include/linux/of_reserved_mem.h b/include/linux/of_reserved_mem.h
index dc13bcd04b12..2b205ce6beb9 100644
--- a/include/linux/of_reserved_mem.h
+++ b/include/linux/of_reserved_mem.h
@@ -10,7 +10,7 @@ struct reserved_mem_ops;
 
 struct reserved_mem {
 	const char			*name;
-	unsigned long			fdt_node;
+	struct device_node		*dev_node;
 	unsigned long			phandle;
 	const struct reserved_mem_ops	*ops;
 	phys_addr_t			base;
diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
index c21abc77c53e..3eba9678dc33 100644
--- a/kernel/dma/coherent.c
+++ b/kernel/dma/coherent.c
@@ -360,9 +360,9 @@ static const struct reserved_mem_ops rmem_dma_ops = {
 
 static int __init rmem_dma_setup(struct reserved_mem *rmem)
 {
-	unsigned long node = rmem->fdt_node;
+	struct device_node *node = rmem->dev_node;
 
-	if (of_get_flat_dt_prop(node, "reusable", NULL))
+	if (of_get_property(node, "reusable", NULL))
 		return -EINVAL;
 
 #ifdef CONFIG_ARM
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index f005c66f378c..b54cf128a9d9 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -462,8 +462,8 @@ static const struct reserved_mem_ops rmem_cma_ops = {
 
 static int __init rmem_cma_setup(struct reserved_mem *rmem)
 {
-	unsigned long node = rmem->fdt_node;
-	bool default_cma = of_get_flat_dt_prop(node, "linux,cma-default", NULL);
+	struct device_node *node = rmem->dev_node;
+	bool default_cma = of_get_property(node, "linux,cma-default", NULL);
 	struct cma *cma;
 	int err;
 
@@ -473,8 +473,8 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
 		return -EBUSY;
 	}
 
-	if (!of_get_flat_dt_prop(node, "reusable", NULL) ||
-	    of_get_flat_dt_prop(node, "no-map", NULL))
+	if (!of_get_property(node, "reusable", NULL) ||
+	    of_get_property(node, "no-map", NULL))
 		return -EINVAL;
 
 	if (!IS_ALIGNED(rmem->base | rmem->size, CMA_MIN_ALIGNMENT_BYTES)) {
diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 33d942615be5..14840a58a6e6 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -1709,12 +1709,12 @@ static const struct reserved_mem_ops rmem_swiotlb_ops = {
 
 static int __init rmem_swiotlb_setup(struct reserved_mem *rmem)
 {
-	unsigned long node = rmem->fdt_node;
+	struct device_node *node = rmem->dev_node;
 
-	if (of_get_flat_dt_prop(node, "reusable", NULL) ||
-	    of_get_flat_dt_prop(node, "linux,cma-default", NULL) ||
-	    of_get_flat_dt_prop(node, "linux,dma-default", NULL) ||
-	    of_get_flat_dt_prop(node, "no-map", NULL))
+	if (of_get_property(node, "reusable", NULL) ||
+	    of_get_property(node, "linux,cma-default", NULL) ||
+	    of_get_property(node, "linux,dma-default", NULL) ||
+	    of_get_property(node, "no-map", NULL))
 		return -EINVAL;
 
 	rmem->ops = &rmem_swiotlb_ops;
-- 
2.17.1


