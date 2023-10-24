Return-Path: <devicetree+bounces-11157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3897D48BB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30438B20D7F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639E814A92;
	Tue, 24 Oct 2023 07:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580F8CA4D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:39:31 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79FF90;
	Tue, 24 Oct 2023 00:39:29 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a86b6391e9so42914137b3.0;
        Tue, 24 Oct 2023 00:39:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698133168; x=1698737968;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gE6CDSFahICtgkt5HWMIqQW23i7+zj1xhQgXj1Jj+jI=;
        b=IPrLRLCudSuQpywvKatVHPswstrYUGHfEQabDiN8Hlps34YooJRBXLczY+vActFvBB
         ikIFFnpoHPKix85kI9sgRPjznChBupUchhdSWuMmjRBBawzjdkolj8Hfh6cblCJ6CUSj
         BRc77lLHmr2pv3w94XdXiRz8bt0F+e/9PGLQhCs4SJ5TPgx8QsBR66j2njthqj64ZBMe
         Od4eFlZbdn2vV0QrCivI8rGiHOg47CQEkzbU7JxQtj7zi92cXNzavIm0VHw+MyY/WqR9
         rEbCKMKHw7p5wax/oBrJTFX/07iBuDCTyVhJ5TyZrQd8/yAnGdYS4rVKxBgfD7SxRrDN
         hN+Q==
X-Gm-Message-State: AOJu0YylPUigO0AQ+IQzdmbPaQeUFq/xrSjgaOdyujbbGDbzRZHw1JqH
	l6g+S70roegaHyiVtx+4hmcUQ0an2z60nA==
X-Google-Smtp-Source: AGHT+IGhGIR9CvNgoy6BF4YKqRb9RJ+RhPnsSe9876AOpj6OdrHrTXW76ppVEqv23fkW837ZlZiRDg==
X-Received: by 2002:a05:690c:87:b0:5a7:aa16:6b05 with SMTP id be7-20020a05690c008700b005a7aa166b05mr11669779ywb.33.1698133168190;
        Tue, 24 Oct 2023 00:39:28 -0700 (PDT)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com. [209.85.128.170])
        by smtp.gmail.com with ESMTPSA id m203-20020a0dcad4000000b005a7db2a0dddsm3852198ywd.3.2023.10.24.00.39.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 00:39:28 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-579de633419so42555637b3.3;
        Tue, 24 Oct 2023 00:39:27 -0700 (PDT)
X-Received: by 2002:a81:a0c9:0:b0:5a8:2b82:a031 with SMTP id
 x192-20020a81a0c9000000b005a82b82a031mr12768282ywg.26.1698133167741; Tue, 24
 Oct 2023 00:39:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023144134.1881973-1-geert+renesas@glider.be>
 <4e2928a0-b2e6-4651-8cab-7f1c4d8f697d@linaro.org> <CAMuHMdVSx2G8A6wP+j0fNoFz1Y4+=R+diXc5pxJrn1FV65EBeQ@mail.gmail.com>
 <530b364d-1cdb-4905-a3f6-fd15c7aa1456@linaro.org>
In-Reply-To: <530b364d-1cdb-4905-a3f6-fd15c7aa1456@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 24 Oct 2023 09:39:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUg1t=McCPEFV9d0Jt=-oSDhzYznMWc17sbYvaVvueRfA@mail.gmail.com>
Message-ID: <CAMuHMdUg1t=McCPEFV9d0Jt=-oSDhzYznMWc17sbYvaVvueRfA@mail.gmail.com>
Subject: Re: [PATCH dt-schema] schemas: gpio: gpio-consumer: Fix false
 positives on nodes named gpio
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Tue, Oct 24, 2023 at 9:33=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 23/10/2023 20:08, Geert Uytterhoeven wrote:
> > On Mon, Oct 23, 2023 at 5:24=E2=80=AFPM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >> On 23/10/2023 16:41, Geert Uytterhoeven wrote:
> >>> Just like for "gpio", nodes can be named "gpios" or
> >>> "<something>-gpio(s)", causing false positive failures.
> >>>
> >>> See also commit 80120fccde170902 ("schemas: gpio: fix false positive
> >>> failures on nodes named 'gpio'").
> >>>
> >>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>> ---
> >>> Seen on Linux, e.g.:
> >>>
> >>>     arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: /: keyboard-gpio: {=
'compatible': ['gpio-keys-polled'], 'poll-interval': [[50]], 'pinctrl-0': [=
[29]], 'pinctrl-names': ['default'], 'key-3': {'gpios': [[28, 19, 1]], 'lin=
ux,code': [[4]], 'label': ['SW1-3'], 'debounce-interval': [[20]]}, 'key-4':=
 {'gpios': [[28, 20, 1]], 'linux,code': [[5]], 'label': ['SW1-4'], 'debounc=
e-interval': [[20]]}} is not of type 'array'
> >>>           from schema $id: http://devicetree.org/schemas/gpio/gpio-co=
nsumer.yaml#
> >>>     arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: pinctrl@fffc0000: k=
eyboard-gpio: {'pins': ['GP_0_19', 'GP_0_20'], 'bias-pull-up': True, 'phand=
le': [[29]]} is not of type 'array'
> >>>           from schema $id: http://devicetree.org/schemas/gpio/gpio-co=
nsumer.yaml#
> >>
> >> keyboard-gpio is not commonly used names. Most (almost all) boards jus=
t
> >> call it "gpio-keys".
> >
> > Most call it "keyboard".
>
> Most? My grep counted only 14.
>
> 520 for gpio-keys (not counting -polled)
>
> But sure, can be keyboard.

Sorry, I meant Section 2.2.2 "Generic Names Recommendation" in
the Devicetree Specification ;-)

> > Marzen has 4 keys split in two keyboards due to hardware limitations,
> > hence I had called them "keyboard-irq" (using falling edge interrupts,
> > i.e. no real key-up events)  and "keyboard-gpio" (gpio polling
> > without interrupts).
> keyboard-0
> keyboard-1

OK, will do.

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

