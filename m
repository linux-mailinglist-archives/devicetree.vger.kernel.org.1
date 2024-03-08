Return-Path: <devicetree+bounces-49274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D04B875C63
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 03:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA9CB1F21CDA
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 02:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31B728DD1;
	Fri,  8 Mar 2024 02:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dLdTOEbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34B128DBF
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 02:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709865879; cv=none; b=R9cJNO+lv6LWgzdO5d+Eax96R8cNyARRotSRiLub7yU1YeNgo49pBG2/1BOjeJ0BCvyT2Zi8LGitMZgyT5bjyDek3cSrJLdv38I2pOH88u+1WUDh5wcf4D46rwZIjXENXmFfcISpmFb9t1/SFs3yIw+i61MkQ271g8i9dMQbD8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709865879; c=relaxed/simple;
	bh=fSQs6edR7FFIscZnvuVJJSuwUJjidAWISLuv00JfLLM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JQWIQA/9t+RZC7zEKkg4WcdYkc4EKT3h5v7isGud7ulQoimOl6Uhi0cv210SI4k5xSIe2Ttv/B5dVsCb2D+6XwW6z6rEMmy5aZ0aeVNpdROgLA0GGURBMnB3wF2rZ/B0vFknkQm9jb/h7L1YQSmVh+5WW8sOUvy21E689WwfWFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dLdTOEbp; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-68f41af71ebso14789486d6.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 18:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709865877; x=1710470677; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JxG3C1fNlHZOl1qKhga4bIFtxN+IbPgWY3WbkNFh0bI=;
        b=dLdTOEbp2ObpxZMn65sla/kwZo6SneJwaBY+SudLypUyHvMOSCEeN4xn4YWfHFBd4N
         yTIlUFeOilOHkSzLYd0Mx/LAuT0UaxY6A3u25gaWYJtiWRt0WyjSGCbPMJv7RmQ3p8kC
         faLO6wPkQ9o+Vafd/0NPgBdXI1yPEQVFxKEhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709865877; x=1710470677;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JxG3C1fNlHZOl1qKhga4bIFtxN+IbPgWY3WbkNFh0bI=;
        b=hvAIzQIbXrnbth/nb9/XG3eJ99bjhBAzmqt6GAgk8y+JjyvKRm1SAMlPEZLrHMF+qY
         OoBUB83qVmLwRdhXJWyW592YA6LpZLzTS0FxDyO1g+Cup1uUIKgYNB+PUHPUwvWkFj60
         M9Yz53D0QPEVDqJIFQIzCqdRbtOkjEV1d107I/uQX0Lyw16OZbNl0SZ+ldixRZFB3c6/
         V+mjjXnxjptTcBlpbNqzu4tLS1GqrLNQq4P6kfiWmja4JV6zdesM5X6xKIxIUzZL8/dN
         2FvQOWaonsh6r34QEWE075gJaY01WR12kFkqj+wYEXO1paBvMKlwLKKmG7+SFYv1lCYr
         ElUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyLTtJ1utBOPtqlOkZjcSv0j+FXVOrMfh6vVnljRGggCLYzVOpesOroAhIKRj7dS4U+IizVyajFn5LzpxbQ0DrxAfSoI8KOFm5Vw==
X-Gm-Message-State: AOJu0YzSubmGE+hW76qbDpmpo/kAzPmcTnpeXlsV/IvIFX4cdU/COklV
	58mWSJOQMH2Z5RZv2rN1RJVTrVRJrulh9kKvILlu8sZ02o3Y+NjHe0ybqTDOo5JRE9BpytI0xe+
	Mqdf+xTFXxD3JI4peRFlaPn0gIYk+6BUHOvuJ
X-Google-Smtp-Source: AGHT+IHLOplxAthwVDMa5iIYXqMD2Wnv9EgNG65kksgNcwXIp1Hft/8lhsMRr2JKI0egPut76qGLphqo65qwRyxwU6g=
X-Received: by 2002:a0c:ec47:0:b0:690:aaa8:a019 with SMTP id
 n7-20020a0cec47000000b00690aaa8a019mr2720578qvq.47.1709865876833; Thu, 07 Mar
 2024 18:44:36 -0800 (PST)
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
 <20240205131755.3462084f@xps-13>
In-Reply-To: <20240205131755.3462084f@xps-13>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 8 Mar 2024 15:44:25 +1300
Message-ID: <CAFLszTh3t6wPz8PFhFzazTAGaLVpObkjY9qv7MtSkQ21zZFzKA@mail.gmail.com>
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

