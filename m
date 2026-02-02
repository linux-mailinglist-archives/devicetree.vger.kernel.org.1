Return-Path: <devicetree+bounces-261825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMncNTqqgGkFAQMAu9opvQ
	(envelope-from <devicetree+bounces-261825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 14:44:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 57317CCE68
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 14:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 685DE3027305
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 13:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D94E36997B;
	Mon,  2 Feb 2026 13:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="efqbHRGm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F201C5F27
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 13:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770039859; cv=pass; b=jDQN/BN+xlsFZXdc6i0IMkEGFkL1RE8d5HEazRgZ9K3JJLKEOUUd8tMBkUQU/utWqKeyAZujkroXVDdIVtSND0XenKvYhw+I4Bwo0pIZQ828YvDMwJlnYxLIlod18ophWfEFl0sU9V568HHz7rfLIKCR8IJApgUQah0rjenFqrg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770039859; c=relaxed/simple;
	bh=SLoDrQ7o31aXSL/l6vhQFWl5kVZDW8AljfKvQuuzXB8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y8X32TUpWe4qSIvau86rfHxALhForwMY8P/0r7627pfDtF4fhciAMu0qveZQXt7E8ihh2iJvtV4mOkGCgFZbq+gRVi4CFn2yj3WpOSnA8nyfKTivaYf8WkM6N94k1cuvoNd0XQxNcohkC89spVTUq+d0JFR639EOSYhWDvmnSxE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=efqbHRGm; arc=pass smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-432d2c96215so4294947f8f.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 05:44:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770039856; cv=none;
        d=google.com; s=arc-20240605;
        b=Uxln+1bIYN6sni0qhOEhZo+pJDob507LQthvW2VA0rmOO5P+1vT1+3wrwxT6/YGlDV
         EVuoZOnmDbMDXOM+VnO3rY7kbDBR0o8whnFsKRjJS1zZvlNTPKl72YjDDeAhPJvL3i2b
         DJNnm6mj8SGr42/2HGyCjFepxtRUaBv+cRZgndXKX5TMMbeVV4Ca/SgJ3ZdAwFXOr/B8
         8UoPHMMqeN9VwgaVDRNdXqMGSIWu0MnMU7ywuxgXuU5h9Hen6sOdD2hy2+ERMB2igdGN
         X4AaRBWgMRtPVA9vTzwuQY8pTmYZOjPp0BqZTzHJ+U2Vp3kgctkQPbwzCVjLX4y/tkag
         h0QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8s3hszvKPaoOlS29xzTXDcG0+Fbi9qduRiQphI9gTgo=;
        fh=YKeVM2Xv1Sge+fA8ZPxR5BnlAweudnL65N21IrbjhlI=;
        b=df5u8rmnNNeOaPX/KyHNBCBurDi4FYL2iksgi543K+sbnXFCds2+5tUeANqS+k97xc
         N+G9/j1JleERKyZPOTp7E8wpG1SKA3zlp5ak/DqKuDYOpO/axtcibg0Q992xf2pu03dM
         x1hnl8hjxgyxT4ZNckj9H6kkqEOropvpqc7MLQ00+LVS8nh5lff/7zLGCoDuWYHwZt7b
         VFboZ0XZUZjt+bADMXVE0M1Ug6mct24uTgspkI6mwFhzJGHvCOeRkbPYm4FLyxy2Wyz0
         A4HiC8qK+Lzfmc1bcTd0f8jjYuRpYgGyY90R0PFHoErx92+waGzGWDWYRpvvjOzvi00+
         vyBQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770039856; x=1770644656; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8s3hszvKPaoOlS29xzTXDcG0+Fbi9qduRiQphI9gTgo=;
        b=efqbHRGm2YibdGUoXPBV6xlrZ6mXuAa+JW8j90cRUwae5TTr1PkYaTV+av2gNg3Gki
         ZBuyTGGdegjBtBT6hyCxvbYxtesF7cY28UC6Ejt3IlqRg6eQ6v1nrbYn8Ch1dk5QOe+g
         sUv+0TKLEvwYBUjZTLaFa2CmerR4kkUCSan6rKVSNnuL5JOSgvswJoWktihBu4fUwf9k
         iDrY/lHXktP8EXZh/5yW3/scA0f5phjnMlIJGrTzjsGRt+wppq/ytPE0bkufKGn9+K0k
         Td855M3iSkI0qCymAR9v65ZWvSsZN2SDjE898tL91JOPlrrvvaMm0v4T0vV1Rl2u/q0C
         a4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770039856; x=1770644656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8s3hszvKPaoOlS29xzTXDcG0+Fbi9qduRiQphI9gTgo=;
        b=rYT/EynoXbgWBfpJayNPCDwmZqggOWNytUMrQDR1tXuB+RdGCNkHqiiFQF4cZBEaRm
         zb8lgfSGb+MP5Ke2qNQW6HewWXsQArzRBGxKg2UXehpDvJsiPvjt4UaJVueGD/oas9d8
         QcogZwNOitwNj5skxghDMcrzq4IitfiAHz2oUrijaHejYMoF4yy/miotJWhs0FPXFDnK
         Mb1kfSvXSgxZq2cQUDfNMiEuhg1aQv98v3kWJxhiPxm2etGqzI/s4DFm+SUa0gUKi9Gr
         W0qgTLl9eLh5JyFPO704R5F9Q0D0xtBp5VebNN33nlzHX4yxKfuT2xquFHa7Jliht8ln
         c7YQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIaevEsJSqvbrXgOx4tDUaNG+ge3e8Uazrl96Cejcc7SK4Cq2ANO6zg2sNVmXjAGIK7z/m1lLHXUr4@vger.kernel.org
X-Gm-Message-State: AOJu0YxlrUbEixz4A022R4mTv04PpnBzbcFYjy8UZTZTs0ZaciyMSZ/Q
	sY1ZVkvXwyNo5K6a+c21mwIqplGFBwuyKPCY9Z6y+LKXZBtK4cuCG0wMJEIJYSDt2Fp5QBsAof5
	mqqtVv7ZRQ9qaHu2XBMBeSdcMRCGfcf4=
X-Gm-Gg: AZuq6aKFfLJS5cR1/UavXe1UcNoUKr3cBXecs9xiu++OWwtWygaYgreX+bNfEtUzMPn
	W2rAEccBYlowe/wGAquiedRSRGN9lLAjRSEnAVJ8N/8X9h3pCEqP5ErLRM8uaGJZkmh5IdnTTQo
	YcH7dHbzNZwXsiwRolQlB9MB1b3/1YjvShENaJsd1LDqylJZi+bZWnMWzWwzBSC53s8i2P/79li
	UgrBqBFqRqXSaJutvwWo5HjVKVaU3NimMXHyV28SN6U7/ZT6Ln8ykTh5/Vs0kuHP+269KRG
X-Received: by 2002:a5d:5f47:0:b0:435:a9ad:d20f with SMTP id
 ffacd0b85a97d-435f3a7b7f2mr18735821f8f.19.1770039855129; Mon, 02 Feb 2026
 05:44:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124163611.3279104-1-onlywig@gmail.com>
In-Reply-To: <20260124163611.3279104-1-onlywig@gmail.com>
From: Wig Cheng <onlywig@gmail.com>
Date: Mon, 2 Feb 2026 21:44:02 +0800
X-Gm-Features: AZwV_Qj37saxlDBmL3KyLfqeKdp9uUTiFuZASXLVMv2D5-7g617yKYCeVpyp5EQ
Message-ID: <CAPStFe4qiEhmF_zDynuWE68LGtAsKsjg_mQHY1zdBsoMsHru3w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add pixpaper display overlay for
 RZ/V2H Kakip board
To: geert+renesas@glider.be, magnus.damm@gmail.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-261825-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[glider.be,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 57317CCE68
X-Rspamd-Action: no action

Wig Cheng <onlywig@gmail.com> =E6=96=BC 2026=E5=B9=B41=E6=9C=8825=E6=97=A5=
=E9=80=B1=E6=97=A5 =E4=B8=8A=E5=8D=8812:36=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Add device tree overlay to support the MayQueen PixPaper e-paper display
> on the Renesas RZ/V2H EVK (KAKIP board). The display is connected via
> SPI0 interface and uses GPIO pins for reset, busy, and DC control.
>
> The overlay configures:
>     - RSPI0 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
>     - PixPaper display device with proper GPIO assignments
>     - SPI frequency set to 1MHz for stable operation
>
> This enables support for the Open-EP Community pixpaper-213-c module on
> the RZ/V2H platform.
>
> Signed-off-by: Wig Cheng <onlywig@gmail.com>
> ---
>  arch/arm64/boot/dts/renesas/Makefile          |  3 ++
>  .../renesas/r9a09g057h48-kakip-pixpaper.dtso  | 40 +++++++++++++++++++
>  2 files changed, 43 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpap=
er.dtso
>
> diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/r=
enesas/Makefile
> index 1fab1b50f20e..d4dfb7fd973b 100644
> --- a/arch/arm64/boot/dts/renesas/Makefile
> +++ b/arch/arm64/boot/dts/renesas/Makefile
> @@ -202,6 +202,9 @@ dtb-$(CONFIG_ARCH_R9A09G057) +=3D rzv2-evk-cn15-sd.dt=
bo
>  r9a09g057h44-rzv2h-evk-cn15-sd-dtbs :=3D r9a09g057h44-rzv2h-evk.dtb rzv2=
-evk-cn15-sd.dtbo
>  dtb-$(CONFIG_ARCH_R9A09G057) +=3D r9a09g057h44-rzv2h-evk-cn15-sd.dtb
>  dtb-$(CONFIG_ARCH_R9A09G057) +=3D r9a09g057h48-kakip.dtb
> +dtb-$(CONFIG_ARCH_R9A09G057) +=3D r9a09g057h48-kakip-pixpaper.dtbo
> +r9a09g057h48-kakip-pixpaper-dtbs :=3D r9a09g057h48-kakip.dtb r9a09g057h4=
8-kakip-pixpaper.dtbo
> +dtb-$(CONFIG_ARCH_R9A09G057) +=3D r9a09g057h48-kakip-pixpaper.dtb
>
>  dtb-$(CONFIG_ARCH_R9A09G077) +=3D r9a09g077m44-rzt2h-evk.dtb
>
> diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso=
 b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso
> new file mode 100644
> index 000000000000..e36cfc9227f4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper display
> + * support on Renesas RZ/V2H platform (KAKIP board).
> + *
> + * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/pinctrl/renesas,r9a09g057-pinctrl.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +&pinctrl {
> +       rspi0_pins: rspi0 {
> +               pinmux =3D <RZV2H_PORT_PINMUX(9, 0, 1)>, /* SPI0 MOSI */
> +                        <RZV2H_PORT_PINMUX(9, 1, 1)>, /* SPI0 MISO */
> +                        <RZV2H_PORT_PINMUX(9, 2, 1)>, /* SPI0 CLK */
> +                        <RZV2H_PORT_PINMUX(9, 3, 1)>; /* SPI0 CE0 */
> +       };
> +};
> +
> +&rspi0 {
> +       pinctrl-0 =3D <&rspi0_pins>;
> +       pinctrl-names =3D "default";
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       status =3D "okay";
> +
> +       display0: display@0 {
> +               compatible =3D "mayqueen,pixpaper";
> +               reg =3D <0>;
> +               spi-max-frequency =3D <1000000>;
> +               reset-gpios =3D <&pinctrl RZV2H_GPIO(A, 7) GPIO_ACTIVE_HI=
GH>;
> +               busy-gpios =3D <&pinctrl RZV2H_GPIO(B, 3) GPIO_ACTIVE_HIG=
H>;
> +               dc-gpios =3D <&pinctrl RZV2H_GPIO(7, 4) GPIO_ACTIVE_HIGH>=
;
> +       };
> +};
> --
> 2.43.0
>

Hi reviewers,
I submitted this patch on January 25th adding device tree overlay
support for the MayQueen PixPaper e-paper display on the Renesas
RZ/V2H EVK (KAKIP board).

I haven't received any feedback yet and wanted to kindly check if
there are any concerns or suggestions for improvement. I'm happy to
address any issues and submit a v2 if needed.
The patch is available at:
https://lore.kernel.org/linux-renesas-soc/20260124163611.3279104-1-onlywig@=
gmail.com

Thank you for your time and consideration.

Regards,
Wig

