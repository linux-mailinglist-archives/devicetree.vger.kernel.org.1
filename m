Return-Path: <devicetree+bounces-5823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE7D7B80E8
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:31:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9C7731C2084B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2BF214A8A;
	Wed,  4 Oct 2023 13:31:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C4A13AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:30:59 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A71A1;
	Wed,  4 Oct 2023 06:30:57 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59f57ad6126so24384717b3.3;
        Wed, 04 Oct 2023 06:30:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696426256; x=1697031056;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7Wkcd61aZ3jx46S8NbMXaS0P3NM67mT91+N7Httj6U=;
        b=LcEWNdvY0o3uLzl7oQrMxsqzN+SMqmLSJE4yGFGlLDxxnnHdp5Qbrf+ZbsOZSVyX0q
         Xgi/vi1/Jc06+SCwX2ACMzbhK285Hpwniwez2LVn1j0PdgNzcqg79ncN+cMo+75tFn/1
         eO28TrtyoLKeT7vpV+onipqGlZAUNxm6SMnz+cAnS8QTp2hW85kXLgLvfdj02emMs9bw
         F0XlGvNGycrv0Lmt7/Rsbdj78j2aRDWoyXfyscsEKYR+7w8D6yeJlCuW2FNfI5RBRLeJ
         +tQKWq0tPMTOm+D3tHWqEabgRqvKLPoQXXxWZnEHB+9ZEgVweTZJK8fdL6ia38cIz4U7
         07gg==
X-Gm-Message-State: AOJu0YwTAP3ToWAkaWvpOKPQ3S4nPtI4Xj46LvhB/fpPNCX2y3nDcqGT
	w2S4FLfDIkOuQIjn1Tk/sHxM6+SEX7skpA==
X-Google-Smtp-Source: AGHT+IGqd5/WCAgdgySwo808CKYbEaXFHFhB0XNnubuw2hyQTkVCJsWOeht2BYUyJ3ZOn71ylngK6g==
X-Received: by 2002:a81:8742:0:b0:59f:6675:7771 with SMTP id x63-20020a818742000000b0059f66757771mr2200602ywf.35.1696426256252;
        Wed, 04 Oct 2023 06:30:56 -0700 (PDT)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com. [209.85.128.173])
        by smtp.gmail.com with ESMTPSA id d5-20020a81ab45000000b005a1f7231cf5sm1115151ywk.142.2023.10.04.06.30.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:30:55 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5a22f9e2f40so24506887b3.1;
        Wed, 04 Oct 2023 06:30:55 -0700 (PDT)
X-Received: by 2002:a81:a24a:0:b0:59f:7f8e:dc4a with SMTP id
 z10-20020a81a24a000000b0059f7f8edc4amr2987098ywg.22.1696426255356; Wed, 04
 Oct 2023 06:30:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-25-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-25-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:30:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVcGxFCiw9dTkpMHzz2rBZ0Lc7RZrsKtYys=QksMYVgWg@mail.gmail.com>
Message-ID: <CAMuHMdVcGxFCiw9dTkpMHzz2rBZ0Lc7RZrsKtYys=QksMYVgWg@mail.gmail.com>
Subject: Re: [PATCH v2 24/28] arm64: dts: renesas: rzg3l-smarc-som: add
 initial support for RZ/G3S SMARC SoM
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de, 
	neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:40=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add initial support for RZ/G3S SMARC SoM. The following devices available
> on SoM were added to this initial device tree:
>
> - RZ/G3S SoC: Renesas R9A08G045S33GBG
> - Clock Generator (only 24MHz output): Renesas 5L35023B
> - 1GiB LPDDR4 SDRAM: Micron MT53D512M16D1DS-046
> - 64GB eMMC Flash (though SD ch0): Micron MTFC64GBCAQTC
>
> SD channel 0 of RZ/G3S is connected to an uSD card interface
> and an eMMC. The selection b/w them is done though a hardware switch.
> The DT will select b/w uSD and eMMC though SW_SD0_DEV_SEL build flag.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - s/Carrier-II SoM/SoM in patch title
> - listed in commit description only devices addressed by this initial dts=
i
> - s/8G LPDDR4/1GiB LPDDR4 in commit description
> - removed sd0-pwr-en-hog node and use specific GPIO in vcc_sdhi0 regulato=
r
> - added SoM compatible:
>   compatible =3D "renesas,rzg3s-smarcm", "renesas,r9a08g045s33", "renesas=
,r9a08g045";

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7.

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

