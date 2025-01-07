Return-Path: <devicetree+bounces-136059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97079A03A87
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0B9F1882B24
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24DB1E570B;
	Tue,  7 Jan 2025 09:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ggjOgo8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B43E1E3774
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 09:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736240548; cv=none; b=KwOFNvz7eeeuRVLMzn5QXKppDHhV4ikp2j9OfjDu/U6+9YjDehU7YyAHUFnDc5g1Nx0bgEMzT9GoHVK47oy0D+uZm/p8N2uyFxYfuRhhB/KMG7dQ9m8qFW0l4gYvTn9g4vDWS6I/GbmSipNkBimft0gsRDrD0KZfgQqLQrIjPqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736240548; c=relaxed/simple;
	bh=6Bo4MyPezCS9c9903dAMfvTM9N8mWKu43dbqT2f7XS0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OklEO1Iud4NPKfk/ureOhUZ1V1mskGAkPTAtyrTX9LyEncSfsJ/xE41wGKt3oNwV3RxtlANo9pMtTF0S4d3L8s0uvtit/lTN/3OBKCBe4jinSQEgv48jwsjX9xLVJvHh8sCU/Vpvfd1ZaV3pt5xWywS9v44vPWJ/O7seXsB9/gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ggjOgo8r; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53df80eeeedso1207366e87.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 01:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736240543; x=1736845343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BxLA9rUR/gJT7KoDTQj0+vBZS7GvUNOK0hNifMZCuqw=;
        b=ggjOgo8rYmDhG/Hgd2cNqK7ouE5eUeqfdjLejyrRIIzMLl0ltOTma7bpxMD89AS0zG
         UdsOYwnBq2CWPWa/pI08K5sod2W1Mws/aQ+h8TB0ssrtJl4j9bQh6l+C59rER/x8UJHF
         A+i1qAzV2Pr0it+1QPFE3e6zOxD6QNfK0wklc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736240543; x=1736845343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BxLA9rUR/gJT7KoDTQj0+vBZS7GvUNOK0hNifMZCuqw=;
        b=V65pT+3Uhe9OAaY2Ktyi7JP804p30F64NLU0sBWUPD/ZnbizNgNWNRxh6okLkrOoPN
         3+6r0bk/hsdczbEz0atLRRr3p7B9qtsrzecH/LwoLZ3bKJlwGbMlgGPO6EFzv2gvA/AN
         CW8YLUIs4KQXUVZ0K6BVuOiimTkHVcQzZ70kmBzxEoDIYLJseYUgJT1rQz0z5yvg9aIH
         sirp+YM4qs15tsjzO+t0tltxxJdMrTdCwl1YSDxGxM2P26+4LkTA/DmTMHso754gBDvt
         u3FpLcCZp1uGuT9KQwQwyWG2FMLUZzDybmSRNLA/dY67DThoTVjGAZaQmv5nhw9Iy9GD
         IWow==
X-Forwarded-Encrypted: i=1; AJvYcCUKl4DJcVujZldAJMKlmUfP+pzubf/TAXn9yOWo6RhZcvTneDGe5SaPqAPm3Ga/0NqzFG2ZJEa9Sa2M@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzus6WmuicnsYfLDfzFU+NVtP6JUuKXUXbZ+PYpN87ys57Cx1u
	ElyTBAExmJ867upBmsI7HchCjWqH0FrCUQFpgg+uF4+3qfewS5lkdBb0XL7gbOL/gBmS2QhPUNM
	L++woxavjKL0+O8CBFu9HGlDkxaZLAM0aTq1ul1LD/5nVmT30kA==
X-Gm-Gg: ASbGnctMSWDhbddb4mndQKWQuwMoanNDlcPiKKvJlsRaTZ4RHrGBt+O4gUZop08tyiH
	qhYHrkfhg21irr0HciBxzUG0m/xr6tcg8JkOHJsAi26vw1AIoW5j9FXEaiA7DZIkn
