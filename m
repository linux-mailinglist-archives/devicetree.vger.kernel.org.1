Return-Path: <devicetree+bounces-250373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 752A7CE899E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:55:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BD661300217C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D7B72DF3FD;
	Tue, 30 Dec 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A2MCOQVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC872D9EE3
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767063353; cv=none; b=P+GWE7f/P9zelfOJXhfDNtRQEVbvHV1M7PakhC1g8jlEdkKkDFKkQHIGacw/1XfrcOZGpVJjJo40ZnQqZKoQ1DbglwqLxpzU9ZzQER1TQS87SDBsts0Fj33bLh5PCV3jS5OAi3hheyxMr5fqPN6+X8mPuJgWlz9UgYVFmdgDtdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767063353; c=relaxed/simple;
	bh=nI9lYB93lJ43d2hyzZESmgTMTNkXzdu6Ri+Yt22S1CE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cOwhKaZbHvTpHpbDJZtf1gTtJRugtsyZW7jqfZl+RhqVHElYytd5Kz1WViWQY5dgRl95kVOHMdpOl7ZnxcxbbF6pXudBL8xa5SzRCF0C/oXsmfvzhZRQY595mFxQRcpYi+KjFbL9L5n1l7/cNwD1LZusZ6EhZZtxE42uNlcxtUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A2MCOQVT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b7cf4a975d2so1457775466b.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767063349; x=1767668149; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kNhGdUnuIO1bhgisSgWZDQr0f9RTGWGoYzmIatRKg8=;
        b=A2MCOQVTCANn5nEehBaXhW4yPealT8723vBs85g6+mNGNQ+Ce1RXa+EGjPLMiNivYX
         xsXeoIHkTQ3yOLCojX1AbTVIre2hwcRGz8Be7b3Skm2l/zcPrjWFiR4UEI8/xUTWnRDf
         +UTum1uKnEUTridhg3Ml0/TmmrlkB3iIX96Rbb0X7WGEoTOyCkXlaXqJBFwFCedh4LPT
         2vApNpmh4y4WbqCp8IEbIfhCb4mDVC128oehfXLfxW0gmgBBzimngQxPVRyrKIszsu5o
         XEIOhq1QTz//2DW6JAxbFcaQd71u6tpFSE5knavSoUA4SQ7ui6CcEWbtTec40U1D4WGB
         6Zrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767063349; x=1767668149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/kNhGdUnuIO1bhgisSgWZDQr0f9RTGWGoYzmIatRKg8=;
        b=I7keNl/fYtJQ7vOBLETadyaFFzaerH5SGrL2LoUNHlj+wAetflqQK9s4Dc6JwAETZ6
         lMye0ylK5QU474P0xnnxe8mzjq5bCnXcNnOLL1Al9p5bCRXwnkdANBpzGHjMmUTLnK6Z
         nk4CYocRl+LoBAsbNHq29+/CTzTfghLQtCvhKMI1EFrGtOJLB7dYYVzTTRckc9V+dmA6
         Pq5l3WsPtNgFhbTpLxXBwdHthdCGblcPBbGAklbIyv4lSs1U4IAnoqHx1Xplf8czMHc/
         wA4R6Z530XcN6rbHM336QfRtkOtbnPBFrne2h93drslL2IrvPtziHDyXOB0KfyTB2P6N
         V2FA==
X-Forwarded-Encrypted: i=1; AJvYcCVx/S7HT1fyKltvSL59WqYpEH+aClaWp9Lc6Y3krjzmz3qXP+SkMu7JDZjs60WivUCB/FBxoM16ZZgd@vger.kernel.org
X-Gm-Message-State: AOJu0YyhWBj3n9PeijjAR1QfchcWIAfTUkC8VUj5rAPYrvv3Q/F+8JN6
	Nh9B3ZoS9+qA8tZ34DCsqw4wjB6Md1/2kS1QkTlg2EagA9ItdeYgZqI0AKp2AjCVCq2sy4+ZzeP
	dldWiE7nL2KxI6yyrcxrWyZ1M40M0S/Q9McLJ
X-Gm-Gg: AY/fxX4Laye2YVvovgb3gXhfQpnXHOLugjqR5YSdsfGlpy5d+vK1g9/S6qLXG88tZ+l
	2pYL3442KusTRMcvpVAwI+h28R/M9aCagARyZnzRv5K4egGtAWDnRH872lZBdbxuXjlHzoo5c7D
	bQu1YRiND00pdr6ST1nSsfBCnaEyoLgV0nPXjYyqz2r5jSAc8ua2h8JFaT7qtv2ECjXVBZ/BHf2
	cvxbFuctvM8gUpxzuNPmlz7yvoJrltFpf4Smz0B4oonj07dNvuAoZt3auyfSKbqV1K4orXH2AT6
	Owr9bXc=
