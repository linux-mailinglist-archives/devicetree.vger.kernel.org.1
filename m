Return-Path: <devicetree+bounces-280276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FgbFrSkw2lssQQAu9opvQ
	(envelope-from <devicetree+bounces-280276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:02:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB25321CFF
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D81E3053DC8
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78CB0346FB3;
	Wed, 25 Mar 2026 09:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="ApqFj490"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F94238D27
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774429235; cv=none; b=taW1kWPA8AYdfkovDdIMeC1N2FrlxgKEuOTCOLeszfetfej3rtebBrQUOifTZY5iv5jgb/ydbG7TzvswgNFlLIOG/cC6usDbFKVusR9ZulgObg+Q4g+RyX4UOIKsUz6ec5+/aMoks++zLWxOLFMj0DXvV9l627fwO1q+v7ZplVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774429235; c=relaxed/simple;
	bh=p0RL3hV148IGeHbcQb6xM646ZYdDUuJSbyJY3qrJtmY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
	 References; b=NsTAmkXgfmAr5p3+UkdW+WvSOm+S3VO1/klIJQK8yXoRdiWcnsVfRKBVgaJqL+joEutoGMr2u4UsMwdGejtgu597N/JmQyK57ewMB3uvNxSWTTcgq8p1vc+w4PaiHOGZU4NIst5cHNXNl4t3zGnWTtW+0COJd1fbbvGhoG+eCSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=ApqFj490; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260325090030euoutp011dc77225df3c7daa702bde2863b7af07~gCfvQYr3Q2584925849euoutp01N
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:00:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260325090030euoutp011dc77225df3c7daa702bde2863b7af07~gCfvQYr3Q2584925849euoutp01N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774429230;
	bh=xr00VxfpgT/xYpT8va2S85ir5lg1pq/tHyuOxyPdoSE=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ApqFj490J2FaCBWf05Sulxqu8/krLyh5tS1JpbonyFntdOWGiL36NEr0gzf10MIs0
	 LdZBWwy5xk6UaI936G/12KABKq7oiSbx6Fvn3hnuxCW7xAEv+SofUAeFa28PAPLmTF
	 45pnDzMvYFWraE42QZbwUwqhtB8aYUOYxWUrhDeI=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260325090029eucas1p1932917cc4839c3349932aeda37a7125d~gCfu8a8si1802018020eucas1p1r;
	Wed, 25 Mar 2026 09:00:29 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260325090029eusmtip1481ac2e1eac2b8395f0dc2fa13d06d72~gCfuZuF8-0140501405eusmtip1L;
	Wed, 25 Mar 2026 09:00:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mm@kvack.org, iommu@lists.linux.dev
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Oreoluwa Babatunde
	<oreoluwa.babatunde@oss.qualcomm.com>, Saravana Kannan
	<saravanak@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Robin
	Murphy <robin.murphy@arm.com>
Subject: [PATCH v3 0/7] Refactor reserved memory regions handling code
Date: Wed, 25 Mar 2026 10:00:16 +0100
Message-Id: <20260325090023.3175348-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260325090029eucas1p1932917cc4839c3349932aeda37a7125d
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260325090029eucas1p1932917cc4839c3349932aeda37a7125d
X-EPHeader: CA
X-CMS-RootMailID: 20260325090029eucas1p1932917cc4839c3349932aeda37a7125d
References: <CGME20260325090029eucas1p1932917cc4839c3349932aeda37a7125d@eucas1p1.samsung.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[samsung.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280276-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:dkim,samsung.com:mid]
X-Rspamd-Queue-Id: CCB25321CFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

The reserved memory regions handling code was reworked to handle
unlimited so called "static" memory nodes in commit 00c9a452a235 ("of:
reserved_mem: Add code to dynamically allocate reserved_mem array").

The side effect of this rework was a set of bugs fixed later by commits
0fd17e598333 ("of: reserved_mem: Allow reserved_mem framework detect
"cma=" kernel param") and 2c223f7239f3 ("of: reserved_mem: Restructure
call site for dma_contiguous_early_fixup()"). As a result, the code in
drivers/of/of_reserved_mem.c became a mix of generic code and CMA
specific fixups.

In this patchset I try to untangle this spaghetti and perform some code
cleanup. I hope nothing breaks this time.

Best regards
Marek Szyprowski, PhD
Samsung R&D Institute Poland


Changelog:

v3:
- fixed more issues pointed by Sashiko in
  https://sashiko.dev/#/patchset/20260323100901.4079171-1-m.szyprowski@samsung.com
  (restored use of _OF_DECLARE macro, extended some comments and commit
  descriptions, the remaining items I consider not relevant)

v2: https://lore.kernel.org/all/20260323100901.4079171-1-m.szyprowski@samsung.com/
- added missing ops assignment removal in tegra210-emc-table and swiotlb
  drivers
- fixed issues pointed by kernel test robot and Sashiko: removed typos,
  improved comments
- fixed incorrect node passed to fdt_validate_reserved_mem_node() in
  fdt_scan_reserved_mem_reg_nodes()

v1: https://lore.kernel.org/all/20260313150802.1121442-1-m.szyprowski@samsung.com/
- initial version


Patch summary:

Marek Szyprowski (7):
  of: reserved_mem: remove fdt node from the structure
  of: reserved_mem: use -ENODEV instead of -ENOENT
  of: reserved_mem: switch to ops based OF_DECLARE()
  of: reserved_mem: replace CMA quirks by generic methods
  of: reserved_mem: rearrange code a bit
  of: reserved_mem: clarify fdt_scan_reserved_mem*() functions
  of: reserved_mem: rework fdt_init_reserved_mem_node()

 drivers/memory/tegra/tegra210-emc-table.c |  19 +-
 drivers/of/fdt.c                          |   2 +-
 drivers/of/of_private.h                   |   2 +-
 drivers/of/of_reserved_mem.c              | 320 +++++++++++++---------
 include/linux/cma.h                       |  10 -
 include/linux/dma-map-ops.h               |   3 -
 include/linux/of_reserved_mem.h           |  16 +-
 kernel/dma/coherent.c                     |  19 +-
 kernel/dma/contiguous.c                   |  86 ++++--
 kernel/dma/swiotlb.c                      |  19 +-
 10 files changed, 285 insertions(+), 211 deletions(-)

-- 
2.34.1


