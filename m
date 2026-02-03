Return-Path: <devicetree+bounces-262118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNtPMWm/gWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:27:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 404F9D6C48
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:27:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FDCE3046509
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8DB396D32;
	Tue,  3 Feb 2026 09:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CszI0hi0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3AE396D0A
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770110809; cv=none; b=C2LLBlem6b+yEb4z77juIGHcMSeLxS/O0KBApnRtfCoN/vC65WO8E+a2OOxuscPMfrfJ6q7xjZj1SB8PXeH5aH9U8xxmDw1dcT4Fi9YasDshlStI0pCZNBoHK+kixAcNWTtiUNpPQy3FAm7RzaAT36R+qpjAVglXbjSdGiEUeGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770110809; c=relaxed/simple;
	bh=zQIcFhLzEEVfpsSAYKxeP8WFD6JDPzhJjkOH75MBsj0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XMoUf5fPRiEbO61O+kUJhfeBho756ToLT8JA1s367MFbB3rt10rC6gF4tpdhcAvpswJOahvRuRKE2fd3OltOEU3tpqx00oSKW//88MkVcAPRzFTsNV0IJybEXuCCgasEfA+Z0SIHaM0aP4vnpgvDryavUCa5AzDYXEqbMv6UO6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CszI0hi0; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4806fbc6bf3so57333625e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770110806; x=1770715606; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v8u3IwoMOrMqGo+Mwbf89Kdkxv+i1U2HP3cA+C8V8rM=;
        b=CszI0hi0akWQwhlXq1WfZsp9xDZjx8nGupVk2Dhq8140uSJj+SpEOvMaQF4buoj39q
         +Epe8D6iNMt7njDdlXM6L61TRQY7i7lyYppiBynsGbOjHcMy4Z8LSDEFydxsl39CgEKx
         S7a9BYpBUwovngDihUHOhX0u2CqFTFvErppY3ausyYe10ey5cWUjFrwQE6cI0hK4pRed
         knsW7Gxukn1z8C+++pqXpEPRdLgqMMTrLZXXjoR+HW3WBwSZWxQSb4Jxi35i4ZK/Gow1
         vmC+krwiFI3GhGHhA2xqf0u6L0nkFtGbL0dNSqm7HaRBQ7VxrJzdv2xokpgenQwjyhnF
         HrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770110806; x=1770715606;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v8u3IwoMOrMqGo+Mwbf89Kdkxv+i1U2HP3cA+C8V8rM=;
        b=IFg7lBCcR+AnoYKvN5Nlg+hm/Tmdlz3T/bE3LXlzvYT1FtHR3AsoEqpmAH77spaspq
         VnSoL580Fohg/3orgXPFYegFIIAMQB7MCPfQmdFfktXWRuhPuLm3m4bbJ2KfToYzRbBF
         kqR5HYD4x/irzCg5Apf4/gnbLb9GCJGEko3vOfk/yKoMZBx29a9xT41eVRyabpM9ALES
         CZixWHNvhLjlCC5dfdIpphqzFuCkNZI8MAIPzlHu+rvJ7kRNVliyj9JPwoboCCXUJulo
         gXyv7kcBnf1jwekOA1FY+nlp+zC/fl9koqOmcdZbWdPfuxCGjHnmR1h9Rl0hnqIwu/7F
         Rn5w==
X-Forwarded-Encrypted: i=1; AJvYcCURHcc+Ec5NP0UJNIuQ16XVN2hXUyKYpAYvdrta91gVJI8rpbkNUklaSsqC3YJrQqeBdqIeopIda6DR@vger.kernel.org
X-Gm-Message-State: AOJu0YxZzyhLE1VaWyuo5qfsXS2TA/R7P88T3IoQ7tfsOi0JaotEMGrv
	aCUbmUOiS7ySMjXBoITePIXZBPRQ4TywB8CqwedshKwXesm9w4vhNWYu
X-Gm-Gg: AZuq6aIuI2pHtzFdSeC9M8BNu/ZhadlyjjLQpnslOvASLdl+Dmb5TwpxS/hEVgKgTwF
	rYTlEY1L+DWRKi7gcmV5v+z+GfAcVByeRYOo9wDFUzo0LFOQEAefvF4zEdGwgDkPP6NGs2fETtB
	5fixBBCkBUkAsAbt7MksNRt5Itb0TIBIiE3zTpMytOW8FQucP0ykVsmM8V++RNfRrrP6I5ZF3aW
	v60eY3gnnK+0LbLbND6e+4L9bJwCCTJhVjiccUwnGP5felpJTKKZAQCuxsm2eNHMAzCE/BhKKsc
	c3dNU2fI+PBqZKAK05A43e+oiTuLKbWawi/drHYswNFczsZicPjXUrtqYYArN0KDPnNcZ/YnPL4
	CXrxafwfdRdRAhaykJxPZYprwNKaxXeUGsjpJTM1NnnMeltDy/keFGlL5WrLo4703ijcO9PwTPt
	VnxFGOWXL5BJshK1nu150Wtyy35PrUOdJgwZcGr1Fyzc6bnG67frVedWogbXa07jReIEcbs0JP/
	Z97
