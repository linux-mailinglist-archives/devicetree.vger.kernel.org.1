Return-Path: <devicetree+bounces-58806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D09F98A326B
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 17:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36946B22EFF
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BB9A1482FA;
	Fri, 12 Apr 2024 15:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UCiX17OE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20AC144D34
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 15:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712935657; cv=none; b=oY3L3nyDbA7DtukPcym/AkHqS+344McesJRpZyrgLOR+4J1Wl8bvEUEzI7maqJic7nIiDNmUknq6txmtldtU08MzRK9L7uGLOq7qTeCX4xIszsb+l5FaERhEy62DeE160bEMTh3Jwx8tTuXxaVuOr7+nf91FiaO+nWfv6CUpqWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712935657; c=relaxed/simple;
	bh=aD1S0VSA9Rf1Y9Q1f0q+Bvh40I5d5XVACe2gL/oovSU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=twoK59/5M6zGdFeQ0+VGE3J1mmFC8Q88qxpLKOXiMTw/yXSwL8VupuHEtn9LvAPCNM1YegaQ+FQm6qsFFkXRs76WreXj4+GDMXZtX24mobdQHqUzO8x3BGOfaK1S2Pk62cfHTu7vQavBRwZWmQvfbP8HQt5MgoUlBY2n9HWBSRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UCiX17OE; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-69b5a87505cso2430136d6.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712935654; x=1713540454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SbEJNdBEgg7zteIjPRT61BO8wQHmtBNPFF5TlQkKbKo=;
        b=UCiX17OEsn6Js+L7WHX2rNR3uRdlnMXc961IfF/roVN8777rs0v9ekDZVSTjFiKkD3
         io2Z1D7LnoNXD839OOOZZj4+/+Z4s91KFHJqv7R7VoAOBmF6in0h4oDD8PfCkfVf9gp1
         /zKwciBoBRJLlUPHcpVvwQNzZ3wBz7oGh+owE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712935654; x=1713540454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SbEJNdBEgg7zteIjPRT61BO8wQHmtBNPFF5TlQkKbKo=;
        b=BI/ZtMfQ5DK7pQKKfYjGmkOXDp4HZAnnF1o/H+zfMqI8pMcbVjdyU3pqk6I9ynLsRg
         VcF2r6rcqBzYHEwpoqUdVYSMNl0Gsng0T6zQhfcfSVf4Y7DKSu3ybb/rlhFCY5Y1yRCA
         Jte3eCktW7jF67Sorz96boHRC2ATnS+h5iOM57n5PFTAAIiYRA4dk+GYSZO3ucNxdboT
         3L3AUgFj0eZMeZS4RAjuLQJsdJoT53z+CZbh031T4RPwnf1QoAHSuzTRCtNqb2kLnliP
         Kg9YNYYHszhmINicVNlQTBHlF4SxuLr/TawvI68MbP8lNJkBUF+5PkFhYX1dGOVI/s8c
         tXlg==
X-Gm-Message-State: AOJu0Yw3fL09R6mFdgMrY0moi4TthvDb0rLRreSNbtnmkV+yIpCJeP5L
	qE2XSiV/9aC1DWc7vhJl0J4ViBFsRc/X5/+1bCweKABHfG5JNXuXbwTVhlrkY/pm5REjYp0wC97
	Xi1JZtxFqZO8SYlcNt8uwA2RmzRLwZ0Zf5J9YecW4VdVAPeQ=
X-Google-Smtp-Source: AGHT+IGJKQQefkr1OCMZT+YQUVp/D1HI8E8z4+jZz882PNsanR0PyfyPLE/FkkTXry1gEPywtXO+rLndVVy0mTpZQc0=
X-Received: by 2002:a05:6214:293:b0:69b:1323:5d12 with SMTP id
 l19-20020a056214029300b0069b13235d12mr3428619qvv.38.1712935654688; Fri, 12
 Apr 2024 08:27:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326200645.1182803-1-sjg@chromium.org> <20240408151057.1d1fcfb3@xps-13>
In-Reply-To: <20240408151057.1d1fcfb3@xps-13>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 12 Apr 2024 09:27:23 -0600
Message-ID: <CAFLszTi1tp1-vdy2JLoarVxH_CWB8UMV+sHu=vrn4E7w62i6sw@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: mtd: fixed-partitions: Add alignment properties
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: devicetree@vger.kernel.org, Michael Walle <mwalle@kernel.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>, 
	linux-mtd@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Miquel,

