Return-Path: <devicetree+bounces-257414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKRMNCp2cWngHgAAu9opvQ
	(envelope-from <devicetree+bounces-257414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:58:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581660218
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 08D7464BF5F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FA4842DFEE;
	Tue, 20 Jan 2026 13:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d76yzj44"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE951426D04
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768914484; cv=none; b=RS+lxq66cZw5GdYz5CZziOp78hhjfltskCXjaMDELkFQJpCleqSxz4j0AWfsbDT7MMx8QhWdLY5RyeDbx3Wyw0W9Q/3vZWzgkeGx1j8XCbnDoF4El5v5t59h1n06E/ZaqSTZqKVwZOTuPxRXCUPV84fbhfLU5bS1oF2k5cPbcTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768914484; c=relaxed/simple;
	bh=bYMQBpe4FCapv9lWaTVjMR/wpnPps8cMKnJ2IUEsQXg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oYZ4feTigvcqVozrKmxQ3SV5qGaIQj/9GSqqZUfOJQJOi84kLoPkSU4bKfCBqpRo4/pwz76ekI4m7dBx7GriTHHjbL/riyyy/AL/LkNgCdbwNvFRmRfAHzkT/l7DRM0qYbcPFlP2vwPepUHZ4R7Fo8pfU46RAforGgC4zYLa3WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d76yzj44; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so2806785f8f.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768914478; x=1769519278; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SCg4baVejIBy6xrHVH6t/kFxefY8hFGPXKceU7pFofU=;
        b=d76yzj44o/R9AJJiUfKn6x9P5vyO92Yx3QGXamQkGKFEYkHs2t21tPPD4RbWqvoPvU
         QnEZEMRTM0n75T8wDsmP4awtJn/ppMwns/oBfYqtlA3RU0uhNRVWkY66WuWtnDo2Uv/e
         X0wLVAAu5u6vfR2v/Mx5sIkrQR95qFJzdvLg/7klzAmVmWMPlYyBlg+nXP97gYOAXZWY
         yUc2ZMc7U9FuHhypKLgkJ0Igg+PLTnnTQ9QQohwiZs41VpJ92r21RXfxzZXCMaK223EY
         wOeIsG34SMhVJOs6/ahwfSchNfusd/RmAZ23sYlTs6FuPBLvarBmpj0/Wzmq0ccj1YlQ
         Fn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768914478; x=1769519278;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SCg4baVejIBy6xrHVH6t/kFxefY8hFGPXKceU7pFofU=;
        b=P6NY0u7EEyzhmE4VHFGUtsgtSF3Uc/pgN55DACa7218ri70XMFmfCO3xJzDrCwGxmE
         u7ytGdKAjknUi+eGPCZi+6fzielsD/n+7FUL4fq3a/3zVuVzXK2bUY2KMTnkbAnPj5s7
         IQ/NesrPG7XuK9CJyzZPsxFElLxssQIGk2IP6dTlttQLinEixK2sb9WO/OJJCJzafIx+
         jrRWoqNcdffJZWwyKKjyKkANvHexlybfqzuh7bNtVLzaPtRiJ4QCIxbImfUruCHQcQFW
         cJ8hrfxL9Jo1lJRVtG1sUh9cyNveZ911azAQJ1/O9PX4gHMnr3KwWT2gBt7j1cypHjsq
         VKoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlO6FW6dNnQs/VSZJvW6SqdiVLCTeENz7EIfgYRHVQ5dZC8JwT0BjzBKpvPQEkm9kj6hI5wOAtIwgK@vger.kernel.org
X-Gm-Message-State: AOJu0YyykEQjwLnvPU836zaQnFnXkixgiRf65KeR1O2DoXnJhMPzxZw+
	G0VXdLFlztljJb9PWqBWVGBMtdBxTT2G9sEgx/sjwStAH6oplUSPnKsC
X-Gm-Gg: AZuq6aJKrwyrJc62rR5p3uUvVROl/F1z3aBX0YjDDgNGMtozjwodeFp8+RLrm4eSpx3
	455OgNT65/ga7eGDWB4UqrlSbV9jQyYGDmEMbu5s2W2y12d14pbmmGpEq6J96s9jAfSHtvHA8a/
	wY5sjSCOq9N/1kCQgXK35DBMCqdu7c2MqB2O22HwXw6KOGfzTMQFswao0FzA8tSanAk8jbLZy/W
	2yURDyduKsKfVFxsJgrhPuWSI+OKPpaw/tgaZvySbhMQzflINugc9tZGM6hnYPQWTzOeBkeoZoA
	0amYKVCfDrdcXN0gT2sZG/H1xDoedZZYnwlbExG7xv90G9LO0v57dOFXg5/5SoAQI4ob0g8Vp09
	ZCWYSxlRQMPW2XEydpMmNHuEjfs/o+fvyEQxAzwCrqKvh+OaUME2XribRpmcgI7lpAF2OzNx2GW
	GPu0ttRQOA2drLvo3zK1851aT5rxcz3p7eWSSAS3v+L3UCxNoqiu6eleQl88FhqXmnIIIUpXKKS
	iD7Z7OtyPWSTKA=
X-Received: by 2002:a05:6000:2486:b0:432:5bf9:cf2e with SMTP id ffacd0b85a97d-4358ff3efb4mr3038834f8f.13.1768914477693;
        Tue, 20 Jan 2026 05:07:57 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356992201csm30156484f8f.2.2026.01.20.05.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 05:07:57 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 20 Jan 2026 13:07:49 +0000
To: Andy Shevchenko <andy.shevchenko@gmail.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v4 3/7] iio: frequency: adf41513: driver implementation
Message-ID: <vvdk3whhwua73g63eetnmn46t2cpbpkzzkx7m6wsbverp7gcvs@mi7cipis3i4t>
References: <20260116-adf41513-iio-driver-v4-0-dbb7d6782217@analog.com>
 <20260116-adf41513-iio-driver-v4-3-dbb7d6782217@analog.com>
 <aW3dxuelYDM67pqZ@smile.fi.intel.com>
 <texwv5s2tvcy34bwr4iruj5xofmea663pwletmpqpuh66zulmv@m7qvjgqbhalv>
 <aW40ylvMwVhqNQMw@smile.fi.intel.com>
 <hgy3bcrqqsvt7pobhnzuvwzhb2taetpxltkaxpigmmlvmlirod@v6anhmrsvv2r>
 <aW5kk6K30Izckvg5@smile.fi.intel.com>
 <e5lcg5kkey3c6u2l4rlzzpolp7qkudhcofyzcx5s2tjbh2iwkg@js3fisv23zyj>
 <CAHp75VepcSZo_E4_UxhKRfHrMFDd7huJg14m8=6zVo4ENKFXkA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75VepcSZo_E4_UxhKRfHrMFDd7huJg14m8=6zVo4ENKFXkA@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[35];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 6581660218
