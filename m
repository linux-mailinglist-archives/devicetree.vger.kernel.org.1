Return-Path: <devicetree+bounces-187927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70674AE1D0A
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:10:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7F705A2977
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 14:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECDBB28E578;
	Fri, 20 Jun 2025 14:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="3UdFHXIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406EE28D8E9
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750428616; cv=none; b=PohkFn8FMUNdcj05qJfiVsIAJbNxOqIdV4UMnQ8RxspFUrmlCT7V1PpSlQm1fX8N47R3lvlOWhJsfJJ3kJh8+RrBqA+nHIvSCRfARBvgQD6UiVwa/6l1j7w68zUcgkSd8P3wVhAmDmbPMSrdeaJqzhax+TlibzjfpU1Ws6z14F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750428616; c=relaxed/simple;
	bh=TjGiW7i9K3ODr2HIBkdPJY5MK/H2xVSqGYS4lHnPSws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Uhq9iVQu3bGrGqBiNcNrhB+Aod5rH4aczb98fFke4+cBPTCoN282Zrd9DS8IAgf9rMItT8iRUTyhTkJjywB6Hm0jpeUTujYeMSRLXejZ1BGmOZt/buHCP7jy+VUqlaZAuXS8AKZzk9Ctml7gv7+x4inH0w/PwULhpEt2QVO00gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=3UdFHXIV; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-708d90aa8f9so19009527b3.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 07:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750428613; x=1751033413; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r+pLxQe4eVRAY0bh5C+6wdQnLVkUY9s5flt9lCy/28I=;
        b=3UdFHXIVLpDk8PG41k8WyMpOoDdxWWzipQm9Wpjb2LgaoKVllqPzS5UNvuPCsgZtlW
         f5lx3j7ezN3PRAfzXIMTjqK16G59N9BbhR4DGlM+de756yeg5b3nCBXszyeEcAFx+IRq
         UL50dXATwiza4s7PBocviT1aEJwsu7Ob2OVfVtdSxyPUHRmOfELFCsxP4I4k8SxJe5LJ
         dq3ZDhpBn7CkkkFHTHCbeecUXhtUG2nJJHxB9bv5rQnYl2+k/rAuClaeqSAcprDt//Ys
         1UCRdp6uJtY4R5YrgwgBwIZWj9pr91qz2z3M5JZF9f9JjNob+Ow11HRNJL9fT49l9vz+
         KzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750428613; x=1751033413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r+pLxQe4eVRAY0bh5C+6wdQnLVkUY9s5flt9lCy/28I=;
        b=Ij3nBC6jErHmXkAYP8ii+6lhE0ibLNU0uEdxpN+vtb7Wt9DhawQu/NBZYAr7Yo0s1X
         VCAbAcPgtJQbrPYRuqUHnJK+iS+pxsXmIhX+CDt0jcTFSAGJmKBR66r4wSi/xRwelviL
         PGQfREr9xDHoJDvkjSzLn/tzDn3/MBgx6JNC5+qwo4CDfmMHMhgQq/ixuQrxDcZgLpoP
         IwoSlH+NOtodP95EgBYQ7woWs9Q6hHZmXRyuIjsPDMG9zY+fwwMCNMF/vm+aqiyKukHK
         ZDOwWNV09igzUSgDcdSS11dLNS0aPSqdQGZxK+7IKYY60EPxkDRw4YJdyjhNt/Mx7elV
         4lTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKyq9oJQM9yWxbnarRlj+OLfXT8pwHfhSfc1FlPgDPmsJY6efJKAkv6JpObnnc7JAH87typ63wYqKG@vger.kernel.org
X-Gm-Message-State: AOJu0YzIRVgM7uZ2BmiZqaV3aDqhVYEGiegmFCiRv6toLjp+z1eqR2GE
	ixAMz5Bt5pk6eSBwMiX+YA4+UGlvSQIVd/Wl6xbG+rtmOgaleW6/XBMhQbZ4dgIKQl+yM1HNSgY
	ZDcV4REyFgUIinzUfXvXYTuZuyzPDm4McRarrt7liLQ==
X-Gm-Gg: ASbGncslidvaJ8HFyQo3hsFGx3KigTxOC/45auiAQ3nsThUTl93iE/lf4HRtQCvJPq3
	4wy5VgY8+C/lhM30qUP2ohbFE/0nIz2mWOZCNcLjSrCv4q95HNUvlwv6V1N6oxIRC5nI1TKdjlX
	MibVeQSAbRyxVK4tYANH74SpAnqtfAXWI8sM5W8Q3Mpik=
X-Google-Smtp-Source: AGHT+IErXi1FXvWIfcINPIC2kRfbQWrm886Vqr6UoQFGwv43uK/gV2FH6lDzRfIyRbnRc7wq5KlIwUNxU6fp12JvFqM=
X-Received: by 2002:a05:690c:6b85:b0:710:f74b:61ab with SMTP id
 00721157ae682-712c63ed50amr38667807b3.9.1750428612962; Fri, 20 Jun 2025
 07:10:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250617-k1-dma-buses-rfc-wip-v1-1-c8ec192fbf58@iscas.ac.cn>
 <5cc644f8-7394-48f2-b62b-1e7cd5ce27d3@ieee.org> <9e5e54a9-ef90-4a87-b082-d6eb9c7468c5@iscas.ac.cn>
 <20250620105619-GYA165049@gentoo>
