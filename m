Return-Path: <devicetree+bounces-176127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1251AAB2E0C
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 05:20:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8337B178592
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 03:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BCD2A1B2;
	Mon, 12 May 2025 03:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LIecAhT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEBC24DFFD
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 03:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747020043; cv=none; b=pGHC9hD/9Fx5DnxtAgyHTjYe3Amblqs55gLnra2kW/2QTfT+PWJx29yCHirmR3KsUnnidTn/ja42oXw8zF/vB951XS1EKySDxnJr7TKM8rbynUnMVxLBHmzXIHldfQP0zsy0Vm9rvCA4jhylgPCik8FLnSYYxA63saugxKVmIIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747020043; c=relaxed/simple;
	bh=tbvR4aBhUaKwM5oLD63Lampf2s9TElNh2da76gV3eQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qBgLOKaSt6pvncQzAtLt3WDMffcgEqL6MesUf+VDXNN6RT4eKxe90ROr1UcCdiFgZseayVHmqwBkghz8DrT3b7hTn5YlKOyZBWnd5tK/CxN1WZ/n6tcOYeIkoS1suewKsqIHQRDj8DCwmJ3MMEjalUT7dKsPlK3BPamY3In17BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LIecAhT7; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e7297c3ce7aso3108032276.0
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 20:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747020041; x=1747624841; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bxudKsz+3J/IdOT+mPaoe2sibZSJTjud5OBgAuDoCFw=;
        b=LIecAhT7LpnGb61a6h4g5pwkFucZJ4GfD2P4dEYINfYfGhx3SX8zmBf3tIs1u/rMRk
         2YPVD/BfDQ14SmxscVwvT9HJxLwrbapBcg/5Bgqgl/y0QjxRg4XwaLxK0QbnWb7Q5M3k
         WJf8CrQQMjuLn8IhG1rc0zLLZ+T0NnExD11NnQm6fqeKFjSUIdr0PNeAE5hfaZeR7KEs
         FPBXG+SIueLNcVT082ML589fHlgqHgwUN+E0mOP8oqGvQeNG4HmQZmVMMdhWlZh/q42U
         owe/WC8UiEVc227+8EIdGvuWdeW53vdOTRIE/KlhvTMYB13t4O6uHM8QYBS3pJvOPe/j
         KtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747020041; x=1747624841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bxudKsz+3J/IdOT+mPaoe2sibZSJTjud5OBgAuDoCFw=;
        b=F9gxbKYB347mbPPmvkEIYGIaHoh9bKkFPG0cQPlSvHt5gHkNfjDWVCFXNXjzy6Ji5W
         FCskrQy+n4gDVxg47kCJ7RxgbKJTQGP+J6eH4RVxjALaByMf0KVLcVeO9cIaZZaSoJk4
         pNWW1pql1aKdPlk/qtPymGCODMeVU66vohhmXP/5wX0Dgu/WuGHcRUWg7BwPxzAd2RDz
         yfFTajIavH0Pee+ojY6qwv4mUXhmjHwRP1Rp3TnWMoGZLvQdSlz5NMiadKCAYlL8mNxE
         FjSZ6wqFM7/vAVYRaHFr5mSlQ+RtzwZT4tdgUswfXsJNCshNyK3T/N6xUDjw7D0MLStg
         hVeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZl2iB71TXdJevQbR/YuTwplzXJPOB2/lEqXdGesY+bjGYZWjjwE1ML7KfBFDoSGYtKH2aBpyGFLij@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq1cTlrXmhRFTrAGrdaw9NL6osGaDoHCZeye5Vze1dnJi6xvTd
	vB007bg4FQSp7vLhxMzDovB81+b/lXBp8MYLqTA3jAMK5Fj6c8vyV2/PPqHsQKie48jtfx/OLbl
	C0y3vxSmS3mCi6leLDRkF6+SRf0P6qoB65FXc5A==
