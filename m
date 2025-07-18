Return-Path: <devicetree+bounces-197801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9978CB0AC9C
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 01:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41F58AA74BA
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 23:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBF0225A24;
	Fri, 18 Jul 2025 23:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bhqyBXRq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87EEF54654
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 23:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752882347; cv=none; b=jWwImPoqh06KMck3npwKEV4EN9CV2jJkNcwpi1l35z4WBDP7foEVjrpGyTsJ3m067xokgK5d0buBkUip1Bpdy8inyaGdDJ7WxlPEISF1057Rbwg8auod0TtB3Y6tkatl7H2PlHcRox8rsVPIMXWPRXssb9JhcSIbe80VKeBPS0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752882347; c=relaxed/simple;
	bh=0QofGAQMlO59BDn/yqU3QVVC/RYdZi+Gp9Dmsqgt9no=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oz8Wb3KpU1ajbUHqk9tyM7zdi8RorwXsI8FOhpxLJVXSuhvGzfFjbE+C1bBL+0liJdsHUn5eASpBZO2IGP7YTiwUuYZJQHmTX+d84JhnLhY1rMtOOyfuJ0ySxjKExoWw19nom4O9tApJOuATjTFxmrAOOwCqxG1U5SXCABQLdmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bhqyBXRq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IIurb8016243
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 23:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=s2hFRW8d2TuQIx351Ymt58JAKUkqRkGljpI
	9CEDds04=; b=bhqyBXRqUtfPDZYNBh98+vqUDh9jRs/az8ULa3WMqEBqXNLRZz+
	l1kik6UNgg8nXFJtzneh43bfY8YBrrWMTXyHonxY2JKNzDxf3q9Xa3qvHjZKZjFi
	YPh6jQRVLNVOb51s/TezaVqZT498BMZIYnSzkcxJFxpN7c9ESPwsEYz/9hXSoHq7
	bUSiyei4uBbSf0AHmRT5mpCk9hx2XCsgNX8tUUfa0aJ97DlHfN9koEacdx7BtGW9
	B9R7U94ODEzqTlddwl9hlb/Z73+FBd7YcIdeFoPiFNdh0Dn5+uB4+JW6zWUYjgCD
	WGumBI/xK1WqLhQUPTUd8Xr/Px1vdZMPfYg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc54ck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 23:45:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311d670ad35so2444036a91.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752882343; x=1753487143;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s2hFRW8d2TuQIx351Ymt58JAKUkqRkGljpI9CEDds04=;
        b=CpukKr5hfRygtdJlZ+R16duKaQuc5tj51gOgg7g7WpTIx6MTtgxMftKWHPM/7XVGKV
         Tvssur5m5VnvAGxo547JbNM8e7dwvUb4anDoIrO/39L8OibiTZR/U+xZXjbNtbMi3Cw3
         BYVc70WTnUGbl5J4E9eoyaCycW3peYj0gMZODAsFC3xmV8givVCSeMuHWPPqP1u+66bS
         TAFFFYl4lE+diSVWglfs/FiA4ZUelaAX4VK+S1/jtJvYEgyWTgsqHZw7PgBsZk9nngte
         doqopKv36bTQ0rygiCYeYJs/q6PpMIse1fadlpUD8Bj9eFRJ6TwtAXKsRCWxm6kweQlL
         fstg==
X-Forwarded-Encrypted: i=1; AJvYcCU2kL046UJctkE7N9+/Hy91atuBIb5xyEaSsXEKr1t3JAP4ry3ZbJT322g/bjEREVe04RSnlHtire2a@vger.kernel.org
X-Gm-Message-State: AOJu0YycW9pVHFW7+DMiUbo2etQNoajNZanE2xvxRFHJhbvA/Se/gcdb
	qJmgAzq2SSBrpF+7vSnOQFt3CVd9QBuagTS4Hx4XZYOq3oM/BwoMsm9hf7Qk2c2mdVpilhzHJ8q
	aX+pBc3RMkkLS68pPbvmS6E5dlcOpw6rg1dgnNAmatoHe+UDW/b1l5uEbBfLFvlgT4zjZxi+H
X-Gm-Gg: ASbGncu7RuF/NtVYIRY3mtDv+D9LjYLG73Me2PUmbdyQDeYT7bevyY2iaDr7DB20vfI
	7RadXRmYE6BDrYe4PyH8ZxDXquPe4o6hm2PqV/Fwb7YT7gZZOv8nFu8pUoVdjkzUPuqKXow1cmC
	FpCoJmZC6EyYWv6sGwxYN7MDHUTLU9AmvuEBABRvZoHfpFpCQ2RO/i3shCilJAvAv3Zs5ez0ZqI
	R+RsTjmdbp6VU5/Dh5BFxaABSc5B5gjH1mSmOV6uGqthob9xiO8Apbx/8WNSyeferoVMobOks+P
	vOCA+56LQX+LaPwXFyEhrXWNkM6qPNL5JIpbhMR8Zt1QQ+kP4W1nSTpWgvejcZEG7F962tjAjWT
	vWdmHwGH4ZFdmZKfU6r48nB6QwoY=
