Return-Path: <devicetree+bounces-247869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF9CCC651
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA07530E48C1
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F122C2DECBD;
	Thu, 18 Dec 2025 14:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6ZVfUie"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDE72D94BF
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766068976; cv=none; b=DLczALJiNinMduRjkSroRC4HNOaSDNl6oc3LAbPScyXB11vMOAj/NcA2f7ZfhJT7li3r2beNzmavc3wEgkO20ROchoqQkCaRO31LXEVRImBkFrVvXfU2ntLA3eu5QY1KxWz9yJT03RCANKf4Kq9LpUx8Cx98wXmaPSx/eW3JbeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766068976; c=relaxed/simple;
	bh=slw+BosK1PsNPJpyi2TmKbuGD4RpEMMPJVH/OAf+NQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ROgegSudK8ifH/j+IlIjBELZ2bD911qAU9/TO5gBIk88HrpApfvhZALfX6DlHLBjimcHKFBptXty76fynyfvkTFwTCC1Qs2vO1+JSjZc10yhQb/SwzOWxpORnE+zgztcsWerLnhSodt/Vk3k+0U3eOCVryWaNf7YbO3uiVtAh2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6ZVfUie; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2A8FC19425
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766068976;
	bh=slw+BosK1PsNPJpyi2TmKbuGD4RpEMMPJVH/OAf+NQM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=U6ZVfUieX3cwLufZBD02xIoNZ17rXxDRXramTk93AHyzo1NPQg7z6Q0hLw8P/gi6Z
	 FCVrFTH+pOVUHA8Wo2PrWamlh3y+Y5X61fJUqZfH7ViE1errdTruUqz+Z54R+GWf5b
	 tePNBLtUMVvTHtn0YMyY0XIjdO+mxqBINTyVbq3rpxMeMw1pL2dfPqDHWXS2c8QaY4
	 zfrviEkK2w/qsVmMrcx5aGKnbdcgkh+ItpnwUsJJhkR8H4HSe2bTr2sNZIEZM7ywYk
	 vpMIrNG/Ek+/kdlcv6gLxyqY79tv23Qx4R46sdFB89clfYcw9QBUoSgWw6lbBtCUCh
	 pR+06ue4QX9+g==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64312565c10so1191377a12.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:42:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXiRZCCEk5vH4rJIX+GCkdQDzljp/HtVqSyvkxalWiZ9i2iLvu23gRFUk6WioDRuHSEZoDGi5je40Ix@vger.kernel.org
X-Gm-Message-State: AOJu0YxioeBpgDETHqLbbefewv3p42qAqB+VwYpzynPOI5b0BiCr9suu
	DEhG0+/Z4B3dhd6yWNdzKkXK+adpMsFdgY0+/UFMgV9zqp9XrN9UZAp2mhZMji8akSt+ux2jBAF
	p5yV3x7S1K7EzdSYmxH8ICxfD+V+kPw==
X-Google-Smtp-Source: AGHT+IFdmyojuTTgaWiolIibwsAa/0a3X7FzgZ+D2f7PWKjB9jlhVbGo9VOiZ0gBgTNEAMMazdnjwp3dHTDr86SBEs4=
X-Received: by 2002:a17:907:2da0:b0:b4f:e12e:aa24 with SMTP id
 a640c23a62f3a-b7d23667b5bmr2457256466b.22.1766068974880; Thu, 18 Dec 2025
 06:42:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20251210002053eucas1p1d1408ad0fb49a49bf4371687f8df7395@eucas1p1.samsung.com>
 <20251210002027.1171519-1-oreoluwa.babatunde@oss.qualcomm.com>
 <X-TH#1.CAL_JsqL6VVQ7K_ZAbHJ8Gb7ei_jusLx6wRn=AdOVgV50dX0ejQ@mail.gmail.com> <99dc91c9-59fd-47c5-b1d9-157bda86ad59@samsung.com>
In-Reply-To: <99dc91c9-59fd-47c5-b1d9-157bda86ad59@samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 18 Dec 2025 08:42:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK5QEZfyRTDY4z88mX_eYENibea1ZM8H_bEfCCsOOwY4A@mail.gmail.com>
X-Gm-Features: AQt7F2oHd8w0_YjnIgYXfiCaa1Lm7dC6NF9JlmrJ9TE4Ra2le7vZL1e4sdVufPM
Message-ID: <CAL_JsqK5QEZfyRTDY4z88mX_eYENibea1ZM8H_bEfCCsOOwY4A@mail.gmail.com>
Subject: Re: [PATCH] of: reserved_mem: Allow reserved_mem framework detect
 "cma=" kernel param
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>, ye.li@oss.nxp.com, 
	kernel@oss.qualcomm.com, saravanak@google.com, akpm@linux-foundation.org, 
	david@redhat.com, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, 
	vbabka@suse.cz, rppt@kernel.org, surenb@google.com, mhocko@suse.com, 
	robin.murphy@arm.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, iommu@lists.linux.dev, 
	quic_c_gdjako@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 18, 2025 at 3:55=E2=80=AFAM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> On 10.12.2025 15:07, Rob Herring wrote:
> > On Tue, Dec 9, 2025 at 6:20=E2=80=AFPM Oreoluwa Babatunde
> > <oreoluwa.babatunde@oss.qualcomm.com> wrote:
> >> When initializing the default cma region, the "cma=3D" kernel paramete=
r
> >> takes priority over a DT defined linux,cma-default region. Hence, give
> >> the reserved_mem framework the ability to detect this so that the DT
> >> defined cma region can skip initialization accordingly.
> > Please explain here why this is a new problem. Presumably the
> > RESERVEDMEM_OF_DECLARE hook after commit xxxx gets called before the
> > early_param hook. And why is it now earlier?
> >
> > I don't really like the state/ordering having to be worried about in 2 =
places.
>
> I also don't like this spaghetti, but it originates from
> commit 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
> memory regions are processed") and the first fixup for it: 2c223f7239f3
> ("of: reserved_mem: Restructure call site for
> dma_contiguous_early_fixup()").

Honestly, this code wasn't great before. Every time it is touched it
breaks someone.

> It looks that it is really hard to make reserved memory
> initialization fully dynamic assuming that the cma related fixups have
> to be known before populating kernel memory pages tables. I also advised
> in
> https://lore.kernel.org/all/be70bdc4-bddd-4afe-8574-7e0889fd381c@samsung.=
com/
> to simply increase the size of the static table to make it large enough f=
or the sane use cases, but
> it turned out that this approach was already discussed and rejected:
> https://lore.kernel.org/all/1650488954-26662-1-git-send-email-quic_pdaly@=
quicinc.com/

I guess the question is what's a sane limit? After 128, are we going
to accept 256? I really suspect we are just enabling some further
abuse of /reserved-memory downstream. For example, I could imagine
there's micromanaging the location of media/graphics buffers so they
end up in specific DRAM banks to optimize accesses. No one ever wants
to detail why they want/need more regions.

> Maybe it would make sense to revert the mentioned changes and get back
> to such simple approach - to make the size of the static table
> configurable in the Kconfig?

I'd rather not resort to a kconfig option.

We could go back to processing all the regions at the beginning
(growing the static size), and then just shrinking allocation. Or
maybe it could just be freed entirely. I don't think we really need to
keep the state around forever.

Rob

