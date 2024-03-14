Return-Path: <devicetree+bounces-50369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC4087B655
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 03:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26C7B1C20B3F
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 02:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0141A38F8;
	Thu, 14 Mar 2024 02:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="khKOdLPu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB9F1FB4
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710382543; cv=none; b=guW6/QnLkjja6ROahG/FRKRhizCY5M3dnYIe6dyj2K7afLCZfUyBsX3i9seRvbDGWK5lipE+1WB0IEsO+ajCTTCkDyrXOKR/j3rr26qdIQESRwMncFVYRXS2xe9fWh9ftxl0QP0wXjai+pDDGy/acloocjSWicwo9Wc8f3O3QFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710382543; c=relaxed/simple;
	bh=8D8DM2Ehu+d0G7A6rtunPe5CuzjyEvLi4IW+E1vOxMk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a1NnbSBQVPlLrsIvMswCAZrKTyWCA43eG2QX/c+mGYXti9JjAtB343u+Bul56j73bdVbixhA0WjMlNHQoj7Rlz9uOAEvhn55No+SW4zWA4C6sKqMcV+sS/vStjRsc4VgCLPBAJHkMh0b3AnC6bujmQ5BIUVjNg2FrzkDn4kChHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=khKOdLPu; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4d419b03fd9so184494e0c.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 19:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710382541; x=1710987341; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cn3bs1YfzZryCc5H7gkVB2XqHmwH+85IGt+IRJDcw7s=;
        b=khKOdLPuS4R1SP+tq/h4rgrbN2zznKEKXpE1F8e2CIFr3r0mTvY3FT5SwKqAeYKWQh
         HTkCgcHee55Sfodf5EbEweHx81wxlwJiETOPYcishcj1lOlovQn/l2Tsmj/eMNJkWvGo
         5TG+FQK3pZ+RX+gD1B+XW1p1JS5iExIDmgwWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710382541; x=1710987341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cn3bs1YfzZryCc5H7gkVB2XqHmwH+85IGt+IRJDcw7s=;
        b=Wmk6cwTevD0ghp5KlarXEKvTTpdWZstg/W80sW5y2L2FCqC8sb8XXMPQHwLfhhL14l
         fPHsAjMTyaK1t9E5veQY7x1hVjMXieo0L71o7FZzN15/i6jsK5RxPnkT2F0zfgLkS6+5
         EhxjuZjkEkuCDte+h+M8zmiCyfGfEyTQZXebYEIOX2ynGoA93uQ5novVkW6c7ieporSr
         uk5tz5zaCgIqIh/ZIn8IkNhPWrLpPq6vZ1faa8uTB6JTmOv0sMp5RO6HpvhLxK3AngUB
         of9tkQNEB83Es+wgcJ2pYkRalNlm/oc1WjuCthG/hDWGJVqEYDhwMdxF6++vpTduYiov
         kKTA==
X-Forwarded-Encrypted: i=1; AJvYcCVgWDnoJNm0G46C34BvG2wc4GT6qiN4JFE8bB12PrkPYkqdokTGN4ThE1CPq3vdW/v3gFQjVxn/CGYcOXSd0hlfKIYOm2cjDPnUDQ==
X-Gm-Message-State: AOJu0Yw4LDU7JS5Wu61f0FfKyugOfnBg7COA0I/zF6P8cCIMFPl3fz2b
	qsu1R28E7EKNTH96NQji62xM7r1oM7eyAJxWNeu8v3LeyvzfeBkUYJR4O02y1lDMy4Tm9KS8Pkp
	k7dWZgyXUy40jEJxnXhR0v8OpGX39Tk8vl7cl
