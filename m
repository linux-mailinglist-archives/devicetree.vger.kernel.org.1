Return-Path: <devicetree+bounces-228306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6111BEB692
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 21:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 502F01AA6EDA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497D3287253;
	Fri, 17 Oct 2025 19:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HBvNa1Ka"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFD0246BA7
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760730827; cv=none; b=ikWhzdJFQwPj+27VNVJuTgI10pKuYTwjY/TrHdQ86o/2qtrWQ436L9hkOtbCRFvt+lqb/DgPLFpA+V3YosKb0vlGKzvSeFubyH6EFEPLgwe9dMkJJiZVMpFb5ZDX2mH3k6T6oh+WuQn45feH2g+eDpft+Ckqk7QbmtbPzzDdP0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760730827; c=relaxed/simple;
	bh=i5Hk7l6xoSrN+AXcpR4MGOF8Rj8+Hz0UPLQLCeNrNAQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CJMYYRgRGhOtq7ag1ztFTPvXuqO4oFbwKYXhVi/q5XxM4x6bZcHHKKZ+9Wc067O4Tz34SMKe7KJoyyCijer+VmilT1tXiK8iKTEHQbqFI/AhiklJQ9CGAmgpRY+FiEbOOeoTnqJe5CpwBxYpRuJ2OtmHrG70P0gsLRQdbWZBctw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HBvNa1Ka; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so1411218a12.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760730825; x=1761335625; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=66FjiNXaw8TmphFF9eNaWop8aMdiITfbjide+1BjBFk=;
        b=HBvNa1KaWts9c2rgQWDkU20KWOrpUxl8AmeijyxnjLCTYQ+yX8wZwQBP1+mInRgJU/
         nDuIMZ3LOacOaNqmO7/rDisXD7QbkgKSFnhRI3vVVV2Rk1Zocd6Qg9ZsXe6kr8D2gTcZ
         yZ5aK+e3qiqVvqypWxOyx0mIZhNcq+NGNtCk1v9VxxGpqYuGZg+F6BH4qArboXz8CpIV
         k3UWekdRN1beDAIdt1uztpZWQ+dLekrvQbUbekmVnrXh5+tjezrS/7+76K8oSX1SRV/c
         EmPO0qDPVpbbDsgTiy8wuNSOAllCtDjcSHPkQ11Pb7VSZ8oUW862fefddu+fzKlY9raP
         5exA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760730825; x=1761335625;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=66FjiNXaw8TmphFF9eNaWop8aMdiITfbjide+1BjBFk=;
        b=ASZER7YhirjIgSuuvjFP/W5sK625R0mSHiHHXUsxy1OmI/nxwfm+vss1mIMDqLkDs5
         BI09Xg0C5Dpze9qI+CFaTZoNu77Mmuwx75mPmiAaDPowP8cGIktmN1WWpGtV4LkBIODi
         JZ/yMC8nk8TC479D8ppv5+ZFjkMchFa1arSl52i5635weBzt0XtUsPmhL+fwGQlXyzS4
         3tOqNV7a5qlh8+A6aSDlQYDiASAnFAWQxPP5paY8N/WS0uTM+LZCa824T0FpokkNhvd3
         GR1smuGNWqnTh5hA3jvWBlK1Ig13va8Kt+NgKsmMHUOEotEmuSGshsYuIEum+B36vPyG
         VIfw==
X-Forwarded-Encrypted: i=1; AJvYcCU8subMBVGt/denP8N0I6KHA1N7apCBBC8jji+DzrfQYMwx9xoSjf4Ur2p1QqSNss42JJb9ZGvYBB7f@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5E4alEf/61JQYvsGtH8PDOx9SM2e3kHFTuX/mtQT1KdMQnln2
	qFzRUkQ9topw2PN4hgsvo+0TPshCbKw7WBMo620h/DIG67sl3DL9qhVz
X-Gm-Gg: ASbGncuZ28Qv853UN0XdzkrYu6HDSJ0wK5jnpt1Eh8P+DtCZPZldtJg5kTwjoOfK2ap
	o0kS8eVWrNOOq6kZJVdu69zlGekmvBuVo2ot36unJPLypArglkYU1IlmPc8oUORDwwhny8BC/vj
	jpy96ZyQkNIpu60asLx1Z/axF5hWaMuwuC53voebSjFD1XGVcmdbclsfuATVVLazPGqmRkidxxa
	fggT69uf+swmRRZGR3xaG4//s+L+SDR82rAsm6IbkQsKKMAWMazNjGzXfRBYriRDMlKitctp+ID
	0LNRke9SmTcVrx5MshcHASKtle4f0OXL3S1aGImEgnCFjpa8HXKU7g1Kafq56y7wBfvYCaY/Zrr
	XjpC87PtJwrKcnCDz/Q89Z4+UwkZisngBPo0mvbc3Jt8lXusvzWD/YflAmOMDSRLbN4JfvqTE7r
	qBWiGINbE3oodrZmJDKhlakGR/nfi8qjo=
