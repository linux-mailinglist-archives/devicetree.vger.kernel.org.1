Return-Path: <devicetree+bounces-21179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A6E802ACD
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 05:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22427B20980
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 04:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C76468B;
	Mon,  4 Dec 2023 04:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eeB5IzXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13F871B2;
	Sun,  3 Dec 2023 20:14:39 -0800 (PST)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B4423Wo013923;
	Mon, 4 Dec 2023 04:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=yQL2YJJVy58jFgjIEOr/uJ8lGherBllTmSyKC9ZlwS4=;
 b=eeB5IzXGYVq4cSJ2YpwFoZ20hckOd7zne1eApX4ZVwwsnfoZA+DVqZGoSUHRE9JDzaj9
 apP7Er9MsUibLUESw/WaNJH9ODFTmQIadCBVYzW5P31EntwIGnlaWG4Rz2+KWzhjfOE3
 FmD53TY3eK128YNxfBktMnmFLhp+rR2i+2i1sT394CCTCA3QtAi+j8/zg06AJN4mLd4Z
 8ZRSKo5IMH/jEqlVj51OXN5FYm/vWoMVUGU8FLWlovLTy8f++B+TBjd3RV3xEMwSjC8A
 uTef6YQpilnKhQqYlb7ditm1tNkBRo/E8iYfVN/2jETcUpqjatSB0eJih8NfuZPh5dGd Lw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uqvp12w3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 04 Dec 2023 04:14:03 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3B44E24Y026255
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 4 Dec 2023 04:14:02 GMT
Received: from hu-obabatun-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Sun, 3 Dec 2023 20:13:58 -0800
From: Oreoluwa Babatunde <quic_obabatun@quicinc.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <robh+dt@kernel.org>,
        <frowand.list@gmail.com>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <kernel@quicinc.com>, Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Subject: [RFC PATCH v2 2/6] of: reserved_mem: Swicth call to unflatten_device_tree() to after paging_init()
Date: Sun, 3 Dec 2023 20:13:35 -0800
Message-ID: <20231204041339.9902-3-quic_obabatun@quicinc.com>
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
X-Proofpoint-GUID: BJs88xF2E2BCiNw5c2Z6esPYLn8k0GMV
X-Proofpoint-ORIG-GUID: BJs88xF2E2BCiNw5c2Z6esPYLn8k0GMV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-04_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=873 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2312040029

Switch call to unflatten_device_tree() to after paging_init() on other
archs to follow new order in which the reserved_mem regions are
processed.

Signed-off-by: Oreoluwa Babatunde <quic_obabatun@quicinc.com>
---
 arch/loongarch/kernel/setup.c      | 2 +-
 arch/mips/kernel/setup.c           | 3 ++-
 arch/nios2/kernel/setup.c          | 4 ++--
 arch/openrisc/kernel/setup.c       | 4 ++--
 arch/powerpc/kernel/setup-common.c | 3 +++
 arch/sh/kernel/setup.c             | 5 ++---
 arch/um/kernel/dtb.c               | 1 -
 arch/um/kernel/um_arch.c           | 2 ++
 arch/xtensa/kernel/setup.c         | 4 +++-
 9 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/arch/loongarch/kernel/setup.c b/arch/loongarch/kernel/setup.c
index d183a745fb85..a01051b0f9e0 100644
--- a/arch/loongarch/kernel/setup.c
+++ b/arch/loongarch/kernel/setup.c
@@ -366,7 +366,6 @@ void __init platform_init(void)
 	acpi_gbl_use_default_register_widths = false;
 	acpi_boot_table_init();
 #endif
-	unflatten_and_copy_device_tree();
 
 #ifdef CONFIG_NUMA
 	init_numa_memory();
@@ -626,6 +625,7 @@ void __init setup_arch(char **cmdline_p)
 
 	paging_init();
 
+	unflatten_and_copy_device_tree();
 #ifdef CONFIG_KASAN
 	kasan_init();
 #endif
diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index 2d2ca024bd47..d3b6c86a8037 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -667,7 +667,6 @@ static void __init arch_mem_init(char **cmdline_p)
 	mips_reserve_vmcore();
 
 	mips_parse_crashkernel();
-	device_tree_init();
 
 	/*
 	 * In order to reduce the possibility of kernel panic when failed to
@@ -798,6 +797,8 @@ void __init setup_arch(char **cmdline_p)
 	cpu_cache_init();
 	paging_init();
 
+	device_tree_init();
+
 	memblock_dump_all();
 
 	setup_rng_seed();
diff --git a/arch/nios2/kernel/setup.c b/arch/nios2/kernel/setup.c
index da122a5fa43b..6f1a4232b8f0 100644
--- a/arch/nios2/kernel/setup.c
+++ b/arch/nios2/kernel/setup.c
@@ -169,8 +169,6 @@ void __init setup_arch(char **cmdline_p)
 	early_init_fdt_reserve_self();
 	early_init_fdt_scan_reserved_mem();
 
-	unflatten_and_copy_device_tree();
-
 	setup_cpuinfo();
 
 	copy_exception_handler(cpuinfo.exception_addr);
@@ -189,4 +187,6 @@ void __init setup_arch(char **cmdline_p)
 	 * get kmalloc into gear
 	 */
 	paging_init();
