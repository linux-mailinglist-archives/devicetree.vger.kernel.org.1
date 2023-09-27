Return-Path: <devicetree+bounces-3733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D657AFF87
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:11:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1FF3E281765
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7769A1F95D;
	Wed, 27 Sep 2023 09:11:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A5C290B
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:11:16 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67F86BF;
	Wed, 27 Sep 2023 02:11:13 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-59c0d329a8bso131600407b3.1;
        Wed, 27 Sep 2023 02:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805872; x=1696410672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kT5xQELVLk7uusSSsznnnd5tIH8qDLjO1UEAzy07OsA=;
        b=Yuo+bPsfxjO0oPNDawp8TCWQLa85WrM80BTN0oAutD1V3p0Osszngb0DyEtD2+n7r7
         0AgXQRBfOF6JkDknZQV2r+SJwJkbdhDtjviDQPjMib2p/wvWkXOkr4a39fpArHTH8tWb
         f21MPgznaoIZDNjxQCxbyRvHBOMW2emxqYtIkbzb30itOVv0WmQjwCT0It5OLyO2Yzda
         768qZAYKAxqqgoqsU3vKLIKpnOCi5JZgqNdMgn/PMUlb4aco/qAK7EQwaHjuHWp9lyip
         68qooiqSefN9R5N10HDQ5EYhL7gq+5u8D6FFqb39avt0bS7PnzwUe4XCLmhx5jMzhoNP
         EF7w==
X-Gm-Message-State: AOJu0Yw/RWvtbj6Zy9xIHwyR+qola6TqgimVK80q8U0w6FmwT1sjSaEE
	2EU3sKl+uTgpBBTeewUh7k0Fj/84UJ6LHg==
X-Google-Smtp-Source: AGHT+IFJ74w9GvEdlwxKPeVi2H1pLKC9BHDPLx0a2JuDv/hhfQKppSj6zXfXnv9pu61WI/PN78QHKA==
X-Received: by 2002:a0d:d415:0:b0:569:479f:6d7f with SMTP id w21-20020a0dd415000000b00569479f6d7fmr1702501ywd.43.1695805872377;
        Wed, 27 Sep 2023 02:11:12 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id gq10-20020a05690c444a00b0059f5828346csm2374946ywb.3.2023.09.27.02.11.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 02:11:11 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59bc956b029so131375657b3.2;
        Wed, 27 Sep 2023 02:11:11 -0700 (PDT)
X-Received: by 2002:a0d:c946:0:b0:59b:fb69:1639 with SMTP id
 l67-20020a0dc946000000b0059bfb691639mr1846689ywd.32.1695805871578; Wed, 27
 Sep 2023 02:11:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-2-fabrizio.castro.jz@renesas.com> <CAMuHMdUibHxPBCLbeWdNrEk_szm+o4cOcskEMZAqUufNTzQKMQ@mail.gmail.com>
 <ZRPvHJXbuZ9Db2Go@finisterre.sirena.org.uk>
In-Reply-To: <ZRPvHJXbuZ9Db2Go@finisterre.sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Sep 2023 11:10:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUv8FFwkde8K3Ta8FEWrkkJ=9ZqbTi1EO8sRxVOhGtvzQ@mail.gmail.com>
Message-ID: <CAMuHMdUv8FFwkde8K3Ta8FEWrkkJ=9ZqbTi1EO8sRxVOhGtvzQ@mail.gmail.com>
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

On Wed, Sep 27, 2023 at 11:00=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
> On Wed, Sep 27, 2023 at 09:59:05AM +0200, Geert Uytterhoeven wrote:
> > On Tue, Sep 26, 2023 at 11:08=E2=80=AFPM Fabrizio Castro
> > > +    type: boolean
> > > +    description:
> > > +      Use CSI Slave Selection (SS) pin to enable transmission and re=
ception when
> > > +      in slave mode.
>
> > Can't this be done in a more generic way? I had expected that the
> > existing SPI_NO_CS flag can be set using a property in the "slave" subn=
ode,
> > but apparently there is no "spi-no-cs" property defined yet.
>
> The description is clearly saying there is a chip select, _NO_CS seems
> entirely inappropriate.  It's not specified in the device tree because
> when there's no chip select for a device it's a fundamental property of
> how the device is controlled and we don't need any information beyond
> the compatible.

In host mode, it indeed doesn't matter, as you can have only a single
device connected with SPI_NO_CS.
In device mode, the device needs to know if it must monitor the chip
select line or not.

In hindsight, I should have kept the question I had written initially,
but deleted after having read the documentation for the corresponding
RZ/V2M register bits:

    What does it mean if this is false? That there is no chip select?

So "spi-no-cs" would be the inverse of "renesas,csi-ss".

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

