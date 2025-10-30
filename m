Return-Path: <devicetree+bounces-233412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 291DCC21E09
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 20:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C226B1897ED2
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C63E8329C64;
	Thu, 30 Oct 2025 19:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="V50f4CWT"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FBE2F6199
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 19:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761851399; cv=none; b=oW7EDNwVqvoBxG6V+WZ8OhDDHqgGhtPKLNGzJc901hV4rq1RWSqIzJd6LNwY5nPeZsG1Bj0oJtKA1QFtD/gQBWOlUjmnHQ6dtibTi41qRPXC5gOTVP9bFsY8nZ0Z+n0lM/4K8Ga4OF17L3hf9Zk4x4wVzg83aHrQDe/Ma4BjzDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761851399; c=relaxed/simple;
	bh=vHT3C9T5JVytNM44obecD465eS4AXyhXennOganog5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=KpAs/3qK4MqG/EKVWFadzFGjyp5RuLEVwUBSYVmH6JHCPEW38KYC4guxpIYbwXUymQBOHg1FbHMj4SjOkDSnbZMraL7KoK9DJCueozkhlv9eClntag5iAJgsqJ+mA4NxEfqOc3AuH52MGjoJbVNlDcKGV7HU1obRYOcAys1uVpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=V50f4CWT; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20251030190950euoutp019dbe23cec7283d36fc519661befbcdac~zWoFHcrXV2898028980euoutp01m
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 19:09:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20251030190950euoutp019dbe23cec7283d36fc519661befbcdac~zWoFHcrXV2898028980euoutp01m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1761851390;
	bh=/+x1LX5OmQin6Dq8FxOKHjnYslDEkntbvnJRtJZ0W24=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=V50f4CWT77uKjW2SsksK+p5PzsI6HdYMZIJhtNcrB+ZvVz40VmP93CBjx7fUVy74T
	 qb0mnFWd/HjNLApw2WHh2NQf29gDY9+46L2JjESqp90KRtLA8aAnfQgzR7iy9j7+s8
	 LKSWkeBJlUEIluv/w2i4hv+cDAY4RMCvPDNAMIEY=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20251030190949eucas1p16f0fbaa326f4b11b391ee606e06de25b~zWoEUNbLz2409324093eucas1p1U;
	Thu, 30 Oct 2025 19:09:49 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251030190948eusmtip169f9b036eaa452cf32d70c8d5f198fd8~zWoC10_nK2402524025eusmtip1B;
	Thu, 30 Oct 2025 19:09:47 +0000 (GMT)
Message-ID: <a3ff2ac0-573c-44c6-b8b4-8b6d11548a16@samsung.com>
Date: Thu, 30 Oct 2025 20:09:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
To: Mark Brown <broonie@kernel.org>, Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli
	<florian.fainelli@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Ray
	Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Melissa Wen
	<mwen@igalia.com>, =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Maxime
	Ripard <mripard@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	kernel-dev@igalia.com, kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <d88f6420-5013-4856-99d6-da28f79bd7a5@sirena.org.uk>
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251030190949eucas1p16f0fbaa326f4b11b391ee606e06de25b
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20251030125919eucas1p17450881a921187fd804abf531ccfe1e2
X-EPHeader: CA
X-CMS-RootMailID: 20251030125919eucas1p17450881a921187fd804abf531ccfe1e2
References: <20251005113816.6721-1-wahrenst@gmx.net>
	<9ebda74e-e700-4fbe-bca5-382f92417a9c@sirena.org.uk>
	<a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
	<ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
	<a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
	<10a4ef77-0e70-4ef2-b1df-535b476d256d@sirena.org.uk>
	<ecd75fd5-3131-4d10-ae3d-b6f608d9622a@gmx.net>
	<25e500c2-3dc1-476c-b6c1-ac4098a0501d@sirena.org.uk>
	<d6b14388-e0ab-44f0-b4d9-78adf74c2a7f@gmx.net>
	<CGME20251030125919eucas1p17450881a921187fd804abf531ccfe1e2@eucas1p1.samsung.com>
	<d88f6420-5013-4856-99d6-da28f79bd7a5@sirena.org.uk>

On 30.10.2025 13:59, Mark Brown wrote:
> On Wed, Oct 29, 2025 at 08:51:38PM +0100, Stefan Wahren wrote:
>> Am 28.10.25 um 19:47 schrieb Mark Brown:
>> Okay, here is my theory. The difference is about (boot) time. In my setup
>> the whole device boot from SD card and in your case the kernel modules are
>> stored via NFS.
>> V3D requires two resources, a clock and a PM domain. Additionally the PM
>> domain itself depends on the very same clock. In arm64/defconfig the
>> relevant clock driver is build as module, but the PM domain driver is
>> builtin.
>> During boot "driver_deferred_probe_timeout" (10 s) expires before the clock
>> driver could be loaded via NFS. So the PM domain core gave up:
>> [   16.936547] v3d fec00000.gpu: deferred probe timeout, ignoring dependency
>> So this breaks probing of V3D driver in this case.
> That seems buggy on the part of the core, particularly since userspace
> isn't there yet so we might be missing some filesystems - I would have
> expected the device to probe once the supply becomes available.  But I
> do agree with your analysis, it doesn't look like an issue with this
> driver.

Well, I see this partially as a configuration issue. Probably in case of 
NFS root and modules distributed there it would be good to add 
deferred_probe_timeout=60 or something like that. I'm not sure if there 
can be any generic solution for this kind of issues.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


