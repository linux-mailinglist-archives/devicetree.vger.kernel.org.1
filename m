Return-Path: <devicetree+bounces-194197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F23B7AFD3CE
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 19:01:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E8231C40733
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29962E5B0E;
	Tue,  8 Jul 2025 16:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iwiVprnC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFF4202F70
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 16:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751993821; cv=none; b=vETiUBaEq+Wp37iCsfI2ywqnU/fJYfQUBi3Ux3JSUIiZ4naS3gNHDbyMR9c8crgHPuf23kJaUeeXiiP4WqTHJkLI/e9o+UMnc6rNUelMMI5BsUsrU2zNVG6X+y9yD9s6l31JutGyQVb5aKAiVu9beQ9be14kjS97dzrapg6XvEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751993821; c=relaxed/simple;
	bh=Jg6cutNa4wTuOT/R/PBaYwp8fpjwjRddjQ2/p/+s89Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=b7vSIBdzOsgSXpEZ+zNZnboFBOR7TVpHsAQZ0xBOvrWGWvH2ihSAC8PsWa0dO1vb6AN+/3o6fwpyd7jzYrWhrAjP3/DTU/bnMy01q2r2mcLxNrdJVvbFfbxBxze+EYD+ewbVsqye+ZRqT2WNUEkazhPIQxHOPlDwkY47ByCTsBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iwiVprnC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAEoe032758
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 16:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=WUhkVAeGLeKaNSN8AVmxhb1CINCnyT16ePT
	Qp8qzBLo=; b=iwiVprnCBim/pwSuMC2ak0jO/SCNNEk1dfljlHQhWFV+RgIOSF4
	8x3VNb2cq8DoWzS89s3B6KkAcAl1ipKr3WKRXAIkHdGQpcQj3/jXijAW5hH5tWpG
	uBiRHMEW295kD/8BKmBk07afQsRghZbajQtd7fzdBoZwmUJpLqutx8nzlPtHxDPr
	bHOPEHbnJ25GctFoOxrFMhv1D1M/GunAJaav3VOwcTzCZyGe+sZ/JHjihnISRCEF
	l2ceBzAgFKx9WwXAr9gC+lpEzinunNt8OYtFgdfVfvzrLWEd0gVxB5eaEeXBLu05
	/k/Ek5M0xtlTYTnYlQMkttVxBHsyUcmIaqg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psrkqv78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 16:56:59 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2355651d204so41070965ad.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 09:56:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751993818; x=1752598618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUhkVAeGLeKaNSN8AVmxhb1CINCnyT16ePTQp8qzBLo=;
        b=hVhjYtDgZMTG5+D1+/GQhK4TONsz7ng994+nokuKAmOBEl5S6Y6PEUIqMmQINIIzQ4
         G5eVJ29UlrI+82maCcHAOkjAhGkQlCfoutcS8xdZbPPTcqTDib53ej4UR+y5eZbFjbXe
         6zlkrx/SEcTejx2PF6d/ie7Db9YXceUxSzqokeXV0o2J6CQDHXNTQLYa0ypnnQAcst75
         PlAJV3y/bwmTRHWaWHOudgaiYGN7Im8udWAmc1I0aDiXKbePIiNweOnAOcYmqgdLcu0B
         b5Sngd+AdN/Ro+MbLMzWMXNOMhFQKMElsRb5Y7YBPJCfHjPlak2xph8/rv11RTdLptnt
         Qllw==
X-Forwarded-Encrypted: i=1; AJvYcCXewOWDinbPov4GVuVGvaWZtJjEpkymsYPL5ZLDUdvHaSELcRKjWz0BwhXIeoNWvB07Zb0m26JVZu5v@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw9oh8C6ar96Rf5RNUOj7WIQPIzMHPD5ijMkWd9RgaR0f3ayps
	QRqOWTMH4W95L7hXWTLRO7HNHc66BShNyYsDUEeelMt/VSomJziZsEkIWvcuaF23A/ZVbn1Z75i
	yFxTpfEZgzwGKUN3+w1EGJBQSRZL7rjN62FLelIbAcb4iHj6VdkT48VMnPLQPgRv5
X-Gm-Gg: ASbGncvBuJusmXNS6CXBnIobVs7vXJznlYT1Q2ncXlLAhspiEgMTR3UM7v9YcnsjmTO
	wMgeqMvzbPOqNxXkImT0MXBYvy5txspeVCeQrzNq0KsQr1HzyBXoOjJDcUlYsff5NUFNfokprY2
	LftjDRsRK+HlyT9cNwzAmhgg5KvdtRh8W8rPFr3tqDapG0J+QXnsCfVeaQkWT+I/P77qLR3GYV+
	6Y1omJlWt2mf8o7Gzxm9tcuVDcvmSI4weubSx6Hc2stZ45vEO+ghWobrlF9M8H/AmfyddgX6g6E
	iZBYeNsTaYCo6QP5M+asIe3GY4vIC2ISGe+uLSN48Ex/Yt1Yu4isNtiyjqAoCHxgJat7pHP4Iov
	ZXAAEboYuwA==
