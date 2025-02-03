Return-Path: <devicetree+bounces-142708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C45CA262AB
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 19:42:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA31B1887965
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21254153801;
	Mon,  3 Feb 2025 18:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYjQPLwO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AA913212A
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 18:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738608127; cv=none; b=M95nplDqlD5b3E1Fb8uGi0b1+qstuGziRMxARVFBqv8bWRoBe19jODVTYuKszMARS38sK5HQrFiPXoJwrHSTH5F6c3GefH0ZikJ975pJC+RR9hZzRlWjB7BbqfqOjKOkMtkIp/uC1b/Xgl5sj6MpVFnY7PqKSxaS4GE/LVQSZww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738608127; c=relaxed/simple;
	bh=Toyklm+XvaNto6avaLF3il6Lo9SG4Al2VivOzAWEhBA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CLizBp/IUO+cJKVMR2pzSU0wypegRDxjYYV+sU9XXhR4ogMdPIyrQSuw+VSprTv037zX/HvjNaBS6DwWWfU6v2zIymycZFHgbnLt55lv5ua9vGes3G5jjYAg45wMPRUJRNQuoOHYwkG2Mg47pVLU3lhZI71Z6/P27/xs6TURYLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYjQPLwO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE16C4CEE2
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 18:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738608125;
	bh=Toyklm+XvaNto6avaLF3il6Lo9SG4Al2VivOzAWEhBA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=CYjQPLwOuN4+buDEz8f0HDCp/ChYTLnHpGnFDX/gx1Eqa/xzO/ZaGilESvXSPBNvA
	 JXEOVDc/1vkCqufa9GPI/QjkOBrBdzCk7RvMwEc9SBcWBuVKe8bRscWfGK8TT0BKOM
	 ZDRKmC5bh8goUX6fizwaJMdhvacl4x/lzkl1GmC3jnRGbcRv2QxhITZnwMnMKCCUe9
	 Elap3n7RawYneilGzA3xnHciL1RrSQU1svdb6E0WMzIdgnAzSnkGmdToS7Ci5MCVwZ
	 YKK7aqjk5e/yijBuH6D2j4pE97htt+g8xenG3otLZ975UfPMiQY23ZL5pZjtSRQ2Hj
	 VZod7/n3yjHmQ==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d9837f201aso10808893a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 10:42:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXQyJ8BqTrp6w4Iv3/vCXbANe+hDdNRIcOEBhjlcrEX7UvQ1gUQG89w0Rz73tfcO2QDS9gyh/BwnQik@vger.kernel.org
X-Gm-Message-State: AOJu0YyX4fUqGtSgnvHB3jwbUMmUz/ouYhob0YVbAulBKCdqZGFI69hY
	NvfdfP40QEoTKqkyRJjokq1DO4owtl+C69uYRCaPUz5O0rqqhuK102nhHZXczLoJngKxsuQ9KXW
	z6qrb7FVOTx3MgCRzJrRzPl+q1Q==
X-Google-Smtp-Source: AGHT+IE9kiXQvZ7ftsSHwBcr32yIQHGbZmyGPLoubj6dWwKrmaLAps8M+hQ064TtgpXxV9LCGeAqE2wAHEG3g5AEDTE=
X-Received: by 2002:a17:907:97cc:b0:ab3:992d:d98d with SMTP id
 a640c23a62f3a-ab7480e1706mr46330666b.0.1738608123925; Mon, 03 Feb 2025
 10:42:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
In-Reply-To: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 3 Feb 2025 12:41:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKTEpq_-cfMosSWntTbMM6d_y-BWMrXHmUaQ3=9u90fyw@mail.gmail.com>
X-Gm-Features: AWEUYZkGUgkQ4QDx_tXgQwyLVeliiYMhm3XTEfnUL1V8_26vM189Y0lS7Edpjfs
Message-ID: <CAL_JsqKTEpq_-cfMosSWntTbMM6d_y-BWMrXHmUaQ3=9u90fyw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Introduce more nodes to EN7581 SoC evaluation board
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 1, 2025 at 8:40=E2=80=AFAM Lorenzo Bianconi <lorenzo@kernel.org=
> wrote:
>
> Add the following nodes to EN7581 SoC and EN7581 evaluation board:
> - clock controller
> - rng controller
> - pinctrl
> - i2c controllers
> - spi nand controller
>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  arch/arm64/boot/dts/airoha/en7581-evb.dts |  8 +++
>  arch/arm64/boot/dts/airoha/en7581.dtsi    | 90 +++++++++++++++++++++++++=
++++++
>  2 files changed, 98 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/=
dts/airoha/en7581-evb.dts
> index cf58e43dd5b21dbf4f64e305a4b4a2daee100858..1126da4b795f5d5df9725ec4d=
75cd9353b011710 100644
> --- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
> +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> @@ -24,3 +24,11 @@ memory@80000000 {
>                 reg =3D <0x0 0x80000000 0x2 0x00000000>;
>         };
>  };
> +
> +&i2c0 {
> +       status =3D "okay";
> +};
> +
> +&snfi {
> +       status =3D "okay";
> +};
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts=
/airoha/en7581.dtsi
> index 55eb1762fb11364877695960f5a2d3e42caf8611..b1cf650efd78c6c20d19e7f18=
c204cf5862215c0 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -2,6 +2,7 @@
>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/en7523-clk.h>
>
>  / {
>         interrupt-parent =3D <&gic>;
> @@ -150,5 +151,94 @@ uart1: serial@1fbf0000 {
>                         interrupts =3D <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
>                         clock-frequency =3D <1843200>;
>                 };
> +
> +               scuclk: clock-controller@1fa20000 {
> +                       compatible =3D "airoha,en7581-scu";
> +                       reg =3D <0x0 0x1fb00000 0x0 0x970>;
> +                       #clock-cells =3D <1>;
> +                       #reset-cells =3D <1>;
> +               };
> +
> +               rng@1faa1000 {
> +                       compatible =3D "airoha,en7581-trng";
> +                       reg =3D <0x0 0x1faa1000 0x0 0xc04>;
> +                       interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +               };
> +
> +               system-controller@1fbf0200 {
> +                       compatible =3D "syscon", "simple-mfd";
> +                       reg =3D <0x0 0x1fbf0200 0x0 0xc0>;
> +
> +                       en7581_pinctrl: pinctrl {
> +                               compatible =3D "airoha,en7581-pinctrl";
> +
> +                               interrupt-parent =3D <&gic>;
> +                               interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL=
_HIGH>;
> +
> +                               gpio-controller;
> +                               #gpio-cells =3D <2>;
> +
> +                               interrupt-controller;
> +                               #interrupt-cells =3D <2>;
> +                       };
> +               };
> +
> +               i2cclock: i2cclock@0 {

clock-20000000 for node name.

A unit-address without 'reg' is not valid. Test this with W=3D1.


Rob

