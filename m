Return-Path: <devicetree+bounces-256825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D777D3A6BA
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2426830A84EB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C04C30BB91;
	Mon, 19 Jan 2026 11:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ca5qFmHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9549A30F530
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768821732; cv=none; b=D+m5ujoa6xYqg3+FdAik741lybwLiJLSCsiVnY8ca6nIn0lbG6c7L6YozzU1VyO5EILgBEWkzgTci85Py5apAuP5Aew6RX5yVo4hGVfMuS2oGNrYfEjXQvm6QmdfjPaFYVHg9e6Sn+tltPlKsjmW2qXdC3Hj5S4f+9Ps5xOl3UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768821732; c=relaxed/simple;
	bh=qcHMJzj3S3JHYg5AN83WmoAPojwbypkaD61NRb0iu2c=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M9He7Ng8gzEXxa1KbNoP284braYQoR7iE5NRGmY0Zvgj5l1W0WYNG1jEazzHE0VzEq3vtC0iX2580vS9MC1IctFrQu+LygRfbWOEHgyzOzlHRqdXIIprYGTTBrM6u0lXcf7XC7MsHcD/63R3Edy9F/IRfdH9ZflcrrznJAqSA8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ca5qFmHc; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-502a789834fso22153831cf.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768821729; x=1769426529; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B2BqFERkg0e6VczbJ7PW0zEOg1z28Kjgx5jFQH97OcM=;
        b=ca5qFmHc2f7+6XmmBd/UB+j666Yv6Wom6dPa2RWp2WvL8cgWRWmA3l6vzjKmCkvOIc
         PwvNueJNghlLf+Nk3BMJUuywUDI9/K7isPUTCzrPcm13FGWhSYjny66nGXr+r2TFMRJ2
         p8MT2auXxFXyqfSTLPg7RcZzXXU/7WqM8CjI3tyjnlF+ZGxD055d4Oif7o1o2c6y0LfZ
         1UyZTDgHA/AbLyzctUD2B7aK/vSd90wLCB6BUGXOJh8ep6NF/9fKNLnGxe4pmITCVcoM
         4kPEy3WPab+uwKiyLaVjNzxHLNrmBCOuitKbSk2N5jIno1/L7BVJmoCBUWrJ0xBlva2p
         Cz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768821729; x=1769426529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B2BqFERkg0e6VczbJ7PW0zEOg1z28Kjgx5jFQH97OcM=;
        b=C42yOC0CDxfthHgvbaavawx2nzroUspMJ3NVctZkXjyR+hTQCieBRcmqwWETgHrPRv
         IX9K1FLw+Ka833lsZaGrmpa0cC0YYMKB4qmWsvpWymBonJVFU5Lpf8S3csDZ3Q8L2QPq
         5dCReG+JUcki65qPBM0fvH8NkBeEFRjimuLaGlgCnLFOgmQrHX0A0egpu2EJSrAmrev7
         OiBDlUPcZ9ndRx90tmPxpV4UUSRet8rHLg+AuGFgZHCB4hmF1YGgyQQwdHOHI3YDEpNm
         wOvRfrY61+YSMtywJEpp0GHgfiYd4rosKPRsjqDbaTYXpgnakvVg0a1m/1zr8hXn/Rs8
         fYFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz5viuvQyKObDnv9+nPQoIV/QCTDpjnb+AT5/LLjZqHw0o8zDPWcCgG+pO+aYb+swurSw3coRExkJb@vger.kernel.org
X-Gm-Message-State: AOJu0YztWTDVgLK/6XsMqvPje5rZ86VlYin0QrBQk+MIGz3zVU8rgcSR
	LueCBwKG+D8wnc563J9+iewWquLCuXwVpKcSVJ8Gq8UtLWaV46aWdjZg
