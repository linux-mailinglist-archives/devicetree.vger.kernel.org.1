Return-Path: <devicetree+bounces-256040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B319DD30803
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 703E930EB654
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA9F379987;
	Fri, 16 Jan 2026 11:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K8+vtq1N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD6E37996D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768563124; cv=none; b=OVC5M2awKTlxbIr0gir+cAeRfjy+UpP8J8TDDgStOUieGqv/qk/YFDLZyvXaK2976RrQYlLC4BrVgdv8CfeprEsxWVGAs6taGHggsGtcgtNH1uOty0zJHPHp/3qYPHI2J2ICFoqKKo9slnec5lvmxEFZS77Z883hk4nYqp+wj3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768563124; c=relaxed/simple;
	bh=RcBKDPOtj7S5hNjct9LipohyYjjr620KRbP1CONDhD8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=csZdeU/0za9f77XejbForfzl83dRUQktrWvMwZbxg1teCsnUXl1+dN4nNaWxnSEdqUWbn4MywGolY29mSKl4LZ3iDy0KnEQHh7IUiBsjj3b54WOW6w8KNh6UpoZiLCuiRCDqVzdfwAfXW8cmUtHy6uF2ESgWckepNHc8bR6ZCDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K8+vtq1N; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-88888d80590so27662606d6.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768563122; x=1769167922; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yEOmuVT1QFTVBveM/K8hKMfzTNfuh+uIuEbcu4VdEn4=;
        b=K8+vtq1NvV79E0BFJY2MpKitsDtMDrlHB2HWBmeDuVu55OBDGiaYEa97zPSyw/uKy1
         rtryvWhgbEBEbblcSfxRvgscOISG42TuR+Z2D7OIIJ/+1xNKQoTI9blSu2jDvjI/B1DA
         bLDTJtlNogUfH8CsHrX7ddWpZ9cXldMMCNdOp4nICoRPTl88in6l485c5nKUdUJJinJ2
         Y2MQw4UcwYAyu5/EhhJiODPWBSkbsCgDZoXgM2Rb5ku+hlk5D/kkdX2t+y879wCZog/y
         pnyXdkW2sKUlBX1v/nVCgPRTSjt3QyoK5ldB6NNAVKX+iIRLia9Oe9SRzoWwLs6enL3Q
         foog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768563122; x=1769167922;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yEOmuVT1QFTVBveM/K8hKMfzTNfuh+uIuEbcu4VdEn4=;
        b=Hht8Mj1dhfj+q5ZgA6n5Z5uLt/+nau886QH6LV59FRTCq5tVMFDTal6OGOVwrej5pc
         dl1ZklSrorER4sY3GJ1rqbgoeECjdqUzot8UEhCyIRqGAu+dTOJK6vyoxFTVbScjjKuv
         wWXfkAleGbp3+lRMOur/s2SQib6SuU5FwKd56ICyHQ/iCnZen9I9fbArFgkQhakigryd
         2zEFuAZE37X8uphe+7OenPKeRxa2GSzZMXYdVX8j1bgbAq7nj3yGsgfTuhWsJTQDZWzQ
         NhpoeaApxcNI1fXrPVvpV0x3Wi30a99UUJXbU0/v7kWV2D5T4CCqdbROV9WH4ZC39Pbx
         MVdA==
X-Forwarded-Encrypted: i=1; AJvYcCWljpTkPE8V3lAHTaAV1v28TGKAnFPzGMIdKVqTOnkC9dcruqMsAJKHuIA3Wo0IFKcaP6bldLMyjsUZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxGliJq9e+ncrZVhCXtZLNWeHURpJjW/E7vV2ALbBWDia+aFsI9
	ovO2mn1dxNmtCOj02rMxrthU1ajm1QKhlJ35f41S6Ld0fVFjm1wV+sFT
