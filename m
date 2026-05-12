Return-Path: <devicetree+bounces-296095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBYULMjkAmpEyQEAu9opvQ
	(envelope-from <devicetree+bounces-296095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 10:28:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C3451CB3E
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 10:28:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BAA83075390
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 08:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA8D5492186;
	Tue, 12 May 2026 08:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="r0ZV+IlB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C15367285
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 08:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778574216; cv=none; b=BGZlYxQ0oGIYQAqb8Tasy0iO/krz6V9WKpuUqCvPYDvXGA0hNe9aOsX2tUnK4PcNm05j522+19m7X3w3RxebQRDLPE7RXZC9G2IvossCA7dhKtcnTLeIaFrhvh5yt7I2Gqvk5wvVIxzByAdBxO2Rh2OsymhSivfK+j2xyMVK3Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778574216; c=relaxed/simple;
	bh=+sbc7iaL3aXBLrJpJnf/nT4NQhBQhxeKiXrJGnC5nZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lWtbXLxbPpDhE7CTv0hiAPFo5LCz/b7L+mIFnzPyUjcuz+VFvl6R8vwQom6XJItxPVeLt5Aw89uOPI9rvIqcu0sRswnQN0/KCn11lffjKjwWkfzR37rgFULVCK/EtqGvy2OmZMzTM205DlsGaDTuHPQup9GYvQnaTNpRWy+1oyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=r0ZV+IlB; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43d7e23defbso3036047f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 01:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778574214; x=1779179014; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aljjnhKjR/iBbI/t8/f/eA69DSnDJrgp0J/o9iJh64E=;
        b=r0ZV+IlBAiZNkXyvmJsWtLdUk7AQQ/hJMrT0LHjrNGxL+0g1g5KhnlZXqqC4kQCTW2
         UFsqL3sQcCVMOzI53wP+I74P18F28gI+DfwcBtRvxKNie2fFkdZqHTl2+jGQgDiHPqwK
         3FpBxNoDZaq/ELfRCzHlQSf8s2+zb4RFURmwgsO36D99LU5G3RJfAUJsn1qoofS1/E+y
         kZXv2/guuJG1Ebe/5sgu0sTtYXrDoouaMbPNYVjaMAzkToV9NAGti+FRMHT8LAbbM72T
         YkmIUPZxuZqTtJLLoGBDxoA3mGoSUCH+Hy4w/y8i7CEFDgHm2zrnLoLQFMfy7LH2aPVs
         GNyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778574214; x=1779179014;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aljjnhKjR/iBbI/t8/f/eA69DSnDJrgp0J/o9iJh64E=;
        b=MVx2618p39kaHyutwmh2RErARGqMThhf5cRLYnM14R2tAFfb3uN+5rJbyZ9CP61KV1
         QXjnChTkpZ/vtI/Ggfwjm8yj0hvIqMbvNT8ltTZjbCg8vSclR+uBalN6v+/fPIxXqoQU
         sYuAzOJB9LElOtWg0et02Hz7q0ZLZC5XHJ4b9qrIMRaCFMvZJAEO5TZYWXxNo8efC8CQ
         9G5DimElFSWxN0v2nwuZVwEZ4P2bauOM70LCnVkU3CXMeAVrp0D6eAY1RAMlD4RqN/7z
         HcupcQBGk4oAaRI/ruVL1bTevIl5hXNutdUsk6JW5MFgIlOmakR8m4+Oo3+JxMJt9342
         s7Qw==
X-Forwarded-Encrypted: i=1; AFNElJ+l5m1jWmPT9vWolEmIRh9eWlaAiCT4HZaO8Fvyr37xNbrCe4G+fE/zhjdyAU72Bty7LRC1wq6OSGs2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu0cTeu5ioM/8Ke4wxsGJeILwnzBZ+oa8bE9rQAsLDbHI1WSI7
	n9FJF0Ja1U92EgmDfaYzgD5ScbWZNXHA5Ke/58jQe9nfz/d6KbJULfbF
X-Gm-Gg: Acq92OHvzJD/qYzeT3HC16XgZw01lnl5nRt7d76Iqzj76tt2UodhyXRI5fWm+Gc4enT
	DO4MLKQwJ68eCih7djdXaB5D61ZZAgtr1l4U1KpbR4F72D0LQe2xD33u73Tdxc+dDk/cYfO/1Ab
	A0KvDkg4PA9ZGDSAZIpNEzq4PtqRuWQ93RqzU2YuBrUa9H4Bo2YLdH4NwY78r2lQzIqnGHQbQGu
	52xXfJ3XmiOcNOZMf9OXomMwI3c8ai0GM9dY/gw/GkOZN18Yydd0afyndsVtuu+BXi2NVZG3akO
	cBD8UhdzRhpJFAs+j+XIONqMdfRlBDk/hElQwrCwuvg5pDIpChomaaZfprguqUNZuHVLqSix+Lr
	Y9ghhI8IX5iJaobp94zIBWAvyOHCX4opJ49QCBFjd0hzvGjAQIfligcxqtB2WAj65+Hh3ElxnJm
	YObfbr3hBqUr1JlQ==
X-Received: by 2002:a5d:5f48:0:b0:44b:8fb6:9a2e with SMTP id ffacd0b85a97d-4568c19d154mr18872057f8f.20.1778574213510;
        Tue, 12 May 2026 01:23:33 -0700 (PDT)
Received: from nsa ([185.128.9.145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4548e6a68ebsm29359598f8f.1.2026.05.12.01.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 01:23:33 -0700 (PDT)
Date: Tue, 12 May 2026 09:24:27 +0100
From: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
To: "Stan, Liviu" <Liviu.Stan@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, "Hennerich, Michael" <Michael.Hennerich@analog.com>, 
	"Sa, Nuno" <Nuno.Sa@analog.com>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: temperature: ltc2983: Add support for ADT7604
Message-ID: <agLhb-S2ISSjaopc@nsa>
References: <af2no3bJA9MSjXvV@nsa>
 <20260508121441.39ad9f65@jic23-huawei>
 <SA5PR03MB83778AB3C41E0AF56EC754F8F63D2@SA5PR03MB8377.namprd03.prod.outlook.com>
 <af3oezNmmBhI4Yu4@nsa>
 <SA5PR03MB837710AE7FD8B8FFF138B7C5F63D2@SA5PR03MB8377.namprd03.prod.outlook.com>
 <af4LCQiqNaiMzFkX@nsa>
 <20260509154600.02e2d11a@jic23-huawei>
 <SA5PR03MB83770D945E92C40A74D9C0DAF6382@SA5PR03MB8377.namprd03.prod.outlook.com>
 <20260511121820.3be9e635@jic23-huawei>
 <SA5PR03MB83772A1A57DC052CB21B9187F6382@SA5PR03MB8377.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SA5PR03MB83772A1A57DC052CB21B9187F6382@SA5PR03MB8377.namprd03.prod.outlook.com>
X-Rspamd-Queue-Id: 11C3451CB3E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296095-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 12:02:31PM +0000, Stan, Liviu wrote:
> On Mon, 11 May 2026 Jonathan Cameron wrote:
> > > > Ok. So what are our options here?  Present it as simple resistance and leave
> > > > userspace to figure it out or add a new channel type? To me feels like new
> > > > channel type makes sense.
> > >
> > > The current approach presents it as IIO_TEMP since the chip outputs coverage
> > > (using the custom table interpolation) via the temperature result bank, not
> > > the resistance bank, but I agree a new channel type makes sense. Should I
> > > create a specific type like IIO_COVERAGE_PERCENT or would a general
> > > IIO_PERCENTAGE be better?
> > 
> > For ABI purposes we don't care where it comes from.
> > 
> > We already have some 'ratio' type measurements like concentration which are
> > percentages and similar to those I think we need some indication of 'what'
> > is being measured given it's unit free.  Hence IIO_COVERAGE_PERCENT seems
> > the better choice to me.
> 
> Understood. Will do that in v2.

I do wonder if a complete type is what we want? How will we present it?

in_coverage_ratio?

What I'm not too convinced is that coverage is relative to what? Well
it's a percentage so I guess we could not care and leave interpretation to
userspace (to know which device is dealing with). Still I wonder if a
new iio_chan_info wouldn't be more appropriate? In this case applied to
iio_resistance. So something like:

in_resistance_coverage_ratio

So it's clear what physical quantity coverage ratio is affecting.

Thoughts?
- Nuno Sá

> 
> Thank you!
> 
> Liviu

