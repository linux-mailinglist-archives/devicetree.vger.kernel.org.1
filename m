Return-Path: <devicetree+bounces-14082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DBC7E1FFE
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:28:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 589DBB20BB0
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127F918B0C;
	Mon,  6 Nov 2023 11:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Uax+WBUG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A43182BF
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:28:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9DC8C433CC;
	Mon,  6 Nov 2023 11:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699270111;
	bh=KHYMSuYzfCZFn7iKlZaFmc8xH2hKsNURN3exYOYIYF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uax+WBUGC+X1enzmvLmjGabeE12V0LXoYD77+J300r07tfDIRIziiqnd99eIcc2xe
	 4WBQZoJPBW/Tw3TswVDR6L5ZKf3bXfKbPHf+cpL8YlhGv0hKXLed8EYJxBi6OzKfPL
	 PKVUyjH1W4qz5PvcblJoPRSRhpNDG2rlwbmaLTo4=
Date: Mon, 6 Nov 2023 12:28:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	Faiz Abbas <faiz_abbas@ti.com>,
	=?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com
Subject: Re: [PATCH 5.4] Revert "ARM: dts: Move am33xx and am43xx mmc nodes
 to sdhci-omap driver"
Message-ID: <2023110613-fringe-ended-5390@gregkh>
References: <20231106095048.8396-1-matthias.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231106095048.8396-1-matthias.schiffer@ew.tq-group.com>

On Mon, Nov 06, 2023 at 10:50:48AM +0100, Matthias Schiffer wrote:
> This reverts commit d0c69c722ff16ce2481a5e0932c6d5b172109f21.
> 
> The reverted commit completely breaks MMC on the AM33xx/AM437x for
> multiple reasons:
> 
> - The changed compatible strings ti,am335-sdhci and ti,am437-sdhci
>   aren't supported on Linux 5.4 at all, so no driver is found
> - Even when additionally backporting the support for these compatible
>   strings in the sdhci-omap driver, I could not the the MMC interfaces
>   to work on our TQMa335x SoM - the interface would time out during card
>   initialization for both an eMMC and an SD card.
> 
> I did not investigate the cause of the timeouts further, and instead
> just reverted the commit - switching to a different MMC driver in a stable
> kernel seems like a rather risky change unless it's thoroughly tested,
> which has obviously not happened in this case.
> 
> The reverted commit is also given as a Stable-dep-of commit 2eb502f496f7
> ("ARM: dts: am33xx: Fix MMCHS0 dma properties"), however the conflict
> resulting when only the one commit is reverted is trivial to resolve,
> which leads to working MMC controllers again.
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> ---
> 
> I have not checked if other stable kernels exhibit the same breakage; it
> might be a good idea to revert the change for all stable branches unless
> it is proven that the sdhci-omap driver actually works.

This was only backported to 5.4.y, thanks for catching this, now queued
up.

greg k-h

