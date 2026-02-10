Return-Path: <devicetree+bounces-264406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kP/YMhwpi2n1QQAAu9opvQ
	(envelope-from <devicetree+bounces-264406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:48:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E542811AFCA
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A29A03008615
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA502EA754;
	Tue, 10 Feb 2026 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxfgH7Jb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF3D1D516C
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770727702; cv=none; b=X9ca0plgmzB87BtI4wdrs1Thh3KcNrfxgVVvQ/JnxBpcSliBZ8YSPlhbQnoX3JZvVR21emE74Ua/kLuqHjVZSIypjiAhhQ9I9o7GFW5Q5BrkzkpOS+KO/+CRqGQ6coI/L9t5WrPEnRd9XWWNzOpr8RFE79qotdzYG5B9DRBeaB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770727702; c=relaxed/simple;
	bh=/yLTrEwFx14Dt9Rfp5vSAMLnucczQsLEDATsUcijQh0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DqDfgnm8kecRtk8rAOzvY2HisegQ1pKVwbuNM4weyCKuOkZdECfdoLHXUxAkiHlE+cUJD4AwB+boPMfHm6V/+5tlbLk1cxkUxW6/TOF//W5fXpVOSOXsMpnDA/C9GL/QQVux6vD8GqpWf66OVqBECUjI0YL0JZ68q+vRNlP4Mt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxfgH7Jb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 164AEC4AF0C
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770727702;
	bh=/yLTrEwFx14Dt9Rfp5vSAMLnucczQsLEDATsUcijQh0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=lxfgH7JbVpaXTZgCXtPeacOeRoRqvwbSeiQKRQ+CWb1BVOyn4X/FUNVyU8wG+46Ql
	 zHPQAvWpU/lsPHuGmBCWO8gtVgozcmXWtJF+4gtY2p8GdRa0RPxaL5f+l7qtpIlPFl
	 ZGxKcrHwNy2xhQo1ddiquABe/dBB0ANpCYID4oX5OGPQA8Ir3CerZyZP18Y85Gy6gc
	 Crs5Xi7rCUVM8pMn8nKVbP2mO3j+s7GrbVDW7Ep2ybo+Y8fnAUZJm2Rv2hwaWHXXKk
	 K3t9MapjBhjrVP1+rBiq4jW7yeIE4z/s4OtIJ0Qk2bTwrvUKx16eNxEl1QVkEG647a
	 z0kPurYsJNNrA==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38305d006faso46540851fa.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:48:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVrrS/D874h/qQLM6taejXSsjTtYX5AfbrfiQ+FklIyfFBTYXFuyzbpbXGreAJIakZxWBpzf/9yplQH@vger.kernel.org
X-Gm-Message-State: AOJu0YzLaY4SzTd975wM2D0tv+5pHJb8eIvmANidnZEbFJ3Sok3vPBi1
	ktOUGcNuYRY2kpqPHhoX9DfMaxHD7V2CTnqxCVGzK6HyagOne5gi5hghw3bYBMMJFA+T9aI/d8E
	DUSVE0synNKFL3MIyVSAPHr9lUjipqHc=
X-Received: by 2002:a05:651c:31cd:b0:386:fa6b:44dc with SMTP id
 38308e7fff4ca-386fa6b49ecmr1427891fa.9.1770727700437; Tue, 10 Feb 2026
 04:48:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919020525.7904-1-ot_cathy.xu@mediatek.com>
 <1b092f9c-d0b1-47df-a83e-a99d7491a32b@lechnology.com> <7ed7a5e3-0c83-44e8-b7d2-e93e0b686df8@collabora.com>
In-Reply-To: <7ed7a5e3-0c83-44e8-b7d2-e93e0b686df8@collabora.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 10 Feb 2026 20:48:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v66eSZUVk8_CXDMn6jmEJeC9QqJcz1eO-wVT-9OxrkU6Aw@mail.gmail.com>
X-Gm-Features: AZwV_Qj5PKRKpTYJzhQaY6M0aPxMiwKhFHv4dpRoWs-3c-choy2xYtUHpIM2CXI
Message-ID: <CAGb2v66eSZUVk8_CXDMn6jmEJeC9QqJcz1eO-wVT-9OxrkU6Aw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8189: Add pinmux macro header file
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: David Lechner <david@lechnology.com>, Cathy Xu <ot_cathy.xu@mediatek.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Yong Mao <yong.mao@mediatek.com>, 
	Wenbin Mei <Wenbin.Mei@mediatek.com>, Axe Yang <Axe.Yang@mediatek.com>, 
	Lei Xue <Lei.Xue@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264406-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lechnology.com,mediatek.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mediatek.com:email]
