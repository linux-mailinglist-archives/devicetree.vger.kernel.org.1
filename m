Return-Path: <devicetree+bounces-259521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDG8Gqt5d2n7ggEAu9opvQ
	(envelope-from <devicetree+bounces-259521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:26:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 139DF896F0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E0BB301D68B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9529733DED6;
	Mon, 26 Jan 2026 14:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JzHGVfxd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003EE33DECE
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769437592; cv=none; b=ine2VVYAtnbROSEhfOLkDhfhE4TTPI2ryrwV8Hb9j44MVrW7laTUXKkQgCxSzEikI2LJjUmqXeQcjkJUC/+UU2YAkhm2CLkcbJFtFoFwlTBhhD3Hx3bSD+PAl5S9HVCI81Pvst+/AOTEyM1GBccw45K6KnWak1j5Qh6l40xtA34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769437592; c=relaxed/simple;
	bh=xcQ1KHADsvCxonwjQYEr0+LsPyIEGsxcz7IdXN2xHoI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RfzE8xxny+oS2AugGEFH1dlKNhze2CVtCPYexKt0DvAit05UuzO/5wTACgiCFyY0PLBU9v/wIw6UIwHPwTwFaw5BYlFRFAwHw+JPIC84CpnNAU5xLli9CXEBMJGmnyxmvAh1MDYXTmkCNPT8SMaxbQpZj1uhSbNiNRQzN9OoWss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JzHGVfxd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-652fdd043f9so7937430a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769437589; x=1770042389; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YQfEhIs4nzCG/cpXL/L2bih36CfKuvFVEF2Nlki8CuY=;
        b=JzHGVfxd91cB9qHDp6ECpotg6e1gMMdJI/dx90bQpTmvK73biWTXac7PGJbrTwkyDa
         3LF/VI0pscEL6uv9hSzdSWFTqXqlRxHH62VD9vXySMjQ64xbGyf3ZNS55rxvHRo9eb+e
         cvLaOwsd4FbzS58UNwrEnlKpGymr1gZurkiLeJyr8862kAjvgnXQq2Ngrq3g8SmZfeg1
         TQhx3yq2TQOQl6BqJkW9fyAKzzjO0RU+xxx+hSL4c2HRWnsaY2YFLTN6Oz0Dd/vOZy7e
         bC7nK2EzRuQkHW8voALiZ2FxpylquUhyj6wF622bHf785eloSZvccsASe25J/Cr7x/Ti
         IbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769437589; x=1770042389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQfEhIs4nzCG/cpXL/L2bih36CfKuvFVEF2Nlki8CuY=;
        b=weB3IbMbXHq98g4ZEzbtoJ8eF8YZOGmlFk3eJYt1jkTNHucASf93+B6K4cpMBrtyG3
         8KC22f8jJlJRqyCFJp+Z7CdGTQiARkpWbECtE527uayKYQzQsgXkvc9bPiOsDep+JLIa
         12GyW2cCevlcoTOZlRNahAzT9xHp5mZekKUzk6cs4Dnp0PvirO0KFLGDrZydOssvMdoQ
         vof2n2DwM5ZwmjmfoQmbx+HDWfjvGLJYzR+x7YqzmhBamM3knxgHn7oTDpPaqGAG6cGM
         HR5TwLquEIMw+u4GA0kuiosZgeeUP90D5Fh27jAldbwlcrxv6hngrC2rS7TC2j+PdOZz
         Lg9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXoE6oH3dt0GebcO715cFbr9eUt7PAULGWQ8mL3ViiTe+OXt9wdiZR2H+Zml39rQGdCRxe/jDTdW+kE@vger.kernel.org
X-Gm-Message-State: AOJu0YzYGUPZDKyIn9fCR8unBbdZgGFkTCnpWLaooUitf3rcOMKue/nD
	+j0spQ3fUuhCiCWkaPcWg/AxnitQVopB3//H1eDb0QYLiBSQQFhddibtkwjcCg==
X-Gm-Gg: AZuq6aL6PctGfGX+f1YybLgyO1QaX+cV+JUHXXP4g4tAIc6sPjw/D/i89hs2qXDndfF
	hAUn26sq3NP8j6DA4WKo5nGCwgb/c217UdkU2XUtsZlGxCdJl5NqF+o47guWLivx/MEiJphOmR4
	Zpi3PQWC27fpb4EP0E6YchZpH0aY/HRTRbYVDq+eJQHTgvdSy2KWumB7jb+cUKZcAUsVaAK3Bir
	k+/T4CJA7JpfQI/lRcyR/bDJeC/f2eMr3WQuwOkwaRO9uzP+b+EW5ciFCyrn3ECmvGdktpEA/2S
	4kyavI9hsY7q1rmf+KpktbT15zFBuZgMDrml0mcw2ccjxf3UMJvGySfzG2GvphRob1Zafob5yds
	8dhHzVKbF+rv2rQLzGYzPLKFZWJQu4dmbZo3pBcpIoIJCescFRLTcCntgJB8gz1musEjYuHGoWK
	J2mbPrY/cTWOCQCJtngElyb0O0YC9nhf0k37OwCW2fnGWiAinQFm4TO1r5BfzCgjTzvdeOxPKYL
	jIi
X-Received: by 2002:a05:6402:35ce:b0:64b:6e20:c92e with SMTP id 4fb4d7f45d1cf-658706b8ba8mr2823359a12.10.1769437589051;
        Mon, 26 Jan 2026 06:26:29 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b3eac76sm4997626a12.13.2026.01.26.06.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:26:28 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 26 Jan 2026 14:26:20 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v5 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <ty6hptfh65k2rkqo6c6mg5z6vismuvyqsu3emvqarr2rbhpvcz@kn6tzjk5xi2o>
References: <20260123-adf41513-iio-driver-v5-0-2dce812a2dda@analog.com>
 <20260123-adf41513-iio-driver-v5-2-2dce812a2dda@analog.com>
 <aXdUvRZ9NmP5Nh95@smile.fi.intel.com>
 <byitgzjli5gsq5v66topve7ip3inkk2udwhuihjdp6bknnkmos@tv226l7tek7s>
 <aXdtpkL5QUhhB_hh@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXdtpkL5QUhhB_hh@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259521-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 139DF896F0
X-Rspamd-Action: no action

On 26/01/26 03:35PM, Andy Shevchenko wrote:
> On Mon, Jan 26, 2026 at 12:42:53PM +0000, Rodrigo Alencar wrote:
> > On 26/01/26 01:49PM, Andy Shevchenko wrote:
> > > On Fri, Jan 23, 2026 at 03:53:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> ...
> 
> > > > +static int __iio_str_to_fixpoint64(const char *str, u64 fract_mult,
> > > > +				   s64 *integer, s64 *fract, bool scale_db)
> > > > +{
> > > > +	u64 i = 0, f = 0;
> > > > +	char *end;
> > > > +	int digit_count, precision = ffs(fract_mult);
> > > > +	bool negative = false;
> > > > +
> > > > +	if (str[0] == '-') {
> > > > +		negative = true;
> > > > +		str++;
> > > > +	} else if (str[0] == '+') {
> > > > +		str++;
> > > > +	}
> > > > +
> > > > +	i = simple_strtoull(str, &end, 10);
> > > > +	digit_count = end - str;
> > > > +	if (digit_count > 20)
> > > > +		return -EINVAL;
> > > 
> > > Not really. If we are talking about decimal (only) cases we need to also count
> > > leading 0:s.
> > > 
> > > 0000000000000000000000000000000025 is still 25, no overflow.
> > > 
> > > That's why I recommend to have a helper, maybe for now locally here, like
> > > 
> > > int safe_strtoull(..., unsigned long long *res)
> > > {
> > > 	...
> > > }
> > 
> > Are you suggesting to not use simple_strtoull then?
> 
> Nope, I suggest to do an additional step before checking for the range.

You mean, conditionally skip leading 0's when parsing the integer part?
e.g.

/*function entry and arg check */
while(*str == '\0')
	str++;
/* then call simple_strtoull() */

simple_strtoull() is not overflow-safe, as it does not use
check_mul_overflow() or check_add_overflow(), only checking the
amount of digits is not enough. Previous implementation of fixpoint
parsing didn't care about that. 

> 
> > Understood, leading zeros can be ignored only when parsing the integer 
> > part. Also, would be nice to have truncation of the fractional part
> > while doing the parsing. How about:
> > 
> > static int iio_safe_strtoull(const char *str, const char **end,
> > 			     size_t max_chars, u64 *res)
> 
> > - max_chars = 0: ignores leading 0's and process all digits
> > - max_chars > 0: process only initial max_chars digits and ignores the rest
> 
> I'm not sure why we would need that. It should parse the whole line until the
> first invalid character or overflow.

"process all digits" and "ignores the rest" would be for digits only, so it
would stop until the first invalid character is found. I suppose proper
overflow check is implemented with check_mul_overflow() and check_add_overflow(),
while iterating over the characters and accumulating the value.

Kind regards,

Rodrigo Alencar

