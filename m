Return-Path: <devicetree+bounces-6507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF417BB9D6
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0B0D1C209B3
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833B32376B;
	Fri,  6 Oct 2023 13:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjcW8Oki"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FA979C3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32A4C433CB;
	Fri,  6 Oct 2023 13:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696600568;
	bh=rHD7QFG1kuyuEljxQvjPFr0ePIJUMMrr1bntIfI05Gg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OjcW8OkikAqoEu7Ge4PRuqARoche7a6osnDj40O6zJee/ypFSFieAe9bf4aNqMC7T
	 0oVgZyqTkZkX7iOXnMvKSRZ0sN8XWj85Eu9yJQZaBTXl/VG99pIFLuzCYZDjgGFiqp
	 z2GUTG16Nio8qnO7bZUW9tjp+Qgcm9tUtmDeqIshhmh/2eArNK6aQX8r0/MYYPeGzL
	 gxnmjjjNA/SdZcfGcuO+Um0lIu7tdcIZW6SBUQG9LNfQbjBtt/oW4ntfS+QcISa0xQ
	 2LTU/rQCUTHo8RlHckKNQ2cJN18aITETMwzQ330aem7lNh6pE697Thb9rogg08u0S0
	 0+s71RsW2IzFA==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-503056c8195so2811442e87.1;
        Fri, 06 Oct 2023 06:56:08 -0700 (PDT)
X-Gm-Message-State: AOJu0YwHZ5lRwGCX+r7Vg3ggoqRHe7MXALroDnsnEflaJzwaHq6k9xWz
	oBv3nRcNQZM2gJJJYElcZI+t9tjRSrSF0uQ1gQ==
X-Google-Smtp-Source: AGHT+IHHpu2L8oueJ5Di8HVuQHaHL4IovRt6CYy8zm2UeHKSG0tXMObD3JP+hyOmT9qvUcuWlTLhYFU2BBg6lMeKwRg=
X-Received: by 2002:a05:6512:34c6:b0:500:9a45:63b with SMTP id
 w6-20020a05651234c600b005009a45063bmr5713999lfr.13.1696600567071; Fri, 06 Oct
 2023 06:56:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005141536.77538147@canb.auug.org.au> <f70dec2a-dbdf-479c-af5b-a70db02b27b4@ti.com>
 <2905cfc2-912f-4620-9455-2e91586a2839@kernel.org> <20231005132921.2vg6kdcr273bh7et@cabbage>
 <fde87d28-ee5d-4e02-b824-27c1cb7c1e38@kernel.org>
In-Reply-To: <fde87d28-ee5d-4e02-b824-27c1cb7c1e38@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 6 Oct 2023 08:55:54 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+NXp_d1g507G=G+_cJ1s0GrM099JMNAj2MU4Dpaw=c8g@mail.gmail.com>
Message-ID: <CAL_Jsq+NXp_d1g507G=G+_cJ1s0GrM099JMNAj2MU4Dpaw=c8g@mail.gmail.com>
Subject: Re: linux-next: build warnings after merge of the ti tree
To: Roger Quadros <rogerq@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, "Raghavendra, Vignesh" <vigneshr@ti.com>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Tero Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Next Mailing List <linux-next@vger.kernel.org>, "Yadav, Nitin" <n-yadav@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 6, 2023 at 7:03=E2=80=AFAM Roger Quadros <rogerq@kernel.org> wr=
ote:
>
>
>
> On 05/10/2023 16:29, Nishanth Menon wrote:
> > On 16:12-20231005, Roger Quadros wrote:
> >> Hi,
> >>
> >> On 05/10/2023 11:25, Raghavendra, Vignesh wrote:
> >>> + Rob and DT list
> >>>
> >>> Hi Stephen
> >>>
> >>> On 10/5/2023 8:45 AM, Stephen Rothwell wrote:
> >>>> Hi all,
> >>>>
> >>>> [I may have missed this yesterday, sorry]
> >>>>
> >>>> After merging the ti tree, today's linux-next build (arm64 defconfig=
)
> >>>> produced these warnings:
> >>>>
> >>>> arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso:65.8-140.3: Warning (a=
void_default_addr_size): /fragment@3/__overlay__: Relying on default #addre=
ss-cells value
> >>>> arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso:65.8-140.3: Warning (a=
void_default_addr_size): /fragment@3/__overlay__: Relying on default #size-=
cells value
> >>>>
> >>>> Introduced by commit
> >>>>
> >>>>   45a0c06571e1 ("arm64: dts: ti: am642-evm: Add overlay for NAND exp=
ansion card")
> >>>>
> >>>
> >>> Thanks for the report. I will drop the offending comment.
> >>>
> >>> Roger,
> >>>
> >>> Sorry, this would need to be fixed in dtc or need exception from DT
> >>> maintainers to ignore the warnings.
> >>
> >> Please don't drop this patch as the issue is not with the patch but wi=
th
> >> the dtc tool itself.
> >>
> >> As this is a DT overlay there is no way to specify address-cells/size-=
cells
> >> of parent here. This will be resolved only after merge with base tree.
> >>
> >> This will be fixed in next dtc sync.
> >> https://www.spinics.net/lists/devicetree-compiler/msg04036.html
> >>
> >> See further discussion here
> >> https://lore.kernel.org/all/CAL_JsqLmv904+_2EOmsQ__y1yLDvsT+_02i85phuh=
0cpe7X8NQ@mail.gmail.com/
> >>
> >
> > Roger, build warnings are a strict NO,NO for kernel. Lets bring in the
> > series *after* the dtc sync is complete.
> >
>
> Hi Rob,
>
> Following commit from dtc is required to resolve this issue.
>
> afbddcd418fb ("Suppress warnings on overlay fragments")

That is from 2018, so it's been in the kernel's dtc for a long time.

I believe what you need is the patch I referenced which hasn't been
applied upstream.

> FYI. Another patch of similar nature is on its way and will also require =
the
> above commit to DTC.
> https://lore.kernel.org/all/20231005093739.4071934-3-n-yadav@ti.com/

You'll need to fix dtc first.

Rob

