Return-Path: <devicetree+bounces-245495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FCFCB1796
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF82A30A1331
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F04155322;
	Wed, 10 Dec 2025 00:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Andc+qDx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TyBkeJME"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDEC150997
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765326050; cv=none; b=GYFVRn6kQNN/q/CPIQhYYeW13etOa+7Z5p26e3N2uSQcIAo7iJCrUnXihF2RwQl/Elk9UznkVw+Z09YoOtVqVKLJ06twCx3slf5OXsxOXDE83hWABatIYXzvHEOSyqarf91At4P7secAJjpF0kva52d84nBfzUkM6FFdgCMESwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765326050; c=relaxed/simple;
	bh=XUl+IMz7uUvH+MqMl2CaE7dyPDinPOet1+hqUWGDeMA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QeqyVicd2QNDTSdzxYzwIIO3T8+gLlzFc5nhOWVJXB4w36itgtaH9WBiiEcoNEpGi1hYd5SG+jT/qFMki29cea5ALjdRR6t6n3OQCQnDpAg8DqI2Kd8sWW8SxKwhQYQFauhPmgonlIis5vYTgdGR4yoQtzEGLTmhd/VVBHVtHAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Andc+qDx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TyBkeJME; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9NIU1a1467482
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:20:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iHBwA4IfSbfg57hhtkGLsS9PBLgMplwjUcX
	E/vuBD94=; b=Andc+qDxHSt0WG+VzJdUdL+Fg/tBG89vPh8M5YeWLUE9dxrtnQm
	hCYQB2GhvmoyKChwoKWoL1PXDQjU3XYeGx230eVf2whf2R8R90jGAc21bmJru4ZV
	YnZm9BwxfvxIo9uMmFzx8B0ymQhdvWtMtnaOd74HIGlZIpDF1QwYh+gLNni6pHZV
	ah+bqFu+uCKIKCssGpAmsXyFC7/Kxtpy9Y+NN+vVVlSJP5iEFg2VUqax+Nb/NyXj
	pHc8qnC9ZYIrM+OXr0CWPK71NkECp8NNgvsXD53pmQ2cc6qW19TKqs5OHp25u0m1
	kQX8DtQg77Co7XKf5b1XLYOiA2ju7OL2B0w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvn4g9yr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:20:47 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bc240cdb249so6128316a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 16:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765326046; x=1765930846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iHBwA4IfSbfg57hhtkGLsS9PBLgMplwjUcXE/vuBD94=;
        b=TyBkeJMEflxbBWdeqxp7n4UiKvWfPvpYuHAbAgJNNzHYMVBAkNnCULH+p4QlPhhI5m
         c5DbrAOvmi9KrZ4ufiz1kGMUfB5A77NMS8FwMyZjYVXbZ0zC+IKTTD73JJznGwjCqz9Q
         eGv/dEuEWquUFS6/Pw4g3UB/raPbZLU+EI6GRIxlmd+NKhmFbpQd2Sykxg1J+7m5TjGw
         PXgMO18EnYmjLGfh3nOdPkdjxIt4NcGcasZ+CApqwRSAFiVbD3u5vdzorXFiQ++hN6N2
         FuRNG/XNgBRFb/xyFHC9cZ18m6w+61AtV0Mj3XN5rV/Z8Zi7hCdlbwJGwdVB4AcdYtMO
         0bxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765326046; x=1765930846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHBwA4IfSbfg57hhtkGLsS9PBLgMplwjUcXE/vuBD94=;
        b=atQ8rnipbtXjven8MQqSiCGitujQveQ5Xy7cRfoowtrQYgpj+IWvN3s+4+ywKZGpak
         SZmSOZDrBZOSO8R52gkYUe/N7YjmGvIoVRMkkHj/oAjX6hPJlFww9UWpqJ7B8WZIujvL
         MkT8DYCixFAJhe4H7dU4VRxGONqzjjBcRbfFpOTvAyURabF8xe7ZuiQVZYs+ui4rtyQZ
         MPECKQO2CAMt0MdLUKM7xh5bzZiCH3OIzn9YIyPdpMf88kldGdgp+9VJsbQBEfLOFyYG
         oYdWfdwJAu9A3ldfJD09WnbolmIZU5JtuNEhOREZTqKQ2D1+CuUi4yYuDWTr8Gzgx4jd
         At4A==
