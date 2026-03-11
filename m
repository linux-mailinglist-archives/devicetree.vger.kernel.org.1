Return-Path: <devicetree+bounces-273931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKizKWsmsWnJrQIAu9opvQ
	(envelope-from <devicetree+bounces-273931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:23:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 099BA25F12A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:23:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42A2E3416B02
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7692DAFCA;
	Wed, 11 Mar 2026 08:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mumGF05J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C539A2E0914
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773216347; cv=pass; b=r2KoZ8Om4dprZ0PcjajSUl5jIuEGx1qMY5+RKU9jk9asflnZ1UvqqqPJxkH6xzxVEa1PpRhwyxwVz9GbEJvVBSK2Pgl56X4iFOuSa//UlA063DjqCYLq5e5uUAIUPXIk3jll0v0osmUv6OI0hpeWqgh8L9+ssTNkXuXdjy4f3sc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773216347; c=relaxed/simple;
	bh=UxziRm7TmnsLeOqLMl/icZgANC1jHWzYAd60SkgWEZM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BqVhJYyMA8xwlMtHlC/bCIq91Bkv7lCJDcmSLUngnqKRKowZV9oVCgKWVfhCXqHnLRkTxn65NjpSyudgYFtLtvYC+5Zv+rXiJIMdcJDhGslKlioFyZ/Af0/s13K2/m6aYEHJamZBMNhojZU3NMnJWIlKyNBoJLie84/SNQvFdC8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mumGF05J; arc=pass smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-89a465bd7edso27921866d6.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:05:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773216345; cv=none;
        d=google.com; s=arc-20240605;
        b=UWhWR76S3+tk40obe81HLSER89KoPcdr7jl9Dt7Z2Wddh650Domb3bp9WdpYgEzUmG
         cTru+/B6RrRyO0EZRdo2BO2xkqsOM45e/f/h/vHxFTJoksO4WGXG+Jv3aTpJT3tqELv5
         KXnrGMLqz7MHh762ZE0OvseFTTDflvrxxEmb9t1PZ6QqXIcUy3Th2Dtt69BeuZhiqjYu
         9j0/9pUBGl8GcJhvYx+GaoRwnMu+pIiepMY0gw1J2uXmF9l+6IYj2hBxTbul5UoodHyW
         MTUcP3SWYKj04r6RM3xP9foaxw/X2qNXTZa6vSw6JW+FbN4AwCS15+jJnKzyWpaqBpwi
         4nUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AYKrCeV+MhTQzAkldGnfBMc/qasi6YGvmmlBuzZRAqM=;
        fh=yfhRTC+ABEAzh3jnSyuKmdNntC8SK7dO29abj9cZ1lQ=;
        b=fdWJ5zaAOtOqIzl0uA1zxu7t3G4DBihvqIGoSzD3gQ79+uEAnu1WUjbO1x+A38SWTL
         66GLBym78AZZTCuC3Dfs9g/a5vDGf7H069OHGGLV9RX6pChoajfSs7WbtJVAwr0+DnDy
         qlaExmKe/nUk9CDwwPg3sZkhKsWSRtzfqhxaKP88Wiexlb7mtte5RxPhM+fc5mLsjGFI
         igdFVGzNvpBUk5snVLesyewqdWgdWD4dH7xLacVKytFvSobzhfVborTvXwK25RcggAbD
         KYIaNrwxOakU/eBjhucTxdnOgSF8PaHvXbO4CmbdOXU7u9eNUd2WXIipEcSrdDvvcpgx
         8EQw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773216345; x=1773821145; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYKrCeV+MhTQzAkldGnfBMc/qasi6YGvmmlBuzZRAqM=;
        b=mumGF05JgYDq1xIGfwYq+WCjIKw4UO8lxP6mq+SRmxYfcxhQjQCzRz4htoUCBpnCPm
         p5s83DM0XRRCYt7Pw7mPkYj0nN3EHW/ShOLVoI7XEJcQ4Wpdb4cDbKW7PeF/cdkG6OJX
         HZ/bYLpurYgSYyejTJXj7iAMmmXewmIm3wwaeLQqp6huj/Cu/4aEt4+FrFgexMT+Qv88
         TyCkSH0mYSGL2L78lgGDO8TB7zkzQNoOtcJoL70H1U8QIJcdU24mBS5CdIBdkfkJxcs8
         MOxZcSfmmYVbF5F0iwDdAKDSXYMCDYMQoxQflXqgXKYsLY6FgpWHjcZagGg05yJkVZUs
         MYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773216345; x=1773821145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AYKrCeV+MhTQzAkldGnfBMc/qasi6YGvmmlBuzZRAqM=;
        b=hA2dumQWfpG+wQlCl23pjnxAU1TqC+LIRe5PoXhvrOgqLxtuBV/ce3n/KOKvLOgNjb
         JCZuuhoYEiyWEl/ZAtM8RTz5g1EYzWOQRKKMZJB5yXVNMJw9zN2pou2Z8iMp3t8Lxg+e
         YWQDkIj/+4JZrd6xIGSbuG3fHiF2lr0I61DWVCswClu5E1q/ONdd4HnGqctQ2LjIC32b
         wEppbdWhmiUQS12w9ZMOLVnoVvEUGeskbP+XHCV3K/Okyn5pF9uAl2p+zK+lPFBnNwNM
         WAW5fDvT8nFS7Dhmm5s4OuSnpVj39sRULfLsCKvprMubbWrPYortVlYDRbL5hov0IdKS
         nC6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0nxraPsSQxLFZ6e2SknM28g4sHkytwGmy/TtNBSUnU5WO1WaP+/FklQoWT1mO8I97+S2SxhV2S3ol@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs+Owj/PBQ57rIDDeJyCi7vLxXvLKU1HDCyimVmM5yhut826uQ
	91oZjsp0y55gNP1M4UNhcCL6m2S++B2VFn8qE+Xb3HcpDwc2tWfk5ZOKcqH8RLfibVQyjEmz6zN
	343G/HDf/MgSqc1CfSq0gwUrYlMiEo6I=
X-Gm-Gg: ATEYQzx49zByZJRNUwvrll1lEODbgkMK8y0JQJ14wK48t4EakYEaKswVtzYF9QYbvoc
	5Y3CNQF+XbqzOuuk0Rwp2dN5gnlSBrEpmxYOpmZ+UqL2aWl1JBsDJ+WiD41wR0R5LBsVAfvNB1a
	68XfZsCNykyjE1ys97skR0zuo8KOZh0pJbvq1w0Mp4s//wwXXTDkQip3eAndquA8SuCYgebl/rE
	y9Mg5SMT/zNpg0m1tyFY5nwE/0HzkL406N8GrYhRO/y5sLFGdrcLtqNsVbCsWtSCE/qqkWmTCD7
	MZ9CSHxt
X-Received: by 2002:a05:6214:c44:b0:899:f5a4:8110 with SMTP id
 6a1803df08f44-89a66ad1f80mr18466396d6.56.1773216344645; Wed, 11 Mar 2026
 01:05:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
 <20260202-sanmiguel_init_dts-v1-2-c0023ae41899@gmail.com> <d7c03808b09b4cb3994a9de2eff156ec589ab581.camel@codeconstruct.com.au>
In-Reply-To: <d7c03808b09b4cb3994a9de2eff156ec589ab581.camel@codeconstruct.com.au>
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Wed, 11 Mar 2026 16:05:33 +0800
X-Gm-Features: AaiRm52tmf-PMV2NqwBvW-Vb0NrLbQv85M7D1YR9rJ6D6ErXgN13_VbO5sEQOD0
Message-ID: <CAGfYmwVdUJLUhjgyPUcOw2eTRxndba4Czb7rdw10cABBN2GRuQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: add Meta SanMiguel BMC
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Patrick Williams <patrick@stwcx.xyz>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Cosmo Chou <cosmo.chou@quantatw.com>, 
	Mike Hsieh <Mike_Hsieh@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
	Roger Kan <Roger.Kan@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 099BA25F12A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273931-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 2:40=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Potin,
>
> Regarding the patch subject, can you please capitalise the start of the
> description after '... aspeed:'?
>
>    ARM: dts: aspeed: Add Meta SanMiguel BMC
>
Hi Andrew,

Thank you for reminding.
Updated in v3.

> On Mon, 2026-02-02 at 14:03 +0800, Potin Lai wrote:
> > Add linux device tree entry for Meta (Facebook) SanMiguel compute-tray
> > BMC using AT2620 SoC.
> >
> > Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> > ---
> >  arch/arm/boot/dts/aspeed/Makefile                  |    1 +
> >  .../dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts   | 1163 ++++++++++++=
++++++++
> >  2 files changed, 1164 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspe=
ed/Makefile
> > index 9adf9278dc94..ab2effc29f6f 100644
> > --- a/arch/arm/boot/dts/aspeed/Makefile
> > +++ b/arch/arm/boot/dts/aspeed/Makefile
> > @@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_ASPEED) +=3D \
> >       aspeed-bmc-facebook-harma.dtb \
> >       aspeed-bmc-facebook-minerva.dtb \
> >       aspeed-bmc-facebook-minipack.dtb \
> > +     aspeed-bmc-facebook-sanmiguel.dtb \
> >       aspeed-bmc-facebook-santabarbara.dtb \
> >       aspeed-bmc-facebook-tiogapass.dtb \
> >       aspeed-bmc-facebook-wedge40.dtb \
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
> > new file mode 100644
> > index 000000000000..bcf857835b23
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
> > @@ -0,0 +1,1163 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +// Copyright (c) 2025 Facebook Inc.
> > +
> > +/dts-v1/;
> > +#include "aspeed-g6.dtsi"
> > +#include <dt-bindings/gpio/aspeed-gpio.h>
> > +#include <dt-bindings/usb/pd.h>
> > +#include <dt-bindings/leds/leds-pca955x.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/i2c/i2c.h>
> > +#include <dt-bindings/leds/common.h>
> > +
> > +/ {
> > +     model =3D "AST2600 VR NVL144 BMC";
> > +     compatible =3D "aspeed,ast2600";
>
> This is missing the platform compatible string defined in the previous
> patch.
>
Updated in v3.

> > +
> > +     aliases {
> > +             serial0 =3D &uart1;
> > +             serial1 =3D &uart2;
> > +             serial2 =3D &uart3;
> > +             serial3 =3D &uart4;
> > +             serial4 =3D &uart5;
> > +             i2c16   =3D &imux16;
> > +             i2c17   =3D &imux17;
> > +             i2c18   =3D &imux18;
> > +             i2c19   =3D &imux19;
> > +             i2c20   =3D &i2c20;
> > +             i2c21   =3D &i2c21;
> > +     };
> > +
> > +     chosen {
> > +             stdout-path =3D "serial4:57600n8";
> > +     };
> > +
> > +     memory@80000000 {
> > +             device_type =3D "memory";
> > +             reg =3D <0x80000000 0x80000000>;
> > +     };
> > +
> > +     iio-hwmon {
> > +             compatible =3D "iio-hwmon";
> > +             io-channels =3D <&adc0 0>, <&adc0 1>, <&adc0 2>, <&adc0 3=
>,
> > +                           <&adc0 4>, <&adc0 5>, <&adc0 6>;
> > +     };
> > +
> > +     spi2_gpio: spi {
> > +             compatible =3D "spi-gpio";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             sck-gpios =3D <&gpio0 ASPEED_GPIO(X, 3) GPIO_ACTIVE_HIGH>=
;
> > +             mosi-gpios =3D <&gpio0 ASPEED_GPIO(X, 4) GPIO_ACTIVE_HIGH=
>;
> > +             miso-gpios =3D <&gpio0 ASPEED_GPIO(X, 5) GPIO_ACTIVE_HIGH=
>;
> > +             cs-gpios =3D <&gpio0 ASPEED_GPIO(X, 2) GPIO_ACTIVE_LOW>;
> > +             num-chipselects =3D <1>;
> > +
> > +             tpm@0 {
> > +                     compatible =3D "infineon,slb9670", "tcg,tpm_tis-s=
pi";
> > +                     spi-max-frequency =3D <33000000>;
> > +                     reg =3D <0>;
> > +             };
> > +     };
> > +
> > +     standby_power_regulator: standby-power-regulator {
> > +             status =3D "okay";
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "standby_power";
> > +             gpio =3D <&gpio0 ASPEED_GPIO(M, 3) GPIO_ACTIVE_HIGH>;
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             enable-active-high;
> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +     };
> > +
> > +     scm-leds {
> > +             compatible =3D "gpio-leds";
> > +             led-0 {
> > +                     label =3D "bmc_heartbeat_amber";
> > +                     gpios =3D <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_L=
OW>;
> > +                     linux,default-trigger =3D "heartbeat";
> > +             };
> > +     };
> > +
> > +     fio-leds {
> > +             compatible =3D "gpio-leds";
> > +             led-0 {
> > +                     label =3D "power_blue";
> > +                     gpios =3D <&fio_ioexp 4 GPIO_ACTIVE_HIGH>;
> > +             };
> > +             led-1 {
> > +                     label =3D "power_amber";
> > +                     gpios =3D <&fio_ioexp 5 GPIO_ACTIVE_LOW>;
> > +             };
> > +             led-2 {
> > +                     label =3D "id_blue";
> > +                     gpios =3D <&fio_ioexp 6 GPIO_ACTIVE_HIGH>;
> > +             };
> > +             led-3 {
> > +                     label =3D "id_amber";
> > +                     gpios =3D <&fio_ioexp 7 GPIO_ACTIVE_LOW>;
> > +             };
> > +     };
> > +};
> > +
> > +&fmc {
> > +     status =3D "okay";
> > +     flash@0 {
> > +             status =3D "okay";
> > +             m25p,fast-read;
> > +             label =3D "bmc";
> > +             spi-max-frequency =3D <50000000>;
> > +#include "openbmc-flash-layout-128.dtsi"
> > +     };
> > +     flash@1 {
> > +             status =3D "okay";
> > +             m25p,fast-read;
> > +             label =3D "alt-bmc";
>
> Perhaps include the alt layout for 128M as well (which I recently
> applied).
>
This will be added in the next submission (v4).

> > +             spi-max-frequency =3D <50000000>;
> > +     };
> > +};
> > +
> > +&uart1 {
> > +     status =3D "okay";
> > +};
> > +
> > +&uart3 {
> > +     status =3D "okay";
> > +};
> > +
> > +&uart5 {
> > +     status =3D "okay";
> > +};
> > +
> > +&uart_routing {
> > +     status =3D "okay";
> > +};
> > +
> > +&mdio0 {
>
> The DTS coding style allows label references to be ordered
> alphabetically, which is my preference. Can you please fix this
> throughout?
>
Sorry, v3 has not applied with the DTS coding style.
I will update it in the next submission (v4).

> > +     status =3D "okay";
> > +     ethphy0: ethernet-phy@0 {
> > +             compatible =3D "ethernet-phy-ieee802.3-c22";
> > +             reg =3D <0>;
> > +     };
> > +};
> > +
> > +&mac0 {
> > +     status =3D "okay";
> > +     pinctrl-names =3D "default";
> > +     phy-mode =3D "rgmii-rxid";
> > +     max-speed =3D <1000>;
> > +     phy-handle =3D <&ethphy0>;
> > +     pinctrl-0 =3D <&pinctrl_rgmii1_default>;
> > +};
> > +
> > +&ehci1 {
> > +     status =3D "okay";
> > +     hub@1 {
> > +             reg =3D <1>;
> > +             hub@2 {
> > +                     reg =3D <2>;
> > +                     hub@1 {
> > +                             reg =3D <1>;
> > +                             device@1 {
> > +                                     reg =3D <1>;
> > +                                     cp2112a: interface@1 {
> > +                                             reg =3D <1 1>;
> > +
> > +                                             gpio-controller;
> > +                                             interrupt-controller;
> > +                                             #gpio-cells =3D <2>;
> > +                                             #interrupt-cells =3D <2>;
> > +
> > +                                             i2c20: i2c {
> > +                                                     #address-cells =
=3D <1>;
> > +                                                     #size-cells =3D <=
0>;
> > +                                             };
> > +                                     };
> > +                             };
> > +                             hub@3 {
> > +                                     reg =3D <3>;
> > +                                     cp2112c: device@2 {
> > +                                             reg =3D <2>;
> > +                                             gpio-controller;
> > +                                             #gpio-cells =3D <2>;
> > +                                             interrupt-controller;
> > +                                             #interrupt-cells =3D <2>;
> > +
> > +                                             gpio-line-names =3D
> > +                                                     "IOB0_MCP_P0_2-B"=
,
> > +                                                     "IOB0_MCU_RST_L-O=
",
> > +                                                     "IOB0_MCU_RECOVER=
Y_L-O",
> > +                                                     "IOB0_GLOBAL_WP-O=
",
> > +                                                     "IOB0_GLOBAL_ADDR=
_L_R-O",
> > +                                                     "IOB0_GLOBAL_ADDR=
_U_D-O",
> > +                                                     "IOB0_PWR_EN-O",
> > +                                                     "IOB0_MCU_READY_S=
TATUS-I";
> > +                                     };
> > +                             };
> > +                             hub@4 {
> > +                                     reg =3D <4>;
> > +                                     cp2112d: device@2 {
> > +                                             reg =3D <2>;
> > +                                             gpio-controller;
> > +                                             #gpio-cells =3D <2>;
> > +                                             interrupt-controller;
> > +                                             #interrupt-cells =3D <2>;
> > +
> > +                                             gpio-line-names =3D
> > +                                                     "IOB1_MCP_P0_2-B"=
,
> > +                                                     "IOB1_MCU_RST_L-O=
",
> > +                                                     "IOB1_MCU_RECOVER=
Y_L-O",
> > +                                                     "IOB1_GLOBAL_WP-O=
",
> > +                                                     "IOB1_GLOBAL_ADDR=
_L_R-O",
> > +                                                     "IOB1_GLOBAL_ADDR=
_U_D-O",
> > +                                                     "IOB1_PWR_EN-O",
> > +                                                     "IOB1_MCU_READY_S=
TATUS-I";
> > +                                     };
> > +                             };
> > +                     };
> > +                     hub@2 {
> > +                             reg =3D <2>;
> > +                             device@1 {
> > +                                     reg =3D <1>;
> > +                                     cp2112b: interface@1 {
> > +                                             reg =3D <1 1>;
> > +
> > +                                             gpio-controller;
> > +                                             interrupt-controller;
> > +                                             #gpio-cells =3D <2>;
> > +                                             #interrupt-cells =3D <2>;
> > +
> > +                                             i2c21: i2c {
> > +                                                     #address-cells =
=3D <1>;
> > +                                                     #size-cells =3D <=
0>;
> > +                                             };
> > +                                     };
> > +                             };
> > +                             hub@3 {
> > +                                     reg =3D <3>;
> > +                                     cp2112e: device@2 {
> > +                                             reg =3D <2>;
> > +                                             gpio-controller;
> > +                                             #gpio-cells =3D <2>;
> > +                                             interrupt-controller;
> > +                                             #interrupt-cells =3D <2>;
> > +
> > +                                             gpio-line-names =3D
> > +                                                     "IOB2_MCP_P0_2-B"=
,
> > +                                                     "IOB2_MCU_RST_L-O=
",
> > +                                                     "IOB2_MCU_RECOVER=
Y_L-O",
> > +                                                     "IOB2_GLOBAL_WP-O=
",
> > +                                                     "IOB2_GLOBAL_ADDR=
_L_R-O",
> > +                                                     "IOB2_GLOBAL_ADDR=
_U_D-O",
> > +                                                     "IOB2_PWR_EN-O",
> > +                                                     "IOB2_MCU_READY_S=
TATUS-I";
> > +                                     };
> > +                             };
> > +                             hub@4 {
> > +                                     reg =3D <4>;
> > +                                     cp2112f: device@2 {
> > +                                             reg =3D <2>;
> > +                                             gpio-controller;
> > +                                             #gpio-cells =3D <2>;
> > +                                             interrupt-controller;
> > +                                             #interrupt-cells =3D <2>;
> > +
> > +                                             gpio-line-names =3D
> > +                                                     "IOB3_MCP_P0_2-B"=
,
> > +                                                     "IOB3_MCU_RST_L-O=
",
> > +                                                     "IOB3_MCU_RECOVER=
Y_L-O",
> > +                                                     "IOB3_GLOBAL_WP-O=
",
> > +                                                     "IOB3_GLOBAL_ADDR=
_L_R-O",
> > +                                                     "IOB3_GLOBAL_ADDR=
_U_D-O",
> > +                                                     "IOB3_PWR_EN-O",
> > +                                                     "IOB3_MCU_READY_S=
TATUS-I";
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&adc0 {
> > +     aspeed,int-vref-microvolt =3D <2500000>;
> > +     status =3D "okay";
> > +
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_adc0_default &pinctrl_adc1_default
> > +             &pinctrl_adc2_default &pinctrl_adc3_default
> > +             &pinctrl_adc4_default &pinctrl_adc5_default
> > +             &pinctrl_adc6_default>;
> > +};
> > +
> > +&wdt1 {
> > +     status =3D "okay";
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_wdtrst1_default>;
> > +     aspeed,reset-type =3D "soc";
> > +     aspeed,external-signal;
> > +     aspeed,ext-push-pull;
> > +     aspeed,ext-active-high;
> > +     aspeed,ext-pulse-duration =3D <256>;
> > +};
> > +
> > +&i2c0 {
> > +     status =3D "okay";
> > +     aspeed,enable-byte;
> >
>
> ... Have you run `make dtbs_check`? A quick grep suggests this isn't a
> valid property.
>
I think v3 has fixed most of the failures in this DTS file.
The remaining failures originate from other included DTSI files.

> > +
> > +     ssif-bmc@10 {
> > +             compatible =3D "ssif-bmc";
> > +             reg =3D <0x10>;
> > +             alert-gpios =3D <&gpio1 ASPEED_GPIO(D, 7) GPIO_ACTIVE_LOW=
>;
> > +             timeout-ms =3D <5000>;
> > +     };
> > +};
> > +
> > +&i2c1 {
> > +     status =3D "okay";
> > +};
> > +
> > +&i2c2 {
> > +     status =3D "okay";
> > +
> > +     hpm0_ioexp_20: gpio@20 {
> > +             compatible =3D "nxp,pca9555";
>
> Is this a true nxp,pca9555, or a CPLD-based reimplementation? Same
> query for other instances...
>
There are physical IO expander chips on the module, not CPLD-based.

> Andrew

Potin

