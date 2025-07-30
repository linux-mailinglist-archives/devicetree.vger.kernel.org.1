Return-Path: <devicetree+bounces-200604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1FAB15681
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 02:30:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C53D756085E
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 00:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08EE52AE74;
	Wed, 30 Jul 2025 00:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fk4ALxYj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A69A10F1
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 00:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753835452; cv=none; b=AN8iv/CYeLR/1uMpHxCXefiAPurGmszTfO51FIrhPw75t4veFEBAIM3E84Emeywy2tGkaX35+7pj45TBdeiN4Z5t0/HqlLic7GBkZjEzOigi8PvdeXzhfgMsNeA4mcPd3sCP55AGiSQVN92DfjK715zbsTKqTJcvGTC/vc9/xLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753835452; c=relaxed/simple;
	bh=G2SWi+2j2+gVMvPBF4ZfD0nEadXhRsZtY7etyXycOHs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SfxYQxwDwjqppNX4IIH1eRV321KpxYmYDHPFIEgibbeiYmXEhkh0ADSyXL/Id1a1egmqRwSDYTX4WDfN7i4JwOdxivWHXYYbKCvP4q+f4AtQBkmy4vwdSGzP9PomoLioKPTlOli92KOxe08BSuuTeXdwCGI/48v+s1ecmdVhr+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fk4ALxYj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56TNrGnY021047
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 00:30:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=X9lUdenJ2kMNxoXUpZ8Aqx81K+8cmzCiCh8
	8gCuJ5+A=; b=Fk4ALxYj/nbPljx+y+1qCfdGb+ilruaLVfFs6ZAgOpxYEZ+Wpkn
	dXgM5LgHlKKriJDJZsAWYZ7AgIUM9pwC6QCaNjWZ4z7RBZ6CEzxMlJG/yqr00Yeu
	0yQfZWlt4xcxelW4PTJTEBt5h175SCTdgi0y12/VS/bsgBbo/R3pF2VnlhhIR8fK
	NTNGVfOSSgiesLOitNo9rBgQlD4/k3LENv4VSNchXkqxKM/MNA0FczQxwe/45X6C
	jiBp7w0edPdmDtlPWclGwuxbzmCA6D78jghPChD+5u6XNE2oYSwLfmgLGZFoa6KS
	j4+WDxxJY9U6bOC+obqSZVzLIL6IrgFgDAQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1ahuqn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 00:30:49 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b3f38d3cabeso4523542a12.3
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 17:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753835448; x=1754440248;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X9lUdenJ2kMNxoXUpZ8Aqx81K+8cmzCiCh88gCuJ5+A=;
        b=dfdwKRoUh4f+w/W4+qfShm2Q2L8XMrXsiymKWc4pN9s2oAAIsoorJ41AaP6UzFTjMv
         bkgO12cvFj5FzzMtrcp3bp/ViKn2MWi6wCj+slc67EiFCTEUuT3YtLwvekMcXaL6v1+u
         g1YQD3JC5Bgm1kuA8FuPwaJEz+/7QFzK44WpXQM7pQUyRgozM92ZVX8dG055D54mHAqi
         /Ci/0l9roviDL9JW4vZd4SYlVrN1oe7eDrF4swURaHZEEY8xyi/4tk/fYDld6l0Dufoy
         J8g6CSZqVE+esmdXIl4Uz9uSjpydgjvqkgKHKgRCEOMhtCJTG83BUtwJbZJdEg6qzq96
         r0TQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPtNFwubzSQVkjT8x/K7ghv6A0WRRapRZFfGAioyY8WCS/CJ0rdb9+uAAMt/jQF6JMuUkAnbSuRM7E@vger.kernel.org
X-Gm-Message-State: AOJu0YyXBK0Vf8Y0Ck8pigbt7Ou+jv6SAP0Jwta6/8Qg4/HltoZtt90N
	w2pmxCo/hF1X/wMFcyvy12/8YdXPS7SdvgXBMXmU6haNq+cFe22ZBD0L+YmmaVOqWc4+jg77kZG
	wOy3kEJpO1Z1mp7O0MXzZmFDIXx8TNHb2H/uz9hBI+okAnqNbzhJfpmf+WKHjb/XK
X-Gm-Gg: ASbGncu9KBYnpn6DhXaDbCUIaAPl+129hnEQlY8ZF/Uzjpx/38gtaCA5+VVa3X1cWep
	/Vf5F/qw8cyRR7VEqKgfTytHE/+HFMN8io6THBIKhhIERnkIAyrYOPcbtRDzZibaSTPJnP8fRjl
	jIrnKmae6GHBf0VjYSB8dUggsHh3POpStjMflcz2EVPbqBCTbq4DfnIcFNaAhLePOH3ppgPaAu+
	K6cyTAReyhENUWrwMvnRYKsWrKnHykwK0bTOW+h+u5PJVuEhVpELT9UkmfHyBuWRrdb99c2qlFy
	VIYjk1/zbG9ftHW6p2T7ISbL5SZ/s3D5HHkLH2MDoEJxG0MI8iEYA/AFY5zRTciO+w8I7V63jR6
	163sY/EygvY57LiOurYd0KlGqDug=
X-Received: by 2002:a05:6a21:3287:b0:232:ac34:70ec with SMTP id adf61e73a8af0-23dc0ea7c93mr1921215637.7.1753835448586;
        Tue, 29 Jul 2025 17:30:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXj7G/TnKXtBi1fe1wzt9F05KCSBAlvRjrlMz0OGXrpqKtnB9Lz6S/vRD0L0OwLPRbTgxAkw==