On Tue, 6 Feb 2024 at 01:17, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Simon,
>
> > > > > > > > > > > > > +description: |
> > > > > > > > > > > > > +  The binman node provides a layout for firmware, used when packaging firmware
> > > > > > > > > > > > > +  from multiple projects. It is based on fixed-partitions, with some
> > > > > > > > > > > > > +  extensions, but uses 'compatible' to indicate the contents of the node, to
> > > > > > > > > > > > > +  avoid perturbing or confusing existing installations which use 'label' for a
> > > > > > > > > > > > > +  particular purpose.
> > > > > > > > > > > > > +
> > > > > > > > > > > > > +  Binman supports properties used as inputs to the firmware-packaging process,
> > > > > > > > > > > > > +  such as those which control alignment of partitions. This binding addresses
> > > > > > > > > > > > > +  these 'input' properties. For example, it is common for the 'reg' property
> > > > > > > > > > > > > +  (an 'output' property) to be set by Binman, based on the alignment requested
> > > > > > > > > > > > > +  in the input.
> > > > > > > > > > > > > +
> > > > > > > > > > > > > +  Once processing is complete, input properties have mostly served their
> > > > > > > > > > > > > +  purpose, at least until the firmware is repacked later, e.g. due to a
> > > > > > > > > > > > > +  firmware update. The 'fixed-partitions' binding should provide enough
> > > > > > > > > > > > > +  information to read the firmware at runtime, including decompression if
> > > > > > > > > > > > > +  needed.
> > > > > > > > > > > >
> > > > > > > > > > > > How is this going to work exactly? binman reads these nodes and then
> > > > > > > > > > > > writes out 'fixed-partitions' nodes. But then you've lost the binman
> > > > > > > > > > > > specifc parts needed for repacking.
> > > > > > > > > > >
> > > > > > > > > > > No, they are the same node. I do want the extra information to stick
> > > > > > > > > > > around. So long as it is compatible with fixed-partition as well, this
> > > > > > > > > > > should work OK.
> > > > > > > > > >
> > > > > > > > > > How can it be both? The partitions node compatible can be either
> > > > > > > > > > 'fixed-partitions' or 'binman'.
> > > > > > > > >
> > > > > > > > > Can we not allow it to be both? I have tried to adjust things in
> > > > > > > > > response to feedback but perhaps the feedback was leading me down the
> > > > > > > > > wrong path?
> > > > > > > >
> > > > > > > > Sure, but then the schema has to and that means extending
> > > > > > > > fixed-partitions.
> > > > > > >
> > > > > > > Can we cross that bridge later? There might be resistance to it. I'm
> > > > > > > not sure. For now, perhaps just a binman compatible works well enough
> > > > > > > to make progress.
> > > > > >
> > > > > > Is there any way to make progress on this? I would like to have
> > > > > > software which doesn't understand the binman compatible to at least be
> > > > > > able to understand the fixed-partition compatible. Is that acceptable?
> > > > >
> > > > > There's only 2 ways that it can work. Either binman writes out
> > > > > fixed-partition nodes dropping/replacing anything only defined for
> > > > > binman or fixed-partition is extended to include what binman needs.
> > > >
> > > > OK, then I suppose the best way is to add a new binman compatible, as
> > > > is done with this v6 series. People then need to choose it instead of
> > > > fixed-partition.
> > >
> > > I'm sorry this is not at all what Rob suggested, or did I totally
> > > misunderstand his answer?
> > >
> > > In both cases the solution is to generate a "fixed-partition" node. Now
> > > up to you to decide whether binman should adapt the output to the
> > > current schema, or if the current schema should be extended to
> > > understand all binman's output.
> > >
> > > At least that is my understanding and also what I kind of agree with.
> >
> > I do want to binman schema to include all the features of Binman.
> >
> > So are you saying that there should not be a 'binman'  schema, but I
> > should just add all the binman properties to the fixed-partition
> > schema?
>
> This is my current understanding, yes. But acknowledgment from Rob is
> also welcome.

I am trying again to wade through all the confusion here.

There is not actually a 'fixed-partition' node. So are you saying I
should add one? There is already a 'partitions' node. Won't they
conflict?

Would it be possible for you to look at my patches and suggest
something? I think at this point, after so many hours of trying
different things and trying to understand what is needed, I could
really use a little help.

Thank you,
Simon

