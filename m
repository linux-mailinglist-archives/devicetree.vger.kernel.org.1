Return-Path: <devicetree+bounces-27444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC23881A744
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 20:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 685CC287555
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 19:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3A64879F;
	Wed, 20 Dec 2023 19:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zFlspcyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35F448CEC
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 19:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5d33574f64eso494867b3.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 11:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703100309; x=1703705109; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QNmCP+oe3oSMVeft7bEuEgPHXSe736/+Mn6NnLSCe2I=;
        b=zFlspcyihG7gzbLJJMkrNtjBdvCMt+fHWDNFvGaAQ1t3yUqL7425UfcBNu1+mYegI7
         AdzHNZ8Mp6pgKv87k+JCS7KI/TWQTIkGJrYc5gMqmBla/x+cFxHZUOianeg8zG+S4TVw
         qJ4E7UA9qQ4BADjLwjNValnWejobFeoifiZ2GzwfXtatdONsgytdGgUos+RZn4oOUkN1
         TiGHK4KReFPN4ZTsyf09lV1NUVVcI3PotTvfbTwUzXf+LN9sB10/sOzo2JKDGUEm9Mhn
         7J6HjmLTVxLgHzLchD89JlgAgTaaPZ/cSrDKYi9EEOs3R08zfdAUYGrGFA2MsHmAoc13
         hZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703100309; x=1703705109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QNmCP+oe3oSMVeft7bEuEgPHXSe736/+Mn6NnLSCe2I=;
        b=sN8Yz5wYb+yOMRUDV9dcRPJq58tQTxtmQ/MUz+AWELaUZ+j4ziF/EqGLdohcNhxRsq
         RAR91KQap93juL3/1vus+epfS1up5sgdromU9Bsp+W5Oauex/PR0tGTUA9rlvztz5CLb
         nKPEApbEab6yNsUor8SNz95RtwGyjceLG5LpE1/+81ieTp6bFWF8NUXOoYXXbwqTCKdJ
         Y+KSW2i8znbT42Mx7T7nalrJVSFwM97ugTKME3EhYABqqZjj3xRy8vG4riMC4PwrqeWZ
         onh4/UWHwHZZyx+5sSnFycfdRca4YwLNYpoYyk/SO5meCmtG7nxZO3eyzJKbzT/XIVkt
         nrlQ==
X-Gm-Message-State: AOJu0YwYaMHUHAF8MG6D8Mx9INi87339T9RNY1NV2f2N4bwxkOfyXqF9
	ZjF2k0w83q2RV8RGPSk8bihWirajBFSYi8Xs+KH+6A==
X-Google-Smtp-Source: AGHT+IHKQoxOSx/75Yu3bPfICRilkmmatfOTZGCwh6ZIG0MIHwmi1SgmuqkGllO5XCdAmaUsxQDOtWdj3LD1JcBG/pk=
X-Received: by 2002:a0d:d80a:0:b0:5e2:a469:71b6 with SMTP id
 a10-20020a0dd80a000000b005e2a46971b6mr258824ywe.4.1703100309747; Wed, 20 Dec
 2023 11:25:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
 <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
 <20231215202137.GA317624-robh@kernel.org> <CAJM55Z9pBpYfwpxPH7bUumuosVDn9DHLSBngW6CtG7aK_z+_bQ@mail.gmail.com>
In-Reply-To: <CAJM55Z9pBpYfwpxPH7bUumuosVDn9DHLSBngW6CtG7aK_z+_bQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Dec 2023 20:24:58 +0100
Message-ID: <CACRpkdYT+jf4=dk3Y9cwa_=aYCihVq93N-iT0RUbtT2-+PX69w@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 16, 2023 at 2:57=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:

> > > +          thead,strong-pull-up:
> > > +            oneOf:
> > > +              - type: boolean
> > > +              - $ref: /schemas/types.yaml#/definitions/uint32
> > > +                enum: [ 0, 2100 ]
> > > +            description: Enable or disable strong 2.1kOhm pull-up.
> >
> > bias-pull-up can already specify the strength in Ohms.
>
> The strong pull up is a separate bit that can be enabled independently fr=
om the
> regular pull-up/down, so in theory you could enable both the regular pull=
-up
> and the strong pull-up at the same time, or even the regular poll-down an=
d the
> strong pull-up which is probably not advised.

bias-pull-up; <- Just regular pulling up the ordinary
bias-pull-up =3D <100>; <- Same thing if the ordinary is 100 Ohm (figure ou=
t what
  resistance it actually is....)
bias-pull-up =3D <21000000>; <- strong pull up
bias-pull-up =3D <21000100>; <- both at the same time

> So the idea here was just to make sure that you can do eg.
>
>         thead,strong-pull-up =3D <0>;
>
> to make sure the bit is cleared.

No use bias-disable; for this.

Yours,
Linus Walleij

