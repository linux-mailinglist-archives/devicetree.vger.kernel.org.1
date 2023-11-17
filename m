Return-Path: <devicetree+bounces-16490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3D77EEDD4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 437A8280F14
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 08:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 294344A11;
	Fri, 17 Nov 2023 08:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A42B11F;
	Fri, 17 Nov 2023 00:50:33 -0800 (PST)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5a7c011e113so19723427b3.1;
        Fri, 17 Nov 2023 00:50:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700211032; x=1700815832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pEM9MmyCorfd11wpMHXAhSx3sbSCq73GK9k/IN+xLX8=;
        b=Sx4c0/YLObuOk1AhpOU7Ooy+eEnjHfv81NOctNA+wT8M8ZWCzngWU9gS7QfmpZy2T0
         LcneKmcwkvNCkNizMHo1jIAP211cmH3gZFauwhuddHLCnW7JFVNsgKuas4tdn1f0Ugpt
         1KnOoXTHicUkmpujwWoPTyYirNwszyKQPJdTrJzA7oNLWaMQhTyTRfZqopmEVMev247x
         2UfsvEDdBYtOfEN5WViFqn9RoZ7Ss5GeQjp0k0ap19rpRx9S+Knp0UDXiKZfK1ImDb42
         wujk9VVyj+sWYfPbVM7Jh2iHOfaisHCWBqlCOxeBD4MilioZiOWwLzwkDxhtxscDRq8T
         YE+w==
X-Gm-Message-State: AOJu0Yyl37rewE/sqwr7L4Xo3YqLzns4Hft2nqE12wPoD39f2JEatcDY
	ZAWx/yHQBE2p/QqemyfHYqTNbV7WVUyzsw==
X-Google-Smtp-Source: AGHT+IFbCu7IDp62lvLze63elVeUNM3VZ8pkT9iEX4Z1i3pjkZRrLvlaoPgcO3z+7E18ZSYF/IDXyQ==
X-Received: by 2002:a0d:cb8b:0:b0:5a7:ab55:b9af with SMTP id n133-20020a0dcb8b000000b005a7ab55b9afmr18269263ywd.35.1700211032272;
        Fri, 17 Nov 2023 00:50:32 -0800 (PST)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com. [209.85.128.181])
        by smtp.gmail.com with ESMTPSA id u74-20020a0deb4d000000b005c5b70aa8acsm376652ywe.98.2023.11.17.00.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 00:50:30 -0800 (PST)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5a7c011e113so19723007b3.1;
        Fri, 17 Nov 2023 00:50:30 -0800 (PST)
X-Received: by 2002:a0d:d307:0:b0:570:28a9:fe40 with SMTP id
 v7-20020a0dd307000000b0057028a9fe40mr19392214ywd.5.1700211029722; Fri, 17 Nov
 2023 00:50:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231016105344.294096-1-claudiu.beznea.uj@bp.renesas.com> <20231016105344.294096-3-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231016105344.294096-3-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 17 Nov 2023 09:50:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX3y-FGLUOz1ouRF1YEQ6aT5JRiJOWgF5kwuwysyxazeg@mail.gmail.com>
Message-ID: <CAMuHMdX3y-FGLUOz1ouRF1YEQ6aT5JRiJOWgF5kwuwysyxazeg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: renesas: rzg3s-smarc: Enable SDHI1
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: magnus.damm@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 12:54=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.dev>=
 wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add SDHI1 to RZ/G3S Smarc Carrier-II board. This is connected to a uSD
> interface. Although Vccq doesn't cross the boundary of SoM it has
> been added to RZ/G3S Smarc Carrier-II dtsi to have all the bits related t=
o
> SDHI1 in a single place. At the moment SoM is used only with RZ/G3S Smarc
> Carrier-II board.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - change regulators' names to regulator-vcc-sdhi1 and
>   regulator-vccq-sdhi1

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.8.

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

