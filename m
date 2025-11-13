Return-Path: <devicetree+bounces-238349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6D7C5A40D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 492B43B1382
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B54F324B2E;
	Thu, 13 Nov 2025 21:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dEIqNwYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FD43246E6
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 21:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763070910; cv=none; b=WngnSx9cYr5zHkB9acMFyWcF14FIqJD5nTM3iiFTyWKAR5DaGiXXkgh/ALcJu9VSBSoc5t+QSpHZLOgpPRxpHCAdEn9wqlgYLmHan4b8XhPQ8F4VRe83Q1Lv+5Pujpp4+V4kP6YTsNnCJF3KZJHKQjebbRDN26rWidy0iswsd8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763070910; c=relaxed/simple;
	bh=rVmOuDbePpQ2bGMVUUhPEgQqgnR0QGJ/V1GBCFoSda8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xoap9E1VxdpEMQGwwbiQGo4mWAjOhXzuBj5vihZkZsEz2asBBK44nVTBx7rXJPxpiGEdKXE5y6xfiXIwhgx1m2JMvs/3KCqDEprBqJaU/ceOwRyVS3+GeOy/a+nAXZfCUjb3+MOTQZKhaa4vuLGgdftaRty49PgFjrAhUX5zSP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dEIqNwYV; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-bc17d39ccd2so767693a12.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763070908; x=1763675708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VH/u9TyGr8RSTsWUVVlvs3UKeqS3V+ruCDTcFtD8HWs=;
        b=dEIqNwYVG9vuE+ZX4gYBL6p9FjDHiISo5L+ld1kit2Szw7XLS0w7BDK8hFBCjZsHqW
         mkxlRHXxht/2/Mg+BnZUALAYeukGBYz5jE0zduKHHfpE6ibPr+i0ptd+3U71iDsgZKMr
         2fWfu2DAlVTZWFkIFs+OYgdFBeqDWxN562NzYSptx2AeH6LMtG3T8atfQP5GPZStIhXl
         kyBJfZGaNrKa0F03zS5uxJFgxzxCbeooJW+P8HfZurrZfBUTSXRpRipqm/FMEd/eo3Dx
         LmGqrVAOxU0YFsl/tcoauzHtcCc6QU4ClRgn05aLs/jYMLxuSRsWu/8a9okM4mpeA9Gq
         Zz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070908; x=1763675708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VH/u9TyGr8RSTsWUVVlvs3UKeqS3V+ruCDTcFtD8HWs=;
        b=ghNAgnTSbJiJqfwhZhMlhZlpI3gZkq/pNEJkicR0jWYS6u7dCZCOrSDSv6D/7Xchj8
         TFk9HLOsrgBbNB3OW9gb70jIjyOwb81EOWSzwr1UY2Q//xPgdRfOx8vJ6CL4vfAcqAiL
         0MO7+YzR+p19qqORJcAM3XoWWreC1572LNPdGQApzRCPw/N2B/3vyV1bHXhxVtQY4Tvk
         mRhNsVPc8eyArrpB+mRY9uMl2pERYeBwEZ9ZMbqigCevrULCZvta1a7KviZkOHLExKeg
         LvdhMBjhYzio75mBU186MyvRYNhnjsHeHd/AfTmybQxOHihT7UVZW8KLKgR5YdNrUlbX
         KjKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXbP0x4EVNRxUJ38daBRPFCw3m5nCwUKfjOrFvfuEGsq7NNdM6wbU723tR58myF1rWhGAl7DXdvWa6@vger.kernel.org
X-Gm-Message-State: AOJu0YwqbmAo5oT5IEJFYmPAk4mbFBuWdLrhjQDSzOQdJU1ZKO6suLIe
	Fw77BgbnCHcfcJ599PCDhpuLqLCcU78eZzT/OyNMOglu5xBo7PqDZF6f
