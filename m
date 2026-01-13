Return-Path: <devicetree+bounces-254390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547AD17A93
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61202306EEF9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D571E3314DE;
	Tue, 13 Jan 2026 09:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EqW/5dJ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EE0341079
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296745; cv=none; b=PihmXc7XHdE8DwdGlq9UuufSJdR9J9XMSeAN2YTlYafZHkZGcZpMj6sZRIFWsEoJyhKyNDmmUFWluPHa+j8SKJFuCoW7E1cEJCa47/jq44YcdhCBh7TXeFzWTJIzkgEMQNuLfcKXVo04hw155Xcg7TJOt8SNSkQJpBw4PsU2KcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296745; c=relaxed/simple;
	bh=JCofhHvfd53o1WBOebwHnqNf6NcT5WNMbWTXNYZjET4=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D9WaLfa3KLggqM5L7IkwoOWRSBEmpGaIwRN4I+hDCg+OTxdMMx/egGNXm/fpReSUNibq0FG1uaZmNzVqK999wwvBjhUrTLNR7sJrioQpC+Wy/MEFybMQw2g90HmPRMqeart5oQHZxjZSW5NrUQo65llRGX1hYC1u01CzbXXjZq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EqW/5dJ+; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477770019e4so54707725e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768296742; x=1768901542; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ANTY9iO3ws9nlii5Ngz1Ms3uxXBQsWZtayLTatXiQoo=;
        b=EqW/5dJ+DJbL4jqELu35Q2PLnnzkuneIqWs8M1suNF8PKedeMQbGsTznUAQVE0Xtbj
         P0+DxMo4A2pwS10qJJ7C9met9k0nJQzSa9YJhSnmcQ+zRiqQyLmwSoZgyTQbNlbdbtuU
         L//JJ/2fOsr1JvP5VD/+/s30MRnJOyGgQkN5FPtoXZ7LSk25U7NIxDzqDno3+SJm1vgv
         PXjERp+9O/6TPUHuOnSeUX9ZxhVJINaa7uvEc7gNGmbaBRzUqGoaESgzscO2ENOitMyt
         JobpWWttuJiWrnlaNNa3HHybPZ4LniRMIvht0ZVqEpE0TpmYAU9FXRDGpu8lo1EGJFif
         WiAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296742; x=1768901542;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ANTY9iO3ws9nlii5Ngz1Ms3uxXBQsWZtayLTatXiQoo=;
        b=i+XAEXRJtltkSLx7HzL8CAlBHP1ZrlRV9woNrR2Kn5kvf7/sVrYzSe2xHVJfKrUovs
         rRxLPg6isAnPUMHdzFixXJA75UBQz8VjtKYkOGR+p1dHAO9q+PZQyHA+Aq/9z0MmpajD
         8q1WNA2MYwZPjNdYPCmbljXt8C40TVOOaA6CATGq+e1tdP3fyqFq4IIDIOaUkRqOZ3eB
         kQSNbNby07lt/Fm1G1pRD1X2ft72zEEWKA0SuduN+ekj+cjkemUnsOx0oyLh7sqw5kE0
         aQpwRd5/uJy+uOZw518/s7zhdAkxTeSAShkhLxfgg7PdhTUSmXHze6ncVNJC2iZLeNnN
         BcZg==
X-Forwarded-Encrypted: i=1; AJvYcCVPR1bzMQbcCw4hS0zIr+vCnhMb6uN6FgDsneEAOURBXqWLWWzjig2xgLo3t232e8r6p3FpuTn/qPE3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2lPb7M9qoRlM6WsVufnMJ8MEPinWLq5KKmt0kdROXZIcb27qP
	aNpvrucfWq1D62x3Zvy0mfj78qLNGl+1F1vzDrk2VWJQRnxOyEUkYTLb