On Mon, 8 Apr 2024 at 07:11, Miquel Raynal <miquel.raynal@bootlin.com> wrot=
e:
>
> Hi Simon,
>
> sjg@chromium.org wrote on Tue, 26 Mar 2024 14:06:44 -0600:
>
> > Add three properties for controlling alignment of partitions, aka
> > 'entries' in fixed-partition.
> >
> > For now there is no explicit mention of hierarchy, so a 'section' is
> > just the 'fixed-partitions' node.
> >
> > These new properties are inputs to the Binman packaging process, but ar=
e
> > also needed if the firmware is repacked, to ensure that alignment
> > constraints are not violated. Therefore they are provided as part of
> > the schema.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >
> > Changes in v10:
> > - Update the minimum to 2
> >
> > Changes in v9:
> > - Move binding example to next batch to avoid build error
> >
> > Changes in v7:
> > - Drop patch 'Add binman compatible'
> > - Put the alignment properties into the fixed-partition binding
> >
> > Changes in v6:
> > - Correct schema-validation errors missed due to older dt-schema
> >   (enum fix and reg addition)
> >
> > Changes in v5:
> > - Add value ranges
> > - Consistently mention alignment must be power-of-2
> > - Mention that alignment refers to bytes
> >
> > Changes in v2:
> > - Fix 'a' typo in commit message
> >
> >  .../bindings/mtd/partitions/partition.yaml    | 51 +++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition=
.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> > index 1ebe9e2347ea..656ca3db1762 100644
> > --- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> > @@ -57,6 +57,57 @@ properties:
> >        user space from
> >      type: boolean
> >
> > +  align:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 2
> > +    maximum: 0x80000000
> > +    multipleOf: 2
> > +    description:
> > +      This sets the alignment of the entry in bytes.
> > +
> > +      The entry offset is adjusted so that the entry starts on an alig=
ned
> > +      boundary within the containing section or image. For example =E2=
=80=98align =3D
> > +      <16>=E2=80=99 means that the entry will start on a 16-byte bound=
ary. This may
> > +      mean that padding is added before the entry. The padding is part=
 of
> > +      the containing section but is not included in the entry, meaning=
 that
> > +      an empty space may be created before the entry starts. Alignment
> > +      must be a power of 2. If =E2=80=98align=E2=80=99 is not provided=
, no alignment is
> > +      performed.
> > +
> > +  align-size:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 2
> > +    maximum: 0x80000000
> > +    multipleOf: 2
> > +    description:
> > +      This sets the alignment of the entry size in bytes. It must be a=
 power
> > +      of 2.
> > +
> > +      For example, to ensure that the size of an entry is a multiple o=
f 64
> > +      bytes, set this to 64. While this does not affect the contents o=
f the
> > +      entry within binman itself (the padding is performed only when i=
ts
> > +      parent section is assembled), the end result is that the entry e=
nds
> > +      with the padding bytes, so may grow. If =E2=80=98align-size=E2=
=80=99 is not provided,
> > +      no alignment is performed.
>
> I don't think we should mention binman here. Can we have a software
> agnostic description? This should be understandable from anyone playing
> with mtd partitions I guess.

OK

>
> > +
> > +  align-end:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 2
> > +    maximum: 0x80000000
> > +    multipleOf: 2
>
> seems not to perfectly match the constraint, but I don't know if there
> is a powerOf keyword? (same above)

I believe this was discussed earlier. No there is no such option!

>
> > +    description:
> > +      This sets the alignment (in bytes) of the end of an entry with r=
espect
> > +      to the containing section. It must be a power of 2.
> > +
> > +      Some entries require that they end on an alignment boundary,
> > +      regardless of where they start. This does not move the start of =
the
> > +      entry, so the contents of the entry will still start at the begi=
nning.
> > +      But there may be padding at the end. While this does not affect =
the
> > +      contents of the entry within binman itself (the padding is perfo=
rmed
>
> content?                                same comment about binman?

OK

>
> > +      only when its parent section is assembled), the end result is th=
at the
> > +      entry ends with the padding bytes, so may grow. If =E2=80=98alig=
n-end=E2=80=99 is not
> > +      provided, no alignment is performed.
> > +
> >  if:
> >    not:
> >      required: [ reg ]
Regards,
SImon

