Return-Path: <devicetree+bounces-33661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50520835F5E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEBD41F2172D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 10:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CBC3A8E7;
	Mon, 22 Jan 2024 10:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WtQICkc8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5693A8EE
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 10:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705918772; cv=none; b=hh3AVz6JfIR7JA8UEZhoCWfe4i/Xh4Hqg3wkq4Hxo/EI+JLZYBn1Zqf2U/eRXRrlNuOPCRYLkWuEnPPzUWNLMEmTdoitAezRFqrMfB56o4ieb2EVqfhbBKCPaRlXPNd+wZNuBOVNeL7fw98lEkyPZuvXiPenJsLagMAbCaND5e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705918772; c=relaxed/simple;
	bh=/SNLHHN7xOHjhgf5Ka2VMBrDa6pANZCIGYnQJH8RKpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bKoPEls+zbaRyuKHSPzoIQWhA+b8oiEKWWbQoFqKE5boWkB11+2hBqcJkAjrUFpkknb2LBzStxW3LprnkvKW+Mq8+XOO4nsAE9fK+Vm3fIiKTRp+eiTgL3oMry56lH6+6LvIoMT0EZdQKAX1FYqZGf1IH8PNZL6rRMMFoj0Z3SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WtQICkc8; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-337d32cd9c1so2691664f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 02:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705918769; x=1706523569; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6CUlLsOEJCO3o0htEYr8Lbj/bayNpoeF4Yah4if4kLc=;
        b=WtQICkc8gaYMT3ZMfWqXR1v+0Gf5KtlFeiUD0rSgSx1nNdGnGlNSiQoENFBZDtuSYq
         Vh4ac5BIzGlq+mCzcF5KE8sMLXnrc7ELMooSqig/dh8wzf6GNTJs4QmwFvegB37gEJv2
         fInxTyv3cuKkKkYhS4+wJHJeSZqYaTzhJQfoyReb4l6VQpSJNrmbor2NWKf5vzXT61ER
         oky1p/zXf5u8pkjGH23oAg33Yd3/gwThAjN7XAZWKSkb40qIEHJxY6aF/Jz43P83fX4k
         N9an9FzAJFBiXe0MOsKBR8DQ6jJXWm2gT5pEcEn0m8zDPBHsXGbZLv1FMXqmiqk9GrwA
         QRPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705918769; x=1706523569;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6CUlLsOEJCO3o0htEYr8Lbj/bayNpoeF4Yah4if4kLc=;
        b=q/Yv90ucc57Yzs2Mz3cpbxUH7JSwZTrGwS3URpG6btJJT+87EpEO7EnK4y51RYar9M
         t5buvIuhfNkVPVJBZISmTMjOKRMdAGtwp4fDVbor1dny3hTvcsp+YWo39/KGDPmzZ1wZ
         leOAD0/wX0GPDVww2jwSmEigqMFFUh4KgdNMT5+N9KeHgT5zyvK+WY5Qoy0bmawvlc8l
         hUy+MRNtdyl74w1AB9T3RD3tI3t8U1PvMq1i3N7gh49pku8K8/V+UsZSANPGLyhBeHmQ
         tCusKnkhhmxbGEjCtz/uj9xTOreLj8d6fsG4AEn7CygeiqVS/LMf+oexZr0Wlb7LGW3o
         06eA==
X-Gm-Message-State: AOJu0Yyv7dGkxOx6aBc5YhMtqQ+jGKPn6hXjOAnT/MGxiCVk6fnA+r6k
	etSDIXLas1pdDHhXe0a7tiik4sGVHaroOILUjIdKQe2uB/KMTpYsusEdveutn7w=
X-Google-Smtp-Source: AGHT+IGiXCkeFT62mIizDAGCPWlt7/MMpjwMRYs+WW2Kwg136ect9locc0HoNUSbJlXRnS59IcBghQ==
X-Received: by 2002:a05:600c:5486:b0:40e:7c23:898d with SMTP id iv6-20020a05600c548600b0040e7c23898dmr2156961wmb.102.1705918769050;
        Mon, 22 Jan 2024 02:19:29 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id iv11-20020a05600c548b00b0040d8ff79fd8sm38663573wmb.7.2024.01.22.02.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 02:19:28 -0800 (PST)
