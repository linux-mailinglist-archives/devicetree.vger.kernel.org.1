Return-Path: <devicetree+bounces-153318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442EA4BFDF
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 13:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56191188E1E0
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 12:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF7220E30C;
	Mon,  3 Mar 2025 12:09:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10D641F426F
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 12:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741003755; cv=none; b=eFyCeFAJnqIezs8qym1bIif5f5PNVIpdNorAGmSGW0f6L+OnflRMyywZKrqtuld53Lg53kPoFXrrEhHxIA+6X0cF+5ba7tfuu3xm/ffzT2bC9ByC3/ZfGqlhqail2neGnVVaF076zvVIc9fUspCXnGzG/Vy4r44CsUe4QvLUABs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741003755; c=relaxed/simple;
	bh=CwRY/rTetmbFsCAGzHS6I5hPpA3XCZob2B/wGQCeqqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=knO2ynb5ap8W2eBi7WL1LsbY9GflSVbnxMJ22RofTrqTpyHoghgq8K/PEkiNrXF+D9pMfFtOhrGl/V1KNWYimxUxIyQPNTGtNUAxB8RIaYiOH2qhWv/MJHLqSuNk/Q+dsvtxSwuDIdQBveFpmBnbYD4HG6DTaL6M+HcDJBD/Wis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CBCA113E
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 04:09:27 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1AA623F673
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 04:09:12 -0800 (PST)
Date: Mon, 3 Mar 2025 12:08:51 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev
Subject: Re: [PATCH 6/9] drm/panthor: Reset GPU after L2 cache power off
Message-ID: <Z8Wb05rmGW0ORnJB@e110455-lin.cambridge.arm.com>
References: <20250227170012.124768-1-marex@denx.de>
 <20250227170012.124768-7-marex@denx.de>
 <Z8GY0nWXOxCKF-XL@e110455-lin.cambridge.arm.com>
 <fa88c1c1-89ba-4a10-bd57-0819d7740c0a@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fa88c1c1-89ba-4a10-bd57-0819d7740c0a@denx.de>

On Fri, Feb 28, 2025 at 06:05:36PM +0100, Marek Vasut wrote:
> On 2/28/25 12:06 PM, Liviu Dudau wrote:
> > Hi Marek,
> 
> Hi,
> 
> > On Thu, Feb 27, 2025 at 05:58:06PM +0100, Marek Vasut wrote:
> > > This seems necessary on Freescale i.MX95 Mali G310 to reliably resume
> > > from runtime PM suspend. Without this, if only the L2 is powered down
> > > on RPM entry, the GPU gets stuck and does not indicate the firmware is
> > > booted after RPM resume.
> > 
> > That doesn't sound right. Can you tell me what GPU firmware are you running
> > (we are now printing the git sha of the image at boot time).
> Please see below. It could be some sort of NXP firmware fork ?
> 
> It comes from the NXP firmware repo , mali-imx-r50.2-710cfb6 .
> 
> panthor 4d900000.gpu: [drm] clock rate = 1000000000
> panthor 4d900000.gpu: EM: created perf domain
> panthor 4d900000.gpu: [drm] mali-unknown id 0xac74 major 0x0 minor 0x0
> status 0x1
> panthor 4d900000.gpu: [drm] Features: L2:0x7110306 Tiler:0x809 Mem:0x1
> MMU:0x2830 AS:0xff
> panthor 4d900000.gpu: [drm] shader_present=0x1 l2_present=0x1
> tiler_present=0x1
> panthor 4d900000.gpu: [drm] Firmware protected mode entry not be supported,
> ignoring
> panthor 4d900000.gpu: [drm] Firmware git sha:
> 8e5cfcfec20cc8aff8509d37e72babc935d34a3b

This looks like it has been part of a R50 release of the DDK, which is recent
enough to consider it up-to-date. The issues you're seeing with fast resume are
probably due to some integration issues or other quirks.

Boris has the most recent experience with playing with fast resume, maybe
he can share some tips on where to add messages in Panthor to try to debug
your problem.

Best regards,
Liviu

> panthor 4d900000.gpu: [drm] CSF FW using interface v1.1.0, Features 0x0
> Instrumentation features 0x71
> [drm] Initialized panthor 1.3.0 for 4d900000.gpu on minor 0
> 
> $ sha256sum mali_csffw.bin
> befd23b9279b26010ebf35c835cc3aa7d0f50758930c7306ff4f5abbe5218624
> mali_csffw.bin
> 
> [...]

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

