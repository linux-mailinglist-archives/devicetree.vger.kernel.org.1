Return-Path: <devicetree+bounces-137098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4ABA0776D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:30:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70C7916655D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CA3218E8D;
	Thu,  9 Jan 2025 13:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="c263AZTP"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F0218E95
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429362; cv=none; b=OoQLnrvpeGmDtdwXUERs/BS/7z4QRhxb2A0UnlzsA+aLzNdo1Lut+8qwRBjALdxM6bfLgYD/6ImjTUc01IoZlrJ5CplW5mwhOe4vyOIcq8uL0hBez8L811KhEZwvnt0Q2HSPHBy/n4uqEa0rCq9c0ABU89V98lx4Mn1MlNLYULE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429362; c=relaxed/simple;
	bh=oc3D/zyp8WbDAwGnOMBcml77KnzpNLLUfFEut8L7u5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tWldHVXLyTnqZF9x9yduEZ5lpaU+MBAx2fbrXNNXoYQWyV00szjSval3iyzHcg6Q8l3JiytffMwQCF4zgK53mEk9f04jIWWWUXCCcE3YzDZfsAVQeZZ9Ug3lXsIiOZtASU3HDO/jPqk9b2vk1NSpiJGV97I1mJuBpZmznb5D1mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=c263AZTP; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429360;
	bh=VttlFKzBqiDNNHrHSBO1fbls46nGnHCUvDday93lNP8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=c263AZTPQJhazc6SRZAM2Z9Wp9dmXEDlTLU/U2Qu1EWuXV3vgZgivJUWI/I8nTmlM
	 TrfLoOrBG1w/ZVG/NITduTZn+okhKLxhETpDdyhtSNvmhrHRTdqecAw/t0cTSZ4q8r
	 0sPh9NowfXVQ7+orDdlG77WcW6PkCxNk56Uoi42WdvCn4ZlWFLBFOEQLclMYGITV6Y
	 agon/GNpiiP/ddyCGi7QabEQvYcahsEm5+Eknr8Mj1MbqSs8f+DLNMEhkb6K6QwtMc
	 RMFOz855XlnyQDxdv+zNl93AgaZlKnlWzgZe6S4ZxpgbeXIH4era1PJ7vciNXomEYf
	 oPGz2AHM7Bqlg==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id 5DA4434BAA7B;
	Thu,  9 Jan 2025 13:29:15 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:27:04 +0800
Subject: [PATCH v4 13/14] of/fdt: Check fdt_get_mem_rsv() error in
 early_init_fdt_scan_reserved_mem()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-13-db8a72415b8c@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
In-Reply-To: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
 Andreas Herrmann <andreas.herrmann@calxeda.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: SW_zWMny4wV80efwZibSlmux6H1NzeN0
X-Proofpoint-ORIG-GUID: SW_zWMny4wV80efwZibSlmux6H1NzeN0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

early_init_fdt_scan_reserved_mem() invoks fdt_get_mem_rsv(), and it will
use uninitialized variables @base and @size once the callee suffers error.

Fix by checking fdt_get_mem_rsv() error as other callers do.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/fdt.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 4b1e9f101ce34d7212cc8de99c7e7761a2636866..c93a99d4a1e08c0d4cccf9e5ae16f7e4950ee801 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -497,6 +497,7 @@ static void __init fdt_reserve_elfcorehdr(void)
 void __init early_init_fdt_scan_reserved_mem(void)
 {
 	int n;
+	int res;
 	u64 base, size;
 
 	if (!initial_boot_params)
@@ -507,7 +508,11 @@ void __init early_init_fdt_scan_reserved_mem(void)
 
 	/* Process header /memreserve/ fields */
 	for (n = 0; ; n++) {
-		fdt_get_mem_rsv(initial_boot_params, n, &base, &size);
+		res = fdt_get_mem_rsv(initial_boot_params, n, &base, &size);
+		if (res) {
+			pr_err("Invalid memory reservation block index %d\n", n);
+			break;
+		}
 		if (!size)
 			break;
 		memblock_reserve(base, size);

-- 
2.34.1


