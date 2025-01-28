Return-Path: <devicetree+bounces-141532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D82E7A212A9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 20:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91EBC7A36B9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 19:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF84D1F8AEB;
	Tue, 28 Jan 2025 19:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="AgwY5gCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994B01E200E
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 19:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738093728; cv=none; b=jWHNYjfk0qqx/pypNkSe9+C7tnaYNEL1qK/J+IqbjUt+GaVUhV0teWPKsisZGj1HNv09qL0RP/0FdFcIrYZnJw7boqGVyJICmIOBUaqbbbxP3Otf/T8WBWSPYZDC87BXDej2gafsLHH281BBdnSoMNfWG2AjHjplSsF7Bm8sMCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738093728; c=relaxed/simple;
	bh=74GQQ1iARGV4ZZF6Ipw2I6AC9+HTNWo1SPXdL5hc2yc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=HQUGV9NniLgLwMqzuqBxADRrcKEzVnduUzot17QcXRPtyUubExQPEvPxZgtOz/cCEFLPrStOJ9k2ohduxka6cBLlVNyC8LJK0vrioxRw7mb5LxMVz/AwuoPDCa8VL/AmHneVPLkR69jFYQOYn3LuDMBwkKVu+V1kswy5UByMOas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=AgwY5gCE; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250128194844euoutp02e32ebab5f15c8072f4b312c029d93a7b~e8wi2jYEs0753507535euoutp02j
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 19:48:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250128194844euoutp02e32ebab5f15c8072f4b312c029d93a7b~e8wi2jYEs0753507535euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1738093725;
	bh=DgeFHCAIbeFBF+0nDHhjAGX/VqaqfX2KAeQLuxONDpc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AgwY5gCE8ipohvH7fy0yOeVOQbo4GQPlj5RpaHDV3f1cCGut6itwCvJ5FuuxfflZG
	 IrmwarG9uNy85yMF1XFFlpwjqBoDRfyyNJwRge0QE334GIgTtKIxmpU3NIlyPVO7vw
	 z2j9taRCffDzpvJ88VmeD0mltOG6gS9Nq2yf3NBc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20250128194844eucas1p23f4a3b17539769a6f877ff79f0defe6d~e8wiXY7sy2211822118eucas1p2L;
	Tue, 28 Jan 2025 19:48:44 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id 7F.F8.20821.C9439976; Tue, 28
	Jan 2025 19:48:44 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250128194843eucas1p28e5e735e526a153138c3539a9ceeec07~e8whxsUTf2889728897eucas1p2C;
	Tue, 28 Jan 2025 19:48:43 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250128194843eusmtrp2a72b81009b4de1f7ec2b077c9c70e06f~e8whw7Eq-0493804938eusmtrp2C;
	Tue, 28 Jan 2025 19:48:43 +0000 (GMT)
X-AuditID: cbfec7f2-b11c470000005155-a1-6799349c8ca6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id CB.BB.19654.B9439976; Tue, 28
	Jan 2025 19:48:43 +0000 (GMT)
