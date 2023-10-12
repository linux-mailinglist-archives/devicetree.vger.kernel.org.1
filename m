Return-Path: <devicetree+bounces-8189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2BC7C708E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93D9E282964
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 014D621358;
	Thu, 12 Oct 2023 14:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B072421C
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:44:24 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 652A4BB;
	Thu, 12 Oct 2023 07:44:22 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d9a398f411fso1132377276.3;
        Thu, 12 Oct 2023 07:44:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697121860; x=1697726660;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlohsKaxaDfJsNn0JXsIdvrAgoGkujT/EvyViDc7jh0=;
        b=iVaApVkpKZ0pZLEK/pwPLTGauu7UeCClkUXAvxljBqIBU1NUZs6cKGofDWJThZovdD
         R+PdLalbZM71D7ARoXO/MV4ug5UKaBN7EYKhisGUarhoFIB+u2aDKmjvKNryIMT2aIqO
         7/rZpngyCi+cRcrWj+Ljwabg37SERfQgi8WtaeQYVTNWOPdTwmY3Eiqo5b1d91OgEU+X
         OwM7HO8hcBH96SMHCWMZBR/flQmynraseXWZKASSLNXhZLvq6nY7oVyQoeYKpb3MecBD
         rLfQkWBHPsC4Fb2NSAEY87llPNTUsHsTAyzbENvMh2nqQoc9g1o8gON/b/XWCkwsTVFk
         wCvA==
X-Gm-Message-State: AOJu0YzhgL2UMdRD2jcmbJXTtWBs89z1oEWz3+mXltBwiC9qNGDczA/L
	056Ay9qlISdQmNim66B0mJc/KD8J7n4cnQ==
X-Google-Smtp-Source: AGHT+IHL1VVdNNqwHnZcPkiD9AZddyC3g7gvOS4O13vQR8K7sd/ecIhw/doKpo16fiV6v+feVkzXxQ==
X-Received: by 2002:a25:ac46:0:b0:d9a:53cc:aaad with SMTP id r6-20020a25ac46000000b00d9a53ccaaadmr8935045ybd.24.1697121860167;
        Thu, 12 Oct 2023 07:44:20 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id z96-20020a25a169000000b00d8128f9a46bsm2632ybh.37.2023.10.12.07.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 07:44:19 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5a7ba0828efso13058287b3.3;
        Thu, 12 Oct 2023 07:44:19 -0700 (PDT)
X-Received: by 2002:a0d:e2c4:0:b0:5a7:bc38:fff2 with SMTP id
 l187-20020a0de2c4000000b005a7bc38fff2mr8513742ywe.15.1697121859775; Thu, 12
 Oct 2023 07:44:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com> <20231010132701.1658737-6-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231010132701.1658737-6-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Oct 2023 16:44:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW+5MZXRbDtZtmrMkrCtwqqKUcW_W1_5U_2yO6w6aCa_w@mail.gmail.com>
Message-ID: <CAMuHMdW+5MZXRbDtZtmrMkrCtwqqKUcW_W1_5U_2yO6w6aCa_w@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: renesas: rzg3s-smarc: Enable SDHI1
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: magnus.damm@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Tue, Oct 10, 2023 at 3:27=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.dev> =
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

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> @@ -11,6 +11,27 @@
>  / {
>         aliases {
>                 serial0 =3D &scif0;
> +               mmc1 =3D &sdhi1;
> +       };
> +
> +       /* Reserved regulators 0-9 for SoM. */
> +       vcc_sdhi1: regulator10 {

You can use sensible names for the regulators to avoid conflicts.
E.g. "regulator-vcc-sdhi1".

The rest LGTM.

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

