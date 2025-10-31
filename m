Return-Path: <devicetree+bounces-233767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7338C255C5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B68013B8B63
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD2CA3451BF;
	Fri, 31 Oct 2025 13:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="iaBfzCTi"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F99B309EF4
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 13:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761918864; cv=none; b=kkf7Mkixm9NHSFBR80Q4cSA+2R6DuDzxwfX6zMh+BLLWcK3BYqf5vHME6Pt8aqrn6aGaIlTQHp2iOqMDDgBDovw1OKJVwpFJOeGXBIAk44d43E2r/4i4reKLoyp75Jo6YBT93nsyjk5DPWlzf1NH185lQ/v5SMN1WIBOsHiyfNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761918864; c=relaxed/simple;
	bh=asAFsQ8F4ZYJqFSR3Zv8xcgKb8/7+CLRiStvVMcPgwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=eiuftusmcdegHUJ7LxARoVp005JGxUIWPuBCNzt5Lp6BRxqqINFH2Pv1l7FgaRYcanBXMIPsUpBUw+8Vy3cfHhJilFDICJIIE6BiFDfOgNetp5NA7p3emPdMIvNgEY2BkYxOsSBeJzhCGTjWDy2LaypNhYngAiLwSXTP7+KDptA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=iaBfzCTi; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20251031135418euoutp01c8ffd337f31d4c805b3ea036dbf30e9c~zl93aqB7W0367803678euoutp01B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 13:54:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20251031135418euoutp01c8ffd337f31d4c805b3ea036dbf30e9c~zl93aqB7W0367803678euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1761918858;
	bh=Biwe3xggY6rX66H/gYXOoATgjPhp88WrOScO7zPxMig=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=iaBfzCTizhDjc5gow7AhT58vuDx9h05kGixniiU3hamt4lFZnlBWVs7tqkz0uEFZu
	 qMcshY4usR3ALixCwSfL7fUeYs7r6QUGJuJbNXh39vH8HNZ1RpzA1GkrKKT0U+fGMV
	 CuLCKPuc0/8UJPC5iJCoKsSsPpmDimNKjYG5AC5o=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20251031135417eucas1p229a2f6bb12f5ebbeb4ad74c155347e1a~zl921986N0589105891eucas1p2P;
	Fri, 31 Oct 2025 13:54:17 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251031135416eusmtip1695a6772d241ce4f9305448af7d48726~zl91_Dyis1078110781eusmtip1f;
	Fri, 31 Oct 2025 13:54:16 +0000 (GMT)
Message-ID: <aff4e3de-6dde-475b-9df0-3d7d6ad5d740@samsung.com>
Date: Fri, 31 Oct 2025 14:54:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: RPi 4 deferred probe timeout of V3D PM domain
To: Mark Brown <broonie@kernel.org>
Cc: Stefan Wahren <wahrenst@gmx.net>, Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli
	<florian.fainelli@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Ray
	Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Melissa Wen
	<mwen@igalia.com>, =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Maxime
	Ripard <mripard@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	kernel-dev@igalia.com, kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, "open
 list:GENERIC PM DOMAINS" <linux-pm@vger.kernel.org>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <3c171b6b-f8f5-4192-a3a3-da453a900316@sirena.org.uk>
Content-Transfer-Encoding: 7bit
X-CMS-MailID: 20251031135417eucas1p229a2f6bb12f5ebbeb4ad74c155347e1a
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20251030191426eucas1p29ce063b538b60e4a998bcd32f925267c
X-EPHeader: CA
X-CMS-RootMailID: 20251030191426eucas1p29ce063b538b60e4a998bcd32f925267c
References: <ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
	<a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
	<10a4ef77-0e70-4ef2-b1df-535b476d256d@sirena.org.uk>
	<ecd75fd5-3131-4d10-ae3d-b6f608d9622a@gmx.net>
	<25e500c2-3dc1-476c-b6c1-ac4098a0501d@sirena.org.uk>
	<d6b14388-e0ab-44f0-b4d9-78adf74c2a7f@gmx.net>
	<d88f6420-5013-4856-99d6-da28f79bd7a5@sirena.org.uk>
	<CGME20251030191426eucas1p29ce063b538b60e4a998bcd32f925267c@eucas1p2.samsung.com>
	<043f1702-52fc-4a83-82f7-683a26851623@gmx.net>
	<b02c8890-4568-4afe-8628-10b77e79bf44@samsung.com>
	<3c171b6b-f8f5-4192-a3a3-da453a900316@sirena.org.uk>

On 31.10.2025 13:39, Mark Brown wrote:
> On Thu, Oct 30, 2025 at 09:12:57PM +0100, Marek Szyprowski wrote:
>> On 30.10.2025 20:13, Stefan Wahren wrote:
>>> Any ideas how to solve this?
>> As I mentioned in the other thread, this is imho a configuration issue.
>> If core modules are distributed on NFS rootfs, then one should increase
>> deferred probe timeout by adding deferred_probe_timeout=60 to cmdline.
> Like I say I just don't think we should apply timeouts that take things
> out of commision entirely.
>
>> On the other hand drivers built into the kernel should not depend on the
>> resources provided by the drivers built as modules, so maybe it would
>> make sense to change CONFIG_CLK_RASPBERRYPI from 'm' to 'y' in
>> arch/arm64/configs/defconfig.
> Or the GPU driver should be moved to a module to match the clock.

V3D already is being built as a module in ARM64's defconfig. The problem 
is in CONFIG_BCM2835_POWER driver (defaults to 'y'), which depends on 
resources provided by CONFIG_CLK_RASPBERRYPI (defaults to 'm'). IMHO 
both of them should be built-in and this will solve this issue.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


