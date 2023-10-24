Return-Path: <devicetree+bounces-11202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6147D4BD8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6F42B20C80
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C9E22EF1;
	Tue, 24 Oct 2023 09:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A16E33D0
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:21:05 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FA5310CF;
	Tue, 24 Oct 2023 02:21:02 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5a7afd45199so44047067b3.0;
        Tue, 24 Oct 2023 02:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698139261; x=1698744061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gs5mB9agEgSw8mVnf4S2UDX5XrqsGgxEhttckCERVW8=;
        b=nqNmu+0lFZh6YzckBDwZkJJ+78B3tMYz9NO3e5EAly6nLB59LaKkTqLZEpHS+48fFc
         2ufCdYowdPwTlUPz1ag09luEoOOLq8HUJychr4DO13OFVD24cz5aXfpxnkyoxpkJ9UGA
         HtnTuVYFJovtxV8ZaNvAXjVzFb3lswmNULStvwtM4JDxayF8ShQLV7SDAYs8K5s3MzC6
         4FoZvAlq6ALOp9nogOBaptZtpFWOqDkKYjN5q12/ttcQeEt0/vfcyrYTheyLMfm0mWJ9
         zZP4z9FltA3BQMy4UJnYPRTMTvMLTlXlNFctPLr6tRk73NQD5Fu2n1vIIeII/JYuhGbk
         ZJCQ==
X-Gm-Message-State: AOJu0Yx5eFbrJRLkgPOipJN8YrKzE8IQEdg58Gu1B0hEXVQLQhglzOtc
	ReYczCx+6C3aI3GjCYa4joNoLvGopj+WAw==
X-Google-Smtp-Source: AGHT+IEwxai+BkzzfQM0Vh5gNbrQ+5eo8xYuITZjxnc18rlEqqD1vn2IhzVlxnS0J76HJoSAFfCRUw==
X-Received: by 2002:a81:83ca:0:b0:5a7:b8a5:1474 with SMTP id t193-20020a8183ca000000b005a7b8a51474mr13918888ywf.22.1698139261080;
        Tue, 24 Oct 2023 02:21:01 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id m83-20020a0dca56000000b005a0a57cb089sm3899607ywd.5.2023.10.24.02.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 02:21:00 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d9caf5cc948so3949717276.0;
        Tue, 24 Oct 2023 02:21:00 -0700 (PDT)
X-Received: by 2002:a25:c091:0:b0:d9a:3c58:6ba9 with SMTP id
 c139-20020a25c091000000b00d9a3c586ba9mr10693006ybf.44.1698139260672; Tue, 24
 Oct 2023 02:21:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023144134.1881973-1-geert+renesas@glider.be>
 <4e2928a0-b2e6-4651-8cab-7f1c4d8f697d@linaro.org> <CAMuHMdVSx2G8A6wP+j0fNoFz1Y4+=R+diXc5pxJrn1FV65EBeQ@mail.gmail.com>
 <530b364d-1cdb-4905-a3f6-fd15c7aa1456@linaro.org> <CAMuHMdUg1t=McCPEFV9d0Jt=-oSDhzYznMWc17sbYvaVvueRfA@mail.gmail.com>
 <a58f3267-092c-4877-b45a-b2775b1d3312@linaro.org>
In-Reply-To: <a58f3267-092c-4877-b45a-b2775b1d3312@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 24 Oct 2023 11:20:47 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVttLvkKrrO+ty=g9aYiVW8M=NBjJhtedx+z_=4D-QRog@mail.gmail.com>
Message-ID: <CAMuHMdVttLvkKrrO+ty=g9aYiVW8M=NBjJhtedx+z_=4D-QRog@mail.gmail.com>
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

On Tue, Oct 24, 2023 at 11:15=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 24/10/2023 09:39, Geert Uytterhoeven wrote:
> > On Tue, Oct 24, 2023 at 9:33=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >> On 23/10/2023 20:08, Geert Uytterhoeven wrote:
> >>> On Mon, Oct 23, 2023 at 5:24=E2=80=AFPM Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>> On 23/10/2023 16:41, Geert Uytterhoeven wrote:
> >>>>> Just like for "gpio", nodes can be named "gpios" or
> >>>>> "<something>-gpio(s)", causing false positive failures.
> >>>>>
> >>>>> See also commit 80120fccde170902 ("schemas: gpio: fix false positiv=
e
> >>>>> failures on nodes named 'gpio'").
> >>>>>
> >>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>>>> ---
> >>>>> Seen on Linux, e.g.:
> >>>>>
> >>>>>     arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: /: keyboard-gpio:=
 {'compatible': ['gpio-keys-polled'], 'poll-interval': [[50]], 'pinctrl-0':=
 [[29]], 'pinctrl-names': ['default'], 'key-3': {'gpios': [[28, 19, 1]], 'l=
inux,code': [[4]], 'label': ['SW1-3'], 'debounce-interval': [[20]]}, 'key-4=
': {'gpios': [[28, 20, 1]], 'linux,code': [[5]], 'label': ['SW1-4'], 'debou=
nce-interval': [[20]]}} is not of type 'array'
> >>>>>           from schema $id: http://devicetree.org/schemas/gpio/gpio-=
consumer.yaml#
> >>>>>     arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: pinctrl@fffc0000:=
 keyboard-gpio: {'pins': ['GP_0_19', 'GP_0_20'], 'bias-pull-up': True, 'pha=
ndle': [[29]]} is not of type 'array'
> >>>>>           from schema $id: http://devicetree.org/schemas/gpio/gpio-=
consumer.yaml#
> >>>>
> >>>> keyboard-gpio is not commonly used names. Most (almost all) boards j=
ust
> >>>> call it "gpio-keys".
> >>>
> >>> Most call it "keyboard".
> >>
> >> Most? My grep counted only 14.
> >>
> >> 520 for gpio-keys (not counting -polled)
> >>
> >> But sure, can be keyboard.
> >
> > Sorry, I meant Section 2.2.2 "Generic Names Recommendation" in
> > the Devicetree Specification ;-)
>
> Yes, that's right. Keyboard is generic thus indeed seems more suitable,
> because "gpio-keys" already includes specific part - GPIO. OTOH, we tend
> to think about keyboard as something with keys for the full alphabet,
> like PC 10x keyboard. How to call a node in an embedded board or phone
> with 4 buttons or 4 keys in total?

On hackaday.com, they would call that a keypad.

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

