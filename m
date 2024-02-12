Return-Path: <devicetree+bounces-40595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFAB850ED9
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 09:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6621A1F21A07
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6316CCA50;
	Mon, 12 Feb 2024 08:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonic.nl header.i=@protonic.nl header.b="V5gtppMN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp16.bhosted.nl (smtp16.bhosted.nl [94.124.121.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634BAF4E3
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 08:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=94.124.121.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707726375; cv=none; b=L8kmVirYdeYBv/b6OilthDA1eCm7lDvuldV4GcDgcvDwco/I7ip34HdfEjJ2+UmcQxhKS/b8W79h67EKCtMiaumNzlb6JNL5PGWD4qIi3gcHkTEJGAGn20nAfojOJqD1uIBMM2ahzkQNbExQcqD0HI6eDfT0t5HG98scX33c+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707726375; c=relaxed/simple;
	bh=tS2qDv3GgiXZz1YCxMg6iiQZEazGXR37umtYi+ZnrIk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Sh/dzNWPXthm87u7/waQJZry1hrIhVawhAC+Z38gGnU+Ld5TMGQHwb5VvormUzTo6LHdiOwLjAlh0kCa2zVhEn8d4XOChdgLFokpkt69lfZwfNy/46XPqyUwN4fyb89T5k6Z4y6fl+cK3fg4QM2BJraSQ1945buFikGHZtJD7n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=protonic.nl; spf=pass smtp.mailfrom=protonic.nl; dkim=pass (2048-bit key) header.d=protonic.nl header.i=@protonic.nl header.b=V5gtppMN; arc=none smtp.client-ip=94.124.121.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=protonic.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonic.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=YXz0LNNR8OkxZMAYpUP/ZX9iKlMCwh3Qzq5yWzxGRH8=;
	b=V5gtppMN8pKLoRnUw9GBoSpHtlRT+rM6OH7o1+pAsV29qc1m6MfykVGOyuL2bTVooiRjMm2aWfdRd
	 ZpXYTHzA8dK6pAeipXSQiLp0nfr6BeS96Z3wJeYZ4c05MUpb+KZco2aD+1InQPb75p5LkMsyp7goKK
	 PhiLNV+81okPqPKn2ph6N/OEhk2vI8mcK2SFie2NqYApvpnzYxqZ0V/HP5KUB2bvCYpmEJePBwdR+n
	 2akHBV6cmBJzGymiQeiwILT8KgxXjWAnzChy8NR4QpJb2NckaoNxYsjvHDHAV5+T3ct1/1x9vaFTgr
	 RBMMpGcZy0PYCavI0nTtH524FdQT1Uw==
X-MSG-ID: 37173b61-c980-11ee-a383-005056817704
Date: Mon, 12 Feb 2024 09:25:00 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Miguel Ojeda
 <ojeda@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Paul Burton <paulburton@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>
Subject: Re: [PATCH v1 10/15] auxdisplay: linedisp: Provide a small buffer
 in the struct linedisp
Message-ID: <20240212092500.62f006cc@ERD993>
In-Reply-To: <20240208184919.2224986-11-andriy.shevchenko@linux.intel.com>
References: <20240208184919.2224986-1-andriy.shevchenko@linux.intel.com>
	<20240208184919.2224986-11-andriy.shevchenko@linux.intel.com>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Andy,

Thank you for your patches.

See inline comment below.

On Thu,  8 Feb 2024 20:48:08 +0200
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> There is a driver that uses small buffer for the string, when we
> add a new one, we may avoid duplication and use one provided by
> the line display library. Allow user to skip buffer pointer when
> registering a device.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/auxdisplay/line-display.c | 4 ++--
>  drivers/auxdisplay/line-display.h | 4 ++++
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/auxdisplay/line-display.c b/drivers/auxdisplay/line-display.c
> index da47fc59f6cb..a3c706e1739d 100644
> --- a/drivers/auxdisplay/line-display.c
> +++ b/drivers/auxdisplay/line-display.c
> @@ -330,8 +330,8 @@ int linedisp_register(struct linedisp *linedisp, struct device *parent,
>  	linedisp->dev.parent = parent;
>  	linedisp->dev.type = &linedisp_type;
>  	linedisp->ops = ops;
> -	linedisp->buf = buf;
> -	linedisp->num_chars = num_chars;
> +	linedisp->buf = buf ? buf : linedisp->curr;
> +	linedisp->num_chars = buf ? num_chars : min(num_chars, LINEDISP_DEFAULT_BUF_SZ);

It's not a big buffer, but now it's always there even if it's not used.
And even if it's used, it might be only partially used.
Why not used a malloc instead?

>  	linedisp->scroll_rate = DEFAULT_SCROLL_RATE;
>  
>  	err = ida_alloc(&linedisp_id, GFP_KERNEL);
> diff --git a/drivers/auxdisplay/line-display.h b/drivers/auxdisplay/line-display.h
> index 65d782111f53..4c354b8f376e 100644
> --- a/drivers/auxdisplay/line-display.h
> +++ b/drivers/auxdisplay/line-display.h
> @@ -54,12 +54,15 @@ struct linedisp_ops {
>  	void (*update)(struct linedisp *linedisp);
>  };
>  
> +#define LINEDISP_DEFAULT_BUF_SZ		8u
> +
>  /**
>   * struct linedisp - character line display private data structure
>   * @dev: the line display device
>   * @id: instance id of this display
>   * @timer: timer used to implement scrolling
>   * @ops: character line display operations
> + * @curr: fallback buffer for the string
>   * @buf: pointer to the buffer for the string currently displayed
>   * @message: the full message to display or scroll on the display
>   * @num_chars: the number of characters that can be displayed
> @@ -73,6 +76,7 @@ struct linedisp {
>  	struct timer_list timer;
>  	const struct linedisp_ops *ops;
>  	struct linedisp_map *map;
> +	char curr[LINEDISP_DEFAULT_BUF_SZ];
>  	char *buf;
>  	char *message;
>  	unsigned int num_chars;



