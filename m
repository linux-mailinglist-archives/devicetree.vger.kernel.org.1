Return-Path: <devicetree+bounces-257836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMwOE56icGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:55:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EC27254C2A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:55:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 556C080B02C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0479B441043;
	Wed, 21 Jan 2026 09:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Iko2czaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC353A7E08
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768988499; cv=none; b=gx8vDIGuRDx+ruO6/o13K409oa4LXG+4D2OfGnDRcsxWfgPnHJli/UGsLpWvKgz7ig/eYAmoG7G96/OJfDQxQgnTwbWBLigMxXkZ569wO9msu3geF96dKEE4j9w35VOY/OfV7MZpmVgcDi2sxwz0RJdDKU6eg38wYzm0n3ROajM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768988499; c=relaxed/simple;
	bh=bxzThV7tQ3Murw+misd2L3l9CTOTGBERVGRAqk/Z1Uk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I95aB4wTW+6IyoWRDuPVwrQ0sM6Ak5LEHVf0qlfJQCkoEB1us2cR3pgMnKVs8PpRc/0spGHJS0xxbbJBb7a0RernE5TLTgZFPnVAbRBuyszIBP/gAH+il3MVQmo9LECMGWiULFkYEmWMGnybJQlFIavvGD7QynX8X4EhK62TSPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Iko2czaZ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so5946395e9.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768988496; x=1769593296; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UQrmNmrNqyC9vSBp6JJ3q8RaAwfn1AOiBhLRYJqypV4=;
        b=Iko2czaZE397M8iccteVHSU6MrTe9cognIzK4Ju9MJbsLTR/wj2VtdFhQMHDIvFhgX
         D7LX/uuXICJsFLnCMB/qKuN1gGAZmjpLWNjuRQh4CZcKRxaKzLI1CxoPFntNaQANakTe
         AyTmjSFsHpeFbinXSStjIvwOKKtxK33zIFIAqcfugCOF9vKFOWZvuMAwV5rfQ9Gvm6OZ
         xCscRXA102u/cEUwUsiuSktcvo+nd53WfeFosI2ctKgcl3o7xyxxWTeFfUDObYuc57Zj
         0IXlubU0gteYtCX1fgxhXk7iUrbIO2gWNrbvBZ8EUN2ynUl1Db8CVRRGhmVkY4ZRuSqV
         J2Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768988496; x=1769593296;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UQrmNmrNqyC9vSBp6JJ3q8RaAwfn1AOiBhLRYJqypV4=;
        b=Q9aZOZo22Kbo8+RsQQmuuC4E6o2jUDIeEvbnLm73trYsytcBJa3uqv47Y6fb4l2PTz
         vWcOGB8H0P4CYcjOg8kK4tg2w4bJf7ioJgZCbs29ouhfQ5PGzWN06AtZDmfiqCoOCKGo
         9lGJb9MaWcihKBcONAjsfgG8b3DkTy2HPYEG9jsRuw1crpmf0gFfas/wLHZT4mrh25EP
         pP+Vn3Tms/7pHIHyRqLW6HMmj4hbOpxvw3FIHg1RYaSINKnYO8cHchGCc91xne7gLTGc
         el9mh7rZslXWMu7oJqeVfCQMJzh5mZjZhC+5WSa2sXIVQrLSE4PkTcu4dlwcYmNjJuAO
         xTEw==
X-Forwarded-Encrypted: i=1; AJvYcCX0g1nP4fNB5bmSgFZAhSPPV4KmkVYTblwp/mlnd3KKIEFaVP4A5b5acZGkpRHD1BH2W55KzcYlEwhI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/dOHb86N2al/b15QZ+0/7lC5iIU283FNEzr3XLuwF0wazfy6R
	VYgOzAWO3Ain6Sd266tesImwkNf07VUkQDDXJgGfQLDZhtrdu2VXlxmD
X-Gm-Gg: AZuq6aIQHVvMOmP9A+Qatr4oFRPfSOGB3AlHWh5QEliFpVx7Ki4/8U97qMo5QjEWp3U
	PuKWAcdzvhfMKKGrvJ1A7Le8N5e/EKSZecooMziuFvewpjhU7m8QU4UNJBy1fiaWQe1sMvkjMgR
	6wUSQrWRy2H0nfwP2owbeavwec5ztcsprfwRp0CTNJl2K8zhD+3Bimidk3JyHCwUt289oM/OkU/
	Fe9yuJ3GDGljGjEx9e1nGfU8EydEtHQ5uruErU2iRIypxZkSH39EvLXVt1vV5JNJgO+G0OWZajG
	RMfc9T+b4K1HozMYboP1EdvTI0HviEe6rGjQx3fes7JLcr4uC1uNUnh1f+QHa3+3iGcwnO9EnT6
	H784U/iG3F5sK7B3Kge9KJKVcUTQkym9cGB6ZgTiGhYqgrb1/jIVBfcfQhxEVK0Jzbpi18BomAK
	bj0A5kXnIVmX0U6bP1FLjaklAPMwbET/BiqxdHzYu8zJNMuY+JNNnSSEzFKt4WgWEdPEpqVl/er
	KxJ
