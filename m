Return-Path: <devicetree+bounces-17676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D277F3647
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 19:41:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3B491F22E57
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490C11389;
	Tue, 21 Nov 2023 18:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAoYgS3H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298565394
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 18:41:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0B17C433C8
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 18:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700592084;
	bh=0jOAvrwLpG8Ua+p69+XQeaNc7H5ROWsTr0Buv9GnZBY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=NAoYgS3Hq6YnvZMi2S+Pa9voINOcfgczxkfCYtJKah88qC/Icl0khr+1ue9f8IeIH
	 64vchA2Li0lpXh361qHioTjTah55takwPo40c20aj1bRDJPd5pHhoAfDuCEmHO7BoM
	 uqo0lGtfQh5a0Lvr2W86d91lI2sraWrAEq8UDv0ZcKjcahTm5YLUAHy/QcLQ5ulnCX
	 W5U4cDt9GxWAuBU4tJOuVwsPgDsOHbv5gPfq9CVAmkpTyGLB0eCKSJ5WyFj9pb/JYY
	 xzuHuc+iijVJHBl/cy5veHW+eDm6TlPfMWgtwby5YkenxBbcW4ODKmtvFeNomlVdXd
	 laDpYpqc+BGmA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c72e275d96so73619331fa.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:41:23 -0800 (PST)
X-Gm-Message-State: AOJu0YwK45YC0Jgg/pA9nSS6LZ9+fOiQHetDdCzG9Q2eSm98SrFmef3v
	3woUQQCM4V3aCRSO/WWfRj8iTUWNM/a8x0sX0eg=
X-Google-Smtp-Source: AGHT+IHU+CB4QZ2OJWYEgUGvdVTNBNFu1OiyxgZ2cR8UrYd0Ux1Lf6UhQ92JL8WRTdNT25Xoa4OP0UDANrTF85wpmTY=
X-Received: by 2002:a2e:5050:0:b0:2c5:1d11:5691 with SMTP id
 v16-20020a2e5050000000b002c51d115691mr27520ljd.28.1700592082206; Tue, 21 Nov
 2023 10:41:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAPnjgZ3=HxH10KYkrE+1mYtPiYe4KJMD+zekTjpq6oq_qZ5kxA@mail.gmail.com>
 <CAMWxwJ1MbJ1US8g2-hXGbr-X4RncioHn9MTp9YK=8kXaQS4srA@mail.gmail.com>
 <CAMj1kXG2GxhM2nz04SEoj+FLyODs17pF7wBFqN0qXkOWhVHxcA@mail.gmail.com>
 <CAPnjgZ0YqiOuqCrfA9nZ_PD-Xep-T0YhR5Sxdwb=5Z0583UQJw@mail.gmail.com> <BN9PR11MB5483A1BF2EF6A54DB70CCB0FE6BBA@BN9PR11MB5483.namprd11.prod.outlook.com>
In-Reply-To: <BN9PR11MB5483A1BF2EF6A54DB70CCB0FE6BBA@BN9PR11MB5483.namprd11.prod.outlook.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 21 Nov 2023 13:41:10 -0500
X-Gmail-Original-Message-ID: <CAMj1kXG-rzPBaQSwjJmnWY-TB0P1=Lw4y77TC6cMJeHK9ceGfA@mail.gmail.com>
Message-ID: <CAMj1kXG-rzPBaQSwjJmnWY-TB0P1=Lw4y77TC6cMJeHK9ceGfA@mail.gmail.com>
Subject: Re: DMA not supported below 4GB
To: "Chiu, Chasel" <chasel.chiu@intel.com>
Cc: Simon Glass <sjg@chromium.org>, "Tan, Lean Sheng" <sheng.tan@9elements.com>, 
	Devicetree Discuss <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	"Guo, Gua" <gua.guo@intel.com>, "Dong, Guo" <guo.dong@intel.com>, 
	"Brune, Maximilian" <maximilian.brune@9elements.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 21 Nov 2023 at 12:47, Chiu, Chasel <chasel.chiu@intel.com> wrote:
>
>
> Hi Ard,
>
> I'm not familiar with how dma-ranges will be utilized, could you educate =
me more?
> For example, PlatformInit may assign dma-ranges =3D <0 0x100000000> // 0 =
~ 4GB, but we still want to prevent DMA access from some sensitive regions =
within this huge range.