X-Google-Smtp-Source: AGHT+IGcS4zTmTCpGZzm3ppXJXHiKW2RGfHCRm/zeO4viqblfB1ZUUXPJ6w9vvXza7ULZzQ1Y7mQUYRoZ7cwdlpkkjE=
X-Received: by 2002:a1f:fe8e:0:b0:4d3:3a8c:13ad with SMTP id
 l136-20020a1ffe8e000000b004d33a8c13admr655409vki.8.1710382540960; Wed, 13 Mar
 2024 19:15:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116172859.393744-1-sjg@chromium.org> <20231208150042.GA1278773-robh@kernel.org>
 <CAPnjgZ2i4gvgiUeHPOfHuOdBooV4e=QQEq6iMo0JbDwOS6dCwA@mail.gmail.com>
 <CAL_Jsq+xMZ8yz4H9D59uCSyX4h5W+4ruGF++=wVA=msXz+Y01A@mail.gmail.com>
 <CAPnjgZ1uW8T6woXSqFUNm301=W3zBYOrADREkrz=DuwSW87qZg@mail.gmail.com>
 <20231214172702.GA617226-robh@kernel.org> <CAPnjgZ2oJSGPO91Y_aLbe+v250WFrND4n3T0mOvhERYidVu=eQ@mail.gmail.com>
 <CAFLszTizRRVbRO6_ygE2X-Lp5dENWSc4uMGL5GPJAFGAbRdCyQ@mail.gmail.com>
 <CAL_Jsq+j7_KZtQ2ENq9+vsw0LOZF=spu293_G=AxOmBM+m_f-g@mail.gmail.com>
 <CAFLszTimaFw9sf=JKvQXG4fS6V_2T=2n+pfvYLCiuG1o+7cHPA@mail.gmail.com>
 <20240205085056.44278f2c@xps-13> <CAFLszTi+8ygXOidnhxj7sdJwc6X5i+++QvnUyfe-kde5eSts_w@mail.gmail.com>
 <20240205131755.3462084f@xps-13> <CAFLszTh3t6wPz8PFhFzazTAGaLVpObkjY9qv7MtSkQ21zZFzKA@mail.gmail.com>
 <20240308084212.4aa58761@xps-13> <CAFLszTi8w4gBoa-6uoKUN-Ng07ieA+DXy3gm2cdxfwgAybrgsQ@mail.gmail.com>
 <20240313083541.1e7d4a2f@xps-13>
In-Reply-To: <20240313083541.1e7d4a2f@xps-13>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 14 Mar 2024 15:15:30 +1300
Message-ID: <CAFLszThe8qTWM4GtpsLyy1+yyhN-MEfcPT2OcU1sd4ST=3n55Q@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: mtd: partitions: Add binman compatible
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, 
	Michael Walle <mwalle@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Miquel,