X-Received: by 2002:a17:903:2352:b0:234:bca7:292e with SMTP id d9443c01a7336-23dd982c7a1mr3703875ad.14.1751993818319;
        Tue, 08 Jul 2025 09:56:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZcNw1wDJD3D+XT0Ei373cW7Pc2/gf94PN0YMqeTOB1MGWQEUOYM3VpYyc41cGoWyfIaY6gg==
X-Received: by 2002:a17:903:2352:b0:234:bca7:292e with SMTP id d9443c01a7336-23dd982c7a1mr3703505ad.14.1751993817865;
        Tue, 08 Jul 2025 09:56:57 -0700 (PDT)
Received: from hu-obabatun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c8431e4dasm124569365ad.30.2025.07.08.09.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 09:56:57 -0700 (PDT)
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
To: robh@kernel.org, m.szyprowski@samsung.com
Cc: saravanak@google.com, robin.murphy@arm.com, quic_obabatun@quicinc.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, william.zhang@broadcom.com,
        kernel@oss.qualcomm.com, will@kernel.org, djakov@kernel.org,
        Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
Subject: [PATCH] of: reserved_mem: Restructure call site for dma_contiguous_early_fixup()
Date: Tue,  8 Jul 2025 09:56:27 -0700
Message-Id: <20250708165627.845295-1-oreoluwa.babatunde@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -w-Wu6ge8OaHL_DgFZFgkvPzb-nf8GY2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE0MyBTYWx0ZWRfX2Dg49A3dt23K
 b2KA8mQHIWcB8h4/P+alilPbi6P6RxPfdZdU2QyZk3BaGOq2qewA9QMbnFy2aWUfwm4tAoH3UNR
 bkIuKB+hEQl3VsEc2fd+UZSNfCIubcT1MsNaofBAxeIPJmKMUYFcJ401uVR6GnqmbbVu4xo4vjV
 8rndc6QPuCCB0zpSEpxGs9EBbgyCRJt32JbVFxQrMAQknq6I3pSrM/CdF1b1nAAZuldfa3jVePD
 s4Brj27tsRpYe43cxVkRDK0koM7sL28S7rSyg4FXvcxghpfZwS6zasHAi9t15S5mmqXq3rmeoPO
 P0Hax4KrU3kzyDRsYdgnVFvZdAsuRd6dywKw8hRakjaiI8w+B7Eqrf8FMCPXs2ATExPOSdJwlsS
 GDrs4KkKA1XIbgF31K+o7JGH5VjB7J7HOIhGTTPhUKZDKb6gL0Y7t1bCh+X0TPTvBanMaeUW
X-Proofpoint-GUID: -w-Wu6ge8OaHL_DgFZFgkvPzb-nf8GY2
X-Authority-Analysis: v=2.4 cv=GtBC+l1C c=1 sm=1 tr=0 ts=686d4ddb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=xFDPACk5BDkwkGjAhYwA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_04,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1011 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 mlxlogscore=683 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080143

Restructure the call site for dma_contiguous_early_fixup() to
where the reserved_mem nodes are being parsed from the DT so that
dma_mmu_remap[] is populated before dma_contiguous_remap() is called.

Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
---
 drivers/of/of_reserved_mem.c | 14 +++++++++++---
 kernel/dma/contiguous.c      |  2 --
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 77016c0cc296..132d2c66cafc 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -25,6 +25,7 @@
 #include <linux/memblock.h>
 #include <linux/kmemleak.h>
 #include <linux/cma.h>
+#include <linux/dma-map-ops.h>
 
 #include "of_private.h"
 
@@ -175,13 +176,17 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
 		size = dt_mem_next_cell(dt_root_size_cells, &prop);
 
-		if (size &&
-		    early_init_dt_reserve_memory(base, size, nomap) == 0)
+		if (size && early_init_dt_reserve_memory(base, size, nomap) == 0) {
+			/* Architecture specific contiguous memory fixup. */
+			if (of_flat_dt_is_compatible(node, "shared-dma-pool"))
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
@@ -472,6 +477,9 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 		       uname, (unsigned long)(size / SZ_1M));
 		return -ENOMEM;
 	}
+	/* Architecture specific contiguous memory fixup. */
+	if (of_flat_dt_is_compatible(node, "shared-dma-pool"))
+		dma_contiguous_early_fixup(base, size);
 
 	/* Save region in the reserved_mem array */
 	fdt_reserved_mem_save_node(node, uname, base, size);
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 8df0dfaaca18..9e5d63efe7c5 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -480,8 +480,6 @@ static int __init rmem_cma_setup(struct reserved_mem *rmem)
 		pr_err("Reserved memory: unable to setup CMA region\n");
 		return err;
 	}
-	/* Architecture specific contiguous memory fixup. */
-	dma_contiguous_early_fixup(rmem->base, rmem->size);
 
 	if (default_cma)
 		dma_contiguous_default_area = cma;
-- 
2.34.1


