Return-Path: <devicetree+bounces-259487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEb3Nl5hd2n8eQEAu9opvQ
	(envelope-from <devicetree+bounces-259487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:43:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9B788676
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E81E330160CE
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DF2336EFD;
	Mon, 26 Jan 2026 12:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AP8iuHwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C890C2F83A2
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769431385; cv=none; b=Xk+XmpzsR23I4KjaryPBuwiN76ne7r1fa30OPn6lfge3MigryhbN48tI4nwYf4Ehu0+7mPL8q4zDjmV1nXEKO9gVg9zigJ8+nEIVLZ+bHk8B7ZrOeMVaDHenAp4friUHaGOjk6XJUMirL41KBM2wy1+VpVeoYYDMTa/NRWG8ISU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769431385; c=relaxed/simple;
	bh=U+c2Hgblo3r/wja8rf5QoZTJIQ0uzSyWaG4sMBQzq28=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n+x9xACIAoqE8L6ltHdBIEWhVLUOHGy/57AEK3mndYMKXo860hlvXMgAuR+quGBrjWSrwI4vkn1y4J9eS1AIWOL++p1CBRieTYkEUWh5RH6WllflIdkCVwyioRBqreg6AbIN57uSRG6H+WZpAcvcNc3451jdEWGhnv1m5uG5OLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AP8iuHwO; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee4539adfso48612635e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 04:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769431382; x=1770036182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=do5TPbTmIbVmH05fNafBjej7yzR4YEVxfJZjwcPS6ic=;
        b=AP8iuHwOm5hL3BJ2pcE91GiIJmenew/V7KvNp9Nyk7C3WuJ8F9t7CLBfAyaArQ8PMn
         ge0NgJpI+rb3c5qc2TrNpE5jXcvw9IZj+wwjxTDurznVy0nVdO1+nCwdZ167tFOVA2qI
         8bTjqG841eLzgq1tbzTF4vNXA+6V4lgCKdj+vbIs+G4RYOL4ngNLb95L5aFKYgYq62Oh
         TYpPXFNbMuEeVPynfLhgWnPbRMfufTo0pkp0C5z0KXRNBpu4WiT6vTBqJ/aBUhbeYGtm
         jRGJj0F3BKEOYGsHPu11Jnl1DCp0f+uQAaS3Dg3rhORfrBsz3Wwr/CNMJwF5GSq5JxDL
         7uJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769431382; x=1770036182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=do5TPbTmIbVmH05fNafBjej7yzR4YEVxfJZjwcPS6ic=;
        b=XVOddxjpSwZdkptKqoJrjcHG0aE4ZVQPM8mPJUPTJqN6NLCOxwnAFo9SOv3y+UteNa
         TPI69MEUlXBGpN2xQbn6p6h5sNKvq2oXZvZiDZvPjDHtUbQySkVQBgQ0gxcm/RLp3eo9
         zUq1/jzstBS14XRJoof951iNjz+LCmNriuTLCNYq+xNa8pqsslUFkPAy9xG+MOr/2/y9
         u/WoJGial63c+M1nLf6PZFF7x5X+XLzHVoO9/3k4y/xFWZbIfE5y2iJ1O2l60L9fJjCt
         ip3qFRo/9f6hq3obs2tNu6PaYIx3JcU1WHzxcKcn24rlc/zcR3YHy4FNYS8cJKlPM4sM
         XXNw==
X-Forwarded-Encrypted: i=1; AJvYcCXQv7OnOuOJd4cIXxkBTZDcTL17kCNP7jXLlNekpa1CkzMptNl1MX4XFz66pmq0mXpERoCU0luuCp6U@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2WeikToS/76+oaIHiKkKeXuPhSsqL6eOCSXdgoTizuBHhrTvb
	EZJRrLYdskjexWxCK3wZ8Sv2H92yusEI/d5qH4Kb+XZ/JPEARQ+WDey6
X-Gm-Gg: AZuq6aKVGyY5EEDhOPws9w/2LHUFe7Bj9RaIAP2Dpmd4nKWicjB4sa0e83YsyMFnrW1
	zqiL0ausZvW07TyrhBegUn4q0fWaKsH/1VRog8dCj67kG2QZKPzgXqrpOXn617xxpOxL4VbG8LK
	QQNrnICVQP+CDE19UOCcIbNJLSMmoA7InagAsxy8Y9NbbCfvjhRtLbtClgr/a0WHUNTusy9dP8b
	M1OVIkBA+7pmCSlNenLCsO3CH6QMas3ub6DIsO/CLh0bkL5yup6uISW3F4u+J9U6Ep/r0BTLCeg
	A3JqIL/yb9PZ3hjdH2d/BV+gXe6WIPRHvkTMQ7BW9A7c1uar86JW/kbzgRCT7f4zs6pR7dzQWlq
	Ibw1afC1ci+6AobLtFH1bBZ/pgpGptxYjlThePwpovwKQSfeoYKZcSjDHQC+CX3GzdN21njo8OK
	bcrEJOgoaIsdUXHkDDP4j1rdfnDTMk74MTb0tX1nQc6D2CPFrK87AK6jaIoLJvtSdT1aPHwy5hH
	oXI
X-Received: by 2002:a05:600c:681b:b0:477:5c58:3d42 with SMTP id 5b1f17b1804b1-4805ce4bec4mr79129435e9.10.1769431381877;
        Mon, 26 Jan 2026 04:43:01 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d3fda30sm108016795e9.1.2026.01.26.04.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:43:01 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 26 Jan 2026 12:42:53 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v5 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <byitgzjli5gsq5v66topve7ip3inkk2udwhuihjdp6bknnkmos@tv226l7tek7s>
References: <20260123-adf41513-iio-driver-v5-0-2dce812a2dda@analog.com>
 <20260123-adf41513-iio-driver-v5-2-2dce812a2dda@analog.com>
 <aXdUvRZ9NmP5Nh95@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXdUvRZ9NmP5Nh95@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259487-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5F9B788676
X-Rspamd-Action: no action

On 26/01/26 01:49PM, Andy Shevchenko wrote:
> On Fri, Jan 23, 2026 at 03:53:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > to parse numbers from a string.
> > A helper function __iio_str_to_fixpoint64() replaces
> > __iio_str_to_fixpoint() implementation, extending its usage for
> > 64-bit fixed-point parsing.

...

> > +static int __iio_str_to_fixpoint64(const char *str, u64 fract_mult,
> > +				   s64 *integer, s64 *fract, bool scale_db)
> > +{
> > +	u64 i = 0, f = 0;
> > +	char *end;
> > +	int digit_count, precision = ffs(fract_mult);
> > +	bool negative = false;
> > +
> > +	if (str[0] == '-') {
> > +		negative = true;
> > +		str++;
> > +	} else if (str[0] == '+') {
> > +		str++;
> > +	}
> > +
> > +	i = simple_strtoull(str, &end, 10);
> > +	digit_count = end - str;
> > +	if (digit_count > 20)
> > +		return -EINVAL;
> 
> Not really. If we are talking about decimal (only) cases we need to also count
> leading 0:s.
> 
> 0000000000000000000000000000000025 is still 25, no overflow.
> 
> That's why I recommend to have a helper, maybe for now locally here, like
> 
> int safe_strtoull(..., unsigned long long *res)
> {
> 	...
> }

Are you suggesting to not use simple_strtoull then?
Understood, leading zeros can be ignored only when parsing the integer 
part. Also, would be nice to have truncation of the fractional part
while doing the parsing. How about:

static int iio_safe_strtoull(const char *str, const char **end,
			     size_t max_chars, u64 *res)

- max_chars = 0: ignores leading 0's and process all digits
- max_chars > 0: process only initial max_chars digits and ignores the rest

on overflow of u64, the function would return -EOVERFLOW

> that will do all necessary checks and returns -EINVAL, -ERANGE, et cetera.
> In the below we would need check for the error codes respectively.
> 
> > +	if (precision && *end == '.') {
> > +		str = end + 1;
> > +		f = simple_strtoull(str, &end, 10);
> > +		digit_count = end - str;
> > +		if (!digit_count || digit_count > 20)
> > +			return -EINVAL;
> > +
> > +		if (digit_count > precision) {
> > +			digit_count -= precision;
> > +			f = div64_u64(f, int_pow(10, digit_count));
> > +		} else {
> > +			digit_count = precision - digit_count;
> > +			f *= int_pow(10, digit_count);
> > +		}
> > +	} else if (!digit_count) {
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (scale_db) {
> 
> > +		/* Ignore the dB suffix */
> > +		if (!strncmp(end, " dB", sizeof(" dB") - 1))
> > +			end += sizeof(" dB") - 1;
> > +		else if (!strncmp(end, "dB", sizeof("dB") - 1))
> > +			end += sizeof("dB") - 1;
> 
> Now we have strends()

strends() would not account for the acceptable '\n' before the end.
I don't think we would need to test for " dB", " dB\n", "dB" and "dB\n"

...

> > +	if (integer64 < INT_MIN || integer64 > INT_MAX ||
> > +	    fract64 < INT_MIN || fract64 > INT_MAX)
> > +		return -ERANGE;
> 
> This needs to account the sign, right?
> It's fine to be UINT_MAX I believe. But I haven't checked the current
> implementation.

Yes, UINT_MAX should be valid, will add test case and adjust. Thanks.

Kind regards,

Rodrigo Alencar

