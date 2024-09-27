Return-Path: <devicetree+bounces-105765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDBD987E43
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 08:17:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18A6AB22A61
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 06:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE41178CE8;
	Fri, 27 Sep 2024 06:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sojrdndw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0E2178376
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 06:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727417816; cv=none; b=Y/4mh99N3t8T3sgalD52esFknJd+hYmQK/ne+nKqf5nl/SNoGSYyCecS6Vzhme0EUT5iOcnR8w32WPywgStJN98uM7Eba/W3L7Nu6Md8iZUzjEI6/YAJg7lPt3ITDzRbnfiy2e1Z2YdWmeQnONo+SAEqYfGqcvEVWrh3E8J87mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727417816; c=relaxed/simple;
	bh=BBuujurPmY7WHlx0IYwxYgrtMr81U8EJiwQSJ9iNZ+g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wg8Sp3E2sfDI6i4y69TOCZFbYcFkpP6HQVZBHeHxb2bXVgBSQA/R9ESSI8U2pYQwK1Sf0jxufZpekevqs+KjJE0wRuGlH/mzXR1C6PWZ3TF3sBiL2QiQqY+nYY7zZRKfeGp+hNZOD4S7wEyARhwA/XP/ybLmdTuZ0DUsogenlnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sojrdndw; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3e045525719so1128679b6e.2
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 23:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727417814; x=1728022614; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozF4LqzPuN76+eJ5lZ+Te5WdJCv5iNC/lHSX5fH2wo8=;
        b=SojrdndwDvLKovR02lAQoLTsqzzWx16I03RMqgNcPXibE9OkqASxXhso2d70Bwq/ve
         ajvOBw9XdrRgKyuHEiRaCgGIhzKS8E3SNrM7QtmeScGtuOoRFMXnWtOCS19aAPzT32/m
         Nu/Fl+x+ChITMB+sgNyerXjzjo1cUs9yGceTf74xKsVW74f8arXyi/n5vG5V4FZAxLaA
         MnXETnjic3rtSiuUviL/ej833NYAzV739fwcuDxAQhq1hyjV4/H1HNc1db3d/ryLY+0i
         U47ori0F2/Hri0IBV23RZHpYGDmqWBeLOaj2YjPib4etBpqOSQqEUEr+5gqVOgXq3Etv
         Hhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727417814; x=1728022614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ozF4LqzPuN76+eJ5lZ+Te5WdJCv5iNC/lHSX5fH2wo8=;
        b=hglg+ScYZawCDzJwxUvMnPt7scMirm3e6eJ8CuVRnyULRwVJFJXv0i+LXUXjdcG/eN
         CRPRq9nKwScycwDOfi1NDHGrikl8Zlv1q7ZyKrYg9IMuBIXmHFpMi/uWQyFp78NX38hc
         /tDR/KDVSGltQKqtS2s/ok6A8kk4bJNT4IkCHNYBl5yEstG1TQmFZhe47Xj7K5W7v/Wz
         7OhsQDHVC7xUulF31f/HH1hXYKnRTG4fpXhevXcZCY2jYAshyQJhBwUbYx4xLAM9D5RI
         gr57umx6JQ7JBj/Ux6W0kdniOY8NKb05656Vg5fVGWGlgegiEbwPdmTyOoC+jUJMw5OI
         kwug==
X-Forwarded-Encrypted: i=1; AJvYcCXmnUPEnVK9Fj4cyr+u6x2vgYobBbKHazVHot25FIHvP3kleWvxyGsdSYfBVgdqkE/BkehVDqLZDFr/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2oUCaoHjESSZO7/AMyVwRWmZ1NiUydPzeSjN0UElFvSwZ/N7H
	dMhSOCJdu3whoQdswS6TNdt35wbnJ3VkuV1T/ihRfX/xESk/f6gt6cNVwWOdAeJ47E4COXs05Nb
	ZKAxcIeGJs5sswLGW0ARltJakKTrhM90n/igwXA==