Date: Mon, 22 Jan 2024 10:19:26 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Karel Balej <balejk@matfyz.cz>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v3 1/3] leds: ktd2692: move ExpressWire code to library
Message-ID: <20240122101926.GA8596@aspen.lan>
References: <20240120-ktd2801-v3-0-fe2cbafffb21@skole.hr>
 <20240120-ktd2801-v3-1-fe2cbafffb21@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240120-ktd2801-v3-1-fe2cbafffb21@skole.hr>

On Sat, Jan 20, 2024 at 10:26:43PM +0100, Duje Mihanović wrote:
> The ExpressWire protocol is shared between at least KTD2692 and KTD2801
> with slight differences such as timings and the former not having a
> defined set of pulses for enabling the protocol (possibly because it
> does not support PWM unlike KTD2801). Despite these differences the
> ExpressWire handling code can be shared between the two, so move it into
> a library in preparation for adding KTD2801 support.
>
> Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
> ---
>  MAINTAINERS                       |  7 +++
>  drivers/leds/Kconfig              |  3 ++
>  drivers/leds/Makefile             |  3 ++
>  drivers/leds/flash/Kconfig        |  1 +
>  drivers/leds/flash/leds-ktd2692.c | 91 +++++++++++----------------------------
>  drivers/leds/leds-expresswire.c   | 59 +++++++++++++++++++++++++
>  include/linux/leds-expresswire.h  | 35 +++++++++++++++
>  7 files changed, 132 insertions(+), 67 deletions(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a7c4cf8201e0..87b12d2448a0 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7902,6 +7902,13 @@ S:	Maintained
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/linkinjeon/exfat.git
>  F:	fs/exfat/
>
> +EXPRESSWIRE PROTOCOL LIBRARY
> +M:	Duje Mihanović <duje.mihanovic@skole.hr>
> +L:	linux-leds@vger.kernel.org
> +S:	Maintained
> +F:	drivers/leds/leds-expresswire.c
> +F:	include/linux/leds-expresswire.h
> +
>  EXT2 FILE SYSTEM
>  M:	Jan Kara <jack@suse.com>
>  L:	linux-ext4@vger.kernel.org
> diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
> index 6292fddcc55c..d29b6823e7d1 100644
> --- a/drivers/leds/Kconfig
> +++ b/drivers/leds/Kconfig
> @@ -181,6 +181,9 @@ config LEDS_EL15203000
>  	  To compile this driver as a module, choose M here: the module
>  	  will be called leds-el15203000.
>
> +config LEDS_EXPRESSWIRE
> +	bool
> +

Shouldn't there be a "select GPIOLIB" here? It seems odd to make the
clients responsible for the dependencies.

BTW there seems to be very little consistency across the kernel between
"depends on GPIOLIB" and "select GPIOLIB".. but select is marginally
more popular (283 vs. 219 in the kernel I checked).


> diff --git a/drivers/leds/flash/leds-ktd2692.c b/drivers/leds/flash/leds-ktd2692.c
> index 598eee5daa52..8c17de3d621f 100644
> --- a/drivers/leds/flash/leds-ktd2692.c
> +++ b/drivers/leds/flash/leds-ktd2692.c
>  <snip>
>  static void ktd2692_expresswire_write(struct ktd2692_context *led, u8 value)
>  {
>  	int i;
>
> -	ktd2692_expresswire_start(led);
> +	expresswire_start(&led->props);
>  	for (i = 7; i >= 0; i--)
> -		ktd2692_expresswire_set_bit(led, value & BIT(i));
> -	ktd2692_expresswire_end(led);
> +		expresswire_set_bit(&led->props, value & BIT(i));
> +	expresswire_end(&led->props);
>  }

Is there any reason not to have an expresswire_write_u8() method in the
library code? It is a concept that appears in both drivers.


Daniel.

