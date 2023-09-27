Return-Path: <devicetree+bounces-3754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E24487B00D1
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0AD0B1C20856
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD0AE26282;
	Wed, 27 Sep 2023 09:44:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D0920B22
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:44:34 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6414E6;
	Wed, 27 Sep 2023 02:44:32 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-59f55c276c3so98479607b3.2;
        Wed, 27 Sep 2023 02:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695807872; x=1696412672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bCBtKjtOUbRzWwc+gk7sBNQfwK7ouTGHrKXSYvXMAhM=;
        b=F3+bmwXyNVKPf8Ix/anOjpY2mvIV3Ifb5c4pmdwpg8fvzBXpkC9tAspFKJPagrmqvx
         jh5nO0S4XNRv5bg7Lqj1FYBlMWCSyGYqZS6QS9QRHGzBC6xLsP3/isN5ArnhAtd/kq9Q
         dicqZAe4TAsbZHtoaNvlxt5OSaYtVXE/TnZWgHK5woiL9Ko5dfEf1w0ekzd1yAACYjZB
         prOhMjTl26TJxbuHRe7ENdraZQ4JKe4Ti/wYpeKdebjTmBy+fcFpy2z0N2IOMuBSd4cQ
         4HHrxsQ8HQGol4u9m3khgnWG9HSinPFzMePylpplPAvm5rCfo62VBCSjb12AmP6cu7bA
         BftA==
X-Gm-Message-State: AOJu0YxokLw9wILe2gbfW7QQoOZ5t9tWuZ3l/GciS+0Epvv9w2LCYUOV
	qU6s/ZdC6hFqSAPPpQq3e3FYfHMEi8+8Rg==
X-Google-Smtp-Source: AGHT+IF8ltCzWRnIznlHP/+1Jk/toif12fLxW6sw3FLMWQs7FntXvo06tTxvGSiGNr1ZfOdE6ijbng==
X-Received: by 2002:a25:c287:0:b0:d86:b9d5:124e with SMTP id s129-20020a25c287000000b00d86b9d5124emr1374845ybf.18.1695807871771;
        Wed, 27 Sep 2023 02:44:31 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id y4-20020a5b0f44000000b00d7e3e42d0c4sm259519ybr.53.2023.09.27.02.44.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 02:44:30 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-59f6041395dso93370477b3.1;
        Wed, 27 Sep 2023 02:44:30 -0700 (PDT)
X-Received: by 2002:a81:80c1:0:b0:59f:4bc3:3e9 with SMTP id
 q184-20020a8180c1000000b0059f4bc303e9mr1707738ywf.46.1695807870658; Wed, 27
 Sep 2023 02:44:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-2-fabrizio.castro.jz@renesas.com> <CAMuHMdUibHxPBCLbeWdNrEk_szm+o4cOcskEMZAqUufNTzQKMQ@mail.gmail.com>
 <ZRPvHJXbuZ9Db2Go@finisterre.sirena.org.uk> <CAMuHMdUv8FFwkde8K3Ta8FEWrkkJ=9ZqbTi1EO8sRxVOhGtvzQ@mail.gmail.com>
 <ZRP0MpIHf67tfQJY@finisterre.sirena.org.uk>
In-Reply-To: <ZRP0MpIHf67tfQJY@finisterre.sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Sep 2023 11:44:17 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWPxn=RTU6uytOp31BoXbW0m8Oxk_LM2Rp4Dtop7okWgQ@mail.gmail.com>
Message-ID: <CAMuHMdWPxn=RTU6uytOp31BoXbW0m8Oxk_LM2Rp4Dtop7okWgQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] spi: renesas,rzv2m-csi: Add SPI Slave related properties
To: Mark Brown <broonie@kernel.org>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Chris Paterson <Chris.Paterson2@renesas.com>, Biju Das <biju.das@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Mark,

On Wed, Sep 27, 2023 at 11:21=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
> On Wed, Sep 27, 2023 at 11:10:58AM +0200, Geert Uytterhoeven wrote:
> > On Wed, Sep 27, 2023 at 11:00=E2=80=AFAM Mark Brown <broonie@kernel.org=
> wrote:
>
> > > The description is clearly saying there is a chip select, _NO_CS seem=
s
> > > entirely inappropriate.  It's not specified in the device tree becaus=
e
> > > when there's no chip select for a device it's a fundamental property =
of
> > > how the device is controlled and we don't need any information beyond
> > > the compatible.
>
> > In host mode, it indeed doesn't matter, as you can have only a single
> > device connected with SPI_NO_CS.
> > In device mode, the device needs to know if it must monitor the chip
> > select line or not.
>
> > In hindsight, I should have kept the question I had written initially,
> > but deleted after having read the documentation for the corresponding
> > RZ/V2M register bits:
>
> >     What does it mean if this is false? That there is no chip select?
>
> > So "spi-no-cs" would be the inverse of "renesas,csi-ss".
>
> I see.  Is there any control over what the chip select is when there is
> one, in which case we could just look to see if there's one specified?

On RZ/V2M there isn't, as there is only a single hardware chip select.

On MSIOF, there are 3 hardware chip selects, but apparently only the
primary one can be used in target mode.

I have to admit I never thought about this before (commit
cf9e4784f3bde3e4 ("spi: sh-msiof: Add slave mode support") also predates
commit 9cce882bedd2768d ("spi: sh-msiof: Extend support to 3 native chip
selects")).  Hence the SPI target DT bindings use a single "slave" subnode,
without a unit address, thus assuming no explicit (or a default)
chip select configuration.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