X-Received: by 2002:a05:600c:3b23:b0:47e:e87f:4bba with SMTP id 5b1f17b1804b1-482db49e871mr191759345e9.29.1770110806001;
        Tue, 03 Feb 2026 01:26:46 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48305129321sm49396195e9.4.2026.02.03.01.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 01:26:45 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 3 Feb 2026 09:26:37 +0000
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>, 
	rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v6 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <nzowa6uhnlcllceml2pqjk4so33kl3rf2jwu36eh3znnxug6ub@gfzafmi3m5re>
References: <20260130-adf41513-iio-driver-v6-0-cf46239026bc@analog.com>
 <20260130-adf41513-iio-driver-v6-2-cf46239026bc@analog.com>
 <eb1d9b939f95888739ce4a70f516cec07393c6df.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <eb1d9b939f95888739ce4a70f516cec07393c6df.camel@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262118-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 404F9D6C48
X-Rspamd-Action: no action

On 26/02/02 09:57AM, Nuno Sá wrote:
> On Fri, 2026-01-30 at 10:06 +0000, Rodrigo Alencar via B4 Relay wrote:
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > to parse numbers from a string.
> > A helper function __iio_str_to_fixpoint64() replaces
> > __iio_str_to_fixpoint() implementation, extending its usage for
> > 64-bit fixed-point parsing.

...

> >  /**
> >   * __iio_str_to_fixpoint() - Parse a fixed-point number from a string
> >   * @str: The string to parse
> > @@ -895,63 +1026,43 @@ static ssize_t iio_read_channel_info_avail(struct device *dev,
> >  static int __iio_str_to_fixpoint(const char *str, int fract_mult,
> >  				 int *integer, int *fract, bool scale_db)
> >  {
> > -	int i = 0, f = 0;
> > -	bool integer_part = true, negative = false;
> > +	s64 integer64, fract64;
> > +	int ret;
> >  
> > -	if (fract_mult == 0) {
> > -		*fract = 0;
> > +	ret = __iio_str_to_fixpoint64(str, fract_mult, &integer64, &fract64,
> > +				      scale_db);
> > +	if (ret)
> > +		return ret;
> 
> I know it feels tempting to do the above while adding the 64bit variant. But isn't the
> overflow safety also an issue on the 32bit variant? IMO, we should first have a patch
> adding the overflow safety with a Fixes tag and then add 64bit support.

I think handling 64-bit support after taclking the overflow issue
would require changes on top of previous ones, which might get a messy
commit history, no? Mostly because the 64-bit variant of the function
is being used inside the 32-bit one. Also, the added auxiliary function
that implements the overflow check parses u64, which allowed for the
removal of the while loop in the __iio_str_to_fixpoint() implementation.
 
>  
> >  
> > -		return kstrtoint(str, 0, integer);
> > -	}
> > +	if (integer64 < INT_MIN || integer64 > UINT_MAX ||
> > +	    fract64 < INT_MIN || fract64 > UINT_MAX)
> > +		return -ERANGE;
> >  
> > -	if (str[0] == '-') {
> > -		negative = true;
> > -		str++;
> > -	} else if (str[0] == '+') {
> > -		str++;
> > -	}
> > -
> > -	while (*str) {
> > -		if ('0' <= *str && *str <= '9') {
> > -			if (integer_part) {
> > -				i = i * 10 + *str - '0';
> > -			} else {
> > -				f += fract_mult * (*str - '0');
> > -				fract_mult /= 10;
> > -			}
> > -		} else if (*str == '\n') {
> > -			if (*(str + 1) == '\0')
> > -				break;
> > -			return -EINVAL;
> > -		} else if (!strncmp(str, " dB", sizeof(" dB") - 1) && scale_db) {
> > -			/* Ignore the dB suffix */
> > -			str += sizeof(" dB") - 1;
> > -			continue;
> > -		} else if (!strncmp(str, "dB", sizeof("dB") - 1) && scale_db) {
> > -			/* Ignore the dB suffix */
> > -			str += sizeof("dB") - 1;
> > -			continue;
> > -		} else if (*str == '.' && integer_part) {
> > -			integer_part = false;
> > -		} else {
> > -			return -EINVAL;
> > -		}
> > -		str++;
> > -	}
> > -
> > -	if (negative) {
> > -		if (i)
> > -			i = -i;
> > -		else
> > -			f = -f;
> > -	}
> > -
> > -	*integer = i;
> > -	*fract = f;
> > +	*integer = integer64;
> > +	*fract = fract64;
> 
> Hmmm, aren't we truncating the values? They are still int pointers...

Yes, truncation happens here. integer64 and fract64 are range checked
before this assignment.
 
-- 
Kind regards,

Rodrigo Alencar

