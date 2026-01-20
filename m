Return-Path: <devicetree+bounces-257300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E74D3C65A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2D08142AB8A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2266340F8F8;
	Tue, 20 Jan 2026 10:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OzOTYWx2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA963EDACF
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905818; cv=none; b=VPBQfRAKzQ4Fn77dzm64cZT6L7TinSdRfnctcRnnsiq0FpYWgWhVY5jWWIlbpqR1QvavCS78vosRLDFW5aS+XmQd4dTqjhUUzu8Ktf/mOX4+hAP856jd+F0EdnYEWbTLh9pKDIqeJikGtFJKCvMo4sZ81QgtoNXOif2oTcdKsp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905818; c=relaxed/simple;
	bh=BcFm5nMU3ZMZm/UXJGhb66QTbTXnNlf2mLPBselcsR4=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OG1ca/+2IQ8IlrFGQ9jc6dXQ4fJDtVkIYA5gzI4FAN+TLgBRJDwmbY3pKk9Uqy8XlKAeIug5v003v20gCMl59iskjXQFLPEh0c8qsd57H4lXudPalikZZBI5I7p8R/lVbNnNDlhyZLiqfP+MmenJYe8aKrqbu3RQnbwRGjaLp3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OzOTYWx2; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c52e25e644so484777085a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768905815; x=1769510615; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=utpbPPKnGbhMn+9AUOaQsN6WKnEwWEnMON4aM/d3+hQ=;
        b=OzOTYWx2ieiqzhtPVgV+Aq9aTjxIbbVrUjo7VaSxkAVDZDoldn+CPlDROS39jyegUb
         kJ6tENdIVMkdaP72SYkTYeYKs26GQ3SLoD0StTZKBj/qT3soe7KqQzVcXbdBJZWY+nS/
         1FTsJ2DovKDjf4j8Y1bfAUUlnth8hP64ncSD95yi9FAx45IMJ6TJBssXc29V/gqXrUYN
         YkrDH2RjaQUC+gpOUex8jCBHGYVJSptRltLbDgU4jOt89z+vOZXmhmEYvuiSCm+Q46f+
         LAUjMqWhI9C805CfhVo629K+cHm/d3zuUs9PC/Hjpwo4e2XkYjS1TLWNI69SH0NbSGPk
         K//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905815; x=1769510615;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=utpbPPKnGbhMn+9AUOaQsN6WKnEwWEnMON4aM/d3+hQ=;
        b=G/4Y1iu3Eyv/U/0zZNosxlYVU2EAsrBqtqLczOu1wyH5XxzIDB5tR8HEesNpj8YFZO
         1TvlYj64LnuPgWzQn5cAEvE0G1KyLzDbBsjzTT9dLeC7/XBMh5lV+1idW+I+3eg32BwC
         /RFAeiNcCZBNB/+lo/LO8iyPJUlsWJC4GeLRxmMGPfqHSsdGxLmeZiO3P6r2tiL+TuOa
         yyBZSt4rK7UQ4TT7DPrWCKKnhUxM6OVLE2kYMeO9ybWS6YqVLmvuFSa1ykCrs0oqlUcJ
         uzONWyu1XbXT5NgftLMLJvxI1Pc8TYpnnXTmwuKIxcFTuA4O5zSdbJFJCyhCq8dUmLEt
         1gcg==
X-Forwarded-Encrypted: i=1; AJvYcCVs0o2lVMYd8+XDUoNSP7r+Dm3GYyUR96ZFk61yo+Nmiv4MZhZz253v7XRjAfXrdN7EQ+A09/CiEY0J@vger.kernel.org
X-Gm-Message-State: AOJu0YwYUqj73T9Da7O6orfj/mJ9nYwNY8EWKxk/N9uDoOJpQDYLZhQ0
	anE/1adL8hozBA+VGj7oI6tq9gJYtx7kA5uykXvlFlSdNd6IIRPCnB+w
X-Gm-Gg: AY/fxX4NDL2IGcUtRQ7r33FREkiTfDg0FVIBG5leVtqbMVda0lhLx9HoEwriJoRbrBT
	Gqkh28aduEwJXaMRC6HYMiw45bD9QEm1LOEdpM/u7OPNxPKRrTWtG2s7QKhEs/JONpytc0iHbLt
	Xq2+a1udbkfLlABZwxLx66SgtILl1DjRbG/9NMWquFW3dBC8f6JYuILH4N1DaMt4EPeW9ODK8Iv
	F5IRnSIdB6nohTICrgex0y5B+3QkPYX3kxij4vJDPs388rx4q5GVjgMCxaOCH693UFJdkLKP8oA
	hzwkqr2kZBJr7ypyJdoFzXr8nhAdfwnQMLZXWocodakTwJqW73YtrrBLfBaKhhZt9qgmrsFVF6d
	/hLe+iqisjKyXPIvOQGMKO1NteVVTMNbQ1IOcJ1Vs2pKgxG9ktBMXdwVmkkUyeQ2eI8Qe33642v
	eRU2xfp/BmstqjEY0GdZdr8YA5SIs84Lzp8lzHR1urWXlOG84UF7nTkAuq3miSvgwPKWuuRVSUq
	6bR
