Return-Path: <devicetree+bounces-242330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E405C89492
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA6793AFD65
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6311131B825;
	Wed, 26 Nov 2025 10:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="Fpyq1xZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EFF31619B
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764152791; cv=none; b=uZ0a3NZbqWwtOFFRgz53cW4GG1FDR8+eJpRFmco822Ohxxrw+gG2ohArTlj0Uo/EaG44tFzpRibxGphSZRMOVi54Le0vkSo0DTC2pXIvOVSDI21TTMWv4jph+7+XGy4V9JcaDbCH6mq3kkPb201BaVEH/2snsNu73q1c9SZeSg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764152791; c=relaxed/simple;
	bh=oduIPP6Pb5x85glLjuZcfFO3YpqoPYHoIJMyWUwkgEA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
	 References; b=Jzqqy9F6/TwkEUnPAyKV/cS0aXvMxAN6DKNme8a9GRbNPjwcRWOnezeKIW1/elRN0s8MC79ouTo3ZyTMokTOPVGLM8iSEY3EZW3TDH4zm3Oji7ZCXvPsR9RSlE9dFRFWW7ylwaKaEcfe/pEBrtu4SlyHuH1OtwKExUSwKgOIqKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=Fpyq1xZz; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20251126102627euoutp023f1e3c1c921478af46b31f0c7b0b73ac~7h50AWrEJ1675416754euoutp02w
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:26:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20251126102627euoutp023f1e3c1c921478af46b31f0c7b0b73ac~7h50AWrEJ1675416754euoutp02w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1764152787;
	bh=UVDnzQIpzKeNbxOXO7pLYkiTwCuBfXwjAeqRg2uKXzY=;
	h=From:To:Cc:Subject:Date:References:From;
	b=Fpyq1xZzA9v3wRyakd6DbXUSuJZUnO47V5huS7vruOmOItEGYNKw17m7JvPurMs59
	 Wv5mlPM/U0Y/ngHIS2lOQwMGtWcoEDyTwULh5kG4ss07OmG6cxeZHLG/KUmhboMCqN
	 FwKKF1BtTNaqUd00s8M2+E3r0Li4/iLDXpFTfYD8=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20251126102626eucas1p1ff6379819c325f0dfcf067ca0588ff5c~7h5zKnNtS2317223172eucas1p1j;
	Wed, 26 Nov 2025 10:26:26 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251126102626eusmtip25cc901f7cb4d473c8b0a27c2d66610e8~7h5yxqasm1041610416eusmtip2v;
	Wed, 26 Nov 2025 10:26:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Alim Akhtar
	<alim.akhtar@samsung.com>
Subject: [PATCH v2 0/4] Exynos4: turn off SDIO WLAN chip during system
 suspend
Date: Wed, 26 Nov 2025 11:26:14 +0100
Message-Id: <20251126102618.3103517-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251126102626eucas1p1ff6379819c325f0dfcf067ca0588ff5c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20251126102626eucas1p1ff6379819c325f0dfcf067ca0588ff5c
X-EPHeader: CA
X-CMS-RootMailID: 20251126102626eucas1p1ff6379819c325f0dfcf067ca0588ff5c
References: <CGME20251126102626eucas1p1ff6379819c325f0dfcf067ca0588ff5c@eucas1p1.samsung.com>

Commit 8c3170628a9c ("wifi: brcmfmac: keep power during suspend if board
requires it") changed default behavior of the BRCMFMAC driver, which now
keeps SDIO card powered during system suspend to enable optional support
for WOWL. This feature is not supported by the legacy Exynos4 based
boards and leads to WLAN disfunction after system suspend/resume cycle.
Fix this by annotating SDIO host used by WLAN chip with
'cap-power-off-card' property, which should have been there from the
beginning.

This fixes the following issue observed after system suspend/resume cycle:

brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation

Best regards
Marek Szyprowski, PhD
Samsung R&D Institute Poland


Changelog:
v2:
- separate patch for each board

v1: https://lore.kernel.org/all/20251126093652.3101226-1-m.szyprowski@samsung.com/


Patch summary:

Marek Szyprowski (4):
  ARM: dts: samsung: universal_c210: turn off SDIO WLAN chip during
    system suspend
  ARM: dts: samsung: exynos4210-i9100: turn off SDIO WLAN chip during
    system suspend
  ARM: dts: samsung: exynos4210-trats: turn off SDIO WLAN chip during
    system suspend
  ARM: dts: samsung: exynos4412-midas: turn off SDIO WLAN chip during
    system suspend

 arch/arm/boot/dts/samsung/exynos4210-i9100.dts          | 1 +
 arch/arm/boot/dts/samsung/exynos4210-trats.dts          | 1 +
 arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts | 1 +
 arch/arm/boot/dts/samsung/exynos4412-midas.dtsi         | 1 +
 4 files changed, 4 insertions(+)

-- 
2.34.1