X-Rspamd-Queue-Id: E542811AFCA
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 7:03=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 09/02/26 22:48, David Lechner ha scritto:
> > On 9/18/25 9:03 PM, Cathy Xu wrote:
> >> Add the pinctrl header file on MediaTek mt8189.
> >>
> >> Signed-off-by: Cathy Xu <ot_cathy.xu@mediatek.com>
> >> ---
> >> This patch is base on the patch series:
> >> https://patchwork.kernel.org/project/linux-mediatek/list/?series=3D981=
475
> >> [1] dt-bindings: pinctrl: mediatek: Add support for mt8189
> >> [2] arm64: dts: mediatek: mt8189: Add pinmux macro header file
> >> [3] pinctrl: mediatek: Add pinctrl driver on mt8189
> >> Since patch [1] and [3] of the series have already been merged, this
> >> patch(patch [2]) is being resent individually after modifications.
> >> ---
> >>   arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h | 1125 +++++++++++++++=
++
> >>   1 file changed, 1125 insertions(+)
> >>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h
> >>
> >> diff --git a/arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h b/arch/arm6=
4/boot/dts/mediatek/mt8189-pinfunc.h
> >> new file mode 100644
> >> index 000000000000..df69f50c267a
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/mediatek/mt8189-pinfunc.h
> >
> > General question:
> >
> > Why do we have similar files in two different places different places?
> >
> > $ ls arch/arm64/boot/dts/mediatek/*-pin*
> > arch/arm64/boot/dts/mediatek/mt2712-pinfunc.h
> > arch/arm64/boot/dts/mediatek/mt6878-pinfunc.h
> > arch/arm64/boot/dts/mediatek/mt6893-pinfunc.h
> > arch/arm64/boot/dts/mediatek/mt8167-pinfunc.h
> > arch/arm64/boot/dts/mediatek/mt8173-pinfunc.h
> > arch/arm64/boot/dts/mediatek/mt8196-pinfunc.h
> > arch/arm64/boot/dts/mediatek/mt8516-pinfunc.h
> >
> > $ ls include/dt-bindings/pinctrl/mt*
> > include/dt-bindings/pinctrl/mt65xx.h
> > include/dt-bindings/pinctrl/mt6779-pinfunc.h
> > include/dt-bindings/pinctrl/mt6795-pinfunc.h
> > include/dt-bindings/pinctrl/mt6797-pinfunc.h
> > include/dt-bindings/pinctrl/mt7623-pinfunc.h
> > include/dt-bindings/pinctrl/mt8135-pinfunc.h
> > include/dt-bindings/pinctrl/mt8183-pinfunc.h
> > include/dt-bindings/pinctrl/mt8186-pinfunc.h
> > include/dt-bindings/pinctrl/mt8192-pinfunc.h
> > include/dt-bindings/pinctrl/mt8195-pinfunc.h
> > include/dt-bindings/pinctrl/mt8365-pinfunc.h
> >
> >
> > Plus one different naming pattern.
> >
> > $ ls include/dt-bindings/pinctrl/mediatek,*
> > include/dt-bindings/pinctrl/mediatek,mt8188-pinfunc.h
> >
> >
> >
> > Which one is preferred?
> >
> >
> The MediaTek pinctrl must gain compatibility with standard pinctrl bindin=
gs. Until
> then, bindings maintainers decided that these headers must go to the dts/=
mediatek
> folder.
>
> It is my desire to (but lack of time on my side hits hard) do the right t=
hing and
> make the MediaTek pinctrl drivers to actually "understand" standard bindi=
ngs.

The headers encode the pin numbers and mux values in a way that the
"pinmux" property requires, all the while giving them meaningful names.

I suppose you could consider them part of the binding, as the pin controlle=
r
binding assembles all the individual PIO blocks in the SoC to produce one
unified view of all the pins. How they are ordered is important.

Plus the datasheets are horrible to read, as the pins aren't always numbere=
d,
but are referred to using symbolic names like I2S2_MCLK.

> I'd be - of course - happy if anyone else beats me on time (which wouldn'=
t be hard
> really) and pushes a series to fix this situation.
>
> Just to be clear - right now, the MTK pinctrl DT looks like:
>
>         panel_default_pins: panel-default-pins {
>                 pins-rst {
>                         pinmux =3D <PINMUX_GPIO108__FUNC_GPIO108>;
>                         output-high;
>                 };
>
>                 pins-en {
>                         pinmux =3D <PINMUX_GPIO48__FUNC_GPIO48>;
>                         output-low;
>                 };
>         };
>
>         spi1_pins: spi1-pins {
>                 pins {
>                         pinmux =3D <PINMUX_GPIO136__FUNC_SPIM1_CSB>,
>                                  <PINMUX_GPIO137__FUNC_SPIM1_CLK>,
>                                  <PINMUX_GPIO138__FUNC_SPIM1_MO>,
>                                  <PINMUX_GPIO139__FUNC_SPIM1_MI>;
>                         bias-disable;
>                 };
>         };

To be fair, the above is one valid kind of generic pinmux description.

From Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml :

While not required to be used, there are 3 generic forms of pin muxing node=
s
which pin controller devices can use.

For hardware where pin multiplexing configurations have to be specified for
each single pin the number of required sub-nodes containing "pin" and
"function" properties can quickly escalate and become hard to write and
maintain.

For cases like this, the pin controller driver may use the pinmux helper
property, where the pin identifier is provided with mux configuration setti=
ngs
in a pinmux group. A pinmux group consists of the pin identifier and mux
settings represented as a single integer or an array of integers.

The pinmux property accepts an array of pinmux groups, each of them describ=
ing
a single pin multiplexing configuration.

 - end quote -

So Mediatek is following one of the generic pinmux bindings. It's not the
only one using this scheme either. STM32 and some of the Renesas platforms
also follow it.

> ....but the driver should gain compatibility with nodes which would look =
like:
>
>         panel_default_pins: panel-default-pins {
>                 pins-rst {
>                         pins =3D "gpio108";
>                         function =3D "gpio";
>                         output-high;
>                 };
>
>                 pins-en {
>                         pins =3D "gpio48";
>                         function =3D "gpio";
>                         output-low;
>                 };
>         };
>
>         spi1_pins: spi1-pins {
>                 pins-bus {
>                         pins =3D "gpio136", "gpio137", "gpio138", "gpio13=
9",
>                         function =3D "spi_m1";

Why is it "spi_m1", not "spi1"?


Honestly you likely don't want this, or rather you don't want a huge table
of pins and pinmux values and strings in the kernel. It takes a lot of time
to write, even more time to review, and takes up a lot of space for each
pinctrl driver. And those are generally built-in.

The Allwinner platform has gone in the reverse direction: instead of having
a huge table, we put the mux value in the DT using a custom property.
See the following for discussions:

https://patchwork.ozlabs.org/project/linux-gpio/cover/20171113012523.2328-1=
-andre.przywara@arm.com/
https://patchwork.ozlabs.org/project/linux-gpio/patch/20171113012523.2328-2=
-andre.przywara@arm.com/

And this is what finally landed:

https://lore.kernel.org/linux-gpio/20250306235827.4895-7-andre.przywara@arm=
.com/

Has it caused a bit of trouble? Perhaps. I was working on various periphera=
ls
on a new board and put in the wrong mux value and didn't notice for a coupl=
e
days.



ChenYu

>                         bias-disable;
>                 };
>         };
>
> .... or
>
>         spi1_pins: spi1-pins {
>                 pins-bus {
>                         function =3D "spi_m1";
>                         groups =3D "spi_m1_pins";
>                         bias-disable;
>                 };
>         };
>
> That's the entire situation.
>
> Cheers,
> Angelo
>

