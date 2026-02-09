Return-Path: <devicetree+bounces-264049-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJX6JEn4iWn7FAAAu9opvQ
	(envelope-from <devicetree+bounces-264049-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:07:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 385A911190E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:07:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 95C953005A9A
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5749E37C106;
	Mon,  9 Feb 2026 15:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TsnS4VfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B761A2545
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 15:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649670; cv=none; b=RThZn00XVUwIjiHxl3VNzYw4W278QCDSbyGSnp2/skLjlpXqUHJ7BLa1ZHDCVv/OnPaiksOYrVCoLDUOrXEF6HqAx7Llivoldq1UYhVQYtLwtugfVVoZRafhVagdwkdNTVDkuFA77XiE3AhDzA//CTZInvBfhrtELpQ/TIc6dc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649670; c=relaxed/simple;
	bh=nKQd8+9i68Gtr8N+mWaKdJG1XrBMfVdStaWsoSmWIaY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qoNE1+5haVgpGkfH2rniQezlxXnKEahbODi0i1z7Ja8oczNtI/apdmVIzjblpgGDyAxU/DpDamx+9XvYJtL6DXYq5iYPSAkwWOOUETKg6hXHj2ueg0i/3VTnYGAtHfzMys7++BpaEjFSyyimsac29YMaQWt6LWGLhtx/CP8lfwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TsnS4VfO; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-794fe16d032so36018587b3.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770649669; x=1771254469; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3umIUrvoVFMcqhsX0diux6puJqsZRUyyQBsPVdUoAFg=;
        b=TsnS4VfOjaHW/R5FuW4NeH/WVXsuXY5RAb+PWS/OfGS5pV2pWXJ/UhbB9ml8hyCGQY
         TNRd1YSVrN3/pSxznukBawS+UuJum4CoT6q1kgP3m0xW5qTX6qjWSgxR/ZXOlu6NAXYP
         WQ73IhzI3PwKozstsiSbMTBI9CTfV+0WkYiXPjKXvIA85tuIRUwo3eKEKhrECAziHgXy
         UffzRpFNcbaTneYTIFde3bucAAcaGmRGmmruaEEjNrjFnzShcyDILkQP2dehDanVyayG
         3T5IIbd14H8lBOMiHEYHcjq3VWl81iF949ZzsKe913a09Pr3hO5mJsaKL4BRXMBvsptn
         Ml8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770649669; x=1771254469;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3umIUrvoVFMcqhsX0diux6puJqsZRUyyQBsPVdUoAFg=;
        b=BRxmDTxYbDZtRU0bTQ5NWQo0RGdfe7Do5WcVnvVf07qaHMrLsh0Ln2y6uHIL05CYTQ
         aVBYaw94CW1xfK/mSceslNXfjgrn3ixPUzj4oMvzOp0Jf8GCkwciVAMCZ5AlpoBs38mB
         Hxdqsd4r50oOZQCqoLPuKbW00n/ApDiLbCw1UjJh10DwK/DlOaHZib5O3lIhQvnYvipU
         xgdnpE2aTS3dh+KjYJPYKcJGLVot+kGnoMTGn6F8qbzGmAcC2IGe3FC5ZaVL0NXpysBK
         z17akMjuliYXzed5jVn7205Ld08j1xhfNnFuoYGteFW9G4GkMoSiCsjBQ/0g8Q5SW5hN
         XiNw==
X-Forwarded-Encrypted: i=1; AJvYcCXkZ0/qz340iiqaHrFvmEHhbFJgJzGrl+27p6LCH6pmd/rGvldrYn8toLGACJs4Q//HN1Eet4Tze7cr@vger.kernel.org
X-Gm-Message-State: AOJu0YxLUsCni6Ke5NGf/qryX9jUO9eoCMuJnceUn8UfcAgV34eOVvjn
	epewmr8mxC/BOL+7V7ntLcAyO0tLqRr2b7Xki/8GZGUHfSzQL3OiWJKT
X-Gm-Gg: AZuq6aItwRPRq8my3UP9rSAl03Eho/lQxAYVb7glBqDhe96Y3Uk2uUUB3aFmwVWXCNR
	NaS4Re87ZbjRVJ0zpWNjKygM32kbwMk18xl2P8lepfzHVrMaREGZLwAZbf2OX9Uo28MK7EyuIKm
	2Vfcpw8YEut08+7RhBG5lS2fJb17X0jS4zs7r9dOpkuZn5+i76r7zZ2uCbe260TnC5xatcXGrjz
	HpLqNlj86Q3xT+D+GKJekqpsu1s2l1tc8u8PE4HXw711N294qm60+d4pcGpU/NsHXj8Imhj6aiF
	L0HXea2PYvi7H5EijygCyAnkJyGwXXRTeZK4Cbv1hWkWNDCaT6kJVjKquZXQBSTfEFjYQNvwcma
	QHt6KGrKoSMxqWJFbxjJ90i4vVKwuewaYmKsien/CdGmQ0vYd6U2/x4Mkdv17w9apPBntcLKkJj
	4KdEOWHFLsjF/1pCcCf2rt
X-Received: by 2002:a05:690c:399:b0:78f:c2f3:141 with SMTP id 00721157ae682-7952ab20ff0mr124248997b3.35.1770649669011;
        Mon, 09 Feb 2026 07:07:49 -0800 (PST)
Received: from localhost ([2804:30c:163a:1300:9b68:dd2c:feb4:459b])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7965705d5a1sm7741137b3.46.2026.02.09.07.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:07:48 -0800 (PST)
Date: Mon, 9 Feb 2026 12:08:15 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net
Subject: Re: [PATCH v8 8/8] iio: adc: ad4030: Support common-mode channels
 with SPI offloading
Message-ID: <aYn4Xxj9TIXvYn7z@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1770403407.git.marcelo.schmitt@analog.com>
 <1f05069e25e9ea28db2cef9fa3856456be3c2614.1770403407.git.marcelo.schmitt@analog.com>
 <aYiXjCpiMQ_h9Ao4@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYiXjCpiMQ_h9Ao4@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264049-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marceloschmitt1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 385A911190E
X-Rspamd-Action: no action

On 02/08, Andy Shevchenko wrote:
> On Fri, Feb 06, 2026 at 04:02:42PM -0300, Marcelo Schmitt wrote:
> > AD4030 and similar devices can read common-mode voltage together with
> > ADC sample data. When enabled, common-mode voltage data is provided in a
> > separate IIO channel since it measures something other than the primary
> > ADC input signal and requires separate scaling to convert to voltage
> > units. The initial SPI offload support patch for AD4030 only provided
> > differential channels. Now, extend the AD4030 driver to also provide
> > common-mode IIO channels when setup with SPI offloading capability.
> 
> ...
> 
> > -#define AD4030_CHAN_CMO(_idx, _ch)  {					\
> > +#define __AD4030_CHAN_CMO(_idx, _ch, _offload)  {			\
> >  	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |			\
> >  		BIT(IIO_CHAN_INFO_SCALE),				\
> >  	.type = IIO_VOLTAGE,						\
> 
> >  	.scan_index = (_idx),						\
> >  	.scan_type = {							\
> >  		.sign = 'u',						\
> > -		.storagebits = 8,					\
> > +		.storagebits = (_offload ? 32 : 8),			\
> >  		.realbits = 8,						\
> > -		.endianness = IIO_BE,					\
> > +		.endianness = (_offload ? IIO_CPU : IIO_BE),		\
> 
> Hmm... This is interesting. Does it mean it's designed like this for any
> offloaded SPI case? Wouldn't be better to follow the same endianess in both?

Yes, as far as I'm aware of, the only SPI controller supporting offloading is
SPI Engine. And SPI Engine offloading pushes data to DMA in CPU endianness.
It would be easier to deal with only one endianness (BE in this case since the
device pushes out data in BE). But BE is currently not an oppion for offloaded
transfers. Making it IIO_CPU for all cases/setups would make it unsuable in
some setups that don't have SPI offload (e.g. raspberry pi only supports 8
bits_per_word would push data in BE to IIO buffers). Ideally, we would check
what are the endiannesses the controller supports for offload tranfers but there
is no offload provider other than SPI Engine so driver have been having it like
that so far.

> 
> >  	},								\
> >  }
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

