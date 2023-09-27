Return-Path: <devicetree+bounces-3735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD257AFF92
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A68341C208B0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3ED200D5;
	Wed, 27 Sep 2023 09:13:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C63D290B
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:13:10 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B5BA92;
	Wed, 27 Sep 2023 02:13:04 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-59bf1dde73fso136832087b3.3;
        Wed, 27 Sep 2023 02:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805983; x=1696410783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vHnJwbTT+NL76Y01vj09nEUgjneKsn8IwMUSAB7otyI=;
        b=rxkPTSF5eP4CIFDvLwTlm8zn0RcmQwGkSgiiW5v9nHcHerUabTSXbALzkU+iWaIxSS
         btmUs41U3s4nuKqXITlYjpKmZ2XZDrh5ULGoEuC1KluHyzjd9wrx/DFGCEG4zBjmT/z3
         vCAmESUlpCDwgkE4ghgp2eiJZ6pTkTBMYcoR1Vzw8/PPw0UbgQpmZVsqhcOnhp1lpPhf
         0qSzDwE410wuype6wWbtCYI5xzNE1K6vB/xBvynzwUq0FPcHeakGK1Aeg6tBWDT0R2b8
         S59rzrEj0LUT4D0BObyegDjuTxQ5T2rmH7D7V/f/5GW7SW6ProUkyl6umspocEJe/cS7
         DY+Q==
X-Gm-Message-State: AOJu0YwkW9DFjsQKgFzjRwUfoDfUPbIamk/0xPGlYGYkePkoocLRJGGL
	MwihwoLvucmFzdh9h0dyf26Kj75dCVFAow==
X-Google-Smtp-Source: AGHT+IFWaBM5hhOMeaReF11+CfnaHAilFR07R//vprByMeGRA+e62DC+eFfiFGXTB5T8Snn+On8Epg==
X-Received: by 2002:a81:df0e:0:b0:598:5bb5:1801 with SMTP id c14-20020a81df0e000000b005985bb51801mr1576463ywn.50.1695805983326;
        Wed, 27 Sep 2023 02:13:03 -0700 (PDT)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com. [209.85.128.174])
        by smtp.gmail.com with ESMTPSA id g203-20020a0dddd4000000b00592548b2c47sm3598015ywe.80.2023.09.27.02.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 02:13:02 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-59f6763767dso86956037b3.2;
        Wed, 27 Sep 2023 02:13:02 -0700 (PDT)
X-Received: by 2002:a0d:cbd6:0:b0:599:da80:e1eb with SMTP id
 n205-20020a0dcbd6000000b00599da80e1ebmr1944408ywd.24.1695805982143; Wed, 27
 Sep 2023 02:13:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-3-fabrizio.castro.jz@renesas.com> <ZRPvikYWgbeDdz4X@finisterre.sirena.org.uk>
In-Reply-To: <ZRPvikYWgbeDdz4X@finisterre.sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Sep 2023 11:12:49 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUroPd17ynUtXpEpUfp_g352ukG-Fc+ySrrsVTJhMgONw@mail.gmail.com>
Message-ID: <CAMuHMdUroPd17ynUtXpEpUfp_g352ukG-Fc+ySrrsVTJhMgONw@mail.gmail.com>
Subject: Re: [PATCH 2/2] spi: rzv2m-csi: Add Slave mode support
To: Mark Brown <broonie@kernel.org>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Chris Paterson <Chris.Paterson2@renesas.com>, Biju Das <biju.das@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Mark,

On Wed, Sep 27, 2023 at 11:02=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
> On Tue, Sep 26, 2023 at 10:08:18PM +0100, Fabrizio Castro wrote:
>
> > The CSI IP found inside the Renesas RZ/V2M SoC supports
> > both SPI Master and SPI Slave roles.
>
> Prefer controller and device.

You mean host and target?
(oops, got the latter wrong in my previous email, too ;-)

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

