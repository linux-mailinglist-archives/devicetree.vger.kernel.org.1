Return-Path: <devicetree+bounces-215636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F517B522D3
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 22:49:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47D3D1CC05C1
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 20:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1AF02D24A3;
	Wed, 10 Sep 2025 20:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="W+Woafyj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2782340D9B
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 20:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757537101; cv=none; b=Bflp6XWvXvUlEpIf0QqgSURlQvMmZE2rMf6Z2UkAKkvFrheldUMdbRIBV5t/tgEXMm2X158sNXh/0J+JW/vLuBpp3R8aH9zzujb/tG1FNzOH5F70U1j0A43LdtNDu261zaDgTag9f/dTi+3nslL/aIyCrqm6UXBduAK/lHPYSvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757537101; c=relaxed/simple;
	bh=zdj+uOiXuiIXzM1Vn3fcDOOxGOrxrCVtY7jUVpK65ZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MeNME6KZIKtwIm+eoDOcz9QOE37oTOmmnTbOpo8OXjSuFRe6FdS1AoaOH/9WrSEYkX7NScIa4Nkoku8stEKy73FCdIUdM33NkYFEBIuBzbvgq/SKoRYN1qKlDjkq/k5ylza6e9QNmP3MXr2DJHeWrK5JYyVZfOHuv4xyqWIqHTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=W+Woafyj; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45dd9d72f61so26615e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1757537098; x=1758141898; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdj+uOiXuiIXzM1Vn3fcDOOxGOrxrCVtY7jUVpK65ZI=;
        b=W+WoafyjcJ5f2BosdXGeB215pCNhmz3t7tMobUPuB0dVxY/NYaJ2bx0FVDbHiRtmUZ
         YzFJiw5SVtE4Fge0ZdUATuSKhjrpnniZFwZ7Rhya7BjupBEtaKG3P0Nv+fKJh/4BjosP
         DVcR4yH2rvo3giZomGQkK4RzUNGDzzPaPqUO3eYD0UWZKuLhig0GoE5Ag6O8UP3yfrVA
         wmDU6jyIhXhzr8ZpZHhJC4CHbx+coJAGSBVaanVSNw7L3IoK0fk01iJv5OV0XZPUHbiw
         iR0h+WGGBVG94nne2WlsOFnRpk+0Oguur2ePJ+zlm635Mm2UybciFV+lDDVzBI+BZwo7
         Le7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757537098; x=1758141898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdj+uOiXuiIXzM1Vn3fcDOOxGOrxrCVtY7jUVpK65ZI=;
        b=DUk1MU5pdzB53tyQcZxpHxUd4oOrInr3Oq3XNT/8JGyL2RTblEWWmroqzmc/8usFgk
         Fgry02KCCmMmL3h2+8tcJDNP7FvyzKlJ37FiuksAHKip2cxkGzLiDIMmRSoaDcLUa/nD
         osGg7d4LUDHUczok3+P/vu1S0YkWDyD49fUf/xZWL4zIHOV6ERjfFw2sf16jMiDXS4F0
         aEvKmuYGNoVXrADDW/SCJCqnqmR2dKFPhMjc8qhQcN46wjLXB2zG7LU4osW5R5FW0JmZ
         8letXvWkCIUEtrqYa8Ley9C2A7amxbRwbQFhbAPVQeMzXPqpv4BWtBpLs7xCq6MOs4YG
         /Mig==
X-Forwarded-Encrypted: i=1; AJvYcCWxmAAIHPVspnHROIb/FnKYISS8KnGSdPWydpM4mDFa4Zi4X+psxlsrvb7UTH4bNk0LktbkHokZy8Ri@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu7Qaxez4R9qEpXqkrZu5u9qnfEmtGCllcc4qTTeyfZGa3bv0g
	wAqbyZrLAtHunBiwLQ6EOdi819Bpn1ajuXsu24CAnjOOQAUv2+lM5Y7C5IJtLrBoyTU3ouTvZl2
	DN5/v37+cs+s+LFKXet9iiMML+b9c+mlVRswig5bX
X-Gm-Gg: ASbGncs0r9hYYVgp8+hbH7FWM6a2e8DaP7+40+SHVyY2D9QI4AmcAbWAUGRzdvzvSsI
	uQ2T+lXw8WhXtfKd5rOlhYFD9m8rR4zUyiW1TWw8XnE9pXbQg4eLizvJk0o/I0m8inXk10XJ5Ws
	WOkuRha54zXFBRrCL3keK1xpWM5t4vysTHNAoRkBAQv+1P2riiXPTC79JwySkxDuv9PK9qZyzhf
	uVmm0qAOl3299cISJdHh/zFq87e8Kzsz0kCq4HnmlUphQTxyU0HklI=
