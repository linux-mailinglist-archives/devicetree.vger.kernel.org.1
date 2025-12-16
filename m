Return-Path: <devicetree+bounces-247177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 268ECCC53CA
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFB373002D37
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 21:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB9A33F373;
	Tue, 16 Dec 2025 21:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DHMv9026"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6B82F361F
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765921255; cv=none; b=tUz1KokgfQ6iiwqFrSsriWe+YyV61vAuOsnl86D7suLdyYJ6qT9/0uwoKMrWtDnETO5VH4t66v4oVkiic29Op7d8IHuPe932Vz92HtUhao2qT+QvwyaQLNqp0NmgDEo7cOt1DY1YVxvnOKBnoABtJXRI3R0IZURWETzG28c8nKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765921255; c=relaxed/simple;
	bh=NmP7yRxuwBDOJ0jpE9VLHq7MPNAkro8YSHe8EEKaoHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PTsP5E1XZ5AiB6sm03+eFrQBXJVU57miQUKYWnzqgtey2s76kADphT1GyTy8/TLDKxKEgNyukDfXaVCHoy/UF8dWAmRJ4z/ncPVFpPJECrh53CuEBEwH8xGOq04lbh92AOZ7QNbhHcc4eecFTyCVDd0E5gfDwpQBE6AuRzZeyLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DHMv9026; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-431048c4068so851817f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765921250; x=1766526050; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8OTDbmAFb/FXvcogwunDm5PD9Y8cmiPYZgWvi7Zhmcc=;
        b=DHMv9026B5w3Slm+85u/9rO2pQOe9LN9fRzNwr+xTp5fjv3orK4PLy91HIEeWCilg5
         K12w1Mn4ZOx4jOvrLN8OZSq9dtsssYJnLiB6EWxdpJDiWLrzH7bPEvLpZFadUh0JoQ5c
         S5fbPZcTCdz6vxxrOPRTwrmwIBx2UgjW0ABBh3ZT7KQAHJgofKSGa8E1g1RKcboYqiNq
         qXTxP6Mf/exE94JGpovbYDo+8uGllkyChV/7NMt/SolOnBp20hYlDPfKgFnuzqnN6/WW
         24wGXTMjVIgNehkOVIwDzcmApoUDsLSnrAJDqcskHdh3GJ+zuzH5c0JIwPB1FlnDL4eI
         DTLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765921250; x=1766526050;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8OTDbmAFb/FXvcogwunDm5PD9Y8cmiPYZgWvi7Zhmcc=;
        b=JHHCVVr4ey5Isgufz5tPkRfHdvwu1RkqY9Nad2zMvxdS1uBq9bvMO61i4juBUvbS4x
         hoY0CNQof2RYrk/MLxy1/SUcM+CAVQxxoHFFRS8mTk2eAhixhNzh4XK1vOgXicm7TwqH
         1iYOi4mIOwjTMlF93Jh7bFNDRMmZzTy0NniGNmDKS6lCIhgNptSpHtEp5HAe6ASZ1+wy
         /fsf27mAreFSSWwu8N9DfUHEy+tsJtVit3nyWWDvAcAFuiH2piF5UeaVABUl/49OEBgu
         xjGKSg2OPBGAimK6kRoiR6/g0Kq9UyQDRtfRj0i//0fZC8TYFrIaKXX35KAgbXAth1L8
         YU9w==
X-Forwarded-Encrypted: i=1; AJvYcCW7pJPpi6q3OI0ZqMo6cSGRaBAYtptMXvqKKC5n8XRqg5W8FiZ80kjMQXK1frECHYBcOR6yp9ophdhW@vger.kernel.org
X-Gm-Message-State: AOJu0YychDuk65jQ2BKSmWopQ/kwrM0b+1BG+Q2kFT2gc/EGUYty+Am3
	JSchcB5NPuFP/hdHgYYSNJ4N4imGOqMpwQr3zolBlt3E2eVWvpi+yY70
X-Gm-Gg: AY/fxX63UdMmp/Yj19agtn4DIw/aKnYKWMeCPdIkrrrj7f4gdJhsyHDDE3Ib6zF1wb7
	1xlQ0vTpdYXNSv8FFC5/QFUg9lqSmQ+uxYJrL7IcoKd8Dco5e6UcJmv9iLmIulSXwsqnY1smsCB
	IqsMOgs6z5ET1SoMpHlTuD8et21J0VcVd8fQbLj0jAwNHlntsgpsF//WEF++THlN32uTY+VqOMF
	uVXGMbgDVpQHLoPjgVYPpgzA/0mvURTPr5ZZMfLuQEpfGjZh80IRsMySzofgwPhcaSG37TDayc5
	KjihFcQIeAI4qzBGrt5K9lh4H3D/C/CM5diOqWJbvm0cAfiddGDhJeC0oA0ghEMCJ1R2rr45E5D
	nT59OOXbASR2+l2ZlzGNHceR71WY3GZfTSJ7L3OsZSbQ3kVkI6qmjARrboDg8tqa1OTLmukUrrF
	BNNEXiPpHA5ivakSXehmeNDkxquu/qSKmwUullrxlZ5cDoHJsxtuGfv/9ONpt8dowmTD1hJQ/ul
	bLVzw==
