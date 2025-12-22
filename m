Return-Path: <devicetree+bounces-248795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F29CD5B97
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C77C300F187
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81F1A30FF39;
	Mon, 22 Dec 2025 11:06:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01E431AA81
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766401590; cv=none; b=qJ3sVRRsOT3/43wywAHns4cTflue4Wl2vpY3d+G+nAATYdvBJ1yZ7BddPtU8Kwd4LCBSriO25oG0QQWw3HRCq9JGSaGgpcW5Qc+STOF97d2qTaBQ5dWuwDVeU95EIi8D61TJZoeNTWcknoHwKGO/HX8WBWGFtHXH4d0lB2TY2tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766401590; c=relaxed/simple;
	bh=2RMd8TOLVHxevxDxNC2hXQNvxO8qy7FJKq0tM4xFWDg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y2qC5jHqVZee13gzR0q9Xb+a0gZy6OjZG5cFVawPUWjlPaV55UNGkYxI6MPFNu+J5guXE7dx/mGkuUZJH/0giZHrBTk4+0oSilMchtRoCzoPBVv89ad+Yg+2K+AcaH3uW91QdO7opDTkGscGOm40igj/4lKDtE75ndAvyKLgv20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f195.google.com with SMTP id af79cd13be357-8b2a4b6876fso554161185a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766401588; x=1767006388;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZvGT0H4XrwC6oZYNGXDbHChZKorQ8JtBsqLTAqv8b0=;
        b=eW+kUxdQe1j3ovQ9Zb/eeIwx1kATMMohfI87bzmrsoHx45A8kcPCgSouX6PWHqh3fe
         LXy85DOuWrvXL0MKbqkIZQ6ly65RaFw3s1//4vu30g5BrlyMeujQrfzV1C3n1jaJWs8O
         RuigrHpYgIxo7uDVbpSr4QzGB5aYT1Cof/x1/foEqO4vYKEFFr4fkA0jLkxqIkYc+jOI
         22rVEbPCXyqpOzN19HadwXN2oCBMl2HeqW1McO8VSfmXZ4UW0ARB4v8HarANeQ4Id4yS
         i7HteQWdmzqeyiIfYA0TGqlO9COWtY0jPZzjS/IMwLo6764tnoIU1xXiduCryyIaEHyy
         t6YQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEaIipAKwUee54e06QUv/TaqgNaH+N9RWqZsogQfXt+iZcHl7pDXfzNgI92pdI0KyiERNifp6B5x55@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4wnr6cKAnS2T/To/ujPPBUsPZsH88hlwrdHUpV7cejMEz1r8J
	GTjOVDMHPyEZ5Z4R9sz/myvhbVuku1VLChJ3+3rqRcjpwVqu9ko8pQjkQep7rLtTWV8=
X-Gm-Gg: AY/fxX700KzEW64syfbD6BHai14O5JfJ3ffZfd9PQT1OuO7WJy/5IxUSoxHM9pWe0Dz
	1Ka3XA5gsrWaVXhaDD8f/YtGipO0yfEQ47cWqk47is8y16HWfykOiWWkthscRnK9ZpEWLvW9yKu
	DVNqeWbqdoz1EH4AOgH4H2yOQb3+1Pbf9wdy66UtjeloOYEoGnKjQz5cKWltjqdorR9toB+VGlu
	HKsnuPJd47DnWish04Kb8cHragjcYOv+zUVKXaj0pHQito86Y0exGvO3tytgSjsEQMlPjIUMxPA
	ivsEY1XFlhm/5xE2FvcXdXZVxBLgMxKjVln88JjH7oE24WGSnjV0o0cUUCR7XJpHWxgOz6zTCxf
	2se4qmRnbtlxxS6zVqBpaNHrQH6otjsBiFesIxLyuALGAwLl5FKturYNx1gvNtRCLTH9Ns7wm68
	SiBtfU1V3XNMHTLKXp4vOR879gx9uLq2j3IXCevX0pmZ+xWZvH2SSI
