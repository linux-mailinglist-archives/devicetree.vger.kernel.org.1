Return-Path: <devicetree+bounces-253816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E023DD1199F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:49:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C6FA308DEB7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C55072727FA;
	Mon, 12 Jan 2026 09:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bCugTVaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7AA26B760
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768211163; cv=none; b=rbTZ/NSrt/KGFwFpSzx5EPmVxn/kevXQ2Cd66xSXGMYXDZq72IJt3wjas5uuJ3Skluk45xUDl96CTFW4pa/jabLV0QBCyomGZJYm2jIbkgMJ7LrwLC1bQuaCxPQPpHFIsy/5yKYSMoLd0KpAzxBkDJe9MQ/NtcGD74X4sSlN5oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768211163; c=relaxed/simple;
	bh=CCRKKHX6fsXE0x6g+VyqVs+0IFdE1KbK+GmMPLuM6vk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KfVLJQg7aM3BHNH11qqPXih026dh803CNAMRHBS6IXf7s7+wltHCnH8FBChPFs9IlTUKsPHMnwcTz72iJ22ZlqPj0kdHhxKpjj1YH8PvaCfRXxwzaszLo1AZOFc/POM5iruUCjGrto7eAEK9Y4GJ5mOkTHfOY34CirSJMndNblY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bCugTVaP; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4ee257e56aaso56762611cf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768211159; x=1768815959; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MKqC+AyUc0d9MCEacBJfaGV9CcaZbPZQfgPW8VCBYCc=;
        b=bCugTVaPZh926P6/mhJ4hac/2fan/s38lKfp+c5+K874Ql2PBJlTSTPOtYmDNWFqNp
         1nT2bqCnKyZwiIgyiGOcTJ1BQFzeXHfK9htQ3gI3jMgLXqz9gqH9U9UxygH1swcnDUTb
         8Wy/oL0SNvhbAqRx/+/QZqUrhBIzfBVti+tBPMPhrdluWk8eSGPqcQExyuEVHttZ3pGs
         a274WWNc44OnzMfSv5S6e7Uty05x/vqx9Nhkz7FUsgEtxbJPsyw12OK4JLPR7yLs6ud2
         tswG35WZjhtIYUlkUEgMoJoDHTfDNKC+YNLYC2K3DZ2ih05TTibpqla9zo9QC/J5MG6s
         1+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768211159; x=1768815959;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MKqC+AyUc0d9MCEacBJfaGV9CcaZbPZQfgPW8VCBYCc=;
        b=qbTiM0kMpBa3t7ZT+rVrsMHYGmqNcE6zcUr4Vvvu4KsVFRHNri76l6nb+M5MFEhZ3z
         p5uN3zAKFnrCrK8XMucXfuz7dy3Wy4XhPTw8ani8T9WBQYMp+UVUyq+XSDrp6bbWGJTj
         JT7kj7lQRpw1ISkF6L3hgssEsE3tbYyL0DiWk5NwmSqIeu5GzmsZhQ/fVGC/x3mqcf5k
         3zZP3nY6Q5extvbMYgtmPag/zWh0bH48eUzZ4uMTydAcFHrby52wdEGSaxo3Ra7DSImg
         1p7NvyFXonQhrOfWGA7TyEEFXdXL7pT7yvKVSOMxsCBlsx2rg5YDzPEfRsbFJ0/BGief
         3MBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtzsV3NY0rJKtAEwJIf+VuqYw9NRUgPHX0unfuePJM6jrRysdURr/tiKnmD3SMIsEN7wtXnXVbTCKD@vger.kernel.org
X-Gm-Message-State: AOJu0YzfeQ5jCPuYZUsKmpq85WlzwlMhJQZuOj5NHL79dwg+DKvfK6eQ
	2UGZGjM/+qj5r0pzc+ssIZpfahkKshhJzzgAQTl99DNgSXkTnSoa2QGs
X-Gm-Gg: AY/fxX4tYprclpTO7qxR6uZ/d5YzDy/lDK6B7G+xhL3zTVEfgUQRjoutLu0bZ30Bm3Z
	fdhfdktg6YgEwmxUFTjKg++Gy9tHbvLmUHqPC7O0Whz0Mv3S4YPEoZWa/0uKlMt7DKAPagqrBri
	KO+ZgfqaCup4FqECeoer4wBxGwn065clEOb8zAxx+/3BhBAAYJJX72o9C1jnYE5ELiGEmg2cZZf
	sNmQRvZ1/ccSkchjZyszH7AyD/APxkEvdej6/QoKEsO7f4GFwl8jqlHOUnsE2w+CiLVzLAoNkf3
	kktDf0t+5TUDb6k8JuGq/hDJYQtK6UAl4W5b/bluO3TDnsieYVykVbuZ1itR0Hg4Kh4uKeYCSn7
	vtldUb5r+GVMCG4DfF7Po+fw47XeqnVlUBfPAx92giNIhcs+bKl/Uc5abUBlA1swqM/Ua0qwj4W
	VT2VFHSViMFevgY+d2s9lEFatthcq7fHSvNxQHyqOXByEyvN0JOO6KA4dyghLD3AOXqjioatUpf
	zAd
