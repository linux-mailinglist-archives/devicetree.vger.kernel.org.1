Return-Path: <devicetree+bounces-245280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC8CCAE32E
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 22:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AD3A304AC9C
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 21:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BEEF2E03EA;
	Mon,  8 Dec 2025 21:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cN1qyvL3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53952D7DE2
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 21:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765228369; cv=none; b=V6pFoVK9t20bxJua/rWLS3Z4tLQlq6ItFbji2NKDANv/HaRrJl+rbVuwtPP3/kpvqeecYHobEJnAq87ffi7ZYGLLyDl7ESiCR6aqIyCPGZfVcv9DJXbsTcnR2BWGfVVPsaPcIYIFZr9dJRflD8dp7HINSxoY6lys++gT0BcFKhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765228369; c=relaxed/simple;
	bh=/eT67ox63Y2ukyMLEkJ7o4b1T9x/HDKX33n+Cz5ZXX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=byxSTpC7nCqNLvAjRNJ5SRFh1do5EQ263cW2VMyGmzjNdJqDWHAYuxd8rzEbcH/qnu57kwZlKPW+MbZm1nQrJRp/2DvzTyutodCQBue/1CHIqAxA1bCBprpckcnh8yK4VX5iskHV0vYz6JPhLZ3htTLbBxy+lE5dU7m/hGXl/4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cN1qyvL3; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b32ff5d10so3800555f8f.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 13:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765228366; x=1765833166; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rv7pv8F5RO+cWw9DM2GqkbgxyRJgD6vx59IxXgSv8+A=;
        b=cN1qyvL3CuoYUrWP6lMSGlsWS+dW7HAOaUGuL4MorolNH1Be3bero3WQi4OYnUiCi6
         5ejAcNsAtpfY3LL1Ce1a8zGNtfJP5k9ojjYZj7NMsT1iLwsvU3BMuq100YSHiPKTAmZ0
         93aNu+gDtOluYvSNpr+lbIdvLQvweQsyiLOAKcOZCBCD1YXb4MrOS9juZ7c5VSoRwHex
         8rb2bAXPj6xfEd9MPCyhqVvH8tWV3C0gXvffzoIKf7c9tR2ulcwWzwWDYkKelakMUeeH
         8Wwxti7Wxxby0wHoXHclTCmFRVrcjX0ygnO74ErBxUbbBlbJbnel6J9lHzXUASrNtP3r
         TaTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765228366; x=1765833166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rv7pv8F5RO+cWw9DM2GqkbgxyRJgD6vx59IxXgSv8+A=;
        b=wM407VMkqXMJJc0bvsK47RORZiadMJWXrGSZscCtl5Zt9rrFawnb5oMl0pUIBxUe8K
         QbIMQK8g8G1H18U6xixd3Fsun9funLlr+86TwyulkTIfcQQkHrMT7H9/Ly8PdSOu9Vjp
         g3H7KT1ZRM0eKtAdZHu8cxmnrRSuUbyx4MaevMhvwzQ4UgLvgTUK79TuyJuR891EG57h
         o8XWAQJCR+CUXZZ6tTfYkQbfSO68tITbn01/xutff+pPVYeoKexF8BNB0Qnt+WjeQomM
         TwlhlRZnhHkWPX7A4Qz8R41rHH/CwgUusfs+7ikxNsvnOV6XYjk6jdQyDva3v14gq6V1
         hOsg==
X-Forwarded-Encrypted: i=1; AJvYcCU7+DnA5sqR9XPlpQaaVhoPROvSTV7ewHMhgaHJNhu8S85+yB2+S4GavGypjarPX7UNr1w3+BhDm0Ad@vger.kernel.org
X-Gm-Message-State: AOJu0YzIqfgZ+PRtRq0grtdR/K9o8Kfdf1KMio2Cb6TfohnZSCcWWoN5
	QjrIyWVhm7zs24COf0liVB2Nz7FJzsOgO9N5BSSrw8NXuZCVjp+a9PD+