On Wed, 13 Mar 2024 at 20:35, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Simon,
>
> sjg@chromium.org wrote on Wed, 13 Mar 2024 11:25:42 +1300:
>
> > Hi Miquel,
> >
> > On Fri, 8 Mar 2024 at 20:42, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >
> > > Hi Simon,
> > >
> > > sjg@chromium.org wrote on Fri, 8 Mar 2024 15:44:25 +1300:
> > >
> > > > Hi Miquel,
> > > >
> > > > On Tue, 6 Feb 2024 at 01:17, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > > >
> > > > > Hi Simon,
> > > > >
> > > > > > > > > > > > > > > > > +description: |
> > > > > > > > > > > > > > > > > +  The binman node provides a layout for firmware, used when packaging firmware
> > > > > > > > > > > > > > > > > +  from multiple projects. It is based on fixed-partitions, with some
> > > > > > > > > > > > > > > > > +  extensions, but uses 'compatible' to indicate the contents of the node, to
> > > > > > > > > > > > > > > > > +  avoid perturbing or confusing existing installations which use 'label' for a
> > > > > > > > > > > > > > > > > +  particular purpose.
> > > > > > > > > > > > > > > > > +
> > > > > > > > > > > > > > > > > +  Binman supports properties used as inputs to the firmware-packaging process,
> > > > > > > > > > > > > > > > > +  such as those which control alignment of partitions. This binding addresses
> > > > > > > > > > > > > > > > > +  these 'input' properties. For example, it is common for the 'reg' property
> > > > > > > > > > > > > > > > > +  (an 'output' property) to be set by Binman, based on the alignment requested
> > > > > > > > > > > > > > > > > +  in the input.
> > > > > > > > > > > > > > > > > +
> > > > > > > > > > > > > > > > > +  Once processing is complete, input properties have mostly served their
> > > > > > > > > > > > > > > > > +  purpose, at least until the firmware is repacked later, e.g. due to a
> > > > > > > > > > > > > > > > > +  firmware update. The 'fixed-partitions' binding should provide enough
> > > > > > > > > > > > > > > > > +  information to read the firmware at runtime, including decompression if
> > > > > > > > > > > > > > > > > +  needed.
> > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > How is this going to work exactly? binman reads these nodes and then
> > > > > > > > > > > > > > > > writes out 'fixed-partitions' nodes. But then you've lost the binman
> > > > > > > > > > > > > > > > specifc parts needed for repacking.
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > No, they are the same node. I do want the extra information to stick
> > > > > > > > > > > > > > > around. So long as it is compatible with fixed-partition as well, this
> > > > > > > > > > > > > > > should work OK.
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > How can it be both? The partitions node compatible can be either
> > > > > > > > > > > > > > 'fixed-partitions' or 'binman'.
> > > > > > > > > > > > >
> > > > > > > > > > > > > Can we not allow it to be both? I have tried to adjust things in
> > > > > > > > > > > > > response to feedback but perhaps the feedback was leading me down the
> > > > > > > > > > > > > wrong path?
> > > > > > > > > > > >
> > > > > > > > > > > > Sure, but then the schema has to and that means extending
> > > > > > > > > > > > fixed-partitions.
> > > > > > > > > > >
> > > > > > > > > > > Can we cross that bridge later? There might be resistance to it. I'm
> > > > > > > > > > > not sure. For now, perhaps just a binman compatible works well enough
> > > > > > > > > > > to make progress.
> > > > > > > > > >
> > > > > > > > > > Is there any way to make progress on this? I would like to have
> > > > > > > > > > software which doesn't understand the binman compatible to at least be
> > > > > > > > > > able to understand the fixed-partition compatible. Is that acceptable?
> > > > > > > > >
> > > > > > > > > There's only 2 ways that it can work. Either binman writes out
> > > > > > > > > fixed-partition nodes dropping/replacing anything only defined for
> > > > > > > > > binman or fixed-partition is extended to include what binman needs.
> > > > > > > >
> > > > > > > > OK, then I suppose the best way is to add a new binman compatible, as
> > > > > > > > is done with this v6 series. People then need to choose it instead of
> > > > > > > > fixed-partition.
> > > > > > >
> > > > > > > I'm sorry this is not at all what Rob suggested, or did I totally
> > > > > > > misunderstand his answer?
> > > > > > >
> > > > > > > In both cases the solution is to generate a "fixed-partition" node. Now
> > > > > > > up to you to decide whether binman should adapt the output to the
> > > > > > > current schema, or if the current schema should be extended to
> > > > > > > understand all binman's output.
> > > > > > >
> > > > > > > At least that is my understanding and also what I kind of agree with.
> > > > > >
> > > > > > I do want to binman schema to include all the features of Binman.
> > > > > >
> > > > > > So are you saying that there should not be a 'binman'  schema, but I
> > > > > > should just add all the binman properties to the fixed-partition
> > > > > > schema?
> > > > >
> > > > > This is my current understanding, yes. But acknowledgment from Rob is
> > > > > also welcome.
> > > >
> > > > I am trying again to wade through all the confusion here.
> > > >
> > > > There is not actually a 'fixed-partition' node. So are you saying I
> > > > should add one? There is already a 'partitions' node. Won't they
> > > > conflict?
> > >
> > > Sorry for the confusion, there is a 'partitions' node indeed. This
> > > node shall declare it's "programming model" (let's say), ie. how it
> > > should be parsed. What defines this programming model today is the
> > > 'fixed-partitions' compatible. I think we (Rob and myself, but again,
> > > Rob, please confirm) agree on the fact that we don't want to duplicate
> > > the fixed-partitions compatible/logic and thus the binman compatible
> > > was rejected.
> > >
> > > Hence, in order to move forward, I would definitely appreciate an
> > > update of the fixed-partitions binding in order to support what binman
> > > can generate.
> >
> > OK, so I think my confusion is that I thought you were referring to a
> > 'partitions' compatible. But you are just referring to the name of the
> > node being 'partitions', with the compatible string being
> > 'fixed-partitions'.
>
> Yes.
>
> >
> > I believe I can make this work by adding a new 'binman.yaml' with the
> > compatibles that I want to introduce. I cannot change partition.yaml
> > since it does not itself specify a compatible.
>
> What about fixed-partitions.ymal? The yaml file name should match the
> compatible.

But we already decided we cannot add a new 'binman' compatible but
want to use the existing fixed-partitions.yaml

I cannot add compatible strings into that, since these are defined by
the default files which make use of partition.yaml

Anyway, I will see v7 so you can see what I mean.

>
> > > We are here talking about the output of binman, not its input. TBH I
> > > haven't understood the point in having binman's input parsed by the
> > > generic yaml binding. I would advise to focus on binman's output first
> > > because it feels more relevant, at a first glance.
> >
> > Yes that is fine.
> >
> > >
> > > > Would it be possible for you to look at my patches and suggest
> > > > something? I think at this point, after so many hours of trying
> > > > different things and trying to understand what is needed, I could
> > > > really use a little help.
> > >
> > > I hope the above details will help.
> >
> > I think so, thank you. I will send another version.
> >
> > Regards,
> > Simon

Regards,
Simon