X-Google-Smtp-Source: AGHT+IFxhD2csvu5pEHMUPkMAAKCFQIujgL+58SJxATcRUeihIBI/j8MLbwNBR37wdZwTyoJBcgSWA==
X-Received: by 2002:a05:622a:1189:b0:4ed:2574:815c with SMTP id d75a77b69052e-4ffb3f7c9c2mr242431061cf.23.1768211159158;
        Mon, 12 Jan 2026 01:45:59 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8c00acesm123609471cf.0.2026.01.12.01.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 01:45:58 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 12 Jan 2026 09:45:49 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v3 4/6] iio: frequency: adf41513: features on frequency
 change
Message-ID: <ptyn5x7qkmbakkompmijo6xeego2xrhjoeyomkgrytwgwcsaid@heiq3ilnx5ky>
References: <20260108-adf41513-iio-driver-v3-0-23d1371aef48@analog.com>
 <20260108-adf41513-iio-driver-v3-4-23d1371aef48@analog.com>
 <aWFR2wTSWLydGN5O@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aWFR2wTSWLydGN5O@smile.fi.intel.com>

On 26/01/09 09:07PM, Andy Shevchenko wrote:
> On Thu, Jan 08, 2026 at 12:14:53PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Set Bleed current when PFD frequency changes (bleed enabled when in
> > fractional mode). Set lock detector window size, handling bias and
> > precision. Add phase resync support, setting clock dividers when
> > PFD frequency changes.
> 
> ...
> 
> > +static const u16 adf41513_ld_window_p1ns[] = {
> > +	9, 12, 16, 17, 21, 28, 29, 35,			/* 0 - 7 */
> > +	43, 47, 49, 52, 70, 79, 115			/* 8 - 14 */
> 
> Leave trailing comma.
> 
> > +};
> > +
> > +static const u8 adf41513_ldp_bias[] = {
> > +	0xC, 0xD, 0xE, 0x8, 0x9, 0x4, 0xA, 0x5,		/* 0 - 7 */
> > +	0x0, 0x6, 0xB, 0x1, 0x2, 0x7, 0x3		/* 8 - 14 */
> 
> Ditto.
> 
> > +};
> > +
> >  static const char * const adf41513_power_supplies[] = {
> >  	"avdd1", "avdd2", "avdd3", "avdd4", "avdd5", "vp"
> 
> Ditto.
> 
> >  };
> 
> ...
> 
> > +	bleed_value = div64_u64(st->settings.pfd_frequency_uhz * bleed_value,
> > +				1600ULL * HZ_PER_MHZ * MICROHZ_PER_HZ);
> 
> > +	u16 ld_window_p1ns = div64_u64(10ULL * NANO * MICROHZ_PER_HZ,
> > +				       st->settings.pfd_frequency_uhz << 1);
> 
> These multiplications (here and elsewhere) are (very) confusing.
> 
> I believe you want to have a frequency in Hz in µHz resolution. The second one
> can be close to this if used GIGA instead of NANO. But I think the better way
> to have something like the first one but with MICRO instead of MICROHZ_PER_HZ.
> 
> Please, put an order in these.

The first one: the numerator is in µHz, so the denominator is also in µHz so to
cancel the units.

The second one: window size is nanoseconds with 0.1 precision in the datasheet.
The numerator contains  MICROHZ_PER_HZ to convert µHz -> Hz = 1/s, and then
10ULL * NANO to convert 1/s into 0.1 ns.

How is that confusing? I am not sure GIGA is the right choice, as NANO shows
that I am targeting nanoseconds, no? 

> ...
> 
> > +	/* assuming both clock dividers hold similar values */
> > +	total_div = mul_u64_u64_div_u64(st->settings.pfd_frequency_uhz,
> > +					st->data.phase_resync_period_ns,
> > +					1ULL * MICRO * NANO);
> 
> This sounds good as we multiply Hz by ns.
> 

the numerator has a time in nanoseconds, so NANO 'cancels' that, as MICRO 'cancels'
the micro under µHz.

> ...
> 
> > +	st->data.phase_resync_period_ns = 0;
> 
> Do we even need this?
>

true, will adjust.

> > +	ret = device_property_read_u32(dev, "adi,phase-resync-period-ns", &tmp);
> > +	if (!ret)
> > +		st->data.phase_resync_period_ns = tmp;
> 
> Is the _period_ns of type u32? Then simply
> 
> 	device_property_read_u32(dev, "adi,phase-resync-period-ns", &st->data.phase_resync_period_ns);
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 

kind regards,

Rodrigo Alencar

