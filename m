Return-Path: <devicetree+bounces-218464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B1EB80812
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D03934E3219
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1706335936;
	Wed, 17 Sep 2025 15:24:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C28335959
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758122691; cv=none; b=IPvFTeR5kU/W/qjAnExhnntAIRRJEelwmdG8YQT3yGV77Ug/mK5kdiuU8M9CCbNUdrJTwpA7Qqz6TX1XwDnWZIbGgufzWYEGW3xqZxPD29r537PU+Na5RWtOc0Fjngfa4hkb/piUHH3iQldBc052sbg6qf3vRoHSww2zkrtWWWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758122691; c=relaxed/simple;
	bh=3ARUkUpoBf83aJNRQ8BiAp+2Sc3izs7X4NYbaBnVQgo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TeSwh983oqowjKBN/awggIt8simAqF2AmzZ00OZ3Ix1MptOfPcVAoUxikFyrP3P4cRKfJDzPvzH8ercGYcsgKFe2pnxazAV97ncDAwf5JEi/sA+Afkw49sJifLwHSrNEUwmYvBBG4a6+1nYaBEJdQXLHMDViefkC7QlethVf7zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-77c6516af79so431027b3a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:24:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758122689; x=1758727489;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8bY/asBqVOnDWFE5LcHmnDOT5AoWMNTr7WSHO+9CO+k=;
        b=CUE7iqHNsyOTMMph7tHjxIhgqBbaaO6Ba+2++yb4aPxextEQWhTObju8UzILHyBTT8
         vqU7y5n6wL9Z8DUFWsNzxwKeAwtRrqCtn3viaimSiEDQRhHLYS/0ekS/HrAE6yT+KIoN
         METl0ts4HFkkHf1zAcny+HOJ+So239fqnItZtp1oA9JfQQ1xMTn0EXKftXoym9tIDbbu
         t7rZHK5x0aZ08Xbh9PJaRs7CL2THOXSXhiiYpcCa5ZCSSeOAGilNfUJHv3/L3FypxRjV
         IYZZqWKnrEAoGj+AUFIdZHAbjoFj3CRBzeTLa+T/oJUZdtSAD4SNoLSepW+Wr91TJ5kJ
         7+Bg==
X-Forwarded-Encrypted: i=1; AJvYcCUwj9QoFR8fh5VlSrqm/fHVOycrZk3E9h/sUs+EeZz5WETZpJTMKuuCdHE2SdfOHBJjrIbmlGBGXB8P@vger.kernel.org
X-Gm-Message-State: AOJu0YxaImamI4x4eC0hrm20JNJM9CqGtls9oRTMvHXfSQuBXvFPkoEr
	+QvSiGrnkDRPI2xm1WTWvTixDHhKvoZGnBdXzB+YAcMjmq6ydtsulcA91xL3Nmj8Zu4=
X-Gm-Gg: ASbGncujVXVyhh1RVgGESdUtPlMriATM2BPyOk92dm7sZ3zOk2tgvuZRLDFGGQcM/fW
	NHxyIUXvEcZTnTSfitfOXa2LJZXCSzF3mPQEtPMRWtMZHDe4+UEyXD/AJHYsUb7quPP+nTDTv9W
	8iAMr80ZgbVDz1ymkGnA2E3lUUMLZTRKMhkUfuAnZdBxISL2neHIlSxerLUrJuDzXh4fRGxSbXM
	5/XdY09YcJ9TBZvDQsSVeuTZGHMWg2fQO4np32A9rb99DrAhQNUOMWKNjAn52w/67N+YlRvnXf9
	Qsdxvg5xY09RqulyO6ixGwBjBtXpKwuHmKJINs7NZUzcvwJibhO2DYHzKOlRllQijiC6NJtMYx1
	fqC8DyDO04ghJJvUdhNjy