X-Received: by 2002:a05:620a:700d:b0:8c5:391f:1dce with SMTP id af79cd13be357-8c6a68d97fbmr1946565085a.28.1768905814782;
        Tue, 20 Jan 2026 02:43:34 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a72642fdsm977531985a.46.2026.01.20.02.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:43:34 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 20 Jan 2026 10:43:28 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v4 3/7] iio: frequency: adf41513: driver implementation
Message-ID: <e5lcg5kkey3c6u2l4rlzzpolp7qkudhcofyzcx5s2tjbh2iwkg@js3fisv23zyj>
References: <20260116-adf41513-iio-driver-v4-0-dbb7d6782217@analog.com>
 <20260116-adf41513-iio-driver-v4-3-dbb7d6782217@analog.com>
 <aW3dxuelYDM67pqZ@smile.fi.intel.com>
 <texwv5s2tvcy34bwr4iruj5xofmea663pwletmpqpuh66zulmv@m7qvjgqbhalv>
 <aW40ylvMwVhqNQMw@smile.fi.intel.com>
 <hgy3bcrqqsvt7pobhnzuvwzhb2taetpxltkaxpigmmlvmlirod@v6anhmrsvv2r>
 <aW5kk6K30Izckvg5@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aW5kk6K30Izckvg5@smile.fi.intel.com>

On 26/01/19 07:07PM, Andy Shevchenko wrote:
> On Mon, Jan 19, 2026 at 04:37:09PM +0000, Rodrigo Alencar wrote:
> > On 26/01/19 03:42PM, Andy Shevchenko wrote:
> > > On Mon, Jan 19, 2026 at 11:21:59AM +0000, Rodrigo Alencar wrote:
> > > > On 26/01/19 09:31AM, Andy Shevchenko wrote:
> > > > > On Fri, Jan 16, 2026 at 02:32:22PM +0000, Rodrigo Alencar via B4 Relay wrote:

...

> > > > > > +static int adf41513_parse_uhz(const char *str, u64 *freq_uhz)
> > > > > > +{
> > > > > > +	u64 uhz = 0;
> > > > > > +	int f_count = ADF41513_HZ_DECIMAL_PRECISION;
> > > > > > +	bool frac_part = false;
> > > > > > +
> > > > > > +	if (str[0] == '+')
> > > > > > +		str++;
> > > > > > +
> > > > > > +	while (*str && f_count > 0) {
> > > > > > +		if ('0' <= *str && *str <= '9') {
> > > > > > +			uhz = uhz * 10 + *str - '0';
> > > > > > +			if (frac_part)
> > > > > > +				f_count--;
> > > > > > +		} else if (*str == '\n') {
> > > > > > +			if (*(str + 1) == '\0')
> > > > > > +				break;
> > > > > > +			return -EINVAL;
> > > > > 
> > > > > > +		} else if (*str == '.' && !frac_part) {
> > > > > 
> > > > > This can be found by strchr() / strrchr() (depending on the expectations of
> > > > > the input).
> > > > > 
> > > > > > +			frac_part = true;
> > > > > > +		} else {
> > > > > > +			return -EINVAL;
> > > > > > +		}
> > > > > > +		str++;
> > > > > > +	}
> > > > > 
> > > > > With the above the rest becomes just a couple of simple_strtoull() calls with
> > > > > a couple of int_pow(10) calls (and some validation on top).
> > > > > 
> > > > > > +	for (; f_count > 0; f_count--)
> > > > > > +		uhz *= 10;
> > > > > 
> > > > > This is int_pow(10).
> > > > > 
> > > > > > +	*freq_uhz = uhz;
> > > > > > +
> > > > > > +	return 0;
> > > > > > +}
> > > > 
> > > > The current implementation is kind of a stripped version of
> > > > __iio_str_to_fixpoint(). Would you prefer something like this, then?:
> > > 
> > > Do they have most of the parts in common? If so, why can't we use
> > > __iio_str_to_fixpoint() directly? Or why can't we slightly refactor
> > > that to give us the results we need here?
> > 
> > __iio_str_to_fixpoint() only parses "int" chunks, adf41513_parse_uhz
> > was modified to accomodate the u64 parsing removing unnecessary stuff.
> 
> But why? The fractional part most likely will be kept int (it's up to 10⁻⁹).
> The integer can be bigger than 10⁹?
> 

Correct, integer part of the frequency value goes up to 26.5 GHz
(uint_max is approx 4.3 GHz). Also, with the dual modulus, the PLL can
achieve micro Hz resolution.

Kind regards,

Rodrigo Alencar