X-Received: by 2002:a05:600c:1f86:b0:477:a289:d854 with SMTP id 5b1f17b1804b1-4801e53ca36mr276279895e9.5.1768988496073;
        Wed, 21 Jan 2026 01:41:36 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8caceesm297259935e9.13.2026.01.21.01.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 01:41:35 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 21 Jan 2026 09:41:25 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, 
	rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v4 3/7] iio: frequency: adf41513: driver implementation
Message-ID: <kmdqcaewxxg7isappgfxuf5ode5fepbywrdriksmvrzmaykcjd@crpr27tt3bmf>
References: <20260116-adf41513-iio-driver-v4-3-dbb7d6782217@analog.com>
 <aW3dxuelYDM67pqZ@smile.fi.intel.com>
 <texwv5s2tvcy34bwr4iruj5xofmea663pwletmpqpuh66zulmv@m7qvjgqbhalv>
 <aW40ylvMwVhqNQMw@smile.fi.intel.com>
 <hgy3bcrqqsvt7pobhnzuvwzhb2taetpxltkaxpigmmlvmlirod@v6anhmrsvv2r>
 <aW5kk6K30Izckvg5@smile.fi.intel.com>
 <e5lcg5kkey3c6u2l4rlzzpolp7qkudhcofyzcx5s2tjbh2iwkg@js3fisv23zyj>
 <CAHp75VepcSZo_E4_UxhKRfHrMFDd7huJg14m8=6zVo4ENKFXkA@mail.gmail.com>
 <vvdk3whhwua73g63eetnmn46t2cpbpkzzkx7m6wsbverp7gcvs@mi7cipis3i4t>
 <aW-Fai68pk1tAeyY@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aW-Fai68pk1tAeyY@smile.fi.intel.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257836-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,vger.kernel.org,kernel.org,baylibre.com,metafoo.de,lwn.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: EC27254C2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26/01/20 03:38PM, Andy Shevchenko wrote:
> On Tue, Jan 20, 2026 at 01:07:49PM +0000, Rodrigo Alencar wrote:
> > On 26/01/20 01:24PM, Andy Shevchenko wrote:
> > > On Tue, Jan 20, 2026 at 12:43 PM Rodrigo Alencar
> > > <455.rodrigo.alencar@gmail.com> wrote:
> > > > On 26/01/19 07:07PM, Andy Shevchenko wrote:
> > > > > On Mon, Jan 19, 2026 at 04:37:09PM +0000, Rodrigo Alencar wrote:
> > > > > > On 26/01/19 03:42PM, Andy Shevchenko wrote:
> > > > > > > On Mon, Jan 19, 2026 at 11:21:59AM +0000, Rodrigo Alencar wrote:
> > > > > > > > On 26/01/19 09:31AM, Andy Shevchenko wrote:
> > > > > > > > > On Fri, Jan 16, 2026 at 02:32:22PM +0000, Rodrigo Alencar via B4 Relay wrote:

...

> > > > > > > > The current implementation is kind of a stripped version of
> > > > > > > > __iio_str_to_fixpoint(). Would you prefer something like this, then?:
> > > > > > >
> > > > > > > Do they have most of the parts in common? If so, why can't we use
> > > > > > > __iio_str_to_fixpoint() directly? Or why can't we slightly refactor
> > > > > > > that to give us the results we need here?
> > > > > >
> > > > > > __iio_str_to_fixpoint() only parses "int" chunks, adf41513_parse_uhz
> > > > > > was modified to accomodate the u64 parsing removing unnecessary stuff.
> > > > >
> > > > > But why? The fractional part most likely will be kept int (it's up to 10⁻⁹).
> > > > > The integer can be bigger than 10⁹?
> > > >
> > > > Correct, integer part of the frequency value goes up to 26.5 GHz
> > > > (uint_max is approx 4.3 GHz). Also, with the dual modulus, the PLL can
> > > > achieve micro Hz resolution.
> > > 
> > > µHz is not a problem since it's up to nHz.
> > > So, the difference so far is the integer part that can be 64-bit.
> > > Again, can we factor out something to be used for this and for the
> > > __iio_str_to_fixpoint() cases?
> > 
> > I am not sure what you are suggesting,
> 
> To make changes to reuse the code.
> 
> > but I am avoiding changes to iio core at this point.
> 
> Why?

I understood that core changes would require more than one user
supporting the change.

> > If any other user needs similar behavior,
> > I'd say we would need to have __iio_str_to_fixpoint() implementation
> > modified, so to create a version of iio_str_to_fixpoint() that handles
> > long long variables. Possibly consuming simple_strtoull instead of
> > doing the manual parsing.
> 
> That's the problem here. With Yet Another Cool Parser this all becomes
> unmaintainable very soon

Considering that the need for a new parser for 64-bit parts is only driven
by this specific PLL driver, I wonder how things become that unmaintainable.

> (basically as you said when new comer needs a third
> variant of it). This is not good. Instead better to create (amend, expand)
> existing test cases, split out a foundation API that parses 64-bit parts
> (maybe even for fractional as well, dunno) and evolve a needed (sub)API
> from it.

I don't disagree with you though, I suppose I will need a green light to
move on with this?

Kind regards,

Rodrigo Alencar 