X-Gm-Gg: ASbGnctpArwBVE/ZqhUXuXn1W9iE+HwczeLZiWQrxSXEHC/M9pW7AZmg09FRL34yDHl
	s0UKeK1j05zTiTFSL4AzdhoNdZgj5O1ww+v+lyIAy5SnifWb8lqeq6i/I6pSCMRDvITFctftzkj
	9i/qxdH45l9tslIeyNPfXkoTQx/tyq1G/POq4=
X-Google-Smtp-Source: AGHT+IE0xIYfUGZo/YgGsrSlwxUw7mp79GUZ45r3jCggNaOdaPZ7cYhKUcVZkI4NriZh+pfJqDPPxMYLuK5RKH/XqQk=
X-Received: by 2002:a05:6902:220f:b0:e78:f9ba:c33b with SMTP id
 3f1490d57ef6-e78fdc4cfeemr15242192276.6.1747020040729; Sun, 11 May 2025
 20:20:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250509021605.26764-1-nick.hu@sifive.com> <20250509-small-graceful-limpet-d0ea41@kuoka>
In-Reply-To: <20250509-small-graceful-limpet-d0ea41@kuoka>
From: Nick Hu <nick.hu@sifive.com>
Date: Mon, 12 May 2025 11:20:28 +0800
X-Gm-Features: AX0GCFsS2gEyScQIGoz4ks6S0LXYdUW88ZbHxUZwrMH2V3H8XC4xlgJod-2gaA0
Message-ID: <CAKddAkAzDGL-7MbroRqQnZzPXOquUMKNuGGppqB-d_XZXbcvBA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: Add SiFive Domain Management controllers
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Cyan Yang <cyan.yang@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 9, 2025 at 2:40=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Fri, May 09, 2025 at 10:16:04AM GMT, Nick Hu wrote:
> > SiFive Domain Management controller includes the following components
> > - SiFive Tile Management Controller
> > - SiFive Cluster Management Controller
> > - SiFive Core Complex Management Controller
> >
> > These controllers control the clock and power domain of the
> > corresponding domain.
> >
> > Signed-off-by: Nick Hu <nick.hu@sifive.com>
> > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > ---
> >  .../devicetree/bindings/power/sifive,tmc.yaml | 89 +++++++++++++++++++
>
> Where is a patch with the driver (user of the binding)?
>
We are hoping the driver can be submitted at a later stage.
The driver that handles the MMIO is implemented in OpenSBI and depends
on some prerequisite patches [1], so it will follow afterward.

Links:
- [1] https://lore.kernel.org/opensbi/CAKddAkD00gLgpzOCXY9mXaebr2qZcU9mkUGO=
Z4278w0bmiLuBQ@mail.gmail.com/T/#t

> >  1 file changed, 89 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/power/sifive,tmc.=
yaml
> >
> > diff --git a/Documentation/devicetree/bindings/power/sifive,tmc.yaml b/=
Documentation/devicetree/bindings/power/sifive,tmc.yaml
> > new file mode 100644
> > index 000000000000..7ed4f290b94b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
> > @@ -0,0 +1,89 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/power/sifive,tmc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: SiFive Domain Management Controller
> > +
> > +maintainers:
> > +  - Cyan Yang <cyan.yang@sifive.com>
> > +  - Nick Hu <nick.hu@sifive.com>
> > +  - Samuel Holland <samuel.holland@sifive.com>
> > +
> > +description: |
> > +  This is the device tree binding for the following SiFive Domain Mana=
gement Controllers.
>
> Explain the hardware, not that "binding is a binding for ...".
>
> Also, wrap according to Linux coding style.
>
Thanks for the advice. I'll address it in the next version =3D)

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  sifive,feature-level:
> > +    description: |
> > +      Supported power features. This property is absent if the full se=
t of features
> > +      is supported
>
> Compatible defines this. Drop.
>
The property depends on how the IP is hooked up to the rest of the SoC.
Having this property simplifies the SW and allows us to use a single
fallback compatible string, so we prefer to keep it.

Best Regards,
Nick