X-Gm-Gg: AY/fxX5jePIlu/Itdhp5wtmTGoHoKFpuwvy6MOvpJ9U8E2FIRqiOI4jkmd4ilx+7gYl
	Q89jcd4NELKsckMnS5nP3IyPAVoxkSfeGapqUPwMn78vW9iK4zWYqWVkod6MkDjqnUd4xk4Is4g
	9YCLxtZTQLPhLf6sYJAFcKD7GcUhCRKCKZ7b3gP8M5Dnw8tqP/+165cTGG+srcn+IyNEfYmqdOj
	ICGpWYrc7ply2sGLchRQDuGLEzouox+ITSgvT8mdVoFvSlnjyr856rG22PGNaRMBfyw4JrJe3e8
	omBzXuVlxHqi4+x2oorlrN+BFAl4/U/jdy/QG/D6A5dabAB4zwC8dWdLi4taut9i3n0C2xHbzsM
	9CLFnzQ+S1hVpH3TuAALb2zFwDgM6Jp7Wz6pyjrUlSeKsMMnEX8gDO1I9esf41NeEGM99oYy7Q3
	3gD1qKqmQvEnQnOBRAgXPwh/06pvo+UO9S2bIt5TZTq5pa9WaInKJ4jUVJiym8M8uJfYBDrS/2V
	7db
X-Received: by 2002:ac8:5ac2:0:b0:4ec:f84d:cb40 with SMTP id d75a77b69052e-502a17571a2mr168030081cf.44.1768821729355;
        Mon, 19 Jan 2026 03:22:09 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1ef9847sm75227951cf.26.2026.01.19.03.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 03:22:08 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 19 Jan 2026 11:21:59 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v4 3/7] iio: frequency: adf41513: driver implementation
Message-ID: <texwv5s2tvcy34bwr4iruj5xofmea663pwletmpqpuh66zulmv@m7qvjgqbhalv>
References: <20260116-adf41513-iio-driver-v4-0-dbb7d6782217@analog.com>
 <20260116-adf41513-iio-driver-v4-3-dbb7d6782217@analog.com>
 <aW3dxuelYDM67pqZ@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aW3dxuelYDM67pqZ@smile.fi.intel.com>

On 26/01/19 09:31AM, Andy Shevchenko wrote:
> On Fri, Jan 16, 2026 at 02:32:22PM +0000, Rodrigo Alencar via B4 Relay wrote:

...

> > +struct adf41513_pll_settings {
> > +	enum adf41513_pll_mode mode;
> 
> Sounds to me like a room to improve the layout here,
>

I am targeting a 32-bit cpu, just moved in_value down:
would this be fine? (pahole output):

struct adf41513_pll_settings {
        enum adf41513_pll_mode     mode;                 /*     0     4 */
        u8                         r_counter;            /*     4     1 */
        u8                         ref_doubler;          /*     5     1 */
        u8                         ref_div2;             /*     6     1 */
        u8                         prescaler;            /*     7     1 */
        u64                        target_frequency_uhz; /*     8     8 */
        u64                        actual_frequency_uhz; /*    16     8 */
        u64                        pfd_frequency_uhz;    /*    24     8 */
        u32                        frac1;                /*    32     4 */
        u32                        frac2;                /*    36     4 */
        u32                        mod2;                 /*    40     4 */
        u16                        int_value;            /*    44     2 */

        /* size: 48, cachelines: 1, members: 12 */
        /* padding: 2 */
        /* last cacheline: 48 bytes */
};
 
> > +	/* reference path parameters */
> > +	u8 r_counter;
> > +	u8 ref_doubler;
> > +	u8 ref_div2;
> > +	u8 prescaler;
> > +
> > +	/* frequency parameters */
> > +	u64 target_frequency_uhz;
> > +	u64 actual_frequency_uhz;
> > +	u64 pfd_frequency_uhz;
> > +
> > +	/* pll parameters */
> > +	u16 int_value;
> > +	u32 frac1;
> > +	u32 frac2;
> > +	u32 mod2;
> > +};
> 

...