X-Google-Smtp-Source: AGHT+IFmw4xfU96UxI5JCpiksAaEuctIniSQG6RkIj6XxJvpDrHo87ypYEHktyPgkIumG9POKqgUKQ==
X-Received: by 2002:a17:902:f550:b0:269:874c:4e48 with SMTP id d9443c01a7336-290cb65ca69mr70425735ad.47.1760730824956;
        Fri, 17 Oct 2025 12:53:44 -0700 (PDT)
Received: from localhost ([2804:30c:402b:1a00:ec78:db53:a246:207a])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-292471fd9ddsm3303605ad.89.2025.10.17.12.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 12:53:44 -0700 (PDT)
Date: Fri, 17 Oct 2025 16:54:49 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, Trevor Gamblin <tgamblin@baylibre.com>,
	Axel Haslam <ahaslam@baylibre.com>
Subject: Re: [PATCH v5 5/7] iio: adc: ad4030: Add SPI offload support
Message-ID: <aPKfCbZSXxaHICel@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1760479760.git.marcelo.schmitt@analog.com>
 <c12569f251962ad6034395e53cd6d998ce78a63f.1760479760.git.marcelo.schmitt@analog.com>
 <5e3a1d31f3cec340650e2e63db79903b78ab9a1f.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5e3a1d31f3cec340650e2e63db79903b78ab9a1f.camel@gmail.com>

On 10/17, Nuno Sá wrote:
> On Tue, 2025-10-14 at 19:22 -0300, Marcelo Schmitt wrote:
> > AD4030 and similar ADCs can capture data at sample rates up to 2 mega
> > samples per second (MSPS). Not all SPI controllers are able to achieve such
> > high throughputs and even when the controller is fast enough to run
> > transfers at the required speed, it may be costly to the CPU to handle
> > transfer data at such high sample rates. Add SPI offload support for AD4030
> > and similar ADCs to enable data capture at maximum sample rates.
> > 
> > Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
> > Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> > Co-developed-by: Axel Haslam <ahaslam@baylibre.com>
> > Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
> > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > ---
> 
...
> > +static int ad4030_offload_buffer_postenable(struct iio_dev *indio_dev)
> > +{
> > +	struct ad4030_state *st = iio_priv(indio_dev);
> > +	unsigned int reg_modes;
> > +	int ret, ret2;
> > +
...
> > +	ret = spi_offload_trigger_enable(st->offload, st->offload_trigger,
> > +					 &st->offload_trigger_config);
> > +	if (ret)
> > +		goto out_pwm_disable;
> > +
> > +	return 0;
> > +
> > +out_pwm_disable:
> > +	pwm_disable(st->cnv_trigger);
> > +out_unoptimize:
> > +	spi_unoptimize_message(&st->offload_msg);
> > +out_reset_mode:
> > +	/* reenter register configuration mode */
> > +	ret2 = ad4030_enter_config_mode(st);
> 
> nit: if ret2 is not being used at all, maybe just
ret2 is logged on the error message below so I guess I'll keep it as it is.
> 
> if (ad4030_enter_config_mode(st))
> 	
> > +	if (ret2)
> > +		dev_err(&st->spi->dev,
> > +			"couldn't reenter register configuration mode: %d\n",
> > +			ret2);
here we log the error code. We only reach it if reg access fails after
something on offload buffer enable have failed first. We cannot reuse ret here 
because we would be shadowing the original error code.

> > +
> > +	return ret;
> > +}
> > 
> 
> ...
> 
...
> > +	} else {
> > +		/*
> > +		 * One hardware channel is split in two software channels
> > when
> > +		 * using common byte mode. Offloaded SPI transfers can't
> > support
> > +		 * software timestamp so no additional timestamp channel is
> > added.
> > +		 */
> > +		indio_dev->num_channels = 2 * st->chip->num_voltage_inputs;
> 
> Maybe I'm missing something but common mode is not supported for now so isn't
> the above wrong?
> 

Yes, that was buggy. Dropping common-mode channels as last minute change was a
bad idea. I did another set of tests with ADAQ4216 and fixed that for v6. I'll
also re-add common-mode channel support as a separate patch.

Thanks,
Marcelo