X-Google-Smtp-Source: AGHT+IE7a9V7g499bPCEexIc6gQX3B//P8N+eSHKwz0TbP7BEFlO4EoSql2AgMnBjmJ12sfgT8sHqNMG3B3iulzPgZA=
X-Received: by 2002:a05:6808:331a:b0:3e3:91a5:d8bf with SMTP id
 5614622812f47-3e39395c60emr1379976b6e.8.1727417813829; Thu, 26 Sep 2024
 23:16:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com> <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
 <e967e382-6cca-4dee-8333-39892d532f71@gmail.com> <lk7a2xuqrctyywuanjwseh5lkcz3soatc2zf3kn3uwc43pdyic@edm3hcd2koas>
 <04caa788-19a6-4336-985c-4eb191c24438@amd.com> <2f9a4abe-b2fc-4bc7-9926-1da2d38f5080@linaro.org>
 <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com> <2ab11399-ffa0-4940-a965-fb95a5f3b20e@amd.com>
In-Reply-To: <2ab11399-ffa0-4940-a965-fb95a5f3b20e@amd.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 27 Sep 2024 08:16:42 +0200
Message-ID: <CAHUa44GfsSjE9w4vPcbcESNoDj3exA+tfSxzbJh844CzyBVFtg@mail.gmail.com>
Subject: Re: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Sumit Garg <sumit.garg@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, 
	Andrew Davis <afd@ti.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 26, 2024 at 4:03=E2=80=AFPM Christian K=C3=B6nig
