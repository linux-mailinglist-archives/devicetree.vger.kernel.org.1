Return-Path: <devicetree+bounces-262577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOyuD7cVg2nihQMAu9opvQ
	(envelope-from <devicetree+bounces-262577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:47:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AB8E40B9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28CB53019BAE
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 09:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A070F3B530D;
	Wed,  4 Feb 2026 09:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gsUc+u/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435643A9DA8
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 09:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770198181; cv=none; b=ng7wJ2TnWTnRLmEmXyH3MeuaaHoG2x2K+DP4RrHEBfE4e5NZSevlSa2r+Mdv8naDbx32NJsWQOtYbCz1w7+BCHQekA31k/BZw9/xGT5JtjhOtufVs/u3gLmRE05Od/M4VZ62Ql0bNbviywItnrlZWCqZLNIWciBb40nub1tJZz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770198181; c=relaxed/simple;
	bh=hGwBf1cUBZVW0moEL2wbt4+Dz7qCO/Yl0iuemeryZME=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eXv1uZM5yc3+Heb6p37Bu4urJ9I+nPvFuBz0c/awarxDHQmU0yrLZ9KWkKZMhQUWDcslkAROp6K5SUV+PW9w4Smo99LUY/J71fAYMtmbvsse1nY6jytBWS39uzEF7PQng6Sj5qv1Ue36Fvl/7Vi1lgtzID4Jq4GIx4/0LJTaKvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gsUc+u/v; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-435a11957f6so5126087f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770198180; x=1770802980; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s6noyEhcNwk/Aw3tl3/LJ2DrKHWXMyz7JjWPgqeEx4o=;
        b=gsUc+u/vtiNTkp9t7nP06pMtgtzz7q3dAWjPNuYNpbCLA8FFkTuoXlqh9pjxp1m9i0
         pd/DyxUr26ND8EoErfFGCkKN2mY0ynopnX9tluDGUG5lg5T3Eiz4SSypA3qaJbXL0BMF
         4A+dLTGDN3P76vBUv7eVmI/vjjtiOkt+ClOzuivj6kGHEIPVrwXLZDVbf+ieXcyInZP9
         1SoHCMa5ca75AHg8ypzP/rsAfuf72NrSGTHGlYTl5QsfxRgCBD6bWSem91LkVLnqyO0I
         ou/tZNwPejpq/koqlhmpHiAqfZ8Je94dR+xzHF/Yq7JyItPYVYB7sAu+5ANuZSNGEcmw
         bnnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770198180; x=1770802980;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6noyEhcNwk/Aw3tl3/LJ2DrKHWXMyz7JjWPgqeEx4o=;
        b=TnpLfhIV33E/pTweq+WgIY3AEH4VHgMaJQwMX45UK8cFUOi1hTnZeeozhA92Xhl3Ee
         meck8uPp57Rj9WfzMP3o1iRb4DXBGkenM8LDe15/E4bwJf7YrfMFuG6IYuQdTUgCdNMd
         tEm0szcbDhwDLjCfPj2gOFsqXaKZ2/VkSlrRV22jWcp4OoToKw6DoXBxPGz63kABc/+x
         1Eox98bcKmMz+3MzgTVZGI6zug4PL7txtDrldABnzQWQ5Og3wbsUl8qHH2ALJIGhECRn
         xG1VuM1LieNxD519kG3aH2+0u5JvcsN1CjqH4PI28MmA1H2FQhLclLwg0xK10cGhQQQx
         H9dQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7s/WyY8RqmgP+139kadStJimpEy0uGnZkZmB+nHsILuNlVskiEOoS+Klb87TqlNQgWo7Ra0Ur6Z/J@vger.kernel.org
X-Gm-Message-State: AOJu0YyH1BIbsmYCbmLSN1RduzsykYt/LTOwrasxQQqyfW473WESBXXI
	LQvqABmdj3BNqKlU40fB6wMDilNxerPJ5j7TODOX0QzKriqaJmwidQiC
X-Gm-Gg: AZuq6aKg0EDX2qgIoNz6dZh0B9X075hMIJOquHWkrCdMoqUDdV7p+IedeY+0DepbxsT
	IePPyaqNE5J8lrezulVqlOEDnvSV5fpaEbo8jHDcS6b9JJR4b4tHstxPwpXG/T8y+7QloRq2mEB
	wXvNDXrkZENE5qhcMjf+sSfGGejJ6BNXyv5pgYzXSbSr4GP7HKS4d0E0Cv+hMrCHj9IFN7tfioP
	O1L9LKEY/8EWDYzfwPp9Li+Kf6tpA9LojL6mocRbDME1b8SbPy+feMBEKZ87YsPKgX3deFWE4RM
	TvtVzgDKD59z3dfyMid4VLpCyWweD7mPrtpp2TFHGueo9UE/Un1skio+YmLRfO8dXU2naCcmEow
	9318pG//+ktiu24mnhYO3Iw8yZoYr14mc0pCaWIKLHruYbN/RC9CvQwO/hpp2SY3Fy4VLKS7Wqu
	Pr9ILaq0167jHVVcypGPrTDeKxk6IzOeLXooqV8BBgcWMPs6M2iGuW9TKE635VpvTf0lW9CjWfz
	Zvc
X-Received: by 2002:a05:6000:400b:b0:432:a9db:f9a2 with SMTP id ffacd0b85a97d-43618053ca8mr3252156f8f.41.1770198179457;
        Wed, 04 Feb 2026 01:42:59 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f66sm4791738f8f.25.2026.02.04.01.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 01:42:58 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 4 Feb 2026 09:42:55 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v6 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <7tiv33i65unu5ypk7puj3buzybykyhv2qbwp54bhcem5t4rawq@dpfedqmmxbhx>
References: <20260130-adf41513-iio-driver-v6-0-cf46239026bc@analog.com>
 <20260130-adf41513-iio-driver-v6-2-cf46239026bc@analog.com>
 <aYKkv3dq9Vkm3s_3@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYKkv3dq9Vkm3s_3@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262577-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 95AB8E40B9
X-Rspamd-Action: no action

On 26/02/04 03:45AM, Andy Shevchenko wrote:
> On Fri, Jan 30, 2026 at 10:06:43AM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > to parse numbers from a string.
> > A helper function __iio_str_to_fixpoint64() replaces
> > __iio_str_to_fixpoint() implementation, extending its usage for
> > 64-bit fixed-point parsing.

...
> > +static ssize_t iio_safe_strntou64(const char *str, const char **endp,
> > +				  u64 *result, size_t max_chars)
> > +{
> > +	u64 digit, acc = 0;
> > +	ssize_t idx = 0;
> > +
> > +	while (isdigit(str[idx]) && idx < max_chars) {
> > +		digit = str[idx] - '0';
> > +		if (unlikely(acc & (~0ull << 60))) {
> > +			if (check_mul_overflow(acc, 10, &acc) ||
> > +			    check_add_overflow(acc, digit, &acc))
> > +				return -ERANGE;
> > +		} else {
> > +			acc = acc * 10 + digit;
> > +		}
> > +		idx++;
> > +	}
> > +
> > +	*endp = str + idx;
> > +	*result = acc;
> > +	return idx;
> > +}
> 
> There is a development in the parse_integer in the lib/. I reviewed that series
> and hopefully it will go in. With that done, we better reuse the lib/ function.
> 
> https://lore.kernel.org/linux-hardening/20260202115451.290173-1-dmantipov@yandex.ru/

In this patch, I see that it updates the overflow check, but I am not
seeing that function being exposed to other kernel modules.

-- 
Kind regards,

Rodrigo Alencar

