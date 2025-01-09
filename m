Return-Path: <devicetree+bounces-137097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F41E0A0776C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:30:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0451316551E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2AB21B181;
	Thu,  9 Jan 2025 13:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="koxds8AO"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0023E219A86
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429357; cv=none; b=IeAs2hh8TPt0127J3loAqrbCUhLa2FtdnJDL0/ZXDL6MAjuppf7J3EERSsbvhndHNeQ3hW3PZWxcLF7zYe4YK0QUPMzANVoYA2ULPNth7GLX/zqj79DxV7UddiW+KthFXUSd2rEplWIGBzW5tfy/uARyypOZM/R5LM75tScDa0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429357; c=relaxed/simple;
	bh=7Ajw+wcxmDMhgPurtgPRKwGELiv8M0BbpR2Ghf3A6OM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iFskTb1zCQSROKnvskwtUyy9MRAAIrQap4UKLNl3rYUt0zVCGC5fEzplftyutJTZi8BW4zMoDBERuzseQ+QhUpczKmzHT3O+InmC50WrEIF+IHL8wln+19dwMpvnquEq6FqwEV99Pt4k50OR9SyYT84mQ2dSx9ICkpZXXu3wKjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=koxds8AO; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429354;
	bh=5DeQxT/e48+OUXdvvSnTp3Oq1EY8EJ44Y9n27c4GUj8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=koxds8AO5fjiW32Je1zTp7Ekg1s6t5/EzzjkxYUWX4amDNsrmfFfO/VEkQtWvY50x
	 I6wLzZaAajYzpoqBi7Jd9K+nnpg2fPcjnCut4ykME1OwqQXWBD1kEn73s9QMRjbyDw
	 UU8PlziOjpFjlQY6HMeuRpSrszm5qsmxHaTMvTJP/EJWQB4UuxaI/dS667rw0vPDMR
	 BveOB4xGH9nfJM3l9svYsFItrJv64DtwB/+zCbDvlvkGqJncHqnbE51FmdQ8xmPhKu
	 2+X2KQf7CWAgynr1AHbZx53VnsazeT/sHQ1EBG6vD6P+b7L0WgckPbu/dWPYOZlEE6
	 RUGmy2YSQVflw==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id AD9D534BA66B;
	Thu,  9 Jan 2025 13:29:09 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:27:03 +0800
Subject: [PATCH v4 12/14] of: reserved-memory: Move an assignment to
 effective place in __reserved_mem_alloc_size()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-12-db8a72415b8c@quicinc.com>
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
X-Proofpoint-GUID: JmDjGT6FCLuj8cC5Dk92dUhyoqg9vULs
X-Proofpoint-ORIG-GUID: JmDjGT6FCLuj8cC5Dk92dUhyoqg9vULs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=774 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

The assignment '@base = 0' in __reserved_mem_alloc_size() is meaningless
since @base was already initialized to 0.

Move the assignment to effective and proper place.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/of_reserved_mem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index e2da88d7706ab3c208386e29f31350178e67cd14..75e819f66a56139a800dba5e2e0044d0bbeb065e 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -441,13 +441,12 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
 			return -EINVAL;
 		}
 
-		base = 0;
-
 		while (len > 0) {
 			start = dt_mem_next_cell(dt_root_addr_cells, &prop);
 			end = start + dt_mem_next_cell(dt_root_size_cells,
 						       &prop);
 
+			base = 0;
 			ret = __reserved_mem_alloc_in_range(size, align,
 					start, end, nomap, &base);
 			if (ret == 0) {

-- 
2.34.1