X-Google-Smtp-Source: AGHT+IHJBEGVlWAkDnL7p8aPBmpzPuwLI6TVt47t7wf2wpFW3MFRt1QIyIXPCIevSu5aQ3ieTqwwuA==
X-Received: by 2002:a05:6a20:2449:b0:24b:1a6d:298b with SMTP id adf61e73a8af0-27aa3cf5b6fmr3447692637.34.1758122689322;
        Wed, 17 Sep 2025 08:24:49 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7760793b65dsm18800938b3a.9.2025.09.17.08.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 08:24:48 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: Michael Walle <mwalle@kernel.org>, Frank Binns <frank.binns@imgtec.com>,
 Matt Coster <matt.coster@imgtec.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>
Cc: Andrew Davis <afd@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, Michael
 Walle <mwalle@kernel.org>
Subject: Re: [PATCH 2/3] clk: keystone: don't cache clock rate
In-Reply-To: <20250915143440.2362812-3-mwalle@kernel.org>
References: <20250915143440.2362812-1-mwalle@kernel.org>
 <20250915143440.2362812-3-mwalle@kernel.org>
Date: Wed, 17 Sep 2025 08:24:47 -0700
Message-ID: <7hv7lhp0e8.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Michael Walle <mwalle@kernel.org> writes:

> The TISCI firmware will return 0 if the clock or consumer is not
> enabled although there is a stored value in the firmware. IOW a call to
> set rate will work but at get rate will always return 0 if the clock is
> disabled.
> The clk framework will try to cache the clock rate when it's requested
> by a consumer. If the clock or consumer is not enabled at that point,
> the cached value is 0, which is wrong.

Hmm, it also seems wrong to me that the clock framework would cache a
clock rate when it's disabled.  On platforms with clocks that may have
shared management (eg. TISCI or other platforms using SCMI) it's
entirely possible that when Linux has disabled a clock, some other
entity may have changed it.

Could another solution here be to have the clk framework only cache when
clocks are enabled?

> Thus, disable the cache altogether.
>
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> ---
> I guess to make it work correctly with the caching of the linux
> subsystem a new flag to query the real clock rate is needed. That
> way, one could also query the default value without having to turn
> the clock and consumer on first. That can be retrofitted later and
> the driver could query the firmware capabilities.
>
> Regarding a Fixes: tag. I didn't include one because it might have a
> slight performance impact because the firmware has to be queried
> every time now and it doesn't have been a problem for now. OTOH I've
> enabled tracing during boot and there were just a handful
> clock_{get/set}_rate() calls.

The performance hit is not just about boot time, it's for *every*
[get|set]_rate call.  Since TISCI is relatively slow (involves RPC,
mailbox, etc. to remote core), this may have a performance impact
elsewhere too.  That being said, I'm hoping it's unlikely that
[get|set]_rate calls are in the fast path.

All of that being said, I think the impacts of this patch are pretty
minimal, so I don't have any real objections.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

> ---
>  drivers/clk/keystone/sci-clk.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/clk/keystone/sci-clk.c b/drivers/clk/keystone/sci-clk.c
> index c5894fc9395e..d73858b5ca7a 100644
> --- a/drivers/clk/keystone/sci-clk.c
> +++ b/drivers/clk/keystone/sci-clk.c
> @@ -333,6 +333,14 @@ static int _sci_clk_build(struct sci_clk_provider *provider,
>  
>  	init.ops = &sci_clk_ops;
>  	init.num_parents = sci_clk->num_parents;
> +
> +	/*
> +	 * A clock rate query to the SCI firmware will return 0 if either the
> +	 * clock itself is disabled or the attached device/consumer is disabled.
> +	 * This makes it inherently unsuitable for the caching of the clk
> +	 * framework.
> +	 */
> +	init.flags = CLK_GET_RATE_NOCACHE;
>  	sci_clk->hw.init = &init;
>  
>  	ret = devm_clk_hw_register(provider->dev, &sci_clk->hw);
> -- 
> 2.39.5