Received: from AMDC4942.home (unknown [106.210.136.40]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250128194842eusmtip19dd4d65c97acee7a18cc5c676543c59c~e8wga_kvR0756107561eusmtip1T;
	Tue, 28 Jan 2025 19:48:42 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org,
	wefu@redhat.com, jassisinghbrar@gmail.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, frank.binns@imgtec.com,
	matt.coster@imgtec.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	ulf.hansson@linaro.org, jszhang@kernel.org, p.zabel@pengutronix.de,
	m.szyprowski@samsung.com
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org, Michal Wilczynski
	<m.wilczynski@samsung.com>
Subject: [PATCH v4 14/18] drm/imagination: Enable PowerVR driver for RISC-V
Date: Tue, 28 Jan 2025 20:48:12 +0100
Message-Id: <20250128194816.2185326-15-m.wilczynski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250128194816.2185326-1-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUxTVxzNfe/1vVcG+ChsXFGc1I/BEipMt12jYzI28zLjnJnOxGRzDbwU
	IgVsZXMNOBgf0lLmYDho+ZQQQTZkMFpoERmfheE6BaQkSpEF0WodKV8JM8AorZv/nXN+53fP
	+SWXxgUtZAAdl3CWkyWI44WkB6HvW/oztHSPRhLWYBCgfksVhnTPtBT6ud2MoYoeMw9Zh5ox
	NLIwQ6JrD25R6FF7OoFGa8solNHXQCKb1koih9rKQ8PGUhLN5fUApJ/LJFF9zziFGhYqMHTZ
	oSNQdasRoGzlFR66/fsHaNzaTyDbsBpH2doNaPV6K4VWRhsJVPJ3B4Wa7fk8ZKo/gTI7CokD
	W9iZsSyKtdtsBNudM0+x7YuVBGvQjlOs2nATsE11SpK9N3qdZMsHjrITuSaM/bX6Gzazvg9j
	Ly6HsTM37pDsd811gB3KsFAfC0567I/h4uO+5GS7Ir7wiP3NOIslGelz+VPLeBq4QKkAn4bM
	HqidHCJVwIMWMLUAanKXCBeZB9AxMoW7yByABaq7xPOVhZlr7kENgJnacspF7ABabCbc6SKZ
	N+D9mgqec+DHZBEwqzcdOAnOPARQP1W6FknTvswheOWG1LlAMDvghO4v0om9mAPwqqrI3fBV
	2NH5x/qj/DW9abmWcHl84IBmah3ja54MXcl6JcjUe8BFhw13Lb8P+61t7t6+8LGp2f3oZrhq
	qMBcOBHe1826/SnQoDa58T54z/zPek+cCYENxl0uORJOjHXjThky3nDsqY+rgjcs0Be5ZS+Y
	ky1wuXfCS+q8/0LNtXp3KAs1hSvY9yBI+8Ix2heO0f6fWwnwOuDPJculEk4ensB9JZKLpfLk
	BIkoOlHaBNb+9uCKabYVlD12iLoARoMuAGlc6Of1mblYIvCKEX+t4GSJp2TJ8Zy8C2yiCaG/
	V1VHlkTASMRnudMcl8TJnk8xmh+QhinUQUFhB4+knJj0DGjfmzztH2w7+jQsWocde/d2YNQr
	b3+bXvvSQH/hmbdypi19P9069WxQMegXIorYfOSJuYbMNcbUnDwuagstCwn2+fFCZPUdluys
	jJ19uDV6APs8pSg2amTHSvnenuKD5zJM8pcfnbfHtRm3vendmtX7abOs7p2UyFRPXwM/MDFK
	2tR32bLFvqjcBBuDu/idBYG7FcoIZcv2alPe9h+Ku0vSAjYe/yX1iXV+lVdGDkf6dKqKy+4m
	Ne5X7+zXLelunhZdRccW9MaPej2n415LD226lHpo8sOiB4EKtLEgOm1DCz/ncHhyS/6+9z4R
	7q7SnD9TIwzPpQO2Cgl5rDj8dVwmF/8LQzAUxkoEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKKsWRmVeSWpSXmKPExsVy+t/xu7qzTWamG0xt1bQ4cX0Rk8XW37PY
	LdbsPcdkMf/IOVaLe5e2MFlc+fqezWLd0wvsFi/2NrJYXFsxl92i+dh6NouXs+6xWXzsucdq
	cXnXHDaLz71HGC22fW5hs1h75C67xfqv85ksFn7cymKxZMcuRou2zmWsFhdPuVrcvXeCxeLl
	5R5mi7ZZ/Bb/9+xgt/h3bSOLxex3+9kttryZyGpxfG24Rcv+KSwOch7vb7Sye7x5+ZLF43DH
	F3aPvd8WsHjsnHWX3aNn5xlGj02rOtk87lzbw+Yx72Sgx/3u40wem5fUe7SsPcbk0f/XwOP9
	vqtsHn1bVjF6XGq+zh4gFKVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
	k5Kak1mWWqRvl6CXcWDXJ6aCXRwVE5/8ZW5gbGfvYuTkkBAwkfj6fh1zFyMXh5DAUkaJjafW
	sEIkZCSudb9kgbCFJf5c62KDKHrFKPHoZyszSIJNwEjiwfL5YA0iAotZJPbuqwQpYhZ4yyhx
	feZGoG4ODmEBb4ll+3JBalgEVCXub33EBmLzCjhIrOyaDnWFvMT+g2fBZnICxTf9XQG2WEjA
	XuLR2xlQ9YISJ2c+AYszA9U3b53NPIFRYBaS1CwkqQWMTKsYRVJLi3PTc4uN9IoTc4tL89L1
	kvNzNzEC08u2Yz+37GBc+eqj3iFGJg7GQ4wSHMxKIryx52akC/GmJFZWpRblxxeV5qQWH2I0
	Bbp7IrOUaHI+MMHllcQbmhmYGpqYWRqYWpoZK4nzsl05nyYkkJ5YkpqdmlqQWgTTx8TBKdXA
	ZCV1punatg0ydvccXbZILt4oVDhTbcrPddVFbaVHHXad+Tm35NXrDMP+K3fzV/v7eXbLbtyr
	VLeJPWF/t6+/sqfW3tLgsDahZ+E5Uc+Nr93a9uX3jA/reT8JFdiKpRhw9AVlu8hkKk1W2Xzi
	/69pq/hNHjYtf7DLvtNwiqOehm8DX8DpuR+YNE3OsTXs/6e6SzjhlHZB5W+Prdv/5rLUdDit
	Lq51EvF/WX/+5aLzK5n2hfzufBD7TTNKiLnzqiPbsWXMSX4eQkHJgcLTgzbPXr/P1Wv1Srkt
	2hmFWmyzD0ZoX1sh8caNM3pJzooIDoEdaasWaM5/9+iZaeq3P9JvjQucPu6aOrPRP8pEJcla
	iaU4I9FQi7moOBEAyO0/yLgDAAA=
X-CMS-MailID: 20250128194843eucas1p28e5e735e526a153138c3539a9ceeec07
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250128194843eucas1p28e5e735e526a153138c3539a9ceeec07
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20250128194843eucas1p28e5e735e526a153138c3539a9ceeec07
References: <20250128194816.2185326-1-m.wilczynski@samsung.com>
	<CGME20250128194843eucas1p28e5e735e526a153138c3539a9ceeec07@eucas1p2.samsung.com>

Several RISC-V boards feature Imagination GPUs that are compatible with
the PowerVR driver. An example is the IMG BXM-4-64 GPU on the Lichee Pi
4A board. This commit adjusts the driver's Kconfig dependencies to allow
the PowerVR driver to be compiled on the RISC-V architecture.

By enabling compilation on RISC-V, we expand support for these GPUs,
providing graphics acceleration capabilities and enhancing hardware
compatibility on RISC-V platforms.

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 drivers/gpu/drm/imagination/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imagination/Kconfig b/drivers/gpu/drm/imagination/Kconfig
index 3bfa2ac212dc..5f218896114c 100644
--- a/drivers/gpu/drm/imagination/Kconfig
+++ b/drivers/gpu/drm/imagination/Kconfig
@@ -3,7 +3,7 @@
 
 config DRM_POWERVR
 	tristate "Imagination Technologies PowerVR (Series 6 and later) & IMG Graphics"
-	depends on ARM64
+	depends on (ARM64 || RISCV)
 	depends on DRM
 	depends on PM
 	select DRM_EXEC
-- 
2.34.1


