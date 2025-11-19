Return-Path: <devicetree+bounces-240166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BF6C6E229
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:07:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C0B8734B259
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20EC334EEE0;
	Wed, 19 Nov 2025 11:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="srfoqts+"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A1534EEE6
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550219; cv=none; b=Jz0rKT8wMh5F+cs1iJkFncK1FnY1Vgt/8czmtaR9UUVZX7Hp28q0+DsVNo+iEX8S1TwoZa33rjZhnnouMieyDov41SEhqEX9G0fkQ2efRoClH+uOOHNopjaMB2tGV1RAE3FsUrl20VLEL7vdWglqqBdaFFEbCZkpA6X2s0l2F30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550219; c=relaxed/simple;
	bh=cmsffZOuHxL5Qaqbxv2ybstmIRrQd5fzYigoO3vtk2Q=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=IvTAwGDWnLBC+JSrNWKy7fhdNPvXb5m+Xq1U0MdqG+bKsttRT8Wo+Jw4hz39dSOzUdaGUMUqJ5yFfxbwtstW5w7W6w15hi2PEEKss7gj5UaSihVCOQ64mYO2sDX3h7RHwhgbUwkjwIErs9LArP4O7/8TKXSih7aiqarZ4f6ye4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=srfoqts+; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20251119110333epoutp040560505c12e4e41895b0248eb1fd63c2~5Y5NRRJQe0685606856epoutp04X
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:03:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20251119110333epoutp040560505c12e4e41895b0248eb1fd63c2~5Y5NRRJQe0685606856epoutp04X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763550213;
	bh=utyQ56Iwp0bE0o5k8NLdtz9Zyjjs9puPqvgpDBjrhts=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=srfoqts+XkaVcY8e7Sn5kdV0lCsbTtpJ22b+7u6hBfvHtjCfH4XCY+YKX594jyM7b
	 4bZshuCUpQCml8WA/SkJ8m2TcAyeT15FGAYdFlPp4IH1BJJe13ra7MQmi0xiDVU4pC
	 9ML2ts1t18FJAUW0Pzn39O/PV/zyCrmRze0GzhHA=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251119110332epcas5p1e7576a2f6f2f68fdd692f43fa6b456b7~5Y5MUbs-q1958119581epcas5p13;
	Wed, 19 Nov 2025 11:03:32 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.93]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4dBJW72nQWz2SSKZ; Wed, 19 Nov
	2025 11:03:31 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20251119110330epcas5p10fe5035ad50ad1f5cfa3eb42830ac401~5Y5Kj0FOb1937319373epcas5p14;
	Wed, 19 Nov 2025 11:03:30 +0000 (GMT)
