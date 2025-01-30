Return-Path: <devicetree+bounces-141937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31027A23364
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 18:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12F267A1FC8
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 17:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49D21EBA0D;
	Thu, 30 Jan 2025 17:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="Fu73KLwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42B018FC74
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 17:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738259227; cv=none; b=SAd/+V5EjGnB9bqAAW17KE28BOHC1StN239xpuRttML9lP1VxEVgZOI5vwu32As4vVE+t4Cxhii6YI3Lsg/scKtlk+3Hyzcrksja5655ysTU6Gj0DS7N92m631hnQWdqBKUn3juM1qk/Xw+VVRenHYnxZ9e/t49k0WwdaaccodM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738259227; c=relaxed/simple;
	bh=KNUH+6ciWQ2/YjPugaObywWt7VpfXwdkL5OgwJ5YfKw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Fybv5QyiaadQBLIq7cvndpfPtyj3giBNryqSgO19pFC+S/MzZ7yORvaGa4sYArP17WMqvWDIvksMQvLERcAdrGDCr0ddKVfcFo/wZ0NaF1KZea2LfMpS2wA2uSiQZaJZJS12+QdIkQWsmgoopjEOzz9y2Dgd/CG4C+BE+E4yheM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=Fu73KLwq; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6dcd4f1aaccso14454916d6.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 09:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738259225; x=1738864025; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M2KnSOALVun40U0rx69PL5LHkQdFIbv2CoISnegMh7s=;
        b=Fu73KLwqbNGurdb8VrTtxE+X0/w79aHq4QU9Nqxf0O4w78nIfK0qK9fGeB5NKXzGO9
         t5aSF9vFW2n47dJhp6eDjgGibX+bCBGpDFxreUTwHfO+uD70I7GuRqJ4SIS885jnHkFq
         LSEcGz3LQs6nOCrdeFEQNcYv074aSeLGVpV4hLnlI3LFkYUgR8mJ2+ZPaOJgbNb47Hcy
         lzPWJB8BO/aJ41TcrVUo4opm17k/YzkaKOsJyr/AJZEX09+TfEYfDwVFIj37fZSS1IE8
         dHS+kQustTvahJVJjkfFF334l3Y6J3qG9NdCCU3Elvnq11r0zImvWU3pwaSd/w8blLl8
         wtVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738259225; x=1738864025;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M2KnSOALVun40U0rx69PL5LHkQdFIbv2CoISnegMh7s=;
        b=QjilYiXv+vH6ebyiD0jRfo2vvCX3vHLMQUlFHliyo0eJBwwBKEqeeOB5kujgbpIGwC
         xThIKFKIBvrxKrpgrY4A8MmI7kWkQleYVPtjxbJN1rS2oS4h1nHVpRg4cxEHxOVIqTsW
         ydlcPsBj4rReAvq8e3ti3rwPp7wJs8Twnt3/ExWWXuYStBe+rk+g2fVCesO35/sCgjbJ
         l1lZLlWs1jFoOwUzBHmhiAg3toE9JCX7NuWsnsJUHpbxnvO2dgS9HWD/d/rcRjWbqTSD
         /ub641WSQ8tRj6r5FEUIwjRHqj9fjqkvinnTqzwlVcUortBt0+ajh6bOF7ViWMouA6Nf
         3K1w==
X-Forwarded-Encrypted: i=1; AJvYcCW7FgMwG1rJI96uMbsPnW9VsRw8c7MWrIKkvSP+6OJ2X/ckdOZIr0MqE7ugMKC0Ny21MLSp8czFAzDg@vger.kernel.org
X-Gm-Message-State: AOJu0YzKI7Vo7YONndsRllyIe08k4yVeqsqpjc5TPU+iIb1NUAtc4TR2
	Z77WcbELVpx3/AyeKuq7WPM2XXCwsdD8IAwM1x+UUdo6weeQfoz0kwrksdo1bhQ=
X-Gm-Gg: ASbGncv/6guoY1O/VGzbASiBy7cgL20o61Jg7ArYJmNYCW/AU6tbV9MYelPHEZ7UCFR
	EIotNZQd4juAL2bEt+5aoeJSzjK29CdA2RiGfYKYPieUAQUiBS8TZgvW29qsPQZQxsznhVpUxKy
	Ob7CV/vfvo2hCALOY6ANPa4iDdMjR88eVI4xB58I7pTMLi/BOq+J1WAT3d9Kv2rczz3JqgLO3J8
	RM2u1i9Jyg9HyJdtCZp4riy7OMZYhkNGF704oic7hDg26giOF71VnoKS/ZKb3+jTn0N6NDZ+S+N
	/DnOoqAuaxCX8EN9