X-Gm-Gg: ASbGnctEBkPCEFyCvB2tBC45s3rGJwY97cAYjQoZSCTSeqqEQYIGvk5i3TwOoq7B+YY
	Z8Ob20c5go+4xRRvQQEWseopp2KR9piZXm/vnHTlQbeWfHrKeFNfH1fC4mfU2M38/KQJz4bXOlk
	VFjYz3a0JusHALWL1K21o8G8tpMR3GAyGUMGsdZABHOsd5uhH6CeqQlv32/9G8dtos20lANNebs
	LJfyhRoiQUVgyNBhi5FLituhXUevHnqd/9x8iXXKYeN90atxlqkAYDqD2SmlQLpOqRHr5pb9jcm
	Ad1HeBEaAbu0cSDBZFQXRPAaThVSDJc+i/QCqEtf7kbdKHwvjG+KvxzvRx0bqD0e/FqlBvNNcLT
	P8hlK6ouRhsxfYVK80mZm0SJEMq0I553p3ZLms4BVbUnELCje3nV1VjiMUlBA4iJf3zrUwvPfza
	QGi5l9hjVwlA==
X-Google-Smtp-Source: AGHT+IHgNFq0jP1i0r3FaR4AOhj+yV3flfh8AIpVcJiaMVYJcKSzpwSp2u+su9PFlH3VrsqSc59x/Q==
X-Received: by 2002:a05:701b:2803:b0:119:e55a:9c03 with SMTP id a92af1059eb24-11b411fede8mr219766c88.31.1763070907987;
        Thu, 13 Nov 2025 13:55:07 -0800 (PST)
Received: from localhost ([2804:30c:1661:8a00:578a:911c:ac25:24a6])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-11b060886c9sm1319946c88.11.2025.11.13.13.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:55:06 -0800 (PST)
Date: Thu, 13 Nov 2025 18:56:26 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, andy@kernel.org,
	Michael.Hennerich@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net, cosmin.tanislav@analog.com
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: Add AD4134
Message-ID: <aRZUCtYzZCY9IQ5U@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1762777931.git.marcelo.schmitt@analog.com>
 <608ab00821af9f766c75d88f59940fed87cb6df7.1762777931.git.marcelo.schmitt@analog.com>
 <20251110-unsightly-blah-410539e95a18@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110-unsightly-blah-410539e95a18@spud>

On 11/10, Conor Dooley wrote:
> On Mon, Nov 10, 2025 at 09:45:18AM -0300, Marcelo Schmitt wrote:
> 
> > +  adi,control-mode:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    description:
> > +      Describes whether the device is wired to an SPI interface or not. The
> 
> Can you explain how you don't automagically know this from what bus
> you're on?

No. I mean, I should have realized we can imply SPI control mode from the bus node.
That's one fewer dt property :)

> 
> > +      PIN/SPI pin on the device must be set accordingly, i.e., PIN/SPI must be
> > +      set to logic high for SPI Control Mode, low for Pin Control Mode. When
> > +      absent, implies the SPI interface configuration.
> > +    enum: [ spi-control-mode, pin-control-mode ]
> > +    default: spi-control-mode
> > +
> > +  adi,asrc-mode:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    description:
> > +      Asynchronous Sample Rate Converter (ASRC) operation mode control input.
> > +      Describes whether the MODE pin is set to a high level (for master mode
> > +      operation) or to a low level (for slave mode operation).
> 
> I don't really get this one. If this is an input to the device that
> controls behaviour (master v slave) why is an option needed too? Clearly
> this is not a gpio but it seems like it could be one, in which case you'd
> need some sort of asrc-gpios property. Is it not possible to read the
> value of this setting out of the device's registers (maybe it's not when
> there's no spi interface connected?)?
> It's not used in your driver, so I can't look there easily to see what's
> going on.

The MODE pin defines whether the ODR pin will behave as input or output.
Currently, there are no plans for supporting ODR as output but, software would
need to do different things to control the output data rate in that case.
Though, the MODE pin state can indeed be read from a register. Same for DCLK pin
I/O direction and DCLK mode. They are also readable from device's registers.
So, that would be 4 fewer dt props total. Well, yeah, if the device is not
connected to an SPI host (pin control mode) then we can't read those. There are
no plans for supporting this device outside an SPI bus, but we would then
need these properties (or a separate binding). Not sure what to do here. 
Do I drop or keep adi,asrc-mode?

The MODE pin is sampled only when the AD4134 is powered on so I don't think we
would benefit from having a GPIO connected to that (if we keep a property to
describe the MODE pin state).

> 
> > +    enum: [ high, low ]
> > +    default: low

Thanks,
Marcelo