dma-ranges is typically used to describe how DMA addresses map to CPU
physical addresses, (i.e., how the interconnect is wired up) and
consists of a series of <cpu addr, dma addr, size> triplets describing
which regions are valid and how they are translated.

I suppose it would be possible to omit some otherwise accessible RAM
regions from this description, but it will only prevent the DMA
software layer from using the region, which it shouldn't be doing
anyway if it is not available for allocation. IOW, the device will
still be capable of DMA'ing into the memory if the hardware permits
it.

> Does that mean we rely on reserved-memory node to prevent DMA from some r=
egions?

/reserved-memory prevents RAM from being used to allocate DMA buffers,
but it does not prevent a device driver from creating DMA transactions
that access this memory.

> Or are there any other nodes that PlatformInit/Payload has to provide?
>

If you want to prevent DMA access to sensitive RAM regions, you need
an IOMMU, in which case you need to set dma-ranges appropriately for
the DT node that describes the IOMMU, and everything else is managed
by the IOMMU driver.

If you don't have a IOMMU, playing with 'dma-ranges' is only going to
give you a false sense of security (IMHO), given that it does not
prevent the hardware from accessing the memory. (e.g., any DMA capable
device using descriptors in RAM could be tricked into accessing the
memory when such a descriptor gets corrupted)



> > -----Original Message-----
> > From: Simon Glass <sjg@chromium.org>
> > Sent: Tuesday, November 21, 2023 9:38 AM
> > To: Ard Biesheuvel <ardb@kernel.org>
> > Cc: Tan, Lean Sheng <sheng.tan@9elements.com>; Devicetree Discuss
> > <devicetree@vger.kernel.org>; Rob Herring <robh@kernel.org>; Guo, Gua
> > <gua.guo@intel.com>; Chiu, Chasel <chasel.chiu@intel.com>; Dong, Guo
> > <guo.dong@intel.com>; Brune, Maximilian <maximilian.brune@9elements.com=
>
> > Subject: Re: DMA not supported below 4GB
> >
> > Hi Ard,
> >
> > On Tue, 21 Nov 2023 at 10:31, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > dma-ranges is supposed to handle this, but I'm not sure how well it
> > interoperates with SMMUs (which remap DMA addresses into a virtual addr=
ess
> > space, and this can both solve and create issues when it comes to DMA a=
ddress
> > limits).
> > >
> > > Adding a 'no-dma-above-4g' property is a bad idea. Not only does it
> > > result in potential inconsistencies wrt 'dma-ranges', it also only
> > > describes 32 bits of DMA addressing capability, and other DMA
> > > addressing limits exist too (40 bits is also common)
> >
> > OK, thank you for that. We will use dma-ranges for this.
> >
> > Regards,
> > Simon
> >
> > >
> > >
> > >
> > >
> > > On Tue, 21 Nov 2023 at 12:01, Lean Sheng Tan <sheng.tan@9elements.com=
>
> > wrote:
> > >>
> > >> Added Ard for some input on this.
> > >>
> > >> Best Regards,
> > >> Lean Sheng Tan
> > >>
> > >>
> > >>
> > >> 9elements GmbH, Kortumstra=C3=9Fe 19-21, 44787 Bochum, Germany
> > >> Email: sheng.tan@9elements.com
> > >> Phone: +49 234 68 94 188
> > >> Mobile: +49 176 76 113842
> > >>
> > >> Registered office: Bochum
> > >> Commercial register: Amtsgericht Bochum, HRB 17519
> > >> Management: Sebastian German, Eray Bazaar
> > >>
> > >> Data protection information according to Art. 13 GDPR
> > >>
> > >>
> > >> On Tue, 14 Nov 2023 at 23:17, Simon Glass <sjg@chromium.org> wrote:
> > >>>
> > >>> Hi,
> > >>>
> > >>> Some devices do not support DMA above 4GB. Is there a way to expres=
s
> > >>> this in the devicetree?
> > >>>
> > >>> Should we add sometimes a 'no-dma-above-4g' property?
> > >>>
> > >>> Or should we be using dma-ranges for this?
> > >>>
> > >>> Regards,
> > >>> Simon
> > >>>