> > +static int adf41513_parse_uhz(const char *str, u64 *freq_uhz)
> > +{
> > +	u64 uhz = 0;
> > +	int f_count = ADF41513_HZ_DECIMAL_PRECISION;
> > +	bool frac_part = false;
> > +
> > +	if (str[0] == '+')
> > +		str++;
> > +
> > +	while (*str && f_count > 0) {
> > +		if ('0' <= *str && *str <= '9') {
> > +			uhz = uhz * 10 + *str - '0';
> > +			if (frac_part)
> > +				f_count--;
> > +		} else if (*str == '\n') {
> > +			if (*(str + 1) == '\0')
> > +				break;
> > +			return -EINVAL;
> 
> > +		} else if (*str == '.' && !frac_part) {
> 
> This can be found by strchr() / strrchr() (depending on the expectations of
> the input).
> 
> > +			frac_part = true;
> > +		} else {
> > +			return -EINVAL;
> > +		}
> > +		str++;
> > +	}
> 
> With the above the rest becomes just a couple of simple_strtoull() calls with
> a couple of int_pow(10) calls (and some validation on top).
> 
> > +	for (; f_count > 0; f_count--)
> > +		uhz *= 10;
> 
> This is int_pow(10).
> 
> > +	*freq_uhz = uhz;
> > +
> > +	return 0;
> > +}

The current implementation is kind of a stripped version of
__iio_str_to_fixpoint(). Would you prefer something like this, then?:

static int adf41513_parse_uhz(const char *str, u64 *freq_uhz)
{
	u64 integer_part = 0, fractional_part = 0;
	const char *decimal_point;
	char *endptr;
	int frac_digits;

	if (str[0] == '+')
	str++;

	/* Find decimal point */
	decimal_point = strchr(str, '.');
	if (decimal_point) {
		/* Parse integer part (if exists before decimal point) */
		if (decimal_point > str) {
			integer_part = simple_strtoull(str, &endptr, 10);
			if (endptr != decimal_point)
				return -EINVAL;
		}

		/* Parse fractional part */
		fractional_part = simple_strtoull(decimal_point + 1, &endptr, 10);
		if (*endptr != '\0' && *endptr != '\n')
			return -EINVAL;

		/* Adjust for desired precision */
		frac_digits = strcspn(decimal_point + 1, "\n");
		if (frac_digits > ADF41513_HZ_DECIMAL_PRECISION)
			fractional_part /= int_pow(10, frac_digits - ADF41513_HZ_DECIMAL_PRECISION);
		else
			fractional_part *= int_pow(10, ADF41513_HZ_DECIMAL_PRECISION - frac_digits);
	} else {
		/* No decimal point - just parse the integer */
		ret = kstrtoull(str, 10, &integer_part);
		if (ret)
			return ret;
	}

	/* Combine integer and fractional parts */
	*freq_uhz = integer_part * int_pow(10, ADF41513_HZ_DECIMAL_PRECISION) + fractional_part;

	return 0;
}

> ...
> 
> > +static int adf41513_uhz_to_str(u64 freq_uhz, char *buf)
> > +{
> > +	u32 frac_part;
> > +	u64 int_part = div_u64_rem(freq_uhz, MICRO, &frac_part);
> 
> Perhaps MICROHZ_PER_HZ? This will be consistent with the int_value in
> _calc_*() below.

Here, the meaning is different. int_part is in Hz and frac_part in uHz.
Will add the suffixes to the variables.
 
> > +	return sysfs_emit(buf, "%llu.%06u\n", int_part, frac_part);
> > +}
> 

...

> > +	if (freq_error_uhz > (result->pfd_frequency_uhz >> 1) && int_value < max_int) {
> > +		int_value++;
> > +		freq_error_uhz = result->pfd_frequency_uhz - freq_error_uhz;
> > +	}
> 
> This and below the part for frac check seems very similar, I would consider
> adding a helper.
>

It is similar, but in each case different variables are being handled.
This one we can only deal with INT, the next one FRAC1 and the last MOD2.
I am not sure how a single helper can deal with all of them separately.
 
> > +	if (freq_error_uhz > st->data.freq_resolution_uhz)
> > +		return -ERANGE;
> > +

...

> > +	/* calculate required mod2 based on target resolution / 2 */
> > +	mod2 = DIV64_U64_ROUND_CLOSEST(result->pfd_frequency_uhz << 1,
> > +				       st->data.freq_resolution_uhz * ADF41513_FIXED_MODULUS);
> 
> This also seems familiar with the above mentioned check (for 50% tolerance).

Here, there is no check, MOD2 has plenty of range to deal with the
requested frequency resolution. Also this is the last attempt, after
integer mode and fixed-modulus failed to achieve the requested frequency
value. 
 
Kind regards,

Rodrigo Alencar

