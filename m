Return-Path: <devicetree+bounces-228198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB096BE975A
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 17:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFD2B1A66EA9
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56AE63328F6;
	Fri, 17 Oct 2025 15:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SwJzMIJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5755632E14E
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 15:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760713394; cv=none; b=W7xJyZzHu46d0PVOpXgLGm4g4az1NuSIGS0Gn35Z66BHySDMbLLy7Al4NMz6Wn92+6i/p1XwmwttCPt79S0y1ZXuC9G7g7g1XomyrojqDabsWp6E+FTMs4rCx7eKUtmVxl/oL4hIk2B2GbLrk8595msI7FJUbQE3Kt56093DWDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760713394; c=relaxed/simple;
	bh=DepML/g+us2sXe9XTL0BD4vVQGz+k9RHd20BL/60JyQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CPcEJ3LhS+oBT0FW4ZIYalXDDO38FWy53oZ0DZgq6j2QS+6QlZDway5mXfCYBKpjNzCg4R/XwaUqNu6+QO+ku0gIYkPogoXO/pgVSDbClvFIiB9IVB+uBPEsw/ELmZcfzpJHFQV9aqjWGaXsMuob5JXyKH3TS8h0ul4L1x8Bd10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SwJzMIJV; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47117e75258so8507555e9.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760713391; x=1761318191; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DepML/g+us2sXe9XTL0BD4vVQGz+k9RHd20BL/60JyQ=;
        b=SwJzMIJVJNWXP2Nw28DNaPYoN+kr+z75YehipFT0qO0fWm6VyAUlfLY+kZKxcYZgmp
         sMQLw6cPqWLLtN2XcWTH5EFMpGGUkb4yTIRmS2SVjDS4iwZecZzkHdLjW+V9a2NUBgYa
         hkFmkUIPfDOmrL7poci3rdrqoJs9VjY0s19cvNcGA3DnSSx0/LqrBujveHhx/xfCZnsh
         RXi5mSUcoSsH94iQMMdWtIcbTodbeYPbIjxZtaZLZSLbR+gku8jcd0s0fN7B1CCUc2xn
         j7X+oE5JENi1kOD3J6wRMOWgQMUpo26n0VZ7iRSZb0vac+z8aBsSHGc/q84bsbZ0OSet
         NGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760713391; x=1761318191;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DepML/g+us2sXe9XTL0BD4vVQGz+k9RHd20BL/60JyQ=;
        b=NkL3cO3oB5qVgz7cJTj+Jj53AGMa1JtYSSLjN9VaMqjGTXKGEr+ZRsEs8fcpQzCdeN
         hBWeefOqzVn1Wk/GVVcmztM4jWVewQo3OEv2dqEQIyjXGBbmlmLlYO0bJG6/EQcT4LkQ
         A329qLk6FmgEldDSAhfXE10LGKVCmv5wcOZlR+my0elYpV0zk5tHhds3cWSyGUN3/HrX
         fEhgAvfGDEUeEJlQHFjFibKyXMAttstKgCEJ5oqXTTHyAUNc6a+uGWq41CYzfDKe53pf
         nuiMAKk/zL/jWslU1a177NH6m3F6xFkscPd3F0FC2vOx8pH28hD2npV8+KjTcw7I/be2
         jSVw==
X-Forwarded-Encrypted: i=1; AJvYcCXmxCHRwmmuby+F+MahemgISZQdy68HDdeAtJy/PkBp4VoxKpI9USFdZo6uDhnrIdj0K5bSgbPel0BL@vger.kernel.org
X-Gm-Message-State: AOJu0YxWwUaSmKCJhGaQraYzyTYeScUJ+9S2UA+lt7JcO+TrfgkvC6ul
	BkPdOQeD02btOxekJhG/cxpsAtvAocRO8xqREnCDZeCrORrdYk8BlQ+A