X-Rspamd-Action: no action

On 26/01/20 01:24PM, Andy Shevchenko wrote:
> On Tue, Jan 20, 2026 at 12:43 PM Rodrigo Alencar
> <455.rodrigo.alencar@gmail.com> wrote:
> > On 26/01/19 07:07PM, Andy Shevchenko wrote:
> > > On Mon, Jan 19, 2026 at 04:37:09PM +0000, Rodrigo Alencar wrote:
> > > > On 26/01/19 03:42PM, Andy Shevchenko wrote:
> > > > > On Mon, Jan 19, 2026 at 11:21:59AM +0000, Rodrigo Alencar wrote:
> > > > > > On 26/01/19 09:31AM, Andy Shevchenko wrote:
> > > > > > > On Fri, Jan 16, 2026 at 02:32:22PM +0000, Rodrigo Alencar via B4 Relay wrote:

...
 
> > > > > > The current implementation is kind of a stripped version of
> > > > > > __iio_str_to_fixpoint(). Would you prefer something like this, then?:
> > > > >
> > > > > Do they have most of the parts in common? If so, why can't we use
> > > > > __iio_str_to_fixpoint() directly? Or why can't we slightly refactor
> > > > > that to give us the results we need here?
> > > >
> > > > __iio_str_to_fixpoint() only parses "int" chunks, adf41513_parse_uhz
> > > > was modified to accomodate the u64 parsing removing unnecessary stuff.
> > >
> > > But why? The fractional part most likely will be kept int (it's up to 10⁻⁹).
> > > The integer can be bigger than 10⁹?
> > >
> >
> > Correct, integer part of the frequency value goes up to 26.5 GHz
> > (uint_max is approx 4.3 GHz). Also, with the dual modulus, the PLL can
> > achieve micro Hz resolution.
> 
> µHz is not a problem since it's up to nHz.
> So, the difference so far is the integer part that can be 64-bit.
> Again, can we factor out something to be used for this and for the
> __iio_str_to_fixpoint() cases?

I am not sure what you are suggesting, but I am avoiding changes to
iio core at this point. If any other user needs similar behavior,
I'd say we would need to have __iio_str_to_fixpoint() implementation
modified, so to create a version of iio_str_to_fixpoint() that handles
long long variables. Possibly consuming simple_strtoull instead of
doing the manual parsing.

Kind regards,

Rodrigo Alencar

