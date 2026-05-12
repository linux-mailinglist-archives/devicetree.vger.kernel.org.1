Return-Path: <devicetree+bounces-296259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPpVC6wsA2pe1QEAu9opvQ
	(envelope-from <devicetree+bounces-296259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:35:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1421D5214EF
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 15:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ACF68305235D
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E16F39AD20;
	Tue, 12 May 2026 13:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HW4WXrgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F54239A4BA
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 13:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778592081; cv=none; b=NledMPGupdUdlv/aJQh9SFlrRa7KMTMJR+n7etpsk6K45E/zrwp7Ms5X8USlUJVs86VDdTJZOhkVzDk7Z2ENPLLLiNjcdLUbT5oztOa8yUJJ9AB4n/cucdtDd95N+iJy9B4+E5sFXcvtyoqRZdsMIcbFbDtP1fjIcN94B6XilF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778592081; c=relaxed/simple;
	bh=sEiYG2uut8eryJgiVxXirz97HD1qb4i40If2RpVaDvI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X+gC1YowxlhABSZVndi04G5/G2X8ZdF/nue+vJ49kZA9ak89EOoOXWSnE5/e6lFeK0C9DHRATdxslb/PaAxC6NID34NaCRTzvPYsvpGrsZPBXE5hEuw4gukMzj96S9D9PYn/MgKrNYLGoYizvPwiBcNI38f638ANtaqDRVUFIfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HW4WXrgQ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-44e1860558fso3578726f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 06:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778592078; x=1779196878; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H0iUBbHJXRnojwm2dbHMn4bUhVf32dcx1R5+1C6RZQw=;
        b=HW4WXrgQJv/8u5VL/s2qAKveBKj0j9M6F11QIaxwdjh55mQx1OtuJ1fUm6YBNXWLVh
         5xqZC2rN4vmzO3PV8WnKxVaB22uWj5NdIf2JYcINvJsgMXselYnS/zEa+EtVHMhS7vHo
         KQ1P7mE3H+WwzWWPcyqwavohBt7J18tnCMLhwdY4rB2fntrqXz2m98Ngk6t5bVmsDVot
         o//rWQG2SP+xzPUa227lCd8SPg/0nvy+GW26o3fBlPdT3+CiKkG3fGCNQYCg2loWLjho
         j97JjqSlXGaXoaQZM+nxBlwTjHFsdaDZ6neTqJf72oXcJTibYrsk9PlOFfaNh9c+Fq4J
         6JjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778592078; x=1779196878;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H0iUBbHJXRnojwm2dbHMn4bUhVf32dcx1R5+1C6RZQw=;
        b=ra1FpqNlTvJwNjUC/7Y4qekPtQQjNoLex1EW9HYCPrkxomLOnxyQdbugXpTyvmcmwY
         5NWHwbSgRk9GHDrGpmXoVYcSx1onSpemJkmHlRxw4f8PzczP+qu9tEBIZvIsOBFGOTl4
         zgz2/49iC7eu0S7aLZvXrIFo96ko1/RkpdEETRUcV+zAthGOZw/GxsFFlrrLEjiJksQh
         4gTz7aCCsE5OF1fc4T5hQglsl6HdLXIb4MlehtnN+K7KDOn6tr9fHhcL1WDW5kiM0dXt
         trQGM4TDLDE16YDbeJdt+xkHJbMBxHZVrKV17MesY0UY1TxnR6ldj5Vs5B36BXLG98Jj
         gWRw==
X-Forwarded-Encrypted: i=1; AFNElJ9orEimHutFhhf2S4XPUsvbC4cVcuxbeIgz7i5mzpNbOJRTnSzUUfudwjWBMkmfw1kL28sg75rMvRsr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq8UaVxfX15GJxNGRmwTvm9TSrAgCxOghPf0iiCLeYUQKj8P54
	3yKDQdWeL5kBKsh4p6EEQYHCC1ayBsZeWgw71m6pWHelLf1o0IoAITcG
X-Gm-Gg: Acq92OHBGGzFMHREhVGAL0BsaApqgeif/70DbbU4E4fJSUphh4uTYUvJuWfyRljjSz1
	1Tpoujbohl11PEtVIOwpyT6z7LQiv24wRB8P0o7Un2RwFKkyk3LYxICG+tYBGHLeS03hRGOSWHj
	ONsJu74l69viLklPoYDWROzt/te9dNU3+uFL1fWSKZ4nUU1xFefkyLEDzSYXsA6swviFciaqhWq
	5XLLuUnSjgW0H1SOHiE0nzEIx60T1wT+xLTJbypQDcSmcLae+TeAq3FhsSHFdRiswnJY2UCONPb
	+uZ76cS7D7iVgwvx9twFL7uGyXM2jm0xT0NAKvS86fdwSb6PQbVesaqDI6F4WJo49+uQsmWcuJ1
	ilOF08HlK+fjg85EGVUiNO3qj64Eoi6HAz55+5CzzzTqWlJjE+SbOYB5sa2tm0LNqrUzS9IQUPg
	RSli1SOICj6cWG4SDm/B0cRQTE0xXLgCxkBbjIUEauw8/w7tIzIFDSBCioyJYEJ+QLMyhK/Wk7z
	a/OIAER0fgo5gKLwevh2Yo4ufCTEQtFSRCT9yaYMg3+WQacVQ==
X-Received: by 2002:a05:600c:a412:b0:48a:525b:e148 with SMTP id 5b1f17b1804b1-48e6748a724mr188954735e9.4.1778592077610;
        Tue, 12 May 2026 06:21:17 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e9055ec3dsm43552285e9.0.2026.05.12.06.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 06:21:16 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 12 May 2026 14:21:14 +0100
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Jonathan Cameron <jic23@kernel.org>
Cc: 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>, rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Petr Mladek <pmladek@suse.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Sergey Senozhatsky <senozhatsky@chromium.org>, Shuah Khan <skhan@linuxfoundation.org>, 
	David Laight <david.laight.linux@gmail.com>
Subject: Re: [PATCH v12 02/11] lib: kstrtox: add kstrtoudec64() and
 kstrtodec64()
Message-ID: <sj6cpjhakyfvv6rgox6cnhl2u2tgaecugcok6fw2l7zgku5wtc@aqx3ul72vgca>
References: <20260510-adf41513-iio-driver-v12-0-34af2ed2779f@analog.com>
 <20260510-adf41513-iio-driver-v12-2-34af2ed2779f@analog.com>
 <20260512123953.40d80bc9@jic23-huawei>
 <agMnWzMjW1LwCSyT@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <agMnWzMjW1LwCSyT@ashevche-desk.local>
X-Rspamd-Queue-Id: 1421D5214EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296259-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,vger.kernel.org,baylibre.com,metafoo.de,lwn.net,linux-foundation.org,suse.com,goodmis.org,rasmusvillemoes.dk,chromium.org,linuxfoundation.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On 26/05/12 04:12PM, Andy Shevchenko wrote:
> On Tue, May 12, 2026 at 12:39:53PM +0100, Jonathan Cameron wrote:
> > On Sun, 10 May 2026 13:42:20 +0100
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> > 
> > > Add helpers that parses decimal numbers into 64-bit number, i.e., decimal
> > > point numbers with pre-defined scale are parsed into a 64-bit value (fixed
> > > precision). After the decimal point, digits beyond the specified scale
> > > are ignored.
> > 
> > Whilst Rodrigo has already replied to say there will be another version
> > I'd like to request final feedback from those who were involved in the parser
> > discussions.  
> > 
> > They got very involved and I'm far from an expert in the right way to do
> > this stuff.  
> > 
> > I don't think David Laight was +CC so I've added that.
> > David, Andy - I think you two were most involved in that discussion:
> > Any objections to the end result? 
> 
> I already said a few times about the naming. I do not like the kstrto*()
> be semantically different on how they treat the input. Second point is
> to avoid code duplication, but this one is less of a concern since the
> new code is in the library close to the other potentially duplicate code
> piece and hence can be addressed later.

I suppose I reached into kstrtodec64() and kstrtoudec64() because it aligns
with your expectations for kstrto*() semantics, no? Those include:
 - overflow check;
 - extensive input validation;
 - optional '\n' in the end;
 - mandatory nul-termination.

am I missing anything?

> Having the test cases is a big benefit, and that part I like the most.
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

-- 
Kind regards,

Rodrigo Alencar