X-Gm-Gg: ASbGncsA3JsJO7wZUT0zuPBUJU2rCbTCxyEbHNZIFCCpmqd6wQhurxcKPDm2Tw9h3g0
	5TmCZk37gCG2AgXFQi8lTBAMhVEUxti6sDrdTJgMDWWiTiQOQRGsh5WMP3LFRsWuBydH60uMNaD
	iV4p5dXulLm5xx3WuzmRqmXu6fYpD3X/Hp0wRRdp2eUKjtSby++A5YFp6cikPyz4PAnZSN9D5Kx
	W1HG8FQ6S9FZpkGzC2TCsENd+dxTeWmMgKZY14vXGFhHgiH/ew4oUdWGwcqNDsEZbxQccYNcuO0
	O0J9UfG1B3xfHTkkGP3hlPusKnOxhkHDMUA19nXI5x9FYdB0FXbdhAZGCRCPsv3Duj9xelL1vN8
	6ce8OAoTIVyHKKqrTckdS8/mCjFHMWEF04CHSP4KoyKW2v0uSA49Y3VTll5dAq7ZfjEAAarYeGL
	S0k2ucOCSf
X-Google-Smtp-Source: AGHT+IFV+Ku+oz8pC4XsMoHhutoyVvOyd/uH27Kd+20XJX5VgjNw5pkgK986EJBySxY2sA+BVs8iUA==
X-Received: by 2002:a05:600c:8b30:b0:45d:f88f:9304 with SMTP id 5b1f17b1804b1-4711791cbcbmr30598905e9.30.1760713390600;
        Fri, 17 Oct 2025 08:03:10 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426f2f72e18sm19966547f8f.0.2025.10.17.08.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 08:03:10 -0700 (PDT)
Message-ID: <d56b48901843a7a3f7e6543e46eadb3901f58bfe.camel@gmail.com>
Subject: Re: [PATCH v5 5/7] iio: adc: ad4030: Add SPI offload support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>, David Lechner
	 <dlechner@baylibre.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jic23@kernel.org,
 michael.hennerich@analog.com, 	nuno.sa@analog.com, eblanc@baylibre.com,
 andy@kernel.org, robh@kernel.org, 	krzk+dt@kernel.org, conor+dt@kernel.org,
 corbet@lwn.net, Trevor Gamblin	 <tgamblin@baylibre.com>, Axel Haslam
 <ahaslam@baylibre.com>
Date: Fri, 17 Oct 2025 16:03:42 +0100
In-Reply-To: <aPIqCrvaPQZg7Lo8@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1760479760.git.marcelo.schmitt@analog.com>
	 <c12569f251962ad6034395e53cd6d998ce78a63f.1760479760.git.marcelo.schmitt@analog.com>
	 <e677f27a-787a-433c-8516-99ff1d33f2c6@baylibre.com>
	 <aPIqCrvaPQZg7Lo8@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-10-17 at 08:35 -0300, Marcelo Schmitt wrote:
> On 10/16, David Lechner wrote:
> > On 10/14/25 5:22 PM, Marcelo Schmitt wrote:
> > > AD4030 and similar ADCs can capture data at sample rates up to 2 mega
> > > samples per second (MSPS). Not all SPI controllers are able to achiev=
e
> > > such
> > > high throughputs and even when the controller is fast enough to run
> > > transfers at the required speed, it may be costly to the CPU to handl=
e
> > > transfer data at such high sample rates. Add SPI offload support for
> > > AD4030
> > > and similar ADCs to enable data capture at maximum sample rates.
> > >=20
> > > Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
> > > Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> > > Co-developed-by: Axel Haslam <ahaslam@baylibre.com>
> > > Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
> > > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > > ---
> > > Change log v4 -> v5
> > > - Made Kconfig entry depend on PWM and select other features.
> > > - Reused ad4030_exit_config_mode() in ad4030_offload_buffer_postenabl=
e().
> > > - Dropped common-mode voltage support on SPI offload setup.
> >=20
> > Curious why you chose this. I guess it will be fine to add it later
> > if anyone ever actually needs it.
> >=20
> I had coded that in a way I think would work for the dual channel devices=
, but
> it didn't really work for single-channel adaq4216. And yes, if anyone ask=
s
> for offload with common-mode data, we shall probably be able to it that l=
ater.

I guess that if someone really wants it, the data will still be available i=
n the
sample. But yes, it would be nice to properly support it at some point.

- Nuno S=C3=A1


