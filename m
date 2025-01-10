Return-Path: <devicetree+bounces-137551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F0CA096D2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75050188E742
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B89212B35;
	Fri, 10 Jan 2025 16:11:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60B1212B21;
	Fri, 10 Jan 2025 16:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736525462; cv=none; b=Z8DCuQ5tixkVLATGBMCfrPYYxGEFWrqamUA8fkaDK0jCRL4SeTBmpmOJHfI7a40VKOETOsrq66ByeW290oWMiTAeQeAqFyBRZ27Y7YVJIjrMyjo11P1bgWHk5sKH9zGc8hN0tG9RtLMEwxQhPdejRD/Nb6378thByrIOkR5k/mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736525462; c=relaxed/simple;
	bh=I86OdE3kOZHcryMKY1mnL6NG++435v7MmEkzYpOOFJo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=N5yrQbkvIqfrGXcRBMCmRhWkitzunR38ZemzCkr0QpD3gtqPz7yImrfwC2YlU3KjtP1FBupMm4imo/OI1KY5b3sLR7cBLPemcX3laApO6uZ6pXi902y2pPwfB0BK5Cy4RnrMXj71+6gYqjOfCI2qP1fjXQfNikzjlWYrUI8zAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4YV66w15Tmz6L4xp;
	Sat, 11 Jan 2025 00:09:44 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id DDA1A1401DC;
	Sat, 11 Jan 2025 00:10:58 +0800 (CST)
Received: from a2303103017.china.huawei.com (10.203.177.99) by
 frapeml500003.china.huawei.com (7.182.85.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 10 Jan 2025 17:10:58 +0100
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <robh@kernel.org>, <linuxarm@huawei.com>,
	<shameerali.kolothum.thodi@huawei.com>, <Jonathan.Cameron@Huawei.com>,
	<jiangkunkun@huawei.com>, <yangyicong@hisilicon.com>
Subject: [PATCH] arm64: of: handle multiple threads in ARM cpu node
Date: Fri, 10 Jan 2025 16:10:57 +0000
Message-ID: <20250110161057.445-1-alireza.sanaee@huawei.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: lhrpeml100010.china.huawei.com (7.191.174.197) To
 frapeml500003.china.huawei.com (7.182.85.28)

Update `of_parse_and_init_cpus` to parse reg property of CPU node as
an array based as per spec for SMT threads.

Spec v0.4 Section 3.8.1:
The value of reg is a <prop-encoded-**array**> that defines a unique
CPU/thread id for the CPU/threads represented by the CPU node.  **If a CPU
supports more than one thread (i.e.  multiple streams of execution) the
reg property is an array with 1 element per thread**.  The address-cells
on the /cpus node specifies how many cells each element of the array
takes. Software can determine the number of threads by dividing the size
of reg by the parent node's address-cells.

An accurate example of 1 core with 2 SMTs:

	cpus {
		#size-cells = <0x00>;
		#address-cells = <0x01>;

		cpu@0 {
			phandle = <0x8000>;
			**reg = <0x00 0x01>;**
			enable-method = "psci";
			compatible = "arm,cortex-a57";
			device_type = "cpu";
		};
	};

Instead of:

	cpus {
		#size-cells = <0x00>;
		#address-cells = <0x01>;

		cpu@0 {
			phandle = <0x8000>;
			reg = <0x00>;
			enable-method = "psci";
			compatible = "arm,cortex-a57";
			device_type = "cpu";
		};

		cpu@1 {
			phandle = <0x8001>;
			reg = <0x01>;
			enable-method = "psci";
			compatible = "arm,cortex-a57";
			device_type = "cpu";
		};
	};

which is **NOT** accurate.

Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
---
 arch/arm64/kernel/smp.c | 74 +++++++++++++++++++++++------------------
 1 file changed, 41 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 3b3f6b56e733..8dd3b3c82967 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -689,53 +689,61 @@ static void __init acpi_parse_and_init_cpus(void)
 static void __init of_parse_and_init_cpus(void)
 {
 	struct device_node *dn;
+	u64 hwid;
+	u32 tid;
 
 	for_each_of_cpu_node(dn) {
-		u64 hwid = of_get_cpu_hwid(dn, 0);
+		tid = 0;
 
-		if (hwid & ~MPIDR_HWID_BITMASK)
-			goto next;
+		while (1) {
+			hwid = of_get_cpu_hwid(dn, tid++);
+			if (hwid == ~0ULL)
+				break;
 
-		if (is_mpidr_duplicate(cpu_count, hwid)) {
-			pr_err("%pOF: duplicate cpu reg properties in the DT\n",
-				dn);
-			goto next;
-		}
+			if (hwid & ~MPIDR_HWID_BITMASK)
+				goto next;
 
-		/*
-		 * The numbering scheme requires that the boot CPU
-		 * must be assigned logical id 0. Record it so that
-		 * the logical map built from DT is validated and can
-		 * be used.
-		 */
-		if (hwid == cpu_logical_map(0)) {
-			if (bootcpu_valid) {
-				pr_err("%pOF: duplicate boot cpu reg property in DT\n",
-					dn);
+			if (is_mpidr_duplicate(cpu_count, hwid)) {
+				pr_err("%pOF: duplicate cpu reg properties in the DT\n",
+				       dn);
 				goto next;
 			}
 
-			bootcpu_valid = true;
-			early_map_cpu_to_node(0, of_node_to_nid(dn));
-
 			/*
-			 * cpu_logical_map has already been
-			 * initialized and the boot cpu doesn't need
-			 * the enable-method so continue without
-			 * incrementing cpu.
+			 * The numbering scheme requires that the boot CPU
+			 * must be assigned logical id 0. Record it so that
+			 * the logical map built from DT is validated and can
+			 * be used.
 			 */
-			continue;
-		}
+			if (hwid == cpu_logical_map(0)) {
+				if (bootcpu_valid) {
+					pr_err("%pOF: duplicate boot cpu reg property in DT\n",
+					       dn);
+					goto next;
+				}
+
+				bootcpu_valid = true;
+				early_map_cpu_to_node(0, of_node_to_nid(dn));
+
+				/*
+				 * cpu_logical_map has already been
+				 * initialized and the boot cpu doesn't need
+				 * the enable-method so continue without
+				 * incrementing cpu.
+				 */
+				continue;
+			}
 
-		if (cpu_count >= NR_CPUS)
-			goto next;
+			if (cpu_count >= NR_CPUS)
+				goto next;
 
-		pr_debug("cpu logical map 0x%llx\n", hwid);
-		set_cpu_logical_map(cpu_count, hwid);
+			pr_debug("cpu logical map 0x%llx\n", hwid);
+			set_cpu_logical_map(cpu_count, hwid);
 
-		early_map_cpu_to_node(cpu_count, of_node_to_nid(dn));
+			early_map_cpu_to_node(cpu_count, of_node_to_nid(dn));
 next:
-		cpu_count++;
+			cpu_count++;
+		}
 	}
 }
 
-- 
2.43.0


