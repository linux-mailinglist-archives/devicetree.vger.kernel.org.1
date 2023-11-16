Return-Path: <devicetree+bounces-16247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C7B7EE1F0
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC46C1F21D20
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06EB2EB19;
	Thu, 16 Nov 2023 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72665C1;
	Thu, 16 Nov 2023 05:52:30 -0800 (PST)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5bf58204b7aso8603307b3.3;
        Thu, 16 Nov 2023 05:52:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700142749; x=1700747549;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JzufO5Lt3FVnDmzOuT58+m08IhXCdYwexFPysvr+x2k=;
        b=tf30GTGS3IenvmKiyUHhpU56kNUSs1eOIG2Cc8rO8UWB5HvhwqZ+qvpkNM76DT7ELm
         hEMgF3azS6s1n5XUQHDC0zrWLThtnIe8StUH1XtbvLaw7i/DT9+g2ESOALmrAoOnxKqa
         stD6eBvONaIdcp2qLXgC7K9YA0xJy+y9HZ/wneBTyxDd6iV3D27B7EkTFdz4rsFMt1oU
         Jk9kIss9t7XtBPECXhgxhHZqlIy7Tetc75eiO4HV4FMKFDDbJVgy3FD4kqIJ+Q2dKko+
         A1CMqHgDZvAzz6WnWkQU+dVUwrHHkz98UcPcG9WhYSuL3sdoBwMDdmlzBoflYW8+EDUT
         dhBQ==
X-Gm-Message-State: AOJu0Yz/LP8Xj2DJ28ZEA07hIntDUORpNbL+8Nl/dUuPk2dIZcyI7Naw
	XEwjiGD5XLcgXrXSwbmEZeU+8KV7vkQdjw==
X-Google-Smtp-Source: AGHT+IGtBIf5UK55DfnPIzYcBO+RQexVudNI78EI7vItw6lFEWXpnQvtHbaDiNDC5KMa/2p5vg5HNw==
X-Received: by 2002:a0d:c886:0:b0:5a7:c777:2be1 with SMTP id k128-20020a0dc886000000b005a7c7772be1mr15478375ywd.11.1700142749529;
        Thu, 16 Nov 2023 05:52:29 -0800 (PST)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id i201-20020a8191d2000000b005a8a78fa9d2sm1017202ywg.17.2023.11.16.05.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 05:52:29 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-da041ffef81so846260276.0;
        Thu, 16 Nov 2023 05:52:29 -0800 (PST)
X-Received: by 2002:a25:2d1f:0:b0:d7f:af26:2c7e with SMTP id
 t31-20020a252d1f000000b00d7faf262c7emr15299081ybt.20.1700142749231; Thu, 16
 Nov 2023 05:52:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115212431.32872-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115212431.32872-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Nov 2023 14:52:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWHfZqeZJFJLffDWr8Oo6HtFXk5txKoJtU87vWqNkDJoA@mail.gmail.com>
Message-ID: <CAMuHMdWHfZqeZJFJLffDWr8Oo6HtFXk5txKoJtU87vWqNkDJoA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: renesas,sci: Document RZ/Five SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 10:24=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.=
com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The SCI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-sci" compatible string will be used on the RZ/Fiv=
e
> SoC so to make this clear and to keep this file consistent, update the
> comment to include RZ/Five SoC.
>
> No driver changes are required as generic compatible string "renesas,sci"
> will be used as a fallback on RZ/Five SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

