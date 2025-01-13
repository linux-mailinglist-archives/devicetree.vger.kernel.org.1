Return-Path: <devicetree+bounces-138286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 772BFA0C59A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 987171886C40
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 23:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59531F941C;
	Mon, 13 Jan 2025 23:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBAbPCwk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE07E16EC19;
	Mon, 13 Jan 2025 23:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736810834; cv=none; b=Tw/Z+39sSjMTMP1xltZfluiCjNI5Tb2Tb6E1ahQ5UbFWL0zxpXpS7/yt3kWZ9XubkgYGuPAwBkwwh/sD6RtI/nu1AxdS1k51UORAEdIaKZfGD0z1i6Wa1PNLWpoZYNKINDj+vbyEl5Cg+Rmsg7Y3bfOX5wgIe6HAbrvFnvfEBwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736810834; c=relaxed/simple;
	bh=+nxIsWODGcS24rqD3KZPjewsaUOhZ1q2F2mSUjf8z6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cr92nxckpqkaA9RqAGfhaRaAoqb8/bbBQ3cSM0NiYlhpMtlXxqsW+keySwTix0HNUGafNhAvNhgAffeJ0KXuuhnR+nXqOtFCtCNxfkJniNkIz01KBZUJ7WqGJ5w+2kRSZjOZvgI4Ie42P58RpAeQR/Lrry3RzsYU9NLI4JG9jxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBAbPCwk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 742EDC4CED6;
	Mon, 13 Jan 2025 23:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736810834;
	bh=+nxIsWODGcS24rqD3KZPjewsaUOhZ1q2F2mSUjf8z6c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VBAbPCwkwv2wAOqdw3BfFezTctZUN49cPIqVrdjiSeLqjKw0RL8On2TuPtmmQBy1E
	 5Bz4N32inRoA1prlqHjEY+ymrqvZTOMxj+MFjxIyXhdAwdFIxLHYWpUMFGAWYAlDbS
	 MgLTqRj0W1vHVZgkYy0fjnvmvpsYzU/qcfkUONmJZFnEQzgBN/b8pJcVA+PBwRZ9yu
	 b2xnoEZlwgh3dkTxbbdaEcvmXjLIH4HCUJmUSwmGSqxSEkSizLwXUo9AgY0DsgzX9v
	 sT10bSn2TvZDBfSUw+9IUgR1cIDEu7+RGBbL1pKaayE4MXv9IHKz2YLkH90bKtuu5w
	 VVYNFQuGn54Nw==
Date: Mon, 13 Jan 2025 17:27:13 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Zijun Hu <quic_zijuhu@quicinc.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
	Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Saravana Kannan <saravanak@google.com>,
	Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v4 10/14] of: reserved-memory: Do not make kmemleak
 ignore freed address
Message-ID: <173681079939.3603903.12281721450645476296.robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-10-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-10-db8a72415b8c@quicinc.com>


On Thu, 09 Jan 2025 21:27:01 +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> early_init_dt_alloc_reserved_memory_arch() will free address @base when
> suffers memblock_mark_nomap() error, but it still makes kmemleak ignore
> the freed address @base via kmemleak_ignore_phys().
> 
> That is unnecessary, besides, also causes unnecessary warning messages:
> 
> kmemleak_ignore_phys()
>  -> make_black_object()
>     -> paint_ptr()
>        -> kmemleak_warn() // warning message here.
> 
> Fix by avoiding kmemleak_ignore_phys() when suffer the error.
> 
> Fixes: 658aafc8139c ("memblock: exclude MEMBLOCK_NOMAP regions from kmemleak")
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/of_reserved_mem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Applied, thanks!


