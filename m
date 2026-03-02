Return-Path: <devicetree+bounces-269891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INUyKOtmpWmx+wUAu9opvQ
	(envelope-from <devicetree+bounces-269891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:31:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 083C01D689C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB7063070157
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1854F396D2E;
	Mon,  2 Mar 2026 10:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cXwd6fDx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67A5379EDF
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772446976; cv=none; b=p1CEtg5E0IVDDNUqI/Vr3va0ZAYOM5c+QhIRw26RCZLLlBvFTwXSmZUvjvnmj38NHTlCQMW1w3lt8e58I9Qkt+IufdiuQho7EYFlVhekbN7SWTAZo/F0o3dVvHlZBwLbdbGdtPho2DdP1QgUEhULgfk0ck92zRE84YvFKZY67Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772446976; c=relaxed/simple;
	bh=J7bNN++52MtPbiftgLapTMmJCVCOA8RSnKRGQal5Pis=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bQQIKm3ITAzNOjRchW09jV4OX7OorkwYQHGeKmmUaQxpx4j7mymd9CPnHTcKzSMjpXMBUFV0GHT9AKu+kMzpSPAIFmD8kYj8/6JFTthiJeIb6vFbHE2MGgmmOAfemA76fIXcAwdfl6CWg+H8czsYXUTc2tOGZ6TCSld6fFSdZEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cXwd6fDx; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-89a05955720so453886d6.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772446974; x=1773051774; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2oEf6kTo+qvuMm/iqeLErDs82+PDnWEosmtOR9rmcfM=;
        b=cXwd6fDxTgoxQrcODmYvNNZy+bDJoWKr9FJn/MJmt7YTnsv4ZTlOSCEAaH1aLLygbk
         6OSTFRirkWXZ9XSJTP0d5i/eFWKrqopV2j+t+AwMQWTdOpQ6CoEbu5VC1xbnS1BEQFNm
         ONz/XaDSTYlWtcRnBKXcMc9285G6mLIS5yEL+ZXqqj/LsAqxGTQzWyzdsK8wvRzhmN1p
         Ba8Tvu4FJXNyAzvBTv12+CqjqGtbWGVxg/OjFO981hzboqWWogVVdhTiggQQiVhT7BiV
         sv/RNxVfrAuwrJ2XJIoJakTLrXNZG524eX/OdnuHV32o0zuFM6U65trzCfhlXd5SPgnU
         PLhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772446974; x=1773051774;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2oEf6kTo+qvuMm/iqeLErDs82+PDnWEosmtOR9rmcfM=;
        b=xIC5Ra9ISPOVNSEXp55TZIk+ovxLb1Tq5m2X2ckZn7lpm5wGhrh90dj9PzuRdhNci2
         nUWTh3vGl7APMxpe9G956GOx495acb220ZHGTkAEOMy0AA9waZ6gWFgK6HTV2C/ZnJOF
         Qlllchp5YPakYB6wJjO3j6iL9Q5pdis4aj8R/30RdLHWNnGiTNpYJBVxTZNjeduwfvvt
         ly1q+6GD0AQH2UNVBBgOFZXVBx72NLCy+z9s7gpggh8LexbzeToLh97DuAr5zkO/Jc+l
         axrYTXULG2SVvUl7dIOJO/YMzqJvLUP8BR4FqElXnOJsJGJlJJ2fNS6PwB+4oGh3H7Oc
         uX7g==
X-Forwarded-Encrypted: i=1; AJvYcCWTtefWEPBi8WjwB/S1trDLeGRoupe/dwrgdam6hjKEWXU2EvLHD8rlfF0g8uTU6DQQFiDSoTEhCvv5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6iIHkaKNf0TUrRVikAvVx9nYTidZoScC1RHuCWP69cqeCYpyo
	37x1RdWZWvg99jKwkrL4+YGCNpnp8kmKHxrJ/n61Cwn9BBXn5vF9SKpF
X-Gm-Gg: ATEYQzz/to0u3gQQBYwIjj4eQD3b4gxaGCKuZVu7uen4cU8gi8uyHWQudPldJQR+iTR
	Eevf1fOW77iDlZ+EjhhKCnyIZbKyfngwgs27ba2Gc6eOhuUdcKKSnnxTRUayixnw3wokz3tVcHq
	IZOpqp5SUi4bXKhr+TJp6MUTZCxS9IxAUU8n8kRvDH5XBzwfge9iZ+Wgl8T/W2IwG4JHln+pm3/
	j+ufoXPNE36jddmSSEf/q3nL0B3D+Iw3LENSsTigHyteYLTX3Pm37bBXvj9KCob7V1SpL9/ktKx
	X/+8UNgqgiHkcY8DLozolQk17RExYUIcn/XaPUGmyAGLPw3EXhr6yRw7pfRYxlsZaVxH9aQc7ym
	TJpb2gwn0RD7I3p7rmKduXoxWe+AzmlVQeO9ppCzocXXiXNghMcfkRtbxROMckvIYria12GRVNU
	mh6rCr1XVa5W5GUWvNEg17GfEpep2XtjpJsWLl+R8pjdmT8vx13mdMvaaky1peDJR9l1b2/8rGN
	c/vhkH7djBWFrxgK8v+CQ2WNqX6f0oekVLSf0ZRWV7cjcG4Es48MFHsA5RbTw==
X-Received: by 2002:ad4:5fc8:0:b0:899:b004:134 with SMTP id 6a1803df08f44-899d1ef698fmr160300976d6.51.1772446973452;
        Mon, 02 Mar 2026 02:22:53 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899f47819ffsm29897096d6.37.2026.03.02.02.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:22:52 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 2 Mar 2026 10:22:47 +0000
To: Jonathan Cameron <jic23@kernel.org>, 
	Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 0/8] AD9910 Direct Digital Synthesizer
