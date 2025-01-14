Return-Path: <devicetree+bounces-138388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA70A10319
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93E9F7A1728
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7BE28EC86;
	Tue, 14 Jan 2025 09:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="X3tPFBtp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBB428EC78
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736847431; cv=none; b=Kh/Oi/MnLdWMUajHEsViSNYsnvnARmJfi/Svv5T95I3nyan6dvOZhXqALlZWZNA7M3EaM3fRQ24lr9ty0mviSoYD5Itl+PZ1L6U9G+IA2em4wZfvwoGRxRGsbqTyiTeRGiYd7Z1a++Cu60iDQQrSqIp7LC//YX47VhDbNWcgc1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736847431; c=relaxed/simple;
	bh=fqMjmyNb3Uwk54SDpRDPOEd/CFydxcRIzz9wq6VjFl4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dkOW0suoxwgTNA7dsI2q4vtNE1/jubxWMPX9ryf35qnyCM2oELNLdL7s5Z9pIrmsOw8ZXivwAopoI/sp41bnPj4PIzYwpR0wb6hbv9T14evpTUfaTLReKCpSm16RIu3BGitOF8vt39OZy8LQLdWbHuNhjMZ7dmtCDwkl2HhmwVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=X3tPFBtp; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e545c1e8a15so8129822276.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 01:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736847428; x=1737452228; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l89tcIhQpLFA95BmF/dtjUV+SmX9AcHiGhoZt2rDB4Y=;
        b=X3tPFBtpUs1jSdIgaSrMP2IDWO/kFjfUtxDwgqIiHmqCmEfyOMkv1K21AO7seUvvb3
         iNigqwjJwhx/xrZtrMqn67ZQS+a8M78gITJpJc7lskgeZHm0IgF0Jga79UT2ERmDgbiN
         R+gHgM/mF8k9zAxcAx/1jZS7dBPlZRPlQRl/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736847428; x=1737452228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l89tcIhQpLFA95BmF/dtjUV+SmX9AcHiGhoZt2rDB4Y=;
        b=KkW+yWNRHN6wQeInF6Ab8mPUMh+rMFgHK920W1+AX/7uvu2OHJIDJnP0aJhsDOe2G2
         gQa96yNYHfyAbCpqGDNbwrC6DO/b90p8lGKjALSzbGq77E5SEpNPoEnYCGJlu1PYKrMK
         /GPOBCHHvjEMvhTJwoVfRRm+XKZ6BCN7cuYqJndEmiqrhvp2K62Xl6rub5DJ9frATuMw
         WPVjIKQ3SpWK7P43rencz1WL+J90pmY2RXZkvZKoZ6BC6nH6hhcEikgIUYrlEY05TiQp
         BrvjTMyvYFgNUUIzs4mmxb/efqcAnHuRjkkR4+eunU/fQbvhMB1otW8Us6KhzNgNYuAQ
         Bb5w==
X-Forwarded-Encrypted: i=1; AJvYcCUM3rFo20BGPt7A2wYFzwqWxawVCFgWYWxyJq8X3C3j7NNASeWjU4YilOYiLNGwQddIYeqCrL8VzC5v@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5z/BVfpHT3bRexNd4k9R4+IZyAb+eVjV2n6XJ1mWF9ISav/Rn
	20iT4o/U+iSTOVHQIlqGx8wk4V76QKZFVo86dKyl2s6cWoSJ+bIwnCgeUUGZkhuLVO2IS3O/OuM
	8YXpud3wwfvTf/i63gfDnfQRqNRXHv6pGjO5WPw==
X-Gm-Gg: ASbGnctrogvasK36NGVngykfXFeavmPFvpv5FByTdGS2U0264FyyM9wKdgPgvx9OCRX
	7aFOBgLS4UraEElmw5Y7VSuwkiqvmNhEkfYni
X-Google-Smtp-Source: AGHT+IF6e2gulZmmKMZM/9qfdCNmIYsXwgatFmybYBzO3L6nSNvtxPxQhBPTkQU3rmXIGx0U/IzVq/5dxO9CIKDtZus=
X-Received: by 2002:a05:6902:12cd:b0:e57:2a07:a97b with SMTP id
 3f1490d57ef6-e572a07ab0bmr10989327276.19.1736847428039; Tue, 14 Jan 2025
 01:37:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
 <20250114091128.528757-2-dario.binacchi@amarulasolutions.com> <79a90c01-9e21-4e3f-a334-6ba9e1df4150@kernel.org>
In-Reply-To: <79a90c01-9e21-4e3f-a334-6ba9e1df4150@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 14 Jan 2025 10:36:57 +0100
X-Gm-Features: AbW1kvbHaMA7-gPSLKl8JCA0np6oyUkVl3x_8EI0Z9Yf3VmqaAgjofQDW5nCXfo
Message-ID: <CABGWkvofUphcXTwBS5UBEoQ1GYpngP7gWi9Ax=WW28XKK0qoYA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: convert stm32 rcc bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2025 at 10:29=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 14/01/2025 10:11, Dario Binacchi wrote:
> > The patch converts st,stm32-rcc.txt to the JSON schema, but it does mor=
e
> > than that. The old bindings, in fact, only covered the stm32f{4,7}
> > platforms and not the stm32h7. Therefore, to avoid patch submission tes=
ts
> > failing, it was necessary to add the corresponding compatible (i. e.
> > st,stm32h743-rcc) and specify that, in this case, 3 are the clocks inst=
ead
> > of the 2 required for the stm32f{4,7} platforms.
> > Additionally, the old bindings made no mention of the st,syscfg propert=
y,
> > which is used by both the stm32f{4,7} and the stm32h7 platforms.
> >
> > The patch also fixes the files referencing to the old st,stm32-rcc.txt.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
>
> Drop the tag. It was conditional.
>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: st,stm32f42xx-rcc
> > +          - const: st,stm32-rcc
> > +      - items:
> > +          - enum:
> > +              - st,stm32f469-rcc
> > +          - const: st,stm32f42xx-rcc
> > +          - const: st,stm32-rcc
> > +      - items:
> > +          - const: st,stm32f746-rcc
> > +          - const: st,stm32-rcc
>
> Nothing improved here.

In my humble opinion, there is nothing to improve. Any modification
made causes the tests to fail.

$ git grep st,stm32f746-rcc arch/
arch/arm/boot/dts/st/stm32f746.dtsi:                    compatible =3D
"st,stm32f746-rcc", "st,stm32-rcc";
arch/arm/boot/dts/st/stm32f769-disco.dts:       compatible =3D
"st,stm32f769-rcc", "st,stm32f746-rcc", "st,stm32-rcc";

Or am I missing something?

Thanks and regards,
Dario
>
> Best regards,
> Krzysztof



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

