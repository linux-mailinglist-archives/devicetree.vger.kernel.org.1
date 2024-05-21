Return-Path: <devicetree+bounces-68109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A1E8CADDA
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 303E228394B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F317581A;
	Tue, 21 May 2024 12:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="jbrtEksX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A52F757E4
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 12:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716293187; cv=none; b=SlAmEkPXfZ2zTZB/nLmZrx6+1z6jGeuSd700pt7DHRVwoeo4giL0NLYuoFcEYxUBFyOy/ZnAU/VdecOvCSjB7ZZvjtuwXHgqSrcrA92zxE2Rflid4wk1GRQyL+FgUKRKLc0xRGkDaDDsWwPBVm3cvQ3TnEO0yzbPQdZHtRHEbkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716293187; c=relaxed/simple;
	bh=y6uf/C+i1B/yZlW5DIn/xIOBl/tE1YV+evnBt2Jjmkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=feC7vqVUTcChSt11zRzn/ODbdoLKeh/C9+F4yIr3NkbK6LNTybsq6Wh/Gu79GytTi6RbTcSIN4f+Qq77eitTex4e0WshFZ8Ew+lniIp56LYCxNKZinXqVfh/buYyV7ajRzWsXrcVksOSPKxF6UrmOtPHrkSq2fpHG7au+uQXPDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=jbrtEksX; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a59a86fb052so57183666b.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 05:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1716293184; x=1716897984; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mJYdzH0pAsynv7wKO0qk2byjZJ72J8K30m6YCIFuLT4=;
        b=jbrtEksX6Do3jWz9S8J7A2RiC3sJeIZUNewnDgHUsOqvPhzUKVaq8AceCPeNuUQJ/X
         qaXHkIHF+TzKlSFThuYA7ZYi6F+DKhMIAigp49QE7J+eAd6j1hicu6UZoWc1bOM6cXkT
         MKMkon/MdFVWaCbzK44Q7fqx+DczFafCf466s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716293184; x=1716897984;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mJYdzH0pAsynv7wKO0qk2byjZJ72J8K30m6YCIFuLT4=;
        b=uwjWNf10VLMmhrXl9y1e4AZYGCCYfUreOQV1wC/4LcFPJuhgz+DQrazQfOACKovqe6
         T+aCE6NrA23XpOlsSj+ENugvfLufcEMLHljEfcO48jsP8tEPZ8kh4xEP95H/Mj9vGPf0
         K0XdTD8T9YzLIck6EPHGECe3kg6DXxFwf2xGl9PSlujMbbvneyb6MxVcHdDqeRd7Fl4Z
         vD+iGCf8Co7SZZJlwHtTs4WBzTw325KIeb/S1dr9eD1D/2Q2vF2L3YoEwyHqq8s7QGF/
         JgKaE8IqnSmftDMS6JdzBqNA8TAGNnTIuheSOw/ZEXmYxCCdUTcXSu+paevZWjhrdDY4
         uD5g==
X-Forwarded-Encrypted: i=1; AJvYcCUKTxPufrjgBSnpqH7jlicvVyY84REJSDjCV9y9a/79cr6g1pbgsrHNZAVTS97wgehxc5iX/zszoxMpADLYXJFy28DbLoMLsTP24A==
X-Gm-Message-State: AOJu0YwTuO7IYcI6R09hfD+Ma8Lfp5xRbgFJZgecvhOCGq0p8HCKVcHZ
	IGoR+X39DaBq5rQj2OQTqvqWweCsMIn74M++IJYbc++Bw8Rd0iSB42tSXV/0UB8=
X-Google-Smtp-Source: AGHT+IGfWNF191WRUe0dOT+wxuFScDgLI5Opi7mIPWI0KL0XH3aj2MmoNzb6yDiPo3DHO/ZyoC6pQg==
X-Received: by 2002:a17:906:3553:b0:a5a:893a:ad3d with SMTP id a640c23a62f3a-a5a893aae74mr1306089766b.7.1716293184252;
        Tue, 21 May 2024 05:06:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7d14sm1605454566b.130.2024.05.21.05.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 05:06:21 -0700 (PDT)
Date: Tue, 21 May 2024 14:06:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John Stultz <jstultz@google.com>
Cc: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC
 related-flags
Message-ID: <ZkyOOwpM57HIiO3v@phenom.ffwll.local>
Mail-Followup-To: John Stultz <jstultz@google.com>,
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
 <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
 <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
X-Operating-System: Linux phenom 6.8.9-amd64 

On Thu, May 16, 2024 at 09:51:35AM -0700, John Stultz wrote:
> On Thu, May 16, 2024 at 3:56 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Wed, May 15, 2024 at 11:42:58AM -0700, John Stultz wrote:
> > > But it makes me a little nervous to add a new generic allocation flag
> > > for a feature most hardware doesn't support (yet, at least). So it's
> > > hard to weigh how common the actual usage will be across all the
> > > heaps.
> > >
> > > I apologize as my worry is mostly born out of seeing vendors really
> > > push opaque feature flags in their old ion heaps, so in providing a
> > > flags argument, it was mostly intended as an escape hatch for
> > > obviously common attributes. So having the first be something that
> > > seems reasonable, but isn't actually that common makes me fret some.
> > >
> > > So again, not an objection, just something for folks to stew on to
> > > make sure this is really the right approach.
> >
> > Another good reason to go with full heap names instead of opaque flags on
> > existing heaps is that with the former we can use symlinks in sysfs to
> > specify heaps, with the latter we need a new idea. We haven't yet gotten
> > around to implement this anywhere, but it's been in the dma-buf/heap todo
> > since forever, and I like it as a design approach. So would be a good idea
> > to not toss it. With that display would have symlinks to cma-ecc and cma,
> > and rendering maybe cma-ecc, shmem, cma heaps (in priority order) for a
> > SoC where the display needs contig memory for scanout.
> 
> So indeed that is a good point to keep in mind, but I also think it
> might re-inforce the choice of having ECC as a flag here.
> 
> Since my understanding of the sysfs symlinks to heaps idea is about
> being able to figure out a common heap from a collection of devices,
> it's really about the ability for the driver to access the type of
> memory. If ECC is just an attribute of the type of memory (as in this
> patch series), it being on or off won't necessarily affect
> compatibility of the buffer with the device.  Similarly "uncached"
> seems more of an attribute of memory type and not a type itself.
> Hardware that can access non-contiguous "system" buffers can access
> uncached system buffers.

Yeah, but in graphics there's a wide band where "shit performance" is
defacto "not useable (as intended at least)".

So if we limit the symlink idea to just making sure zero-copy access is
possible, then we might not actually solve the real world problem we need
to solve. And so the symlinks become somewhat useless, and we need to
somewhere encode which flags you need to use with each symlink.

But I also see the argument that there's a bit a combinatorial explosion
possible. So I guess the question is where we want to handle it ...

Also wondering whether we should get the symlink/allocator idea off the
ground first, but given that that hasn't moved in a decade it might be too
much. But then the question is, what userspace are we going to use for all
these new heaps (or heaps with new flags)?

Cheers, Sima

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

