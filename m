Return-Path: <devicetree+bounces-11065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D967D3EA2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 20:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 045F5B20BEA
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E1021355;
	Mon, 23 Oct 2023 18:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0157D21340
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 18:09:09 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD535BE;
	Mon, 23 Oct 2023 11:09:08 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a82f176860so35963667b3.1;
        Mon, 23 Oct 2023 11:09:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698084547; x=1698689347;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t4FDGeEY/VamCmZvSKeRGk1ChdwB2QBoHGrivNbc4OA=;
        b=OvOmJLpF+LXyopIKMy7UDc+H2YhItTj1UtiIGFeXBi5LZ2CBi+AZCb53RwviUYbcZx
         sMv5UE7leZU+gkdorKyz8hvDzbqhC+YE7+EsTl9MLyJ0akIIU7YHW2cdo89AhjjpzvFF
         B/lrJzOQCl7GoPvLqWSn8TwKW/mTmRRLpZ8Dz7ME80mgsRLj6FH+cb9FHKNt3/2xF/xL
         isUd/yEsnpfcJzCJK3fEw+h3SEojYXKFtAzfGDUxuAXnNsQsKL27wgoBrm896rtdOziS
         Q9wcKzGk6sTGb/MaFG8Cc0s1jpDXYfEj0ilPDxABzQe/faIftCWHu7xx8tck6gu2nbGc
         Yk2g==
X-Gm-Message-State: AOJu0Yz3d8xLCvrKdvwAdb9O7nzG8dZF+belakqqtKfrTpPH/PoUrq0k
	PJDrkVzKdi1y2BEl0buIQ8xq8mzzhBAAcg==
X-Google-Smtp-Source: AGHT+IH5nV/h6qJVR/xGmzLVAnbzAK2ezfE6IipQOQuWOc5iX9uKJgikDbbRfhSJWj7Bayyexl3QyA==
X-Received: by 2002:a0d:d804:0:b0:59b:d872:5ca8 with SMTP id a4-20020a0dd804000000b0059bd8725ca8mr11799108ywe.22.1698084547618;
        Mon, 23 Oct 2023 11:09:07 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id w194-20020a8149cb000000b00586108dd8f5sm3341067ywa.18.2023.10.23.11.09.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 11:09:07 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5a7e5dc8573so36172957b3.0;
        Mon, 23 Oct 2023 11:09:07 -0700 (PDT)
X-Received: by 2002:a81:4f92:0:b0:5a8:1812:a7ed with SMTP id
 d140-20020a814f92000000b005a81812a7edmr10582993ywb.15.1698084546794; Mon, 23
 Oct 2023 11:09:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023144134.1881973-1-geert+renesas@glider.be> <4e2928a0-b2e6-4651-8cab-7f1c4d8f697d@linaro.org>
In-Reply-To: <4e2928a0-b2e6-4651-8cab-7f1c4d8f697d@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 23 Oct 2023 20:08:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVSx2G8A6wP+j0fNoFz1Y4+=R+diXc5pxJrn1FV65EBeQ@mail.gmail.com>
Message-ID: <CAMuHMdVSx2G8A6wP+j0fNoFz1Y4+=R+diXc5pxJrn1FV65EBeQ@mail.gmail.com>
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

