Return-Path: <devicetree+bounces-239008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7BAC60726
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:16:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B956735D537
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9FA2FD7B9;
	Sat, 15 Nov 2025 14:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZX52ts+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBB72FD68C
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216117; cv=none; b=dLC4gJd0X7XsjIwMxGrmRaZHRcSlQua/rVImggPEww4uUTafXmFMk8HR10gBPDCufwjcGwgmZG6Wo/08BsTwT7+EwsE5PC3bvzuSOxXwsbPIggvnIK6XOUeozd8Xy2jhY4yXmg7hWGZSWtBo3hZ0wzMd65SHYevlXZZrjFwvDnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216117; c=relaxed/simple;
	bh=ImD59od9MeluZcpbFLndDPRpzNKsdKpQFwhjPxrMgrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MXk8DbRYqJCtOef8A8N0/QIPYsjhsRqdTu2d6wtHr654iWRPVdBZa//NMoMISBLUQ/fvGoCd2LtB+CRgV/z+aysqeEkoyfugYZJuo8yvFWi+FgRtjxZsCVlTzUHd00YkYrs8kvjJmNQ4e+SydUXwZvGuYf34WVHIaS1B4M00exE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZX52ts+b; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7aab7623f42so3515648b3a.2
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 06:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763216115; x=1763820915; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AglVNju5F5ASm8eRnDxFhe8j1E3mGA6E/8/xaKJ22q8=;
        b=ZX52ts+bGy8zf1rqF3/Lgr6aUytD7vrLqnXPF5hJdi3JFK1sJbpjMQPQmQ7HGZpWdA
         lokCislSC+qxRfoHIDCjxF0f0HAUBeIxfnRh3CFEpd999TK2xEcEn+aXWVA0ZelAM8Na
         b1fvniOjaoFOQDrzRYfbNrh0wd7+y60mFvvUgAotZQsJjuKo5R64YKJVBTIohl9JkUjp
         f6s+gI7SctXoAxQrtNpDEVWWdYX11uBhEaERnJU5L7HaijV2Gnp1xqUk8ib0eJvkS1nt
         Jcvk+V/cZJb2LRqSeBAqiLsR5nyCCzJvt0wR6yiQXhIjDkryMNdEtMotwkg558Pc9wGV
         4DIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763216115; x=1763820915;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AglVNju5F5ASm8eRnDxFhe8j1E3mGA6E/8/xaKJ22q8=;
        b=azXbpsOH/8zqCfNaG9FCbJO+O+t6rAqQkX+D6wrJb2TSJa6Aco1pb7U8p9Wua0bWy5
         kVesXAusJ1Wl2s9k4k/zyS6zE5g9yxeqihaCPZkB6RLtN+3ntgNX7pf6aKb2a70yHH1s
         5enZDPHl0j0PX5KK220GP5gqDBT6HUHxqU/ziqdFHu6SiABTZsTX6TJyKThjaL1BvPah
         yVr1Jcwtc6fgDiTrz1wai0b/aLJKQ5mFl5ePbCB0qIflPvJwvvBQsQR7GI0ps61vJupW
         bLe36Fczn6BgLVF6lhILSv0RNL+lUcc75MiJWLFK+yXCKWGP3ILcwCC4RyQwxUr1pe6u
         wxEA==
X-Forwarded-Encrypted: i=1; AJvYcCXbmE7H7LQJxw3ZzXF3Ei+OvuGq4rJFhcpiLJgqEALdT+/HlMXW2OYh54bnyXQVG8SKhV1SVYGmE99q@vger.kernel.org
X-Gm-Message-State: AOJu0YwTtnoyRnUYXHZk/uW2BJ5NxEg4vLb7ijOrkLMIKhEU1p5m/grt
	WcKleVXFLqEijaXcrIsJkMKPh4DR6ApRS5DN8hH4xsqNEZYwewalhZae
X-Gm-Gg: ASbGncuUeyv2dVFAdjABESHOaCawHQ0rQgoMM9XDc7n7oiUkRJDcPudJr7JCrxRuDBz
	3xnoHyaJHHKo3QtXbmob1pY0Na80iaEVD64V1nwerHOkiyKxiHcrwNNQhn60d3KKgZPLfGNfZWX
	7Pp8mhj0ywCxPv48VWtgzdN3bUiRCVnyWThYXavZVymHcRdyBUagO3Pwlfw2Q/69w+l4ySy688n
	qJGqPyDUIwDgBoc9XWP0AmPmtA4mtT+V9jzecHYYnl872T1ZS0u4jG0QcJTUHfddYZ6Gmj6F43d
	HBRkbFpHfUbPPKSbycajL5sEyIT2kvymPu2q3KcwMUOs2tL0rjchk0aYshqRe80APCmuDsoT4eZ
	s6uwMot6XOBgRf9T35k8fU5qM98KN/fS0+CMyYmHrYFg5e30rl0iQmqylqen8VqfDd57cW3n1gJ
	huveuj7Ie2exdMPJAVopye