X-Google-Smtp-Source: AGHT+IF/Fz2Y5nk02badGqITxY1/tzo4lRqGZ2Zao4nfkcXFZyjJgtYYuI6B/Fj3L639UAHyqOxbIJ21cF9JPLUpaI8=
X-Received: by 2002:a05:600c:1502:b0:45b:7d8f:4bd4 with SMTP id
 5b1f17b1804b1-45df74f81cemr1873365e9.4.1757537098041; Wed, 10 Sep 2025
 13:44:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721-dma-buf-ecc-heap-v7-0-031836e1a942@kernel.org>
 <20250826-vagabond-catfish-of-courtesy-cbfa76@houat> <20250910-vigorous-attractive-gorilla-af6fec@houat>
In-Reply-To: <20250910-vigorous-attractive-gorilla-af6fec@houat>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 10 Sep 2025 13:44:45 -0700
X-Gm-Features: AS18NWDgBu3edPeSCZERO8HncQFGrRuZvzuC8yXw-tqKPcuIWCidg2bFxSYLb0U
Message-ID: <CABdmKX29ftpNro+d=Ce6JGoMaG0UQeBbzL7DXiBkGkC0nwacTQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] dma-buf: heaps: Create a CMA heap for each CMA
 reserved region
To: Maxime Ripard <mripard@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, 
	Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
	iommu@lists.linux.dev, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 10, 2025 at 12:33=E2=80=AFAM Maxime Ripard <mripard@kernel.org>=
 wrote:
>
> On Tue, Aug 26, 2025 at 09:36:03AM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > On Mon, Jul 21, 2025 at 01:17:29PM +0200, Maxime Ripard wrote:
> > > Here's another attempt at supporting user-space allocations from a
> > > specific carved-out reserved memory region.
> > >
> > > The initial problem we were discussing was that I'm currently working=
 on
> > > a platform which has a memory layout with ECC enabled. However, enabl=
ing
> > > the ECC has a number of drawbacks on that platform: lower performance=
,
> > > increased memory usage, etc. So for things like framebuffers, the
> > > trade-off isn't great and thus there's a memory region with ECC disab=
led
> > > to allocate from for such use cases.
> > >
> > > After a suggestion from John, I chose to first start using heap
> > > allocations flags to allow for userspace to ask for a particular ECC
> > > setup. This is then backed by a new heap type that runs from reserved
> > > memory chunks flagged as such, and the existing DT properties to spec=
ify
> > > the ECC properties.
> > >
> > > After further discussion, it was considered that flags were not the
> > > right solution, and relying on the names of the heaps would be enough=
 to
> > > let userspace know the kind of buffer it deals with.
> > >
> > > Thus, even though the uAPI part of it had been dropped in this second
> > > version, we still needed a driver to create heaps out of carved-out m=
emory
> > > regions. In addition to the original usecase, a similar driver can be
> > > found in BSPs from most vendors, so I believe it would be a useful
> > > addition to the kernel.
> > >
> > > Some extra discussion with Rob Herring [1] came to the conclusion tha=
t
> > > some specific compatible for this is not great either, and as such an
> > > new driver probably isn't called for either.
> > >
> > > Some other discussions we had with John [2] also dropped some hints t=
hat
> > > multiple CMA heaps might be a good idea, and some vendors seem to do
> > > that too.
> > >
> > > So here's another attempt that doesn't affect the device tree at all =
and
> > > will just create a heap for every CMA reserved memory region.
> > >
> > > It also falls nicely into the current plan we have to support cgroups=
 in
> > > DRM/KMS and v4l2, which is an additional benefit.
> > >
> > > Let me know what you think,
> > > Maxime
> >
> > Any chance we can get this merged?
>
> Guys, can we move forward on this?
>
> Maxime

Hi Maxime,

Sorry I've been MIA the last couple of months.

The docs for the "reusable" property say, "device driver(s) owning the
region need to be able to reclaim it back", but how can a driver
reclaim memory backing a dmabuf, since pages allocated for a dmabuf
aren't necessarily movable. Couldn't a user allocate all of it, and
refuse to close those dmabufs?

I backported this to 6.6 and ran it on a Pixel. While there are
already similar out-of-tree dmabuf heap drivers that expose heaps for
these reserved regions, they do more than just cma_alloc (multiple
flavors of buffer securing, use case specific alignment and padding,
and slightly different allocation strategies) so I don't think this
series would allow us to completely drop the custom heap code, but
it's a nice start. Does the cgroup part come in because the plan is to
add charging in cma_heap.c?

Thanks,
T.J.