X-Forwarded-Encrypted: i=1; AJvYcCUM49j/OxoxQxSBWQswIqd9sCu8uAYrp1q0Om1V7Lqr1LBVNPs+hrYOo9JKawj5JSckxgPpysk8dwFz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyaf24vRnBjJQKLhoaTrKqO9b7Ms2uAjVzHRS5v5RUMO48I0CKA
	o0e8M1QVJddHW818V+uOwlaU0Sc5anWChocKXpKJFe1SP4zGUMWcBStlDUJCnOJg68DEZRcmlxn
	cnu39VNk7CgbXu+5HbKI0DWnLqHwztalF0I3T4M3QXj1q3806PYCWUjBGdyFzl/iy
X-Gm-Gg: ASbGncuTRjFPu0eYsLHvCyUs1XpO2g1TxNNLbN3+0TzLYTv6jbKnZfkxiKjvB+/w697
	84SGagZpIZxpAWPfdCM5DvzwIa8bJIoby/Np/3JR0fgFYHC4ty4wlE5lTJMiF6bZnwNc8bWT/HV
	TePK4Z8b0SUj/kYFRB0/jFJvT6KsUqmT7UNz+y0qo/si2PmLJfFRnnUPiK7ZOA84YEml+jMVGtG
	PhL+0Ux4hEg2pw9417Iina7/rrQykfZnKdo0pymZNRRcdKAThRL7JzIGQERRquiYX5DHuwoIdmY
	PrP92K2aGE4+9+uTu9nlt4K/NbyR4lTy4066ItN9K3N3ABem/zDhW6waMteC0xgyMB2HgyVoKaI
	u5vhIyYSZMtvgxeuG3s9hBsUTMx8dBbkwpqFL/cnOGOySRjoUqMRdmt9JFXV4tfapTLpmLjXW
X-Received: by 2002:a05:7022:62b:b0:11b:ade6:45a7 with SMTP id a92af1059eb24-11f2966a03emr425000c88.1.1765326046083;
        Tue, 09 Dec 2025 16:20:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcLj2nkg82c0xX0uwbx/GB/IwXsGaN8dBi7OsSisu2MU6g5avYy1Et2uoitaYLu9zbKsRD9w==
X-Received: by 2002:a05:7022:62b:b0:11b:ade6:45a7 with SMTP id a92af1059eb24-11f2966a03emr424972c88.1.1765326045477;
        Tue, 09 Dec 2025 16:20:45 -0800 (PST)
Received: from hu-obabatun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm79775745c88.6.2025.12.09.16.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 16:20:45 -0800 (PST)
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
To: robh@kernel.org, m.szyprowski@samsung.com, ye.li@oss.nxp.com
Cc: oreoluwa.babatunde@oss.qualcomm.com, kernel@oss.qualcomm.com,
        saravanak@google.com, akpm@linux-foundation.org, david@redhat.com,
        lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
        rppt@kernel.org, surenb@google.com, mhocko@suse.com,
        robin.murphy@arm.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org,
        iommu@lists.linux.dev, quic_c_gdjako@quicinc.com
Subject: [PATCH] of: reserved_mem: Allow reserved_mem framework detect "cma=" kernel param
Date: Tue,  9 Dec 2025 16:20:27 -0800
Message-Id: <20251210002027.1171519-1-oreoluwa.babatunde@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAwMSBTYWx0ZWRfX0X+o3gOFIl2s
 TTqfzEhfffRVmrhWDHC/69wFAgG+L9gUKRBRJ92Yc1tSfPkPBDsDHLeonnPcGjiREvB6d0S0H1k
 OHkZXTlewq/2bzspHB5wOGR7gNk/YZXZpAwEXPn5o7BK/+EEKWZ1rKIAm2i6eNfvD3jn+FdRyup
 0rjQ4aVQblwBLNNKqPJ2qTXyr67FSokp0ruOwdjRx67tYgFV42iedrvNbk6j4Rk80vzkubGMRWo
 9j/9ZF0h8b1NFxyBb+Yuh3GBTfL/POPgNv9x+QFWVo9Pf5+Q1CPI384B4e90xfBFb9EbtGbYPQM
 onLs93ZwYK23TR8ZXKjgk56/ayn8ZWrNrC48PaBj1YnAyBRN0WwID78TIGfqnk2gxavLghdOd0n
 TneuSpUptQ/mC6t/Mp9KAxRL/4/FfQ==
X-Proofpoint-GUID: 5GqP-_ttKQJeMA3kPCFXfqtU6dQyPgO3
X-Authority-Analysis: v=2.4 cv=EarFgfmC c=1 sm=1 tr=0 ts=6938bcdf cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DS4snQ7NONFh9zYVhi8A:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: 5GqP-_ttKQJeMA3kPCFXfqtU6dQyPgO3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100001