X-Gm-Gg: AY/fxX56orJIQWd5moFboMhwp4HEy9dshWxc815baqR6i3wi0XNYPN4eB4kF34cnE76
	ZSZdd1G+oOg1/Px3BEln2ZClrMJN7LknS+Y60ZaScRYcY/DbN3+KQjLF86+4j/ouIs3bcNo8c7C
	9XG9B5LdZOedhdpgGKc4mrWHKgw9Uuc6xqpHfulqKyNUjHe6rxpd6kWCtvT6iFk+qUWUAbzToWT
	shE7zL9YNnuXqt8ePYa3NEumoSL1pjTPrFc/FzXUDoCQ+ig0Nb3ItRQukz8PZ7fUzHn+DPI4Swc
	cH33hnCGErXP3HXz4Hi1iom7AdfpglDEOoWT8E3hhpReIKm0CTUSdqKzTSEHng2pk+6YD+/htW+
	s3/Lbb8FArXjeogt+2AdAnB4xxv15HKwxKmaPfqeaLBR7IJqri1A3tMLVyw/NaIT/+zS3iiQpFn
	MY8C2wuN7NYRqDH4gaxaXagnZZOZsNVKtw3WXNvv1ZO1xjIAEGwEyee39vOXJG1EFKJdpxHkrJu
	D1H
X-Received: by 2002:a05:6214:dcc:b0:88a:589b:5dac with SMTP id 6a1803df08f44-8942e421060mr35417396d6.6.1768563121515;
        Fri, 16 Jan 2026 03:32:01 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e5e4a2dsm21136756d6.11.2026.01.16.03.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 03:32:00 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 16 Jan 2026 11:31:51 +0000
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v3 2/6] iio: frequency: adf41513: driver implementation
Message-ID: <zgz6g7pvzijrt77lwdi6q23lgkscm33imcdfbnu7mxvzarygst@ve3wi5l6dv3d>
References: <20260108-adf41513-iio-driver-v3-0-23d1371aef48@analog.com>
 <20260108-adf41513-iio-driver-v3-2-23d1371aef48@analog.com>
 <aWFPEa9HI4wmYLpn@smile.fi.intel.com>
 <6hcqrcy3meskddrklb3jtlpca2snrs4upwms56lhq7mkes7krm@vdiaqkfc6lgg>
 <aWTTs1n_N0dVjpbV@smile.fi.intel.com>
 <lwqhf3pm5xewtx4hhq7ei2yil4skmtkstqfifif74u4e5jmtzh@wedhpibvjepw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <lwqhf3pm5xewtx4hhq7ei2yil4skmtkstqfifif74u4e5jmtzh@wedhpibvjepw>

On 26/01/13 09:32AM, Rodrigo Alencar wrote:
> On 26/01/12 12:57PM, Andy Shevchenko wrote:
> > On Mon, Jan 12, 2026 at 09:56:25AM +0000, Rodrigo Alencar wrote:
> > > On 26/01/09 08:55PM, Andy Shevchenko wrote:
> > > > On Thu, Jan 08, 2026 at 12:14:51PM +0000, Rodrigo Alencar via B4 Relay wrote:
> >

...

> > > > > +#define ADF41513_MAX_PHASE_MICRORAD		6283185UL
> > > > 
> > > > Basically I'm replying to this just for this line. 180° is PI radians, which is
> > > > something like 31415926... Can we use here (2 * 314...) where PI is provided in
> > > > one of the used form? This will help to grep and replace in case we will have a
> > > > common PI constant defined in the kernel (units.h).
> > 
> > Any comment on this?
> >
> 
> will adjust as suggested.
>

I am finishing putting the V4 together and I decided to leave as is.
doing (2 * 314...) might lose precision, by not much (maybe negligible)
but it does, as (2 * 3141592) != 6283185. 
And that it is part of the reasons why PI is already multiplied by a
power of 10. I suppose there would be multiple constants defined:
- pi in micro radians and nano radians
- 2*pi in micro radians and nano radians

kind regards,
 
Rodrigo Alencar