+
+	unflatten_and_copy_device_tree();
 }
diff --git a/arch/openrisc/kernel/setup.c b/arch/openrisc/kernel/setup.c
index 9cf7fb60441f..fcda33bdca19 100644
--- a/arch/openrisc/kernel/setup.c
+++ b/arch/openrisc/kernel/setup.c
@@ -255,8 +255,6 @@ void calibrate_delay(void)
 
 void __init setup_arch(char **cmdline_p)
 {
-	unflatten_and_copy_device_tree();
-
 	setup_cpuinfo();
 
 #ifdef CONFIG_SMP
@@ -284,6 +282,8 @@ void __init setup_arch(char **cmdline_p)
 	/* paging_init() sets up the MMU and marks all pages as reserved */
 	paging_init();
 
+	unflatten_and_copy_device_tree();
+
 	*cmdline_p = boot_command_line;
 
 	printk(KERN_INFO "OpenRISC Linux -- http://openrisc.io\n");
diff --git a/arch/powerpc/kernel/setup-common.c b/arch/powerpc/kernel/setup-common.c
index 9b142b9d5187..58da58d02652 100644
--- a/arch/powerpc/kernel/setup-common.c
+++ b/arch/powerpc/kernel/setup-common.c
@@ -986,6 +986,9 @@ void __init setup_arch(char **cmdline_p)
 
 	paging_init();
 
+	/* Unflatten the device-tree passed by prom_init or kexec */
+	unflatten_device_tree();
+
 	/* Initialize the MMU context management stuff. */
 	mmu_context_init();
 
diff --git a/arch/sh/kernel/setup.c b/arch/sh/kernel/setup.c
index 3d80515298d2..2553696af21b 100644
--- a/arch/sh/kernel/setup.c
+++ b/arch/sh/kernel/setup.c
@@ -322,6 +322,8 @@ void __init setup_arch(char **cmdline_p)
 	/* Let earlyprintk output early console messages */
 	sh_early_platform_driver_probe("earlyprintk", 1, 1);
 
+	paging_init();
+
 #ifdef CONFIG_OF_EARLY_FLATTREE
 #ifdef CONFIG_USE_BUILTIN_DTB
 	unflatten_and_copy_device_tree();
@@ -329,9 +331,6 @@ void __init setup_arch(char **cmdline_p)
 	unflatten_device_tree();
 #endif
 #endif
-
-	paging_init();
-
 	/* Perform the machine specific initialisation */
 	if (likely(sh_mv.mv_setup))
 		sh_mv.mv_setup(cmdline_p);
diff --git a/arch/um/kernel/dtb.c b/arch/um/kernel/dtb.c
index 484141b06938..04b0ada3b929 100644
--- a/arch/um/kernel/dtb.c
+++ b/arch/um/kernel/dtb.c
@@ -26,7 +26,6 @@ void uml_dtb_init(void)
 	}
 
 	early_init_fdt_scan_reserved_mem();
-	unflatten_device_tree();
 }
 
 static int __init uml_dtb_setup(char *line, int *add)
diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index b1bfed0c8528..fe6ecaa12ef2 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -7,6 +7,7 @@
 #include <linux/delay.h>
 #include <linux/init.h>
 #include <linux/mm.h>
+#include <linux/of_fdt.h>
 #include <linux/ctype.h>
 #include <linux/module.h>
 #include <linux/panic_notifier.h>
@@ -421,6 +422,7 @@ void __init setup_arch(char **cmdline_p)
 	read_initrd();
 
 	paging_init();
+	unflatten_device_tree();
 	strscpy(boot_command_line, command_line, COMMAND_LINE_SIZE);
 	*cmdline_p = command_line;
 	setup_hostinfo(host_info, sizeof host_info);
diff --git a/arch/xtensa/kernel/setup.c b/arch/xtensa/kernel/setup.c
index bdec4a773af0..d20c56b4182e 100644
--- a/arch/xtensa/kernel/setup.c
+++ b/arch/xtensa/kernel/setup.c
@@ -355,13 +355,15 @@ void __init setup_arch(char **cmdline_p)
 	parse_early_param();
 	bootmem_init();
 	kasan_init();
-	unflatten_and_copy_device_tree();
 
 #ifdef CONFIG_SMP
 	smp_init_cpus();
 #endif
 
 	paging_init();
+
+	unflatten_and_copy_device_tree();
+
 	zones_init();
 
 #ifdef CONFIG_VT
-- 
2.17.1


