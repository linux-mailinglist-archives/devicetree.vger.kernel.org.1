Return-Path: <devicetree+bounces-80041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C507917B69
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:52:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FB682885BE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 08:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FFD8166310;
	Wed, 26 Jun 2024 08:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="110qbHsx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE75EEC3
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719391958; cv=none; b=p8dTtLYJxolgUHlOvrvRZZc5Y2rm4HwWg/Jabj5j/h7Y4mXrl0l0/rtGWPMVjMli+PSN5XIpxYjL/MSBe4baGxquRy4Arr9eTvR8LaUDZIbZ01jsfVEOr/5MGBv3XPTFK3FS3vLwpsfg0pmzZkwnMDm1RnUkDoNSU2/oBWsqiYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719391958; c=relaxed/simple;
	bh=TiZE0yXcJ7srnZOiYp3z1sAVGFfX8eOrc+2xwy3JGqQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Md/86DwMYW47sAA2uv2x6e6ZIjnZrtmXNH/5NaxG5xYoyM8a+BDdr70QOYlwgaZqBerMgY1S/N6AUA7fAwYThDaZ8KIYSoGwLV/7AyUQ+Dtq774xJcsG+GapLkokBkwDSNRk8FLbs7D2Vj5CdHwJG2fnP2lMbzPuM2kvYLl37SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=110qbHsx; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4450111d54dso186101cf.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 01:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719391956; x=1719996756; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdqyfAQH22fNsPG4ZSuANffNhA17gGQ/2s35bKca05I=;
        b=110qbHsxjl9a35TXkJ0zsqdRDBJgovjJCvnvCp11gq0zNsSpgr4aavt9Qu9uL3BuJd
         EYCUq/0w2Q+/82kVKvKvmwRY1bRHJKmGw/6ZZa864kJdrup4kksvTlbGT751lyT98rYi
         YVfjOuKKc3YMaDPqmII9BYPcXJEG05fbj33ovgSdhexsF3I7LTqC0+H9fj0NADc4oAL1
         r89rgOEI9FotJu0n9DLfzpzIsWI5UeVVoKkHxT8sO2MnME9f9UfJfLW+tC2N3lpQjPTz
         ggTiYhu/f6G86hjTKALz+6jsh4+SK08dYffsscDgoDXUUAuQTEO51gSenNVW+xElkGR/
         rLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719391956; x=1719996756;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdqyfAQH22fNsPG4ZSuANffNhA17gGQ/2s35bKca05I=;
        b=sLOgTWRTVzcDQiOhbBHvIiPgGB0+LThT0LOESX/v8KXRJ5VuINc6ZnnWOeLCMz1/Yw
         RfrqEjyk3Eprk6IbpP8IlE5w6+JLkZ3Wt9yD42/V5A/iwcst0hR4Av5EE8g+mWTn2Wg1
         wvHAUrU+rTG52DHUOYuOrZpLp/fB6UpVQknysn4tycV/KR+duL58ZYQD3nfFCFd0xYTD
         zR8RUUrxjaAq8hNlT2MJG2+hGXHVKBZX3VZBQXsqrRyt8f09lNZLDZTvsHGzEa6qlo+H
         T5INTuvc/gxIJaqcXguFWDK448BNjeHkeNR0XSveSy6B/zbdzKZOe5Lwy6yQ1rgnbQZv
         J3xA==
X-Forwarded-Encrypted: i=1; AJvYcCUX+/Ow7SWajODzOxxgyfCY8O49thvz6Qj3J7BM6NbBeocWIwuKhhXQeTTxrsR1LdOswUeDuhheyttc1m2nD9kZnvOm28dj4n7P1A==
X-Gm-Message-State: AOJu0YwL9FXTIL9XJi6iu37UYc5uwW6Ba5VZlydk67FsEPTWpH/2f6mE
	Gwh/Ny2oyluFM9vLWoj2+vAuV9sP4/hkneVzaEPI/8KjUYocP5trJLQdjFcV7LcmPqIythJzclq
	OWZNpHrNRdCz7KiPIT9KgZetEXNsoJkjFyOcC
X-Google-Smtp-Source: AGHT+IGoW1st5jgyFmCNO3SQEDHLTOES20gkf1BUZidR2x+6HDeMctSqAK7jTHxc/JVAt40OQsfF5JwQda+XPTtf8f0=
X-Received: by 2002:a05:622a:1345:b0:444:d637:305b with SMTP id
 d75a77b69052e-44504a965femr2544521cf.4.1719391955379; Wed, 26 Jun 2024
 01:52:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240626052238.1577580-1-aniketmaurya@google.com>
 <20240626052238.1577580-2-aniketmaurya@google.com> <e28ba03d1df1c0c5aec987411c40e44fc351ce0d.camel@codeconstruct.com.au>
 <c15045b4-2e5f-4fcc-b25c-76a5e4973e93@linaro.org> <b4ba5fa7834fdfb1a1e26ff0e01b9bb235de63b5.camel@codeconstruct.com.au>
In-Reply-To: <b4ba5fa7834fdfb1a1e26ff0e01b9bb235de63b5.camel@codeconstruct.com.au>
From: "Aniket ." <aniketmaurya@google.com>
Date: Wed, 26 Jun 2024 14:22:24 +0530
Message-ID: <CAMmmMt25nkZTXXLCVGv1baf3azQR0kwbM8LP4EzCQKOPLUhbVQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: i3c: dw: Add property to select IBI ops
To: Jeremy Kerr <jk@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Joel Stanley <joel@jms.id.au>, 
	Billy Tsai <billy_tsai@aspeedtech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-i3c@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeremy,

> Aniket: the hardware you're dealing with there may need a new, specific
> compatible property, which will dictate whether we enable IBIs in the
> driver.
>
> For cases where no other special behaviour is required, we can
> represent this just as an entry in the OF match table.

Actually I see that IBI support is always present in the HW(DW I3C
IP). It's just that we have
an option in SW to decide whether to populate function pointers for IBI or =
not.
So can we remove this selection of ops and always go with ibi ops?

Thanks,
Aniket.

On Wed, Jun 26, 2024 at 1:48=E2=80=AFPM Jeremy Kerr <jk@codeconstruct.com.a=
u> wrote:
>
> Hi Krysztof,
>
> > > > +  ibi-capable:
> > > > +    description: Set to select IBI ops.
> >
> > What are IBI ops? Standard form letter:
> >
> > You described the desired Linux feature or behavior, not the actual
> > hardware.
>
> In this case it is the actual hardware; my understanding is that the
> gateware IP can be configured to support in-band-interrupts or not,
> before being baked-in to hardware.
>
> > > Wouldn't the compatible string select whether the hardware instance
> > > supports IBI or not?
> > >
> > > I'd imagine that each specific synthesis of the DW IP would imply
> > > corresponding hardware settings, and so would warrant its own
> > > compatible
> > > value.
> > >
> > > Maybe one for the DT folks: would this work better as individual
> > > properties? Is there a policy here?
> >
> > Usually if feature is specific to given hardware, e.g. always capable
> > of foobar, then it can be deduced from compatible, so no need for new
> > property.
>
> Sounds good.
>
> Aniket: the hardware you're dealing with there may need a new, specific
> compatible property, which will dictate whether we enable IBIs in the
> driver.
>
> For cases where no other special behaviour is required, we can
> represent this just as an entry in the OF match table.
>
> Cheers,
>
>
> Jeremy