Message-ID: <pohirub7gjqu7xtq5qakkmr3wlek2rgj6kdgltjvir6g4jwgbr@hmjflsplni4o>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <a72b2d62-3b91-4789-a1b1-ff1429e80ed5@baylibre.com>
 <2k4ouimpaxjuhnk67qmrues2375zj43ehru7h5as6w6kf7yak3@2ndr72co5trh>
 <bdc973e5-df74-48f2-8884-439b03565940@baylibre.com>
 <9392fea00a9c3b23d1bc9468faa1b3cc20904398.camel@gmail.com>
 <20260301133806.5e706756@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260301133806.5e706756@jic23-huawei>
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
	TAGGED_FROM(0.00)[bounces-269891-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,analog.com,vger.kernel.org,metafoo.de,kernel.org,pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 083C01D689C
X-Rspamd-Action: no action

On 26/03/01 01:38PM, Jonathan Cameron wrote:
> On Mon, 23 Feb 2026 10:02:00 +0000
> Nuno Sá <noname.nuno@gmail.com> wrote:
> 
> > On Sun, 2026-02-22 at 14:32 -0600, David Lechner wrote:
> > > On 2/22/26 4:01 AM, Rodrigo Alencar wrote:  
> > > > On 26/02/21 02:16PM, David Lechner wrote:  
> > > > > On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:  
> > > > > > This patch series adds support for the Analog Devices AD9910 DDS.
> > > > > > This is an RFC so that we can agree/discuss on the design that follows:
> > > > > >   
> > > 
> > > ...
> > >   
> > > > > > represents a distinct signal path into the DDS accumulator, so the driver
> > > > > > models them as separate IIO output channels (all IIO_ALTVOLTAGE type).  
> > > > > 
> > > > > Generally IIO channels represent the physical input/output, not the
> > > > > internal channels.  
> > > > 
> > > > That is part of the reason for this RFC. Dividing those top-level modes
> > > > into channels allows for better organization, as they can operate together,
> > > > i.e., phase or scale can be provided by single-tone profile, while
> > > > frequency is controlled by the digital ramp generator (see Mode Priority
> > > > section in the datasheet). Also, it allows to explore the most of standard
> > > > ABIs like, scale, frequency, phase, sampling_frequency and enable.
> > > > Putting everything into a single channel would make things a lot messy
> > > > to interface with.
> > > >   
> > > > > Ideally we would just have the one channel here with a mode selection
> > > > > attribute. Documentation can tell us which modes use which attributes.
> > > > >   
> > > > > > This per-channel separation allows userspace to configure each mode
> > > > > > independently through its own set of sysfs attributes, and to
> > > > > > enable/disable modes individually via IIO_CHAN_INFO_ENABLE, relying on
> > > > > > the hardware's own mode selection architecture.
> > > > > >   
> > > 
> > > Looking at Table 5 in the datasheet really helped me understand this better.
> > > I think this series could benefit from a documentation patch that explains
> > > more about how the driver works with some diagrams.
> > > 
> > > So really what we have here are a bunch of digital data generators rather
> > > than a bunch of altvotlage output channels. And the same data channels can be
> > > mixed and match as the source for up to 3 different components of the output
> > > (frequency, phase, amplitude) depending on the priority rules defined in
> > > Table 5.  
> > 
> > More bellow... But note that all of the (or most of it) generators are going to
> > be feed into a DAC. Your output is altvoltage but maybe we can treat the
> > internals as voltage. Not sure.
> >  
> > > 
> > > Digital data sources are really more like a buffer in IIO terms than a
> > > channel. And before we added the IIO backend stuff, there wasn't really
> > > any other digital data source/sink that I am aware of other than buffers
> > > (but there are certainly a lot of odd corners of IIO that I haven't explored
> > > yet, so maybe I missed some).
> > > 
> > > In a recent discussion, the idea of possibly needing a way to provide
> > > some userspace interface to be able to tweak knobs of an IIO backend
> > > was also brought up.
> > > 
> > > Putting those ideas together, I'm wondering if we need some new channel
> > > type or even a whole new interface (e.g. a new sysfs directory like buffers
> > > and events) for managing these digital data sources/sinks that are not an
> > > IIO buffer.
> > >   
> > 
> > But what would be that channel? In the end of the day, we typically have voltage or
> > current DACs and a DDS primary function is indeed to generate alternating waveforms
> > that you then typically feed into a DAC (and in some cases from the DAC into a
> > power amplifier). So the DDS is just part of the data/signal path. Anyways, not sure
> > on the new type and I think we already have the "blocks" in IIO for dealing with this:
> > 
> > . frequency
> > . phase
> > . amplitude (raw + scale + offset)
> > 
> > But you're right that maybe it's time to think in a better way to fit them together. 
> > Maybe a new type (as buffers or events) can make sense where the above are treated as, example, scan
> > elements. Maybe it's overcomplicating, not sure. It surely needs  discussion and thinking :).
> > 
> > And spoiler alert, as you might have guessed already, the parallel port stuff is to be
> > used with DMA buffers (and IIO backends). At least, that was the plan IIRC. But Rodrigo
> > can confirm it.
> > 
> > > I think we've seen enough of these already to know that things like a
> > > "tone generator" and a "ramp generator" are going to be common and could
> > > share some standard attributes. 
> > >   
> > 
> > I tend to agree. For example, there already some DACs (with dithering) that make use of a similar
> > interface (but with a custom prefix). Though the end goal is different, the interface is not that
> > far off:
> > 
> > 
> > https://elixir.bootlin.com/linux/v6.19.3/source/Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2688
> > 
> > Anyways, I knew this one would be an interesting one for upstream :)
> 
> For history buffs, we had a bunch of DDS chips in staging at one point and never
> manage to figure out the questions being raised here :(  They are complex
> beasts.  Clarity of ABI proposal and documentation is going to be key to driving
> this series forwards. In a sense the code is the easy part.

Does that mean that once good documentation is provided, the presented design can
be accepted? Even though data generators/sources might not be interpreted as
altvoltage channels?

-- 
Kind regards,

Rodrigo Alencar

