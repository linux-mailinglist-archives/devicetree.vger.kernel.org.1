Return-Path: <devicetree+bounces-275348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJmcKm0ptGkQiQAAu9opvQ
	(envelope-from <devicetree+bounces-275348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:12:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F072285ADF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:12:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE61330D72FB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410223A5E61;
	Fri, 13 Mar 2026 15:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="kSqUTRdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB45398903
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773414494; cv=none; b=CMA0cDYFIR/uM3m6vIH3aWd7hAcKLwCneJgfjQTLDs6liQvQq41QMlrADA0q0U9zwVqcGxWK8VTasewqnqqTSoVNHbrIfOjnk4fb4bIazayNuu1cTEm1nzj31QSUWe6boi1+3fA840KQIHDvq82tOcv11hRK5HtAhX3ye60SFFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773414494; c=relaxed/simple;
	bh=ST+7NIYtJCOYQkvOnHtK+3x4EgE/BOwVjC/OYpZE3ng=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
	 References; b=oqRu980ND1fUO1RzT3ODg5daJHNDb9I3R7+IZKvffzlXFoViaG+wOmAGBdIcMqAoHCo2W15DnvZn5/hv4/IodvqXfDmS+7k1CIwG4F00mnesjuJoFHhxyolS1hnZooXTDDskVfs2ee4HYDncPSpHtRIcxru2bEjLurQmkSqgS90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=kSqUTRdF; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260313150810euoutp022782b685b28654e5b758a1ec2acbf902~cbxU7fm_50097200972euoutp02D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:08:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260313150810euoutp022782b685b28654e5b758a1ec2acbf902~cbxU7fm_50097200972euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1773414490;
	bh=ieZsFx6ApTvtzCX6XrisGuhU15p9rYRXxzDN/ZilEbc=;
	h=From:To:Cc:Subject:Date:References:From;
	b=kSqUTRdFlhls6LGeB/gW1ePORD385noPahaD89ukVIdsLtkfmMLxMi1hRSBM4a4+s
	 fLmeERysE9XYIVodCKyzifD1u2T5SvBRSOzM43fsVtseGFxrnWB07C+7kojwAFbKOt
	 /zBYM+9w+x09ZcKH02ijpFMVQTAyrDmU+2PMlACI=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260313150809eucas1p169ab0904a217a04e0601e2ef01854c73~cbxUNE6ka1866218662eucas1p1i;
	Fri, 13 Mar 2026 15:08:09 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260313150808eusmtip1d9210d2958f7bd448b7051b9db3217fc~cbxTpGxpl0299002990eusmtip1w;
	Fri, 13 Mar 2026 15:08:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Oreoluwa Babatunde
	<oreoluwa.babatunde@oss.qualcomm.com>, Andrew Morton
	<akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 0/7] Refactor reserved memory regions handling code
Date: Fri, 13 Mar 2026 16:07:55 +0100
Message-Id: <20260313150802.1121442-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260313150809eucas1p169ab0904a217a04e0601e2ef01854c73
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260313150809eucas1p169ab0904a217a04e0601e2ef01854c73
X-EPHeader: CA
X-CMS-RootMailID: 20260313150809eucas1p169ab0904a217a04e0601e2ef01854c73
References: <CGME20260313150809eucas1p169ab0904a217a04e0601e2ef01854c73@eucas1p1.samsung.com>
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
	TAGGED_FROM(0.00)[bounces-275348-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:dkim,samsung.com:mid]
X-Rspamd-Queue-Id: 0F072285ADF
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

Patch summary:

Marek Szyprowski (7):
  of: reserved_mem: remove fdt node from the structure
  of: reserved_mem: use -ENODEV instead of -ENOENT
  of: reserved_mem: switch to ops based OF_DECLARE()
  of: reserved_mem: replace CMA quirks by generic methods
  of: reserved_mem: rearrange code a bit
  of: reserved_mem: clarify fdt_scan_reserved_mem*() functions
  of: reserved_mem: rework fdt_init_reserved_mem_node()

 drivers/memory/tegra/tegra210-emc-table.c |  17 +-
 drivers/of/fdt.c                          |   2 +-
 drivers/of/of_private.h                   |   2 +-
 drivers/of/of_reserved_mem.c              | 289 ++++++++++++----------
 include/linux/cma.h                       |  10 -
 include/linux/dma-map-ops.h               |   3 -
 include/linux/of_reserved_mem.h           |  18 +-
 kernel/dma/coherent.c                     |  19 +-
 kernel/dma/contiguous.c                   |  86 +++++--
 kernel/dma/swiotlb.c                      |  18 +-
 10 files changed, 256 insertions(+), 208 deletions(-)

-- 
2.34.1