X-Google-Smtp-Source: AGHT+IHo+pBaBCzyDYIzLFgf837wXULXmYcMXZA6Rr7xVRaNkkQw2wDtkIoKDJTswNkaCffTWGhU+gKpEOsF0eHdFM0=
X-Received: by 2002:a17:906:30d4:b0:b80:3fff:3369 with SMTP id
 a640c23a62f3a-b803fff3447mr2483722066b.48.1767063348733; Mon, 29 Dec 2025
 18:55:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1766037997.git.zhoubinbin@loongson.cn> <7a0df6f836e0ec7ddfe4d592c10259c87ef96e4f.1766037997.git.zhoubinbin@loongson.cn>
 <20251229234931.GA2804566-robh@kernel.org>
In-Reply-To: <20251229234931.GA2804566-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 30 Dec 2025 10:55:36 +0800
X-Gm-Features: AQt7F2pU5FPG5eRc06lMZ-1hFwHy4kxm4WC16S0Cr_PnT-tAAbtXPVsOifFlPkE
Message-ID: <CAMpQs4+yh6=9bBufkuw9uAas1PEHj43QjW1fBFOHfc8+p4Gbpw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] dt-bindings: interrupt-controller:
 loongson,pch-pic: Change to unevaluatedProperties
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Yao Zi <me@ziyao.cc>, 
	Huacai Chen <chenhuacai@loongson.cn>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob:

Thanks for your detailed review.

On Tue, Dec 30, 2025 at 7:49=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, Dec 19, 2025 at 04:46:49PM +0800, Binbin Zhou wrote:
> > Change additionalProperties to unevaluatedProperties because it refs to
> > interrupt-controller.yaml.
> >
> > Fix below CHECK_DTBS warnings:
> > arch/loongarch/boot/dts/loongson-2k2000-ref.dtb: interrupt-controller@1=
0000000 (loongson,pch-pic-1.0): '#address-cells' does not match any of the =
regexes: '^pinctrl-[0-9]+$'
> >         from schema $id: http://devicetree.org/schemas/interrupt-contro=
ller/loongson,pch-pic.yaml
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../interrupt-controller/loongson,pch-pic.yaml         | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/loo=
ngson,pch-pic.yaml b/Documentation/devicetree/bindings/interrupt-controller=
/loongson,pch-pic.yaml
> > index b7bc5cb1dff2..cf235ca57a2f 100644
> > --- a/Documentation/devicetree/bindings/interrupt-controller/loongson,p=
ch-pic.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/loongson,p=
ch-pic.yaml
> > @@ -14,6 +14,9 @@ description:
> >    transforming interrupts from on-chip devices into HyperTransport vec=
torized
> >    interrupts.
> >
> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
>
> This is not really needed because interrupt-controller.yaml is applied
> to all nodes named 'interrupt-controller', but fine to add.
>
> > +
> >  properties:
> >    compatible:
> >      const: loongson,pch-pic-1.0
> > @@ -34,14 +37,18 @@ properties:
> >    '#interrupt-cells':
> >      const: 2
> >
> > +  '#address-cells':
> > +    const: 0
> > +
>
> This part is the only change actually needed.

Except for this part, I'll remove any other unneeded changes.
>
> >  required:
> >    - compatible
> >    - reg
> >    - loongson,pic-base-vec
> >    - interrupt-controller
> >    - '#interrupt-cells'
> > +  - '#address-cells'
>
> Unless there's some guarantee that this node is *always* referenced by
> an interrupt-map property, then it's not really required. After all,
> presumably things worked without it.
>
> >
> > -additionalProperties: false
> > +unevaluatedProperties: false
>
> Also not needed.
>
> >
> >  examples:
> >    - |
> > @@ -50,6 +57,7 @@ examples:
> >        compatible =3D "loongson,pch-pic-1.0";
> >        reg =3D <0x10000000 0x400>;
> >        interrupt-controller;
> > +      #address-cells =3D <0>;
> >        #interrupt-cells =3D <2>;
> >        loongson,pic-base-vec =3D <64>;
> >        interrupt-parent =3D <&htvec>;
> > --
> > 2.47.3
> >

--=20
Thanks.
Binbin