On Mon, Oct 23, 2023 at 5:24=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 23/10/2023 16:41, Geert Uytterhoeven wrote:
> > Just like for "gpio", nodes can be named "gpios" or
> > "<something>-gpio(s)", causing false positive failures.
> >
> > See also commit 80120fccde170902 ("schemas: gpio: fix false positive
> > failures on nodes named 'gpio'").
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Seen on Linux, e.g.:
> >
> >     arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: /: keyboard-gpio: {'c=
ompatible': ['gpio-keys-polled'], 'poll-interval': [[50]], 'pinctrl-0': [[2=
9]], 'pinctrl-names': ['default'], 'key-3': {'gpios': [[28, 19, 1]], 'linux=
,code': [[4]], 'label': ['SW1-3'], 'debounce-interval': [[20]]}, 'key-4': {=
'gpios': [[28, 20, 1]], 'linux,code': [[5]], 'label': ['SW1-4'], 'debounce-=
interval': [[20]]}} is not of type 'array'
> >           from schema $id: http://devicetree.org/schemas/gpio/gpio-cons=
umer.yaml#
> >     arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: pinctrl@fffc0000: key=
board-gpio: {'pins': ['GP_0_19', 'GP_0_20'], 'bias-pull-up': True, 'phandle=
': [[29]]} is not of type 'array'
> >           from schema $id: http://devicetree.org/schemas/gpio/gpio-cons=
umer.yaml#
>
> keyboard-gpio is not commonly used names. Most (almost all) boards just
> call it "gpio-keys".

Most call it "keyboard".

Marzen has 4 keys split in two keyboards due to hardware limitations,
hence I had called them "keyboard-irq" (using falling edge interrupts,
i.e. no real key-up events)  and "keyboard-gpio" (gpio polling
without interrupts).

> >     arch/arm/boot/dts/microchip/at91-kizbox3-hs.dtb: /: gpios: {'compat=
ible': ['gpio'], 'status': ['okay'], 'rf_on': {'label': ['rf on'], 'gpio': =
[[38, 83, 0]], 'output': True, 'init-low': True}, 'wifi_on': {'label': ['wi=
fi on'], 'gpio': [[38, 84, 0]], 'output': True, 'init-low': True}, 'zbe_tes=
t_radio': {'label': ['zbe test radio'], 'gpio': [[38, 53, 0]], 'output': Tr=
ue, 'init-low': True}, 'zbe_rst': {'label': ['zbe rst'], 'gpio': [[38, 57, =
0]], 'output': True, 'init-low': True}, 'io_reset': {'label': ['io reset'],=
 'gpio': [[38, 62, 0]], 'output': True, 'init-low': True}, 'io_test_radio':=
 {'label': ['io test radio'], 'gpio': [[38, 73, 0]], 'output': True, 'init-=
low': True}, 'io_boot_0': {'label': ['io boot 0'], 'gpio': [[38, 75, 0]], '=
output': True, 'init-low': True}, 'io_boot_1': {'label': ['io boot 1'], 'gp=
io': [[38, 81, 0]], 'output': True, 'init-low': True}, 'verbose_bootloader'=
: {'label': ['verbose bootloader'], 'gpio': [[38, 43, 0]], 'input': True}, =
'nail_bed_detection': {'label': ['nail bed detection'], 'gpio': [[38, 44, 0=
]], 'input': True}, 'id_usba': {'label': ['id usba'], 'gpio': [[38, 64, 1]]=
, 'input': True}} is not of type 'array'
> >           from schema $id: http://devicetree.org/schemas/gpio/gpio-cons=
umer.yaml#
>
> compatible =3D "gpio"? Is there such binding?
>
> I think we should not allow "gpios" as a node, at least above examples
> do not justify it.

Note that there are more.  I used grep, and picked just one to see if I cou=
ld
fix that one too while at it:

$ git grep "\<gpios\s*{"
arch/arm/boot/dts/marvell/kirkwood-db.dtsi:
pmx_sdio_gpios: pmx-sdio-gpios {
arch/arm/boot/dts/marvell/orion5x-netgear-wnr854t.dts:  pmx_pci_gpios:
pmx-pci-gpios {
arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts:
pmx_misc_gpios: pmx-misc-gpios {
arch/arm/boot/dts/marvell/orion5x-rd88f5182-nas.dts:    pmx_pci_gpios:
pmx-pci-gpios {
arch/arm/boot/dts/microchip/at91-kizbox3-hs.dts:        gpios {
arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi:  sdc4_gpios: sdc4-gpios {
arch/arm/boot/dts/st/ste-hrefv60plus.dtsi:                      gpios {
arch/mips/boot/dts/ingenic/qi_lb60.dts:         mmc-gpios {

Or:

$ git grep -e "-gpio\s*{" | wc -l
64

> > For marzen, the alternative fix would be to
> > s/keyboard-gpio/keyboard-polled/g.

Do you prefer the alternative?

Thanks!

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

