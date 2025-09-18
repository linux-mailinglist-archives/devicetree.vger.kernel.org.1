Return-Path: <devicetree+bounces-211849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F277B40EE2
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 22:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59EA93AA9E2
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 20:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921862E7BDF;
	Tue,  2 Sep 2025 20:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8X7ewLS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6FB2E3B07;
	Tue,  2 Sep 2025 20:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756846379; cv=none; b=JB1/nbaBOgNdzUtzTbr+QVH2GkeM6ivHf8f25xLOMlsX4YE0jUpE8W08RL77vfrUngCpp1TUtGljhK9VLq5vInnFkWAh2Eyj4NuD3v3LFdLUjhJPf+HJOmBJuddP4JyOzDGzjzAkxO0vyZyGwspUd5A5y+OapTe/HlUXFnBYr00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756846379; c=relaxed/simple;
	bh=jECdS4CzQRUdpw1q8UvY0XbAJXPo1RSL3BkjoizI0Hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UaZoKxjylkpLFedXFrdmKh8dM1fjuEe0+4v38lh3IXHjRA37sGanAja4cIdmFPyKfzQfp3WaDgVvMzO8SzYDhLKjHYN6RxP/fO1sDAuAJ/dp9XxHHiwF+14E45dL4w2QcGFK9NwijLFTS+3WjrSNSb22U7dmhEn0iulzaVYnc70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8X7ewLS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD889C4CEED;
	Tue,  2 Sep 2025 20:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756846379;
	bh=jECdS4CzQRUdpw1q8UvY0XbAJXPo1RSL3BkjoizI0Hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O8X7ewLSTUxPVmrMSli6DcTVJqsbuOAtwGSFGZd1/mMohM2fuq99V5CqsrCG9oAJK
	 ZCQZ94fVa4tZPWGiEEW9VY/JiCZnnbc+cevBe32S59461UCGzTZYXkuj8/IzQ3bEVZ
	 ZDkLDoe0636QrDMy4RqA7DwvK3ON0gW9q9GFciYm2XsX/rff5YqS8nyts78B2hGO+f
	 R8W90Z+nF6iV8gm1aoKS5mtxJ6RdvMkHU6EobolgQG6X2nlhoFbqNdl2Mo9WMWyUwv
	 EqIXVqTbNfzSS3cKyH1wakZ/B/6Yj5Rdv6JpJWZb6It9NI4KPFZZTzGMim+RgUbDur
	 tID0QvxDZsK+g==
Date: Tue, 2 Sep 2025 15:52:58 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Baojun Xu <baojun.xu@ti.com>
Cc: chinkaiting@google.com, conor+dt@kernel.org, jim.shil@goertek.com,
	jesse-ji@ti.com, lgirdwood@gmail.com, shenghao-ding@ti.com,
	tiwai@suse.de, broonie@kernel.org, will-wang@ti.com, k-yi@ti.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	robinchen@ti.com, linux-sound@vger.kernel.org, krzk+dt@kernel.org,
	toastcheng@google.com, alsa-devel@alsa-project.org,
	andriy.shevchenko@linux.intel.com, henry.lo@ti.com,
	13916275206@139.com
Subject: Re: [PATCH v4 2/2] ASoC: tas2781: Add tas2118, tas2x20, tas5825
 support
Message-ID: <175684637733.1163682.7826171092384451555.robh@kernel.org>
References: <20250830061459.24371-1-baojun.xu@ti.com>
 <20250830061459.24371-2-baojun.xu@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250830061459.24371-2-baojun.xu@ti.com>


On Sat, 30 Aug 2025 14:14:59 +0800, Baojun Xu wrote:
> Update ti,tas2781.yaml for adding tas2118, tas2x20, tas257x and tas582x.
> 
> Signed-off-by: Baojun Xu <baojun.xu@ti.com>
> 
> ---
> v4:
>  - Change description for adding tas257x and tas5827
>  - Added descriptions for tas2570, tas2572 and tas5827
>  - Remove unnecessary description for I2C register
> v3:
>  - Remove unnecessary minItems.
>  - Remove unnecessary description for tas5825.
> v2:
>  - Update the mail list for maintainers of yaml file
> ---
>  .../devicetree/bindings/sound/ti,tas2781.yaml | 96 ++++++++++++++++++-
>  1 file changed, 95 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


