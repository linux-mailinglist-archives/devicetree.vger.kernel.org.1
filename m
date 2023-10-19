Return-Path: <devicetree+bounces-10202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E37D0108
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 19:57:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E72D1C20E24
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC2537143;
	Thu, 19 Oct 2023 17:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="xdjCSwh/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B10936B17
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2BB8C433C8;
	Thu, 19 Oct 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697738226;
	bh=8mcVIkh+ilUfV+/qwx1svrvpt+dMNpngwLshc/nC9SU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xdjCSwh/wyoz/GXl8HyjGJpFGWmGj53WFlchZPoHrYGth53m8d94v0VxMg0WsttU/
	 Z53FtVFfS2lEt4o3Q4kYcrCN2ahp2l81zsfORezV+5CzQougLcoJB8QGIHYwqb8anw
	 cAWviGhTinR7jKDUQ9QMXDPqgUa2o3ibZ+MDQDGk=
Date: Thu, 19 Oct 2023 19:57:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Eliza Balas <eliza.balas@analog.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 2/2] drivers: misc: adi-axi-tdd: Add TDD engine
Message-ID: <2023101917-cork-numeric-dab8@gregkh>
References: <20231019125646.14236-1-eliza.balas@analog.com>
 <20231019125646.14236-3-eliza.balas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019125646.14236-3-eliza.balas@analog.com>

On Thu, Oct 19, 2023 at 03:56:46PM +0300, Eliza Balas wrote:
> +config ADI_AXI_TDD
> +	tristate "Analog Devices TDD Engine support"
> +	depends on HAS_IOMEM
> +	select REGMAP_MMIO
> +	help
> +	  The ADI AXI TDD core is the reworked and generic TDD engine which
> +	  was developed for general use in Analog Devices HDL projects. Unlike
> +	  the previous TDD engine, this core can only be used standalone mode,
> +	  and is not embedded into other devices.

What does "previous" mean here?  That's not relevant for a kernel help
text, is it?

Also, what is the module name?  Why would someone enable this?  What
userspace tools use it?


> +
>  config DUMMY_IRQ
>  	tristate "Dummy IRQ handler"
>  	help

Why put your entry in this specific location in the file?

> +static int adi_axi_tdd_parse_ms(struct adi_axi_tdd_state *st,
> +				const char *buf,
> +				u64 *res)
> +{
> +	u64 clk_rate = READ_ONCE(st->clk.rate);
> +	char *orig_str, *modf_str, *int_part, frac_part[7];
> +	long ival, frac;
> +	int ret;
> +
> +	orig_str = kstrdup(buf, GFP_KERNEL);
> +	int_part = strsep(&orig_str, ".");

Why are we parsing floating point in the kernel?  Please just keep the
api simple so that we don't have to try to do any type of parsing other
than turning a single text number into a value.

> +	ret = kstrtol(int_part, 10, &ival);
> +	if (ret || ival < 0)
> +		return -EINVAL;

You leaked memory :(

Use the new logic in completion.h to make this simpler?

> +	modf_str = strsep(&orig_str, ".");
> +	if (modf_str) {
> +		snprintf(frac_part, 7, "%s00000", modf_str);
> +		ret = kstrtol(frac_part, 10, &frac);
> +		if (ret)
> +			return -EINVAL;

You leaked memory :(

> +	} else {
> +		frac = 0;
> +	}
> +
> +	*res = DIV_ROUND_CLOSEST_ULL((u64)ival * clk_rate, 1000)
> +		+ DIV_ROUND_CLOSEST_ULL((u64)frac * clk_rate, 1000000000);

Why isn't userspace doing this calculation?

I stopped reviewing here, sorry.

greg k-h

