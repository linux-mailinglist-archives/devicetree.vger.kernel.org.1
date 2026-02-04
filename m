Return-Path: <devicetree+bounces-262587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLEPB3Yfg2nWhwMAu9opvQ
	(envelope-from <devicetree+bounces-262587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:29:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7EAE47E4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:29:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D431B300DDCA
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 10:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D08BD3DA7C6;
	Wed,  4 Feb 2026 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TsY8mwjV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626CE3D9059
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770200896; cv=none; b=r50/3CSp7vL9VY1XQKjWGb08S4IWXv+o/xsDvg1ru/RRXQ+LodYfBv3mjl5MMoxy0fv1R+tBfjQakWyqEbKmY5o6Yze/8bo6+Wl1gfKfovCBzY5Gg8bFjr+qpyFNy1SY8vVuN/Ski+DzBp/ZRzceYaRYVZFfnccCvdC9CQTkG/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770200896; c=relaxed/simple;
	bh=JolnKv0qFTOR+o7MUsErJAFOJkrET4c/BlgelBkXp+E=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i+T3NWW8fuS6l/NGGK9xooxGvhkzK343h90/fjOfB+7q3aYMzlAn8VW6/ejczSHkCVUcYkryvHj17Yc2kQZ568NtHmV5QpdeDVDcbAVQA/a9ciOsLqSyioVVGzBrqd4Oj9v8de8XWbOsnVlzonxl2ZdfLjP6ZAR9LtACrkeUmvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TsY8mwjV; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4801d7c72a5so51828535e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770200895; x=1770805695; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JYjG7SQO8WEcZbtf5VFi69+C3kGp/XbrFnd6F1SB62M=;
        b=TsY8mwjVOlERyLMY4xZcL4FpfW2PC0FXYp2YORrLpKNQAFvrDqA9Pv48o6hL9jCRxG
         ZMXuemwqTxc+RH7GIPsI3WFUfRWKAb6SpGf4EY4O1n6o/cEcG5vTdJnTNtPw7mgxUWb6
         3HClgwFLhovEYkHr+EvQObn1U8ZFSjrZwruTVQmOZbkkkDg8h9bN9oybHLzY0iUeYa2n
         Jaly9/P13T98296deoooscmmE6uIKWGYmLYjGQuICWESIgdVTERmh7WcTeKZDlp4Qigz
         ITF8HT5YhFaBbGIYR7sDw1gEYKigBErj2ITge1JKv7mCxpIsALT8PkQ4PIDnDJf314Pz
         TnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770200895; x=1770805695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JYjG7SQO8WEcZbtf5VFi69+C3kGp/XbrFnd6F1SB62M=;
        b=mhhNrY6yM6evLtit+IiW+FXICSoxW+lYo2Nyrpuo9PbkD+65U/82WV7igMIrieDpRW
         LEliH2+AJd5CChe7JalX5jl608qT3cT3yTwZLPYYH56ekS0hxs+K5MyRFg9CFUysEwq8
         oxA+SU3MoNRUFNTMsC3eu47Ts/sUWo9WoG7xUWPYkdufrVHrX/Zh5fYdfpEraYUhmKU1
         I5vD22xeOWO42Sxj1ZP37Kclac7WuVye9qlMQQUn3o9hAlFa9rdNjRjdrgnKRsYvpKJR
         PGXh7xjgqJMkXHxSjjwz5JYoZYkUcOZ1VkT0SPhExZSLerW1zcoM3VcRO/KV+b9Wx/p2
         cajw==
X-Forwarded-Encrypted: i=1; AJvYcCUf8PwLOJ/s7sh91jNSdciLKubPMbyAxo2Fom4UTMA3rIf7AoIqpiqWgxmMAiiOioq/P81lgy+LAj+c@vger.kernel.org
X-Gm-Message-State: AOJu0YxN8gLhXxfJT0l6LlECGggm50gSRfiXdXlYlp1SysaNFb7WJW6s
	tT9WYqmAfxRfj+46Kdm6x+MkPO3DrHL8lCX6aieO+AG7U1WXUkvvtIRi
X-Gm-Gg: AZuq6aJvcXPAXIk4mFvO9PQQi/C2r7lg7B69RrOuaffLLTsnML5bSv4vh4stkh39YSd
	8yM1PswR9Yxth3vbV4obS4tvR0ZaoJ7LBPSO0rY1Qe88E8t5kD7cwCBWplMNKsqMTPfQ+KOKhdf
	6XZDmmC9gDbaHe0rXh0aZr63XU3IGvnw0NqDV02dJ+DIiLJAehbU//4PoellSsIQo6UdmWSxbdI
	jEHOxCvmXeEisRigdFKZHlG6rTDm0NNSWwygsPl51OWcr1kEK8v8mijtlrz5wqnp/NumBIi7GnQ
	a81GwdZ/Wg86Ni/8mhnKkoZOHgmt+vhVma0/ERmGq5zxQ2dhkEJkrppofEQLYVi/JZuoUK+mXa0
	+XLVJTcdQHfqElf3107+t55/12fbYvxflZvltibujbKhRYuoAH0IO+Mk26bf/YMY/2gyu1X/uWU
	xl3XyAbzNBvmdtsXYI6Rl5WZ5WO5nGh+JvHEfAui3r9qckkPsugloEmaBK+0LZD+jKNipEKzXTh
	z9Ym1igo+ZNbNA=
X-Received: by 2002:a05:600c:35cb:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-4830e968e72mr35786535e9.18.1770200894603;
        Wed, 04 Feb 2026 02:28:14 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830ec5cc24sm25090045e9.3.2026.02.04.02.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 02:28:13 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 4 Feb 2026 10:28:05 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v6 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <hrhgmum6zdww7etc6ztchivfqecaaqeeul2bbagzyongkxpaeh@q7x4popwel6d>
References: <20260130-adf41513-iio-driver-v6-0-cf46239026bc@analog.com>
 <20260130-adf41513-iio-driver-v6-2-cf46239026bc@analog.com>
 <aYKkv3dq9Vkm3s_3@smile.fi.intel.com>
 <7tiv33i65unu5ypk7puj3buzybykyhv2qbwp54bhcem5t4rawq@dpfedqmmxbhx>
 <aYMYJppigidPeLH4@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYMYJppigidPeLH4@smile.fi.intel.com>
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
	TAGGED_FROM(0.00)[bounces-262587-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6A7EAE47E4
X-Rspamd-Action: no action

On 26/02/04 11:57AM, Andy Shevchenko wrote:
> On Wed, Feb 04, 2026 at 09:42:55AM +0000, Rodrigo Alencar wrote:
> > On 26/02/04 03:45AM, Andy Shevchenko wrote:
> > > On Fri, Jan 30, 2026 at 10:06:43AM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> ...
> 
> > > > +static ssize_t iio_safe_strntou64(const char *str, const char **endp,
> > > > +				  u64 *result, size_t max_chars)
> > > > +{
> > > > +	u64 digit, acc = 0;
> > > > +	ssize_t idx = 0;
> > > > +
> > > > +	while (isdigit(str[idx]) && idx < max_chars) {
> > > > +		digit = str[idx] - '0';
> > > > +		if (unlikely(acc & (~0ull << 60))) {
> > > > +			if (check_mul_overflow(acc, 10, &acc) ||
> > > > +			    check_add_overflow(acc, digit, &acc))
> > > > +				return -ERANGE;
> > > > +		} else {
> > > > +			acc = acc * 10 + digit;
> > > > +		}
> > > > +		idx++;
> > > > +	}
> > > > +
> > > > +	*endp = str + idx;
> > > > +	*result = acc;
> > > > +	return idx;
> > > > +}
> > > 
> > > There is a development in the parse_integer in the lib/. I reviewed that series
> > > and hopefully it will go in. With that done, we better reuse the lib/ function.
> > > 
> > > https://lore.kernel.org/linux-hardening/20260202115451.290173-1-dmantipov@yandex.ru/
> > 
> > In this patch, I see that it updates the overflow check, but I am not
> > seeing that function being exposed to other kernel modules.
> 
> Can the IIO be compiled as a module? If so, then we would need to export that
> function. (Note, we may export only for the exact module(s) in question, so
> nobody else will be able to use it. See EXPORT_SYMBOL_FOR_MODULES() macro.)

Yes, one can have an industrialio.ko.
Then, would it be fine to use:

EXPORT_SYMBOL_FOR_MODULES(_parse_integer_limit, "industrialio");

in lib/kstrtox.c; and:

#include "../../lib/kstrtox.h"

in drivers/iio/industrialio-core.c

that does not look pretty.

-- 
Kind regards,

Rodrigo Alencar