<christian.koenig@amd.com> wrote:
>
> Am 26.09.24 um 15:52 schrieb Sumit Garg:
> > [Resend in plain text format as my earlier message was rejected by
> > some mailing lists]
> >
> > On Thu, 26 Sept 2024 at 19:17, Sumit Garg <sumit.garg@linaro.org> wrote=
:
> >> On 9/25/24 19:31, Christian K=C3=B6nig wrote:
> >>
> >> Am 25.09.24 um 14:51 schrieb Dmitry Baryshkov:
> >>
> >> On Wed, Sep 25, 2024 at 10:51:15AM GMT, Christian K=C3=B6nig wrote:
> >>
> >> Am 25.09.24 um 01:05 schrieb Dmitry Baryshkov:
> >>
> >> On Tue, Sep 24, 2024 at 01:13:18PM GMT, Andrew Davis wrote:
> >>
> >> On 9/23/24 1:33 AM, Dmitry Baryshkov wrote:
> >>
> >> Hi,
> >>
> >> On Fri, Aug 30, 2024 at 09:03:47AM GMT, Jens Wiklander wrote:
> >>
> >> Hi,
> >>
> >> This patch set is based on top of Yong Wu's restricted heap patch set =
[1].
> >> It's also a continuation on Olivier's Add dma-buf secure-heap patch se=
t [2].
> >>
> >> The Linaro restricted heap uses genalloc in the kernel to manage the h=
eap
> >> carvout. This is a difference from the Mediatek restricted heap which
> >> relies on the secure world to manage the carveout.
> >>
> >> I've tried to adress the comments on [2], but [1] introduces changes s=
o I'm
> >> afraid I've had to skip some comments.
> >>
> >> I know I have raised the same question during LPC (in connection to
> >> Qualcomm's dma-heap implementation). Is there any reason why we are
> >> using generic heaps instead of allocating the dma-bufs on the device
> >> side?
> >>
> >> In your case you already have TEE device, you can use it to allocate a=
nd
> >> export dma-bufs, which then get imported by the V4L and DRM drivers.
> >>
> >> This goes to the heart of why we have dma-heaps in the first place.
> >> We don't want to burden userspace with having to figure out the right
> >> place to get a dma-buf for a given use-case on a given hardware.
> >> That would be very non-portable, and fail at the core purpose of
> >> a kernel: to abstract hardware specifics away.
> >>
> >> Unfortunately all proposals to use dma-buf heaps were moving in the
> >> described direction: let app select (somehow) from a platform- and
> >> vendor- specific list of dma-buf heaps. In the kernel we at least know
> >> the platform on which the system is running. Userspace generally doesn=
't
> >> (and shouldn't). As such, it seems better to me to keep the knowledge =
in
> >> the kernel and allow userspace do its job by calling into existing
> >> device drivers.
> >>
> >> The idea of letting the kernel fully abstract away the complexity of i=
nter
> >> device data exchange is a completely failed design. There has been ple=
nty of
> >> evidence for that over the years.
> >>
> >> Because of this in DMA-buf it's an intentional design decision that
> >> userspace and *not* the kernel decides where and what to allocate from=
.
> >>
> >> Hmm, ok.
> >>
> >> What the kernel should provide are the necessary information what type=
 of
> >> memory a device can work with and if certain memory is accessible or n=
ot.
> >> This is the part which is unfortunately still not well defined nor
> >> implemented at the moment.
> >>
> >> Apart from that there are a whole bunch of intentional design decision=
 which
> >> should prevent developers to move allocation decision inside the kerne=
l. For
> >> example DMA-buf doesn't know what the content of the buffer is (except=
 for
> >> it's total size) and which use cases a buffer will be used with.
> >>
> >> So the question if memory should be exposed through DMA-heaps or a dri=
ver
> >> specific allocator is not a question of abstraction, but rather one of=
 the
> >> physical location and accessibility of the memory.
> >>
> >> If the memory is attached to any physical device, e.g. local memory on=
 a
> >> dGPU, FPGA PCIe BAR, RDMA, camera internal memory etc, then expose the
> >> memory as device specific allocator.
> >>
> >> So, for embedded systems with unified memory all buffers (maybe except
> >> PCIe BARs) should come from DMA-BUF heaps, correct?
> >>
> >>
> >>  From what I know that is correct, yes. Question is really if that wil=
l stay this way.
> >>
> >> Neural accelerators look a lot stripped down FPGAs these days and the =
benefit of local memory for GPUs is known for decades.
> >>
> >> Could be that designs with local specialized memory see a revival any =
time, who knows.
> >>
> >> If the memory is not physically attached to any device, but rather jus=
t
> >> memory attached to the CPU or a system wide memory controller then exp=
ose
> >> the memory as DMA-heap with specific requirements (e.g. certain sized =
pages,
> >> contiguous, restricted, encrypted, ...).
> >>
> >> Is encrypted / protected a part of the allocation contract or should i=
t
> >> be enforced separately via a call to TEE / SCM / anything else?
> >>
> >>
> >> Well that is a really good question I can't fully answer either. From =
what I know now I would say it depends on the design.
> >>
> > IMHO, I think Dmitry's proposal to rather allow the TEE device to be
> > the allocator and exporter of DMA-bufs related to restricted memory
> > makes sense to me. Since it's really the TEE implementation (OP-TEE,
> > AMD-TEE, TS-TEE or future QTEE) which sets up the restrictions on a
> > particular piece of allocated memory. AFAIK, that happens after the
> > DMA-buf gets allocated and then user-space calls into TEE to set up
> > which media pipeline is going to access that particular DMA-buf. It
> > can also be a static contract depending on a particular platform
> > design.
> >
> > As Jens noted in the other thread, we already manage shared memory
> > allocations (from a static carve-out or dynamically mapped) for
> > communications among Linux and TEE that were based on DMA-bufs earlier
> > but since we didn't required them to be shared with other devices, so
> > we rather switched to anonymous memory.
> >
> >  From user-space perspective, it's cleaner to use TEE device IOCTLs for
> > DMA-buf allocations since it already knows which underlying TEE
> > implementation it's communicating with rather than first figuring out
> > which DMA heap to use for allocation and then communicating with TEE
> > implementation.
>
> +1
>
> I'm not that deeply into the functionality the TEE device IOCTLs expose,
> so can't judge if what's said above is correct or not.
>
> But in general building on top of existing infrastructure and
> information is a really strong argument for a design.
>
> So from my 10 mile high point of view that sounds like the way to go.

That sounds good, I'll prepare another patch set based on that
approach so we can see all the details.

Thanks,
Jens