X-Received: by 2002:a17:90b:4985:b0:311:ea13:2e63 with SMTP id 98e67ed59e1d1-31c9f47c919mr16443479a91.13.1752882343126;
        Fri, 18 Jul 2025 16:45:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqKxGq9Un3H1awITtkW+25JkbHdED47p+uP+qJy4C8O68xs8XewgumeJVAl/pe8tZ0gC+WEQ==
X-Received: by 2002:a17:90b:4985:b0:311:ea13:2e63 with SMTP id 98e67ed59e1d1-31c9f47c919mr16443441a91.13.1752882342583;
        Fri, 18 Jul 2025 16:45:42 -0700 (PDT)
Received: from hu-obabatun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f29e424sm5975609a91.40.2025.07.18.16.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 16:45:41 -0700 (PDT)
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
To: robh@kernel.org, m.szyprowski@samsung.com, robin.murphy@arm.com
Cc: saravanak@google.com, quic_obabatun@quicinc.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, william.zhang@broadcom.com,
        kernel@oss.qualcomm.com, will@kernel.org, djakov@kernel.org,
        Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
Subject: [PATCH v2] of: reserved_mem: Restructure call site for dma_contiguous_early_fixup()
Date: Fri, 18 Jul 2025 16:45:04 -0700
Message-Id: <20250718234504.2702128-1-oreoluwa.babatunde@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=687adca8 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=d8epbNILfmFvmG3XuFMA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: ljfnfNNanIcde1ndMMqapMB1qAtsxVmx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDE5NyBTYWx0ZWRfXxFZJ7fBzI0nE
 K4MEC/YXzBLltgTt1B2OnPXmcCh2ogvywIf4bTfMdKF3B0XKA7jOILKKGrPNAVyoccZ+l+cCgFw
 4/nd6ZmV6k44QVSEhCs2udFoPXB4UlF7lTeYJ1bwH7JeUZ8UOE9N4AnQHqdW7Ed4LUeIP819fg7
 pmg1m5uNkQcpsq5Azjx56CAaSm9I9sEaRtLJaouLaaX8bRdieRgf6F3OTP3kEOjbahgoedFDOoi
 FhSdRQcK8BJAuPimb7RMZ4EQuDnFcjPr+wq2ZL6+7fUIfV2PNGYTkHzw2vthE8QtpdnNnOcV6Xv
 BsFW3ktOhrgvKLkzhbjJxY50lK4mGXpG76qB53yJ03AGABqv343qB5MaupQyeq/ycQEG+A4Q5DE
 Jxcw9r3mhl3RGDeKDM+J7EKWc/OMinCbuQSNehzl7Pq3Xuia2lBpt4PgWMlEH/wtAYV2rwav
X-Proofpoint-GUID: ljfnfNNanIcde1ndMMqapMB1qAtsxVmx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_05,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=600 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180197

Restructure the call site for dma_contiguous_early_fixup() to
where the reserved_mem nodes are being parsed from the DT so that
dma_mmu_remap[] is populated before dma_contiguous_remap() is called.

Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
---
v2: Add a check for the "reusable" property to narrow things down to
    only cma regions.
    Also add __weak function definition for dma_contiguous_early_fixup()
    to avoid compile errors on architectures that do not define the
    function.

 drivers/of/of_reserved_mem.c | 21 ++++++++++++++++++---
 kernel/dma/contiguous.c      |  2 --
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 77016c0cc296..eee96172883a 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -25,6 +25,7 @@
 #include <linux/memblock.h>
 #include <linux/kmemleak.h>
 #include <linux/cma.h>
+#include <linux/dma-map-ops.h>
 
 #include "of_private.h"
 
@@ -147,6 +148,11 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
 	return memblock_reserve(base, size);
 }
 
+void __weak
+dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)
+{
+}
+
 /*
  * __reserved_mem_reserve_reg() - reserve all memory described in 'reg' property
  */
@@ -175,13 +181,18 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
 		size = dt_mem_next_cell(dt_root_size_cells, &prop);
 
-		if (size &&
-		    early_init_dt_reserve_memory(base, size, nomap) == 0)
+		if (size && early_init_dt_reserve_memory(base, size, nomap) == 0) {
+			/* Architecture specific contiguous memory fixup. */
+			if (of_flat_dt_is_compatible(node, "shared-dma-pool") &&
+			    of_get_flat_dt_prop(node, "reusable", NULL))
+				dma_contiguous_early_fixup(base, size);
+
 			pr_debug("Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\n",
 				uname, &base, (unsigned long)(size / SZ_1M));
-		else
+		} else {
 			pr_err("Reserved memory: failed to reserve memory for node '%s': base %pa, size %lu MiB\n",
 			       uname, &base, (unsigned long)(size / SZ_1M));
+		}
 
 		len -= t_len;
 	}
@@ -472,6 +483,10 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 		       uname, (unsigned long)(size / SZ_1M));
 		return -ENOMEM;
 	}
+	/* Architecture specific contiguous memory fixup. */
+	if (of_flat_dt_is_compatible(node, "shared-dma-pool") &&
+	    of_get_flat_dt_prop(node, "reusable", NULL))
+		dma_contiguous_early_fixup(base, size);
 
 	/* Save region in the reserved_mem array */
 	fdt_reserved_mem_save_node(node, uname, base, size);
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