X-Gm-Gg: AY/fxX55VhGLf3EGUpDw1JdAdw8LNzVE4x2BE6yIDkIftAY/Cppwk+5CfN1jja1hLLw
	RkD3+9ursMzp0Rf7hhzrMbPkCUcMQSqd8ctczn2XodXHy4gSLN/xdhUTIUd/qkjfHoQ04ljWkBI
	FRwT/NgF83XDeN7pFJnaeoV9VDPyObndfXVAfuXUKUmWZUPOp6QWbJpeK1bDd9yXb+f/vE9VA1F
	T2MHF4291CYryZs40wPELyqfHZmvuJTFRBOcj10zUJ8ChxDgMHnY73YgDkaZsCDuY+FVadlrvYx
	MWVH/It7DMhR10CXFYFWj/I4+eVwPX1TIjPtu0P5lgUdpLKxRQvIbLveb0FwtsCfxGaXeRjShhn
	PdjrP/vf+LS1QWe/gaSmZshIX/3+2pkDvT08y5/zFLc6PpNcH6mIu3pdRNQVQJIfYWcRfxBGFcb
	BI4/nga0fBtwYj82RLTPk2yvl55LcMNxCcvB0pcuyDkQVFjOgN4/+CfX7VY35B4kWHCbTe7T/KM
	7Jf
X-Google-Smtp-Source: AGHT+IHPWudwQOiLLEqOGkatQsiBH7DQ1193X3z7HKU4y1KwuYdZs3UMS0CdHAkgb9M2SUjSqY0S1w==
X-Received: by 2002:a05:600c:c4a8:b0:477:54cd:2030 with SMTP id 5b1f17b1804b1-47d84b32788mr235074135e9.21.1768296741510;
        Tue, 13 Jan 2026 01:32:21 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9c5sm44254562f8f.22.2026.01.13.01.32.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:32:20 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 13 Jan 2026 09:32:16 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v3 2/6] iio: frequency: adf41513: driver implementation
Message-ID: <lwqhf3pm5xewtx4hhq7ei2yil4skmtkstqfifif74u4e5jmtzh@wedhpibvjepw>
References: <20260108-adf41513-iio-driver-v3-0-23d1371aef48@analog.com>
 <20260108-adf41513-iio-driver-v3-2-23d1371aef48@analog.com>
 <aWFPEa9HI4wmYLpn@smile.fi.intel.com>
 <6hcqrcy3meskddrklb3jtlpca2snrs4upwms56lhq7mkes7krm@vdiaqkfc6lgg>
 <aWTTs1n_N0dVjpbV@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aWTTs1n_N0dVjpbV@smile.fi.intel.com>

On 26/01/12 12:57PM, Andy Shevchenko wrote:
> On Mon, Jan 12, 2026 at 09:56:25AM +0000, Rodrigo Alencar wrote:
> > On 26/01/09 08:55PM, Andy Shevchenko wrote:
> > > On Thu, Jan 08, 2026 at 12:14:51PM +0000, Rodrigo Alencar via B4 Relay wrote:
>
... 
> > > > +#define ADF41513_MIN_INT_4_5			20
> > > > +#define ADF41513_MAX_INT_4_5			511
> > > > +#define ADF41513_MIN_INT_8_9			64
> > > > +#define ADF41513_MAX_INT_8_9			1023
> > > 
> > > Not sure if we want (BIT(x) - 1) for the limits as we have non-0 minimums.
> 
> Any comment on this?
>

limits for INT are taken from the datasheet as is, so I think it makes to leave them
like this.

...
> > > > +#define ADF41513_MAX_PHASE_MICRORAD		6283185UL
> > > 
> > > Basically I'm replying to this just for this line. 180° is PI radians, which is
> > > something like 31415926... Can we use here (2 * 314...) where PI is provided in
> > > one of the used form? This will help to grep and replace in case we will have a
> > > common PI constant defined in the kernel (units.h).
> 
> Any comment on this?
>

will adjust as suggested.


kind regards,

Rodrigo Alencar

