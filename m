Return-Path: <devicetree+bounces-247430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 429D0CC7AE8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE102303CF60
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 761E4357A30;
	Wed, 17 Dec 2025 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="QHodV+re"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF68357721
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765975472; cv=none; b=Qz8gWV/+wtLTHKu6lMWc8yo5D52cINexZJbel1ccrvoHMZBZizn59lABvZxU1Wru4doGgryM56ipAOsSHWIEgfRB8wn7X52oMQWnxk2rkSS4sY15Ils9Cn0D7MO/gXl/piKaqiZXhJm20jRPvUawIEOEEvrJ36FNbTQPy2XV/rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765975472; c=relaxed/simple;
	bh=iIZdyaFeufX+pK/TCh2sfB420+8ZkR4Z6GTvQhuGUk8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=r3Qid+Fkgt9MVkIOzLFpUoAtBB5+Xgrx/LoMUD6pqCZ12DHWhDl20UdycM6TOyJkC7QnM50XCznB0YeuZzhcrz/TWsQtbCoPUXBXV7tlvBBs9MBMLroLMEYdUYqy5DC0inZ0IMlNZ0xhpthm+/V8FeaYv+1LqxGSe5JKMUypy6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=QHodV+re; arc=none smtp.client-ip=203.254.224.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20251217124420epoutp032f6adb8a7da2dc0ebcb03c722a9bbcca~CAVM0HjPq1463614636epoutp03l
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:44:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20251217124420epoutp032f6adb8a7da2dc0ebcb03c722a9bbcca~CAVM0HjPq1463614636epoutp03l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1765975460;
	bh=uKzEm9PCAMc/zZKdtRrga2/5a5ppxdX40J7ntSJOBTY=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=QHodV+rePxcHT2AfUJ5tgUpaf+erfVcd6JeQ1GHAE+lBlO/BFbHG0nIecQXXfPOS4
	 VEqy1YB4DYx098hV8hwKX+wird1M0i0tthwtg0V57WFxevP096t4BbEyDBODhxIE/2
	 fXym/Y/Y6uvw+V4I871z/qBGPrZT4IdAodn46PRI=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20251217124419epcas5p434dc74c355eda3f40ba288e5b92a9ad9~CAVLdnpF82366923669epcas5p4x;
	Wed, 17 Dec 2025 12:44:19 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.91]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4dWYQV2RYDz2SSKb; Wed, 17 Dec
	2025 12:44:18 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20251217124417epcas5p337b4252e357397f5b2c9d0ad4ea6ab66~CAVKHP8c-1639116391epcas5p3C;
	Wed, 17 Dec 2025 12:44:17 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20251217124414epsmtip17b0220deca35a595dc0943e5bd78b27b~CAVGu3Chi1017810178epsmtip1G;
	Wed, 17 Dec 2025 12:44:14 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Raghav Sharma'" <raghav.s@samsung.com>, <krzk@kernel.org>,
	<s.nawrocki@samsung.com>, <cw00.choi@samsung.com>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <robh@kernel.org>,
	<conor+dt@kernel.org>, <sunyeal.hong@samsung.com>, <shin.son@samsung.com>
Cc: <linux-samsung-soc@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <chandan.vn@samsung.com>,
	<dev.tailor@samsung.com>, <karthik.sun@samsung.com>
In-Reply-To: <20251119114744.1914416-2-raghav.s@samsung.com>
Subject: RE: [PATCH 1/3] dt-bindings: clock: exynosautov920: add MFD clock
 definitions
Date: Wed, 17 Dec 2025 18:14:12 +0530
Message-ID: <139901dc6f52$dba09d50$92e1d7f0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQH7EhboaEaVd13SrnoN6ZCnkjrAPADo0L1uAwo319O0yOkH8A==
Content-Language: en-us
X-CMS-MailID: 20251217124417epcas5p337b4252e357397f5b2c9d0ad4ea6ab66
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251119113927epcas5p15154cb4a7824e9ca65ac18842b68d785
References: <20251119114744.1914416-1-raghav.s@samsung.com>
	<CGME20251119113927epcas5p15154cb4a7824e9ca65ac18842b68d785@epcas5p1.samsung.com>
	<20251119114744.1914416-2-raghav.s@samsung.com>

Hi Raghav

> -----Original Message-----
> From: Raghav Sharma <raghav.s@samsung.com>
> Sent: Wednesday, November 19, 2025 5:18 PM
> To: krzk@kernel.org; s.nawrocki@samsung.com; cw00.choi@samsung.com;
> alim.akhtar@samsung.com; mturquette@baylibre.com; sboyd@kernel.org;
> robh@kernel.org; conor+dt@kernel.org; sunyeal.hong@samsung.com;
> shin.son@samsung.com
> Cc: linux-samsung-soc@vger.kernel.org; linux-clk@vger.kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; chandan.vn@samsung.com;
> dev.tailor@samsung.com; karthik.sun@samsung.com; Raghav Sharma
> <raghav.s@samsung.com>
> Subject: [PATCH 1/3] dt-bindings: clock: exynosautov920: add MFD clock
> definitions
> 
> Add device tree clock binding definitions for CMU_MFD
> 
> Signed-off-by: Raghav Sharma <raghav.s@samsung.com>
> ---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>