X-Google-Smtp-Source: AGHT+IHelcMparcoLg17vF4WDr4gu9Gh7r2hpYwzZdtimgS/flztrhU/dbW77dw1U2dj/dcAHZrsaayy4PGBYwNtXOU=
X-Received: by 2002:a05:6512:10cc:b0:53d:ed69:a593 with SMTP id
 2adb3069b0e04-5422953ff0amr20882626e87.22.1736240543524; Tue, 07 Jan 2025
 01:02:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250103060035.30688-1-jianjun.wang@mediatek.com>
 <20250103060035.30688-2-jianjun.wang@mediatek.com> <ndj6j2mmylipr7mxg42f3lcwgx55cvcjnuuofmlk6n6t5uz5pr@bxugolyfublc>
 <04ae2a07e2c2d3c03e82596034b1b7711450a0ae.camel@mediatek.com>
 <eb2088d3-81f6-4cb8-a4d7-6ef985aedbda@kernel.org> <9b0a463312702fb78e4ca2ba79c9ec6b62e33c58.camel@mediatek.com>
In-Reply-To: <9b0a463312702fb78e4ca2ba79c9ec6b62e33c58.camel@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 7 Jan 2025 17:02:12 +0800
X-Gm-Features: AbW1kvZTmXzwbrGBqElpSqfN778xG89x2dquf_HbLF0Z9gqveP2lcGYTvPUsDT4
Message-ID: <CAGXv+5H5ymEem=JWF1J6dHr4B7o5cdOgvCSg0Q_5GVkx487Ksw@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: PCI: mediatek-gen3: Add MT8196 support
To: =?UTF-8?B?Smlhbmp1biBXYW5nICjnjovlu7rlhpsp?= <Jianjun.Wang@mediatek.com>
Cc: "krzk@kernel.org" <krzk@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, Ryder Lee <Ryder.Lee@mediatek.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "kw@linux.com" <kw@linux.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	=?UTF-8?B?WGF2aWVyIENoYW5nICjlvLXnjbvmlocp?= <Xavier.Chang@mediatek.com>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 7, 2025 at 4:45=E2=80=AFPM Jianjun Wang (=E7=8E=8B=E5=BB=BA=E5=
=86=9B)
<Jianjun.Wang@mediatek.com> wrote:
>
> On Mon, 2025-01-06 at 13:27 +0100, Krzysztof Kozlowski wrote:
> > External email : Please do not click links or open attachments until
> > you have verified the sender or the content.
> >
> >
> > On 06/01/2025 10:26, Jianjun Wang (=E7=8E=8B=E5=BB=BA=E5=86=9B) wrote:
> > > On Fri, 2025-01-03 at 10:10 +0100, Krzysztof Kozlowski wrote:
> > > > External email : Please do not click links or open attachments
> > > > until
> > > > you have verified the sender or the content.
> > > >
> > > >
> > > > On Fri, Jan 03, 2025 at 02:00:11PM +0800, Jianjun Wang wrote:
> > > > > +        clock-names:
> > > > > +          items:
> > > > > +            - const: pl_250m
> > > > > +            - const: tl_26m
> > > > > +            - const: peri_26m
> > > > > +            - const: peri_mem
> > > > > +            - const: ahb_apb
> > > > > +            - const: low_power
> > > > > +
> > > > > +        resets:
> > > > > +          minItems: 1
> > > > > +          maxItems: 2
> > > > > +
> > > > > +        reset-names:
> > > > > +          minItems: 1
> > > > > +          maxItems: 2
> > > >
> > > > Why resets are flexible?
> > >
> > > There are two resets, one for MAC and another for PHY, some
> > > platforms
> > > may only use one of them.
> >
> > Even more questions. What does it mean use? Is it there or is it not?
>
> It will be used by calling the reset controller's APIs in the PCIe
> controller driver. Ideally, it should be de-asserted before PCIe
> initialization and should be asserted if PCIe powers down or the driver
> is removed.
>
> > Platform like SoC? But this is one specific SoC, it cannot be used on
> > different SoC.
>
> Yes, it should be SoC, each SoC have its own resets, and the number of
> resets for each SoC is defined by the hardware design, most SoCs should
> have one reset for MAC and one reset for PHY.
>
> >
> > >
> > > Would you prefer to set the number of resets to a fixed value for
> > > specific platforms?
> >
> > Everything should be constrained to match hardware.
>
> For MT8196, there are 2 resets. Should I use a fixed item in this case?

Yes. As you said, MT8196 has two resets, therefore the binding should
say it requires two resets.

So in the second part where it matches against mt8196, you should
have minItems =3D maxItems =3D 2.


ChenYu

> Thanks.
>
> >
> >
> > Best regards,
> > Krzysztof
> >