X-Gm-Gg: ASbGnctugfa9epZgkcTpIUnFa01Lv7CnsY9mmVmsUXdUchxy+0NxS2Wj4J/wZtJRKci
	HnrwlZZhD14eYIseVHWQI/11l5BfnWQ6ArGQVh/JuFNyQrjl0QNqPsqPhPLF1KqQoihTbx3zIZc
	4nveMhDbAKJIxtVZCFyO2XO3eCv0mztaX4S8sa2F+bwuTg4eVf6S/65YM9BtWJDlOunw4BAqmEL
	KsVWZqbreHyZG4dBHrTjM91Ce6bgxbql5VJligU89noal+gwgxPQMkW1dhNAVAgYyT2BLQmSqST
	JRQ7IzuVDqcWlXW2xh3yhzABqiARRHKIBPgF+PYv2OnEI1c9W1px9kkx0QGo1s+lFJXzeEJMBcw
	Gb+jPLEOYjdETWuSdrVa+jG52vvWEZG5jnVAhreoOknH9qJ4bMm7f+1RfnTMR7nFZ85Jcrwo26S
	CKKlWOy0nIxfCvs4YpdUyiwpCqU3BaPQTKZ8XlU+4/+LoKO4vOUoT5nVdjIOkYW3Q/tNk=
X-Google-Smtp-Source: AGHT+IGziC8WJUD4dISbRmg+IA/4zSrbcv8g/8vcOpn2B+LAP5qj3Xlp2TJThfuKL3AT7cfP8cG91w==
X-Received: by 2002:a5d:4741:0:b0:429:cacf:1065 with SMTP id ffacd0b85a97d-42f9def752dmr564283f8f.17.1765228366006;
        Mon, 08 Dec 2025 13:12:46 -0800 (PST)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([2001:a61:1226:7701:cdbc:9893:8abf:1309])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbfee66sm27548839f8f.11.2025.12.08.13.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 13:12:45 -0800 (PST)
Date: Mon, 8 Dec 2025 22:12:43 +0100
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
Subject: Re: [PATCH v3 7/9] iio: adc: ad4062: Add IIO Events support
Message-ID: <trpmhlupu3vwzrulnctewwnfxwtlbr6iovtw6whyzfpjbwnpdh@rcdykddqwoal>
References: <20251205-staging-ad4062-v3-0-8761355f9c66@analog.com>
 <20251205-staging-ad4062-v3-7-8761355f9c66@analog.com>
 <20251206175231.3522233f@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251206175231.3522233f@jic23-huawei>

On Sat, Dec 06, 2025 at 05:52:31PM +0000, Jonathan Cameron wrote:
> On Fri, 5 Dec 2025 16:12:08 +0100
> Jorge Marques <jorge.marques@analog.com> wrote:
> 
> > Adds support for IIO Events. Optionally, gp0 is assigned as Threshold
> > Either signal, if not present, fallback to an I3C IBI with the same
> > role.
> > 
> > Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> > ---
Hi Jonathan,

> > +	if (!iio_device_claim_direct(indio_dev))
> > +		return -EBUSY;
> 
> Similar to below. Consider factoring out this stuff or I guess wait
> for an ACQUIRE() based standard solution.
> 
> > +
> > +	if (!iio_device_claim_direct(indio_dev))
> > +		return -EBUSY;
> 
> Whilst I do plan to take a look at whether we can do an ACQUIRE pattern
> like the runtime pm ones, for now (unless you fancy taking that on)
> I'd be tempt	ed to factor out this stuff under the direct mode claim into
> a helper that can then do direct returns. That should end up easier to ready
> that this.
I will factor out, adding _dispatch() methods to return directly, so

	if (st->wait_event)
		return -EBUSY;

	switch (type) {
	case IIO_EV_TYPE_THRESH:
		switch (info) {
		case IIO_EV_INFO_VALUE:
			return __ad4062_write_event_info_value(st, dir, val);
	// ...

> > +	if (st->wait_event) {
> > +		ret = -EBUSY;
> > +		goto out_release;
> > +	}
> > +
> > +	switch (type) {
> > +	case IIO_EV_TYPE_THRESH:
> > +		switch (info) {
> > +		case IIO_EV_INFO_VALUE:
> > +			ret = __ad4062_write_event_info_value(st, dir, val);
> > +			break;
> > +		case IIO_EV_INFO_HYSTERESIS:
> > +			ret = __ad4062_write_event_info_hysteresis(st, dir, val);
> > +			break;
> > +		default:
> > +			ret = -EINVAL;
> > +			break;
> > +		}
> > +		break;
> > +	default:
> > +		ret = -EINVAL;
> > +		break;
> > +	}
Best regards,
Jorge