When initializing the default cma region, the "cma=" kernel parameter
takes priority over a DT defined linux,cma-default region. Hence, give
the reserved_mem framework the ability to detect this so that the DT
defined cma region can skip initialization accordingly.

Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
---
 drivers/of/of_reserved_mem.c | 19 +++++++++++++++++--
 include/linux/cma.h          |  1 +
 kernel/dma/contiguous.c      | 16 ++++++++++------
 3 files changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 2e9ea751ed2d..bef68a4916b5 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -158,7 +158,7 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 	phys_addr_t base, size;
 	int len;
 	const __be32 *prop;
-	bool nomap;
+	bool nomap, default_cma;
 
 	prop = of_get_flat_dt_prop(node, "reg", &len);
 	if (!prop)
@@ -171,6 +171,12 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 	}
 
 	nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
+	default_cma = of_get_flat_dt_prop(node, "linux,cma-default", NULL);
+
+	if (default_cma && cma_skip_dt_default_reserved_mem()) {
+		pr_err("Skipping dt linux,cma-default for \"cma=\" kernel param.\n");
+		return -EINVAL;
+	}
 
 	while (len >= t_len) {
 		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
@@ -256,12 +262,15 @@ void __init fdt_scan_reserved_mem_reg_nodes(void)
 
 	fdt_for_each_subnode(child, fdt, node) {
 		const char *uname;
+		bool default_cma = of_get_flat_dt_prop(child, "linux,cma-default", NULL);
 
 		prop = of_get_flat_dt_prop(child, "reg", &len);
 		if (!prop)
 			continue;
 		if (!of_fdt_device_is_available(fdt, child))
 			continue;
+		if (default_cma && cma_skip_dt_default_reserved_mem())
+			continue;
 
 		uname = fdt_get_name(fdt, child, NULL);
 		if (len && len % t_len != 0) {
@@ -406,7 +415,7 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 	phys_addr_t base = 0, align = 0, size;
 	int len;
 	const __be32 *prop;
-	bool nomap;
+	bool nomap, default_cma;
 	int ret;
 
 	prop = of_get_flat_dt_prop(node, "size", &len);
@@ -430,6 +439,12 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 	}
 
 	nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
+	default_cma = of_get_flat_dt_prop(node, "linux,cma-default", NULL);
+
+	if (default_cma && cma_skip_dt_default_reserved_mem()) {
+		pr_err("Skipping dt linux,cma-default for \"cma=\" kernel param.\n");
+		return -EINVAL;
+	}
 
 	/* Need adjust the alignment to satisfy the CMA requirement */
 	if (IS_ENABLED(CONFIG_CMA)
diff --git a/include/linux/cma.h b/include/linux/cma.h
index 62d9c1cf6326..3d3047029950 100644
--- a/include/linux/cma.h
+++ b/include/linux/cma.h
@@ -47,6 +47,7 @@ extern int cma_init_reserved_mem(phys_addr_t base, phys_addr_t size,
 					unsigned int order_per_bit,
 					const char *name,
 					struct cma **res_cma);
+extern bool cma_skip_dt_default_reserved_mem(void);
 extern struct page *cma_alloc(struct cma *cma, unsigned long count, unsigned int align,
 			      bool no_warn);
 extern bool cma_pages_valid(struct cma *cma, const struct page *pages, unsigned long count);
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index d9b9dcba6ff7..9071c08650e3 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -90,6 +90,16 @@ static int __init early_cma(char *p)
 }
 early_param("cma", early_cma);
 
+/*
+ * cma_skip_dt_default_reserved_mem - This is called from the
+ * reserved_mem framework to detect if the default cma region is being
+ * set by the "cma=" kernel parameter.
+ */
+bool __init cma_skip_dt_default_reserved_mem(void)
+{
+	return size_cmdline != -1;
+}
+
 #ifdef CONFIG_DMA_NUMA_CMA
 
 static struct cma *dma_contiguous_numa_area[MAX_NUMNODES];
@@ -463,12 +473,6 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
 	struct cma *cma;
 	int err;
 
-	if (size_cmdline != -1 && default_cma) {
-		pr_info("Reserved memory: bypass %s node, using cmdline CMA params instead\n",
-			rmem->name);
-		return -EBUSY;
-	}
-
 	if (!of_get_flat_dt_prop(node, "reusable", NULL) ||
 	    of_get_flat_dt_prop(node, "no-map", NULL))
 		return -EINVAL;
-- 
2.34.1