X-Google-Smtp-Source: AGHT+IFAad4fsf1pgHkOCHhpmiy7nsNhD0u0WKbL941ACWHMPM7jtNt6iKOJTNbIDRMi7qlFwSw3vQ==
X-Received: by 2002:a05:620a:4155:b0:8ba:656:6fdc with SMTP id af79cd13be357-8c08fa9c49emr1613720285a.56.1766401587805;
        Mon, 22 Dec 2025 03:06:27 -0800 (PST)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com. [209.85.222.175])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0971ed974sm800178185a.30.2025.12.22.03.06.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 03:06:27 -0800 (PST)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8b2a4b6876fso554160485a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:06:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXDHiu669xo/k53H14J+YMuP/4XvAGE8G73VZk8lmkOayzL7jmCgRuvnn3T6fBIfeXYMD0Dm3Vhjz6n@vger.kernel.org
X-Received: by 2002:a05:6102:fa3:b0:5dd:b318:8a6 with SMTP id
 ada2fe7eead31-5eb1a656bf6mr3126682137.12.1766401115588; Mon, 22 Dec 2025
 02:58:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201-rz-sdio-mux-v2-0-bcb581b88dd7@solid-run.com>
 <20251201-rz-sdio-mux-v2-1-bcb581b88dd7@solid-run.com> <TY3PR01MB113465581E5F8BD6C45FB7DCB86DBA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB113465581E5F8BD6C45FB7DCB86DBA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 11:58:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV52FEGdW3Jqtn_=yhZ8h1hf5h9nn8d15Pkgmq7VJwnSA@mail.gmail.com>
X-Gm-Features: AQt7F2q0YOJcyHYc-yKCfd0Zxy7zMhTJdHjRwxfC8lQ_tc7MS1WxbilS5iTx4Xs
Message-ID: <CAMuHMdV52FEGdW3Jqtn_=yhZ8h1hf5h9nn8d15Pkgmq7VJwnSA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: renesas,sdhi: Add mux-states property
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	"wsa+renesas" <wsa+renesas@sang-engineering.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Mon, 1 Dec 2025 at 14:03, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > -----Original Message-----
> > From: Josua Mayer <josua@solid-run.com>
> > Add mux controller support for when sdio lines are muxed between a host and multiple cards.
> >
> > There are several devices supporting a choice of eMMC or SD on a single board by both dip switch and
> > gpio, e.g. Renesas RZ/G2L SMARC SoM and SolidRun RZ/G2L SoM.
> >
> > In-tree dts for the Renesas boards currently rely on preprocessor macros to hog gpios and define the
> > card.
> >
> > By adding mux-states property to sdio controller description, boards can correctly describe the mux
> > that already exists in hardware - and drivers can coordinate between mux selection and probing for
> > cards.
> >
> > Signed-off-by: Josua Mayer <josua@solid-run.com>

> > --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> > @@ -106,6 +106,11 @@ properties:
> >    iommus:
> >      maxItems: 1
> >
> > +  mux-states:
> > +    description:
> > +      mux controller node to route the SDIO signals from SoC to cards.
>
> Maybe describe 0 - state for SD and 1 - state for eMMC ??
>
> > +    maxItems: 1
>
> > +
> >    power-domains:
> >      maxItems: 1
> >
> > @@ -275,6 +280,7 @@ examples:
> >          max-frequency = <195000000>;
> >          power-domains = <&sysc R8A7790_PD_ALWAYS_ON>;
> >          resets = <&cpg 314>;
> > +        mux-states = <&mux 0>;
>
> On R-Car mmc/sd mux available only on SD2/SD3, so I guess you picked wrong node SD0??

What do you mean by this comment?
AFAIUI, this muxing is board-specific, and not related to the on-SoC
SDHI controller instance?

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