Received: from FDSFTE411 (unknown [107.122.81.184]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20251119110320epsmtip214c80850a63127e66a162ef624825255~5Y5Auz_Pp1541615416epsmtip2X;
	Wed, 19 Nov 2025 11:03:19 +0000 (GMT)
From: "Ravi Patel" <ravi.patel@samsung.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<jesper.nilsson@axis.com>, <lars.persson@axis.com>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <alim.akhtar@samsung.com>,
	<s.nawrocki@samsung.com>, <cw00.choi@samsung.com>
Cc: <ksk4725@coasia.com>, <smn1196@coasia.com>, <linux-arm-kernel@axis.com>,
	<krzk@kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<pjsin865@coasia.com>, <gwk1013@coasia.com>, <bread@coasia.com>,
	<jspark@coasia.com>, <limjh0823@coasia.com>, <lightwise@coasia.com>,
	<hgkim05@coasia.com>, <mingyoungbo@coasia.com>, <shradha.t@samsung.com>,
	<swathi.ks@samsung.com>, <kenkim@coasia.com>
In-Reply-To: <20251029130731.51305-1-ravi.patel@samsung.com>
Subject: RE: [PATCH v3 0/4] Add basic clock and pmu support for the Axis
 ARTPEC-9 SoC
Date: Wed, 19 Nov 2025 16:33:17 +0530
Message-ID: <027f01dc5944$239f6890$6ade39b0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFuBG9fI91CU/dBRNhjuFekaH32YALr0KoHtb8gl/A=
Content-Language: en-in
X-CMS-MailID: 20251119110330epcas5p10fe5035ad50ad1f5cfa3eb42830ac401
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251029130809epcas5p3cd5341d86ffac5fe18d8541c8018e568
References: <CGME20251029130809epcas5p3cd5341d86ffac5fe18d8541c8018e568@epcas5p3.samsung.com>
	<20251029130731.51305-1-ravi.patel@samsung.com>

Gentle reminder to review this patch series.

Thanks,
Ravi

> -----Original Message-----
> From: Ravi Patel <ravi.patel@samsung.com>
> Sent: 29 October 2025 18:37
> To: robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org; jesper.nilsson@axis.com; lars.persson@axis.com;
> mturquette@baylibre.com; sboyd@kernel.org; alim.akhtar@samsung.com; s.nawrocki@samsung.com; cw00.choi@samsung.com
> Cc: ravi.patel@samsung.com; ksk4725@coasia.com; smn1196@coasia.com; linux-arm-kernel@axis.com; krzk@kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> linux-clk@vger.kernel.org; pjsin865@coasia.com; gwk1013@coasia.com; bread@coasia.com; jspark@coasia.com; limjh0823@coasia.com;
> lightwise@coasia.com; hgkim05@coasia.com; mingyoungbo@coasia.com; shradha.t@samsung.com; swathi.ks@samsung.com;
> kenkim@coasia.com
> Subject: [PATCH v3 0/4] Add basic clock and pmu support for the Axis ARTPEC-9 SoC
> 
> Add basic clock driver and pmu compatible support for the
> Axis ARTPEC-9 SoC which contains 6-core Cortex-A55 CPU
> and other several IPs. This SoC is an Axis-designed chipset
> used in surveillance camera products.
> 
> This ARTPEC-9 SoC has a variety of Samsung-specific IP blocks and
> Axis-specific IP blocks and SoC is manufactured by Samsung Foundry.
> 
> This patch series includes below changes:
> - CMU (Clock Management Unit) driver and its bindings (patch #1 to #3)
> - PMU bindings (patch #4)
> 
> The patch series has been tested on the ARTPEC-9 EVB with
> Linux Samsung SoC tree (for-next branch) and intended
> to be merged via the `arm-soc` tree.
> 
> ---
> Changes in v3:
> - Resend all patches in single thread
> 
> Link to v2: https://lore.kernel.org/linux-samsung-soc/20251029125641.32989-1-ravi.patel@samsung.com/
> ---
> 
> Changes in v2:
> - Decouple the device tree related patches which was present in v1 (Patch #5 to #7)
>   Device tree related patches will be sent in separate series.
> - Fix the division issue (in arm target) reported by kernel test in patch #2
> 
> Link to v1: https://lore.kernel.org/linux-samsung-soc/20250917085005.89819-1-ravi.patel@samsung.com/
> ---
> 
> GyoungBo Min (3):
>   dt-bindings: clock: Add ARTPEC-9 clock controller
>   clk: samsung: Add clock PLL support for ARTPEC-9 SoC
>   clk: samsung: artpec-9: Add initial clock support for ARTPEC-9 SoC
> 
> SungMin Park (1):
>   dt-bindings: samsung: exynos-pmu: Add compatible for ARTPEC-9 SoC
> 
>  .../bindings/clock/axis,artpec9-clock.yaml    |  232 ++++
>  .../bindings/soc/samsung/exynos-pmu.yaml      |    1 +
>  drivers/clk/samsung/Makefile                  |    1 +
>  drivers/clk/samsung/clk-artpec9.c             | 1224 +++++++++++++++++
>  drivers/clk/samsung/clk-pll.c                 |  185 ++-
>  drivers/clk/samsung/clk-pll.h                 |   17 +
>  include/dt-bindings/clock/axis,artpec9-clk.h  |  195 +++
>  7 files changed, 1847 insertions(+), 8 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/axis,artpec9-clock.yaml
>  create mode 100644 drivers/clk/samsung/clk-artpec9.c
>  create mode 100644 include/dt-bindings/clock/axis,artpec9-clk.h
> 
> --
> 2.17.1