In-Reply-To: <20250620105619-GYA165049@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 20 Jun 2025 22:10:01 +0800
X-Gm-Features: AX0GCFv9n0bzPRKSi_EV7zEUnvgGx0rfSCuPNUTx-ocg18nmlNPk27cj-wTyKM8
Message-ID: <CAH1PCMZibCc-P7JQf4WyhkKuT607bWppKfKQ-7eo7-PyNGDAOg@mail.gmail.com>
Subject: Re: [PATCH RFC] riscv: dts: spacemit: Add DMA translation buses for K1
To: Yixun Lan <dlan@gentoo.org>
Cc: Vivian Wang <wangruikang@iscas.ac.cn>, Alex Elder <elder@ieee.org>, 
	Ze Huang <huangze@whut.edu.cn>, spacemit@lists.linux.dev, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 20, 2025 at 6:56=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Vivian, Alex,
>
> On 23:42 Thu 19 Jun     , Vivian Wang wrote:
> > Hi Alex,
> >
> > Thank you for your comments on this.
> >
> > On 6/19/25 23:11, Alex Elder wrote:
> > > On 6/17/25 12:21 AM, Vivian Wang wrote:
> > >> The SpacemiT K1 has various static translations of DMA accesses. Add
> > >> these as simple-bus nodes. Devices actually using these translation =
will
> > >> be added in later patches.
> > >>
> > >> The bus names are assigned according to consensus with SpacemiT [1].
> > >>
> > >> [1]
> > >> https://lore.kernel.org/all/CAH1PCMaC+imcMZCFYtRdmH6ge=3DdPgnANn_GqV=
fsGRS=3D+YhyJCw@mail.gmail.com/
> > >
> > > So what you include here very closely matches what Guodong
> > > said in the message above.  Yours differs from his proposal
> > > and that makes it hard to compare them.  I have a few comments
> > > on that below.
> > >
> > >> Signed-off-by: Vivian Wang <wangruikang@iscas.ac.cn>
> > >> ---
> > >> This is my concrete proposal for representing DMA translations for
> > >> SpacemiT K1.
> > >
> > > It's worth acknowledging that this is derived from what Guodong
> > > proposed (it's not "your" proposal in that respect).  That said,
> > > yours is a more complete and "formal" RFP than what he wrote.
> > >
> > I had thought that since the addresses were already there in vendor's D=
T
> > [2], and the names were provided by SpacemiT, anything other than the
> > names was "well-known information". In retrospect, I should have made
> > the chain of information of this clearer and make it explicit that this
> > was based on Guodong's note.
> >
> > So, just to be clear, the information in my proposal is based on
> > Guodong's reply [1] (link the quoted text), which I had assumed, but no=
t
> > explicitly confirmed, was based on already addresses in SpacemiT's DT
> > and names provided by SpacemiT.
> >
> > [2]: https://github.com/spacemit-com/linux-k1x/blob/k1/arch/riscv/boot/=
dts/spacemit/k1-x.dtsi
> >
> > >> For context, memory on the SpacemiT K1 is split into two chunks:
> > >>
> > >> - 0x0000_0000 to 0x8000_0000: First 2 GiB of memory
> > >> - 0x1_0000_0000 above: Rest of memory
> > >>
> > >> DMA-capable devices on the K1 all have access to the lower 2G of mem=
ory
> > >> through an identity mapping. However, for the upper region of memory=
,
> > >> each device falls under one of six different mappings. The mappings =
are
> > >> provided in this patch as simple-bus nodes that device nodes should =
be
> > >> added to.
> > >>
> > >> This patch is an RFC because it is not meant to be applied, or at le=
ast,
> > >> not certainly meant to be applied. Instead, this is an attempt to co=
me
> > >> to a consensus on how these bus nodes should look like.
> > >
> > > I think the above is what Krzysztof might not have seen.  Perhaps
> > > it could have been made more clear--maybe in the "main" description
> > > section (above the ---) or even the subject line.
> > >
> > Yeah, that's my mistake in organizing the paragraphs.
> >
> > >> More specifically, I propose that the process proceeds as follows:
> > >>
> > >> - Firstly, relevant parties agree on these bus nodes given here.
> > >> - After that, each time the first user of a bus appears, the series
> > >>    should include a patch to add the bus required for that driver.
> > >> - If a driver being submitted uses the same bus as another one that =
has
> > >>    been submitted but hasn't yet landed, it can depend on the bus pa=
tch
> > >>    from that previous series.
> > >
> > > Getting agreement is good, but otherwise this is basically
> > > the process Guodong was suggesting, right?
> >
> > Hmm, actually re-reading the discussion now, I realized that I may have
> > come to this late and missed out on some previous discussions, which
> > were alluded to in Yixun's messages. (This is again thread around link
> > [1] in quoted text.) This led me to believe that some of these were not
> > really agreed upon.
> >
> > I also realized I think one of the things I may have not yet made clear
> > is that I would like the bus node to be a *separate* patch. I think thi=
s
> > makes sense, because it's dealing with two different subsystems.
> >
> > >
> > >> For conventions regarding coding style, I propose that:
> > >>
> > >> - #address-cells and #size-cells are 2 for consistency
> > >> - These bus nodes are put at the end of /soc, inside /soc
> > >> - These bus nodes are sorted alphabetically, not in vendor's order
> > >> - Devices are added into *-bus nodes directly, not appended towards =
the
> > >>    end with a label reference
> > >
> > > I do like that you're trying to be more complete and explicit
> > > on what you think needs agreement on.
> > >
> > Being thorough was the main goal of this RFC. If there was previous
> > agreement on how dma-ranges should be done, I'm sorry for missing them,
> > but from my observations on the mailing list on how these ended up into
> > patches I really haven't seen much consistency. Maybe there was
> > misunderstanding, which I'm hoping to clear up.
> >
> > (Although see my paragraph above, maybe I haven't been thorough enough.=
)
> >
> > >> The K1 DMA translations are *not* interconnects, since they do not
> > >> provide any configuration capabilities.
> > >>
> > >> These bus nodes names and properties are provided compliant with
> > >> "simple-bus" bindings, and should pass "make dtbs_check".
> > >>
> > >> Remaining questions:
> > >>
> > >> - Should storage-bus exist? Or should drivers under it simply specif=
y
> > >>    32-bit DMA?
> > >
> > > Explicitly saying storage devices have one-to-one mapping
> > > seems informative, to me.
> sounds good to be explicit
>
> > >
> > >> ---
> > >>   arch/riscv/boot/dts/spacemit/k1.dtsi | 53
> > >> ++++++++++++++++++++++++++++++++++++
> > >>   1 file changed, 53 insertions(+)
> > >
> > > The short summary of what differs between your proposal
> > > and what Guodong said is:
> > > - You sort nodes alphabetically, Guodong did not
> > > - You dropped the unit address
> I'd agree with not adding unit number to the simple-bus
>
> > > - You dropped the comments he had, which indicated which
> > >   devices "belonged" to each mapping
> I went ahead and checked those comments, and found them all about
> devices under specific bus, I'm not strongly against adding the
> comments but feel it's kind of unnecessary, or even in worst cases,
> it may bring extra confusions.. on the other hand, you can always
> check  device nodes under the bus to find what's there.
>
> exmaple for dram4_range(vendor code)/dma_bus, the comments is
>  /* DMA controller, and users */
> what's is 'users'? still have to check the dts, and find them -
> uart, spi, i2c, qspi, hdmi, sounds..
>
> If people really want to add comments and help others to understand
> this patch, then I'd suggest to add explanation in commit message(better?=
)
> to fully describe all the busses, or why choose this name? -
>  storage/multimedia/pcie/camera/dma/network_bus
> pretty much in much high level perspective..
>
> > > - You added a compatible property to each ("simple-bus")
> > > - You added an explicit (empty) ranges property to each
> > > - You add #address-cells and #size-cells properties, both 2
> > > - Your dma-ranges properties are identical to Guodong's,
> > >   for all nodes
> I think those all above already exist in Guodong's version which
> align his idea
>
> > >
> > That was a good summary. Thanks!
> >
> > My main goal of organizing the bus this way is making it actually pass
> > "make dtbs_check". I'm not sure if Krzysztof still objects to my readin=
g
> > of simple-bus.yaml though.
> It would be great if DT maintainer can clarify, or give an ACK
>
> >
> > By the way, I don't think I will be making an RFC v2 of this. I think w=
e
> > should get everything sorted under this one thread.
> >
> Instead, from a SoC tree maintainer's perspective (whom taking care of
> merging all the dts files), I'd rather perfer an independent or
> separated patch for this given every party reached consesus, so we could
> get this patch merged first and early, instead of getting them distribute=
d all
> over in different series, IMO, separated patches brings more dedependenci=
es
> if more than two series require one bus and result in more merge conflict=
s..
> Besides, introducing new busses result in re-arrangement of previous node=
s,
> those like uart, i2c (even they have no DMA feature implemented currently=
)..
>

Hi Yixun,

So, here is my proposed plan: I will submit two patches. The first
patch will introduce the dma-bus node and move the relevant (uart0, uart2
..uart9) device nodes under it. The second patch will then add the pdma0
node itself. Please let me know if you have a different approach in mind.

Maybe you want to see an independent patchset with just the first patch? Th=
is
way it can be merged early without waiting for the pdma0 series.
Let me know. Thanks.

On a side note, you mentioned I2C. I searched for upstream I2C DTS nodes
for the K1 but couldn't find any. I checked the for-next/dt-for-next
branches in the spacemit-com/linux.git repository. Did I miss something?

BR,
Guodong


> >
>
> --
> Yixun Lan (dlan)

