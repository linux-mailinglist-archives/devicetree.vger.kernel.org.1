Return-Path: <devicetree+bounces-207715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9E9B308E0
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 00:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44A551892FA3
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 22:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65CB82E9ED0;
	Thu, 21 Aug 2025 22:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="JA7/0yvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9406D2D47E2
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 22:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755813788; cv=none; b=lYJD//jts71JDRyVG+BKxGmgVAuQ+y1srgq3MLVR32QWkmkuNUEbZ933S+tS/mFe9jV2bx9oRHPK+yzqNpfr2A24nBBPlJZ1Ej8UDpCd97G3gwO7+GM6BYOEJCsjtiZcd9N1ikDEidbhH+b+/QKBk01Yo2zlb4lP9YKmdsy6alA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755813788; c=relaxed/simple;
	bh=oR65Qj7SH0G+S4Zh+xG1a/LnHeuQCPAES3C3P0NuiYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=bphacm7h7jpiWsaZKznsCQxQU0qb0en9tg+Me6keowN11UNtmjjipy+wsAr2R1oUAU82E6mENWuPLXAW5e2umvBMkjHOCX251ri8MHRP/3j4bKbYJj2BhWRRWcdrwfODyB9EnZXmPtd35K18CUUdJZoIi9C5zOIQjptufRriIu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=JA7/0yvQ; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250821220257euoutp016b3135724aceb6fc3e47be7e64e7c5eb~d51QLOskw1668816688euoutp01B
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 22:02:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250821220257euoutp016b3135724aceb6fc3e47be7e64e7c5eb~d51QLOskw1668816688euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755813777;
	bh=FhMuLkPlqfOoY3HIjX51+kKhFnIWCP0l9JSXpliABCM=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=JA7/0yvQ9bCoZF7Gao2nrxDRcUPghZ/NnCzteaYJ3z8KWW17iOhcIqkflQLcbCGke
	 JoSwhBZpTny62tt11p3bJesDP5T7I8CrHVkS9lnGecvQVVA1hEn14jVVuMhdXmZRhm
	 XzkOGQNI4ARvYpm/Vo/b+NXer98BSONe8U6Ucw6w=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250821220256eucas1p2c4854f72c98d23d6b8a6247712430482~d51OvRzKh0715107151eucas1p2U;
	Thu, 21 Aug 2025 22:02:56 +0000 (GMT)
Received: from [192.168.1.44] (unknown [106.210.136.40]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250821220255eusmtip12f604debb503f4c26d3d8ae003a6c9a1~d51Nw2j0p2648126481eusmtip1c;
	Thu, 21 Aug 2025 22:02:55 +0000 (GMT)
Message-ID: <1b7b1e78-e94c-4d5b-a023-61852d2f7951@samsung.com>
Date: Fri, 22 Aug 2025 00:02:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 1/4] drm/imagination: Use pwrseq for TH1520 GPU
 power management
To: Matt Coster <Matt.Coster@imgtec.com>, Ulf Hansson
	<ulf.hansson@linaro.org>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel
	<p.zabel@pengutronix.de>, Frank Binns <Frank.Binns@imgtec.com>, Maarten
	Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Marek Szyprowski
	<m.szyprowski@samsung.com>, Drew Fustini <fustini@kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Language: en-US
From: Michal Wilczynski <m.wilczynski@samsung.com>
In-Reply-To: <27d70d29-9e37-4905-9d22-0266c8a290a2@imgtec.com>
Content-Transfer-Encoding: 7bit
X-CMS-MailID: 20250821220256eucas1p2c4854f72c98d23d6b8a6247712430482
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250820085609eucas1p2938d69999f4d7c9654d5d2a12a20c906
X-EPHeader: CA
X-CMS-RootMailID: 20250820085609eucas1p2938d69999f4d7c9654d5d2a12a20c906
References: <CGME20250820085609eucas1p2938d69999f4d7c9654d5d2a12a20c906@eucas1p2.samsung.com>
	<20250820-apr_14_for_sending-v12-0-4213ccefbd05@samsung.com>
	<20250820-apr_14_for_sending-v12-1-4213ccefbd05@samsung.com>
	<CAPDyKFqeOUwTbZEUFmHS2Onyj5LZ1b26vGgC4=UHUOxhwbzjRw@mail.gmail.com>
	<27d70d29-9e37-4905-9d22-0266c8a290a2@imgtec.com>



On 8/21/25 11:02, Matt Coster wrote:
> On 20/08/2025 18:08, Ulf Hansson wrote:
>> On Wed, 20 Aug 2025 at 10:56, Michal Wilczynski
>>> +#endif /* IS_ENABLED(CONFIG_POWER_SEQUENCING) */
>>
>> Yeah, this looks really messy to me.
>>
>> If there is something missing in the pwrseq interface to make this
>> simpler, let's add that instead of having to keep this if/def hacks
>> around.
> 
> Agreed (now that I've actually done my homework), I see no reason to
> keep the IS_ENABLED(...) checks around.
> 
> Cheers,
> Matt

Thank you both for the feedback, I haven't noticed that there are stubs
already. Will re-roll the patchset.

> 
>>
>> [...]
>>
>> Other than the if/def hacks, I think this looks good to me!
>>
>> Kind regards
>> Uffe
> 
> 

Best regards,
-- 
Michal Wilczynski <m.wilczynski@samsung.com>