X-Google-Smtp-Source: AGHT+IGO10eGCBcDdrvXBj+bw2YCSbuKKzXZlaJczTHp8579GmMw4SpKWUZrcbx5tLa/cAKsrvAO5g==
X-Received: by 2002:a05:6000:381:b0:430:f3bd:720a with SMTP id ffacd0b85a97d-430f3bd763amr13851035f8f.27.1765921249484;
        Tue, 16 Dec 2025 13:40:49 -0800 (PST)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([2001:a61:1226:7701:85a7:67ba:ae9b:7b63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc222061sm8164535e9.9.2025.12.16.13.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 13:40:49 -0800 (PST)
Date: Tue, 16 Dec 2025 22:40:47 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jorge Marques <jorge.marques@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v3 3/9] iio: adc: Add support for ad4062
Message-ID: <guta6xzppemql5bj6syq7zc2dsj2zd4rmle7mfhhr5wy3zhehd@yuixpaf2jrv2>
References: <20251205-staging-ad4062-v3-0-8761355f9c66@analog.com>
 <20251205-staging-ad4062-v3-3-8761355f9c66@analog.com>
 <20251206173459.727fb3f5@jic23-huawei>
 <krbiav67bscvqs6bumx5ay5tk4axeuc4z7gbn26nxgaoqrdfiz@dqzqpgcpclnz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <krbiav67bscvqs6bumx5ay5tk4axeuc4z7gbn26nxgaoqrdfiz@dqzqpgcpclnz>

On Mon, Dec 08, 2025 at 10:16:35PM +0100, Jorge Marques wrote:
> On Sat, Dec 06, 2025 at 05:34:59PM +0000, Jonathan Cameron wrote:
> > On Fri, 5 Dec 2025 16:12:04 +0100
> > Jorge Marques <jorge.marques@analog.com> wrote:
> > 
> > > The AD4060/AD4062 are versatile, 16-bit/12-bit, successive approximation
> > > register (SAR) analog-to-digital converter (ADC) with low-power and
> > > threshold monitoring modes.
> > > 
> > > Signed-off-by: Jorge Marques <jorge.marques@analog.com>
Hi Jonathan,
> Hi Jonathan,
> ...
> Yes, and for burst avg mode, 14 bits.
> > 
> > > +		.storagebits = 32,
> > Given we are doing data mangling anyway why not store in a 16 bit value.
> > 
> > BTW it would have been easier to spot issues with this if you'd introduced
> > the scan type stuff with the use of scans in the patch that adds buffered
> > support.  So please move this stuff there.
> >
> This can be done, just note that for ad4062 in burst avg mode the
> realbits is 24 bits, so the storagebits is 32 bits only on that case
> and will requires a few conditionals to handle just this case.
> 
> To not overly complicated the logic, for ad4062 I will always read
> 32-bits still. st->reg_addr_conv then takes:
> 	// IBI Fallback
> 	st->reg_addr_conv = st->chip->prod_id == 0x7C ? AD4062_REG_CONV_TRIGGER_32BITS :
> 							AD4062_REG_CONV_TRIGGER_16BITS;
> 	// GPO IRQ
> 	st->reg_addr_conv = st->chip->prod_id == 0x7C ? AD4062_REG_CONV_READ_32BITS :
> 							AD4062_REG_CONV_READ_16BITS;
> 
> Then, for sample size:
> 	const bool is_32b = st->chip->prod_id == 0x7C;
> 	const size_t _sizeof = is_32b ? sizeof(st->buf.be32) : sizeof(st->buf.be16);
> instead of
> 	const bool is_32b = st->mode == AD4062_BURST_AVERAGING_MODE && st->chip->prod_id == 0x7C;
> 	const size_t _sizeof = is_32b ? sizeof(st->buf.be32) : sizeof(st->buf.be16);
> 	+ extra st->reg_addr_conv_avg that may or may not be equal to
> 	st->reg_addr_conv.
> 
> Note that the header section of the I3C transfer (8-bits) occurs
> at 1MHz, while the reading in 12.5MHz. I wouldn't go as far as say it is
> negligible, but for the part, protocol and software overhead, it
> wouldn't provide ground-breaking higher effective maximum
> sampling frequency.

I went back to this and now I am properly using the already set iio_get_current_scan_type
to set the appropriate sample register and storagesize (to reduce the protocol overhead).
Both methods are inline and used once, but I believe having the wrapper
methods makes things clearer.
For read_raw, I am using the non-optimized, 4 bytes trigger_conv, in the
next version.

  /*
   * The AD4062 in burst averaging mode increases realbits from 16-bits to
   * 20-bits, increasing the storagebits from 16-bits to 32-bits.
   */
  static inline size_t ad4062_sizeof_storagebits(struct ad4062_state *st)
  {
  	const struct iio_scan_type *scan_type =
  		iio_get_current_scan_type(st->indio_dev, st->chip->channels);
  
  	return BITS_TO_BYTES(scan_type->storagebits);
  }
  
  /* Read registers only with realbits (no sign extension bytes) */
  static inline size_t ad4062_get_conv_addr(struct ad4062_state *st, size_t _sizeof)
  {
  	if (st->gpo_irq[1])
  		return _sizeof == sizeof(u32) ? AD4062_REG_CONV_READ_32BITS :
  						AD4062_REG_CONV_READ_16BITS;
  	return _sizeof == sizeof(u32) ? AD4062_REG_CONV_TRIGGER_32BITS :
  					AD4062_REG_CONV_TRIGGER_16BITS;
  }
  
  static int pm_ad4062_triggered_buffer_postenable(struct ad4062_state *st)
  {
  	int ret;
  
  	PM_RUNTIME_ACQUIRE(&st->i3cdev->dev, pm);
  	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
  	if (ret)
  		return ret;
  
  	if (st->wait_event)
  		return -EBUSY;
  
  	ret = ad4062_set_operation_mode(st, st->mode);
  	if (ret)
  		return ret;
  
  	st->conv_sizeof = ad4062_sizeof_storagebits(st);
  	st->conv_addr = ad4062_get_conv_addr(st, st->conv_sizeof);
  	...
  }

Best regards,
Jorge