X-Received: by 2002:a05:6a21:3287:b0:232:ac34:70ec with SMTP id adf61e73a8af0-23dc0ea7c93mr1921185637.7.1753835448137;
        Tue, 29 Jul 2025 17:30:48 -0700 (PDT)
Received: from hu-obabatun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7640b4c852fsm8489587b3a.118.2025.07.29.17.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 17:30:47 -0700 (PDT)
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
To: robh@kernel.org, m.szyprowski@samsung.com, robin.murphy@arm.com
Cc: saravanak@google.com, quic_obabatun@quicinc.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, william.zhang@broadcom.com,
        kernel@oss.qualcomm.com, will@kernel.org, djakov@kernel.org,
        Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
Subject: [PATCH v3] of: reserved_mem: Restructure call site for dma_contiguous_early_fixup()
Date: Tue, 29 Jul 2025 17:29:56 -0700
Message-Id: <20250730002956.1812694-1-oreoluwa.babatunde@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: PnAdtpDWXwI2fQjVay6klvfnnq1QqpeO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDAwMiBTYWx0ZWRfX2e68Pg3oJg0l
 V7cuEcnSacqAmHzs01JVmL2iwJUeY1U02Q5/3fvO10slZ54xMvJepafEAEdJox7EIye08uCAhNU
 WFPlGe5GS2B8AACH8dOdX3Nm/qQbax5reaOShYSs87rzlIoazfhrMgP/S8ihcaeBLjK2/SDE324
 5pYCqqxRuhRXYiNCnlo2kpgaU9McMtOJJb8wNr1LjqH0UR3Un82xbkP7Swo8qzICLJBJJqRfW6W
 xxiPpVvhFu5JWT74RqbOeCAk1Hus1xY0s82EuaS0U7fntnWQWfPqLwGaYhFyRKD/l0J9PvQWFM1
 8ao+kDg5jbsyIFSmDZedD3d98IGl4s7oDBOAU85pN23oh7ih0KNK0c2Ii6sQd2aduEq+kPKW/RF
 lYnKGBPyDryIqc4YmfjVcb7ll84FGX+gOSyosnUtlikmcCEWR22G8b5yUJU/Lj28YCLDrbiH
X-Proofpoint-GUID: PnAdtpDWXwI2fQjVay6klvfnnq1QqpeO
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=688967b9 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Q-fNiiVtAAAA:8 a=v9W1MpMA7iSxILOuClkA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_05,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=513 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300002

Restructure the call site for dma_contiguous_early_fixup() to
where the reserved_mem nodes are being parsed from the DT so that
dma_mmu_remap[] is populated before dma_contiguous_remap() is called.

Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
Tested-by: William Zhang <william.zhang@broadcom.com>
---
v3: Wrap the call to dma_contiguous_early_fixup() with a check for
    CONFIG_DMA_CMA to fix compile error seen on x86. The __weak function
    definition introduced in v2 was not sufficient to prevent the issue,
    so remove that as well.
    Also add Tested-by tag from William Zhang.

v2: Add a check for the "reusable" property to narrow things down to
    only cma regions.
    Also add __weak function definition for dma_contiguous_early_fixup()
    to avoid compile errors on architectures that do not define the
    function.

 drivers/of/of_reserved_mem.c | 20 ++++++++++++++++----
 kernel/dma/contiguous.c      |  2 --
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 77016c0cc296..cfffecb91c3a 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -25,6 +25,7 @@
 #include <linux/memblock.h>
 #include <linux/kmemleak.h>
 #include <linux/cma.h>
+#include <linux/dma-map-ops.h>
 
 #include "of_private.h"
 
@@ -175,13 +176,19 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
 		size = dt_mem_next_cell(dt_root_size_cells, &prop);
 
-		if (size &&
-		    early_init_dt_reserve_memory(base, size, nomap) == 0)
+		if (size && early_init_dt_reserve_memory(base, size, nomap) == 0) {
+			/* Architecture specific contiguous memory fixup. */
+#ifdef CONFIG_DMA_CMA
+			if (of_flat_dt_is_compatible(node, "shared-dma-pool") &&
+			    of_get_flat_dt_prop(node, "reusable", NULL))
+				dma_contiguous_early_fixup(base, size);
+#endif
 			pr_debug("Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\n",
 				uname, &base, (unsigned long)(size / SZ_1M));
-		else
+		} else {
 			pr_err("Reserved memory: failed to reserve memory for node '%s': base %pa, size %lu MiB\n",
 			       uname, &base, (unsigned long)(size / SZ_1M));
+		}
 
 		len -= t_len;
 	}
@@ -472,7 +479,12 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 		       uname, (unsigned long)(size / SZ_1M));
 		return -ENOMEM;
 	}
-
+#ifdef CONFIG_DMA_CMA
+	/* Architecture specific contiguous memory fixup. */
+	if (of_flat_dt_is_compatible(node, "shared-dma-pool") &&
+	    of_get_flat_dt_prop(node, "reusable", NULL))
+		dma_contiguous_early_fixup(base, size);
+#endif
 	/* Save region in the reserved_mem array */
 	fdt_reserved_mem_save_node(node, uname, base, size);
 	return 0;
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 67af8a55185d..d9b9dcba6ff7 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -483,8 +483,6 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
 		pr_err("Reserved memory: unable to setup CMA region\n");
 		return err;
 	}
-	/* Architecture specific contiguous memory fixup. */
-	dma_contiguous_early_fixup(rmem->base, rmem->size);
 
 	if (default_cma)
 		dma_contiguous_default_area = cma;
-- 
2.34.1