X-Google-Smtp-Source: AGHT+IFKAiVMACqWqHRdvMgpkXEzHiVdm+GUjObMloIFV/+a55GT2gp8hKLsLhFfO3WyMZdmDKvNRA==
X-Received: by 2002:a05:7022:ff41:b0:11a:51a8:ec9 with SMTP id a92af1059eb24-11b41703d71mr3141025c88.29.1763216115074;
        Sat, 15 Nov 2025 06:15:15 -0800 (PST)
Received: from localhost ([2804:30c:1661:8a00:578a:911c:ac25:24a6])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-11b80fd6790sm7353512c88.10.2025.11.15.06.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 06:15:14 -0800 (PST)
Date: Sat, 15 Nov 2025 11:16:34 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v2 4/6] spi: axi-spi-engine: support
 SPI_MULTI_BUS_MODE_STRIPE
Message-ID: <aRiLQn4F9U4WrWaF@debian-BULLSEYE-live-builder-AMD64>
References: <20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com>
 <20251107-spi-add-multi-bus-support-v2-4-8a92693314d9@baylibre.com>
 <aRNSc1GEz0UNx17i@debian-BULLSEYE-live-builder-AMD64>
 <0e59d92f-7b3c-4ff6-b3ad-7fae2ded9b77@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e59d92f-7b3c-4ff6-b3ad-7fae2ded9b77@baylibre.com>

On 11/12, David Lechner wrote:
> On 11/11/25 9:12 AM, Marcelo Schmitt wrote:
> > Hi David,
> > 
> > The updates to spi-engine driver look good.
> > Only one comment about what happens if we have conflicting bus modes for the
> > offload case. Just to check I'm getting how this is working.
> > 
> 
> ...
> 
> >> @@ -284,6 +316,24 @@ static int spi_engine_precompile_message(struct spi_message *msg)
> >>  			min_bits_per_word = min(min_bits_per_word, xfer->bits_per_word);
> >>  			max_bits_per_word = max(max_bits_per_word, xfer->bits_per_word);
> >>  		}
> >> +
> >> +		if (xfer->rx_buf || xfer->offload_flags & SPI_OFFLOAD_XFER_RX_STREAM ||
> >> +		    xfer->tx_buf || xfer->offload_flags & SPI_OFFLOAD_XFER_TX_STREAM) {
> >> +			switch (xfer->multi_bus_mode) {
> >> +			case SPI_MULTI_BUS_MODE_SINGLE:
> >> +			case SPI_MULTI_BUS_MODE_STRIPE:
> >> +				break;
> >> +			default:
> >> +				/* Other modes, like mirror not supported */
> >> +				return -EINVAL;
> >> +			}
> >> +
> >> +			/* If all xfers have the same multi-bus mode, we can optimize. */
> >> +			if (multi_bus_mode == SPI_ENGINE_MULTI_BUS_MODE_UNKNOWN)
> >> +				multi_bus_mode = xfer->multi_bus_mode;
> >> +			else if (multi_bus_mode != xfer->multi_bus_mode)
> >> +				multi_bus_mode = SPI_ENGINE_MULTI_BUS_MODE_CONFLICTING;
> > 
> > Here we check all xfers have the same multi-bus mode and keep the mode that has
> > been set. Otherwise, we set this conflicting mode and the intent is to generate
> > SDI and SDO mask commands on demand on spi_engine_precompile_message(). OTOH,
> 
> s/spi_engine_precompile_message/spi_engine_compile_message/
> 
> Probably just a typo, but just to be clear, the "on demand" bit happens in the
> compile function rather than precompile.

Yes, I wanted to say spi_engine_compile_message() but miss pasted the other when
replying.

> 
> > if all xfers have the same multi-bus mode, we can add just one pair of SDI/SDO
> > mask commands in spi_engine_trigger_enable() and one pair latter in
> > spi_engine_trigger_disable(). I guess this is the optimization mentioned in the
> > comment.
> > 
> Your understanding is correct.

Awesome. Thanks for clarifying that out.