X-Google-Smtp-Source: AGHT+IFb98ThAFaKwElwJF/sopgUxhTZjXeuvxkotRwiLF8RhVhCp7fJLzKCy+1eOfFzQ+qv/2X0Lw==
X-Received: by 2002:a05:6214:1d0e:b0:6d8:9124:8795 with SMTP id 6a1803df08f44-6e243b94159mr102405256d6.1.1738259224602;
        Thu, 30 Jan 2025 09:47:04 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e25481419fsm8430276d6.27.2025.01.30.09.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 09:47:04 -0800 (PST)
Message-ID: <9d0e381758c0e83882b57102fb09c5d3a36fbf57.camel@ndufresne.ca>
Subject: Re: [RFC PATCH 0/5] drm/panthor: Protected mode support for Mali
 CSF GPUs
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>
Cc: Florent Tomasin <florent.tomasin@arm.com>, Vinod Koul
 <vkoul@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Boris Brezillon
 <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu
 Dudau	 <liviu.dudau@arm.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey
 <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J .
 Mercier"	 <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong
 Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel
 <akash.goel@arm.com>
Date: Thu, 30 Jan 2025 12:47:02 -0500
In-Reply-To: <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <3ykaewmjjwkp3y2f3gf5jvqketicd4p2xqyajqtfnsxci36qlm@twidtyj2kgbw>
	 <1a73c3acee34a86010ecd25d76958bca4f16d164.camel@ndufresne.ca>
	 <ppznh3xnfuqrozhrc7juyi3enxc4v3meu4wadkwwzecj7oxex7@moln2fiibbxo>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Le jeudi 30 janvier 2025 =C3=A0 17:38 +0100, Maxime Ripard a =C3=A9crit=C2=
=A0:
> Hi Nicolas,
>=20
> On Thu, Jan 30, 2025 at 10:59:56AM -0500, Nicolas Dufresne wrote:
> > Le jeudi 30 janvier 2025 =C3=A0 14:46 +0100, Maxime Ripard a =C3=A9crit=
=C2=A0:
> > > Hi,
> > >=20
> > > I started to review it, but it's probably best to discuss it here.
> > >=20
> > > On Thu, Jan 30, 2025 at 01:08:56PM +0000, Florent Tomasin wrote:
> > > > Hi,
> > > >=20
> > > > This is a patch series covering the support for protected mode exec=
ution in
> > > > Mali Panthor CSF kernel driver.
> > > >=20
> > > > The Mali CSF GPUs come with the support for protected mode executio=
n at the
> > > > HW level. This feature requires two main changes in the kernel driv=
er:
> > > >=20
> > > > 1) Configure the GPU with a protected buffer. The system must provi=
de a DMA
> > > >    heap from which the driver can allocate a protected buffer.
> > > >    It can be a carved-out memory or dynamically allocated protected=
 memory region.
> > > >    Some system includes a trusted FW which is in charge of the prot=
ected memory.
> > > >    Since this problem is integration specific, the Mali Panthor CSF=
 kernel
> > > >    driver must import the protected memory from a device specific e=
xporter.
> > >=20
> > > Why do you need a heap for it in the first place? My understanding of
> > > your series is that you have a carved out memory region somewhere, an=
d
> > > you want to allocate from that carved out memory region your buffers.
> > >=20
> > > How is that any different from using a reserved-memory region, adding
> > > the reserved-memory property to the GPU device and doing all your
> > > allocation through the usual dma_alloc_* API?
> >=20
> > How do you then multiplex this region so it can be shared between
> > GPU/Camera/Display/Codec drivers and also userspace ?
>=20
> You could point all the devices to the same reserved memory region, and
> they would all allocate from there, including for their userspace-facing
> allocations.

I get that using memory region is somewhat more of an HW description, and
aligned with what a DT is supposed to describe. One of the challenge is tha=
t
Mediatek heap proposal endup calling into their TEE, meaning knowing the re=
gion
is not that useful. You actually need the TEE APP guid and its IPC protocol=
. If
we can dell drivers to use a head instead, we can abstract that SoC specifi=
c
complexity. I believe each allocated addressed has to be mapped to a zone, =
and
that can only be done in the secure application. I can imagine similar need=
s
when the protection is done using some sort of a VM / hypervisor.

Nicolas

>=20
> > Also, how the secure memory is allocted / obtained is a process that
> > can vary a lot between SoC, so implementation details assumption
> > should not be coded in the driver.
>=20
> But yeah, we agree there, it's also the point I was trying to make :)
>=20
> Maxime


