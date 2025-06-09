Return-Path: <devicetree+bounces-183714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A0BAD1995
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:09:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED3CA3ABA0C
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 08:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A322820AA;
	Mon,  9 Jun 2025 08:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="pgasgp+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472BB281367
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 08:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749456562; cv=none; b=k9pUBj2biFrLwzJG9SoA+x1bPNeNj+Je9l7EhOylfKF/D6u4v41nCHaYzG/d925OG8DPgqF4LG9hOHbSO6rPSiJPIiVM2i4FIup/1OqASUOEeQhVqlsphYfqh56tvp0Eyu5DhCTSLJFzKgPQb12yw6Uu7eas2X8IKsejU2b9giY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749456562; c=relaxed/simple;
	bh=8AACitPeHLTam5VzlLo5+bcHH+YOkRrdMQnNubGwCRA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=R1hiqqYtN+QrW+qpfWV/45R5RJHlxprzw8QODxBAmNzotXygY6f4kMd250PpuFvBIy7/cD10pk7tyvG9B8hEkKQZGKHOETG0Gsc75JKpmslzD4qVuRkCPsFdkDolGaGEgt229CMqZWudC7LeMDJmXPirdmmtjbJzm27Re+h0EU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=pgasgp+6; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250609080918epoutp0403e7d07ad1a54196c8d80b1fbd242a00~HUXiBUG2A0867008670epoutp04c
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 08:09:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250609080918epoutp0403e7d07ad1a54196c8d80b1fbd242a00~HUXiBUG2A0867008670epoutp04c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749456558;
	bh=cN9o5yJb7lDfiZzuAc8Z6y89aiz9604YtYG7xD9tzTw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=pgasgp+6AQvZMrxhGTbMIerWhFBSld2H6TzZ7CFtP5CLFGFT4rFuzqFGJ6Mn9J/T+
	 u0GYDLTHXpEe2ScN/ZVneDJQykIp22rpIMNLTSifMrqlCEKYsA5GE4yix1oKPjYNzN
	 F7Ro9455b4wmU3M12HxR5rieWlL1Ja6o/aL3cnfY=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250609080917epcas5p17c6704d44ba3593428bcb9b96f039e56~HUXhnjq5Y2375323753epcas5p1M;
	Mon,  9 Jun 2025 08:09:17 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.179]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bG4MH15c4z3hhT9; Mon,  9 Jun
	2025 08:09:15 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250609080914epcas5p4d304dbdc3a5741045d7e489c370c4417~HUXeeC5qH1804718047epcas5p4z;
	Mon,  9 Jun 2025 08:09:14 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250609080911epsmtip1e3e91558507d9affa05a8678865f25f8~HUXcEjzBR1204112041epsmtip1a;
	Mon,  9 Jun 2025 08:09:11 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Raghav Sharma'" <raghav.s@samsung.com>, <krzk@kernel.org>,
	<s.nawrocki@samsung.com>, <cw00.choi@samsung.com>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <richardcochran@gmail.com>,
	<sunyeal.hong@samsung.com>, <shin.son@samsung.com>
Cc: <linux-samsung-soc@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
	<chandan.vn@samsung.com>, <karthik.sun@samsung.com>,
	<dev.tailor@samsung.com>
In-Reply-To: <20250529112640.1646740-3-raghav.s@samsung.com>
Subject: RE: [PATCH v3 2/4] dt-bindings: clock: exynosautov920: add hsi2
 clock definitions
Date: Mon, 9 Jun 2025 13:39:10 +0530
Message-ID: <043e01dbd915$c9e043a0$5da0cae0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRyuXPQglR2pg1tLiplohNF2WAzQMeJa83AJLEY+CzcMpuQA==
Content-Language: en-us
X-CMS-MailID: 20250609080914epcas5p4d304dbdc3a5741045d7e489c370c4417
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250529111711epcas5p48afd16e6f771a18e3b287b07edd83c22
References: <20250529112640.1646740-1-raghav.s@samsung.com>
	<CGME20250529111711epcas5p48afd16e6f771a18e3b287b07edd83c22@epcas5p4.samsung.com>
	<20250529112640.1646740-3-raghav.s@samsung.com>



> -----Original Message-----
> From: Raghav Sharma <raghav.s@samsung.com>
> Sent: Thursday, May 29, 2025 4:57 PM
> To: krzk@kernel.org; s.nawrocki@samsung.com; cw00.choi@samsung.com;
> alim.akhtar@samsung.com; mturquette@baylibre.com; sboyd@kernel.org;
> robh@kernel.org; conor+dt@kernel.org; richardcochran@gmail.com;
> sunyeal.hong@samsung.com; shin.son@samsung.com
> Cc: linux-samsung-soc@vger.kernel.org; linux-clk@vger.kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; netdev@vger.kernel.org;
> chandan.vn@samsung.com; karthik.sun@samsung.com;
> dev.tailor@samsung.com; Raghav Sharma <raghav.s@samsung.com>
> Subject: [PATCH v3 2/4] dt-bindings: clock: exynosautov920: add hsi2 clock
> definitions
> 
> Add device tree clock binding definitions for CMU_HSI2
> 
> Signed-off-by: Raghav Sharma <raghav.s@samsung.com>
> ---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


