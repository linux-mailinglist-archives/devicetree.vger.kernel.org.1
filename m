Return-Path: <devicetree+bounces-100088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE58296C1BD
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E07631C21CD9
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526FE1DC723;
	Wed,  4 Sep 2024 15:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlUXSwtR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6F629402
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 15:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725462442; cv=none; b=pViDCp8h72SmeDBBGzc24E9oEMae/+kfBSHDHFYJV68pnpnX6ZWYfDQjE6RKXyQYqfrh1sVMbcs23WRx+aosMoGnLDoBwcAyC2Cd/5LM7XLEmNjQI1rCmSJKQ/Jp5hCuh//Sh48orbhzxXPDcBH6i4Gu1Xi7h3JxEO6ihaoB0aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725462442; c=relaxed/simple;
	bh=tORFVMwcIg00iudga/PE27wgMqLVRP07F1UvBKluATo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M22tzvSPHSCI40I2EbiVNJ1FwV6gSW+WJ6/4WZ0Nq1jzBAOwTlE+xlOrxTpC2TehxxP3SqSkCiIkc7tqNOzOnQxAxa+qcCaCnpe03ny60JIG8cGAILUXT3ZTCtd5K4+/loSoi9XG6QG0ym/Ycwf8GnEzFmCZxQ640K0vvRsQsAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlUXSwtR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0E3C4CEC2;
	Wed,  4 Sep 2024 15:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725462441;
	bh=tORFVMwcIg00iudga/PE27wgMqLVRP07F1UvBKluATo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MlUXSwtRBr1UUgTUUtu429ZkGjdhdcsJ/+QFfcxI1BzjZ9IVctLIKNGct4I+Oo3GS
	 oXFrqjtFHvPrAZdwbSB+/xjh7Jxy4JXV7DaYgTiu1dZp9HmPJdOIQN0DUxhRU3yip5
	 Fg0HSp8ooH0OCEFSRxksMM/zML0o3awp0qkG55Od6Bug6Mog5JRDW9/iNemqmWW5th
	 JeSScqgWPRpyfTRXAHqMH48qsUAWB24aw2tpCoLfCHx9rvfz2iwXs/lcwaXxYfRpqe
	 YRQUnpFeHodyTafVNBA6IMkPIXJQD+aacP+36XJtFoOSuz1rrSDbQfBwHnW5ufNcDj
	 i7YtWC+SY282Q==
Date: Wed, 4 Sep 2024 10:07:20 -0500
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Mark Brown <broonie@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: renesas,rsnd: add post-init-providers
 property
Message-ID: <20240904150720.GA2578755-robh@kernel.org>
References: <87cylj7ul2.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cylj7ul2.wl-kuninori.morimoto.gx@renesas.com>

On Wed, Sep 04, 2024 at 07:21:14AM +0000, Kuninori Morimoto wrote:
> sometimes, fwnode dependency cycles can be broken, and in such case,
> rsnd driver will never be probed. To avoid such case, we would like to
> use post-init-providers to avoid it.
> Enable post-init-providers property on rsnd.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 07ec6247d9def..cb44478d9e420 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -112,6 +112,10 @@ properties:
>      description: List of necessary clock names.
>      # details are defined below
>  
> +  post-init-providers:
> +    description: ignore fw_devlink dependency cycles and avoid driver probe dead-lock

Drop. Don't need to describe (again) what a common property is. If you 
want to say what your dependency cycle is, that would be good.

> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Already has a type, don't define one again.

What you need, if you know, is how many entries (maxItems).

Rob

