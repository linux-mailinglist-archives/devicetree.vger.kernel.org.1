Return-Path: <devicetree+bounces-238535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D91BC5C23E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:05:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED11A3ADD71
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDAD302157;
	Fri, 14 Nov 2025 09:04:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D632FFDE2
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111067; cv=none; b=gPaKDC2nJluQCK2pnAu5Dav8PfqPQz+uOIbmCfcPXVcwKQxxBaoEr70BuCi+yfE+QRS2ieWdUwlVhcu6m12DnzSSV7tRxsBRBg3ptkn5wDOW5Mcn2prCiFE7or3ipeHyOasH75JRg9zIXYfSdwFeju1y2Ew7tBtsVYVe588xScg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111067; c=relaxed/simple;
	bh=BHvm3hbmkPoS31CB/qQMOauxLpXwLi+jzNOEIhvIoqU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tvD0tDNnjDrT6g7ERtsP7RpbriZAYzU0ZryeiBDus3rrYkqzNFkruOUWaEu/xlY902L35v2RVXa8gcoTmp30O8ohFuSIq7UmPZ3D3KaeBROVfx/Jb3NCgaNG+7VqDapEz4NSX6Px/mJvL2aYMDbZQwW4Q3tP54YAMLW+lvfMZZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dfb5fcf063so490725137.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:04:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763111064; x=1763715864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gil5rxl+Rfqu8BNaVY7z8XkReqTcCBYpfj3RKeayOGo=;
        b=p2zU+BX3XQuiRCGOxdrMvOQHpyRq8P8r81t28Skb5GHSAqbCDZ5SnHBJwfkemcH3NM
         mvyjvWOD1A2+74s5VbcDT5oGS9pSCgssNWPm6tZ3xPSkfFcegORU4vLhq7O/tnBTqmuq
         izeK6oP3ljSrwwjYDc12MfYtciVsgyoamnskXKaKvNHYHXaI4VIhJG8ej729n9roLveb
         jVLIk0oA6XY8m1HWK+gpkLI10Mr8J0/U5L4sxNmJBM1BhgqLynyAzYW3wTz7cc78Az3L
         WnjDIeLYPE7JwzFz3iaYt610wxS0fkS3WcLa3yPvRfZSDcn0rvdyAdkdUxdr2TzQhMJL
         lYHA==
X-Forwarded-Encrypted: i=1; AJvYcCW1NqrmJrFo3VOeQBHTcF+s8AyyhrtasnkEFs2GsRDqDRuv7vL2gZNTGqZWJyvmVU9pos6YsPJG1y5m@vger.kernel.org
X-Gm-Message-State: AOJu0YwM27WP6ECs0eGNTP4FY7fDKl4nPAcyPBStGrTwq+NPEiT6tOVZ
	qK/2INuukYS1EJvttvZ8H/2K+EBv9tNjh+xY2a8rNchAPAUFjq9/anrv7FD05Ssx
X-Gm-Gg: ASbGnctjGFlck22FyOohGO1/aNJWSwOOlJzBVf76cYvn8VagqssuZ/ZY0dwBFOkCBwt
	jozbNLM71n2AWj9SpitIHKPBsfAvm88KRgShBT1TMRykaikX6UNjgzgdmkC5ByUzHjx5l4jFSlS
	j2ZTeThw/AWprozEvrKNRcTU7Czf36+6u316sFWJRzIpMDb6uulSoeW+vLVbSUd6pM4ryYn24rT
	3JA3sMwgoZYl743amuPvKFRIx5JqLCF8B8DDjFubOE9+CagHHboOb41Dz3pzZrv2cJQvdvlMCtm
	cNaMAA2koEIgmB70v5Buw7U6YcOytR4dhzXQOB9RCB3L99LCV9VXnqEZAD8KpUmCeINhfSFBzA2
	hNnjOaMD2pMk66bUwO07f6L9SEzmWLRoRRx9/tgQcCo9x2XKV1+1f2PdbwNYLHEvOfZs+rGhhFz
	SFZDT7pNldiUEIkWjt51AR6s8FG339/9PtcElUVV5LfTqlse9AfqEZ
X-Google-Smtp-Source: AGHT+IG/4h7gxPVXC8sqWvoiqsgb8InQnjF8L7EFjMJsudur90MA3iNMKp4Aqs8/CtrJGQOq74OYvg==
X-Received: by 2002:a05:6102:3e1f:b0:5db:cba0:93a with SMTP id ada2fe7eead31-5dfc5a6064bmr814218137.35.1763111063950;
        Fri, 14 Nov 2025 01:04:23 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb70b2e2fsm1480213137.6.2025.11.14.01.04.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 01:04:23 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5d758dba570so673020137.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:04:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWtskMhuCzDSrmbvqGvO/RsypzPxIeOgGJjr9MczuMBJbFncMSjMpGoru0hODx1TuMlLDtZIU4VKRuH@vger.kernel.org
X-Received: by 2002:a05:6102:3e1f:b0:5db:cba0:93a with SMTP id
 ada2fe7eead31-5dfc5a6064bmr814214137.35.1763111062738; Fri, 14 Nov 2025
 01:04:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027123601.77216-1-herve.codina@bootlin.com> <20251027123601.77216-6-herve.codina@bootlin.com>
In-Reply-To: <20251027123601.77216-6-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 14 Nov 2025 10:04:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUicJjXkkNs7FhZ0-jyuv9pzr_Q0AZNXs7tiv-MBGTkbg@mail.gmail.com>
X-Gm-Features: AWmQ_blv8a_OuSRESNKfbMrLVNnd3bpz0G1F8NnKOsI4crGuxZwqclBQZ7aOGl8
Message-ID: <CAMuHMdUicJjXkkNs7FhZ0-jyuv9pzr_Q0AZNXs7tiv-MBGTkbg@mail.gmail.com>
Subject: Re: [PATCH v6 5/8] ARM: dts: r9a06g032: Add GPIO controllers
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Serge Semin <fancer.lancer@gmail.com>, Phil Edworthy <phil.edworthy@renesas.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Pascal Eberhard <pascal.eberhard@se.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

Thanks for your patch!

On Mon, 27 Oct 2025 at 13:36, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> Add GPIO controllers (Synosys DesignWare IPs) available in the

Synopsys

> r9a06g032 (RZ/N1D) SoC.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.co=
m>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

> --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> @@ -499,6 +499,127 @@ gic: interrupt-controller@44101000 {
>                                 <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2) | IRQ_=
TYPE_LEVEL_HIGH)>;
>                 };
>
> +               /*
> +                * The GPIO mapping to the corresponding pins is not obvi=
ous.
> +                * See the hardware documentation for details.
> +                */
> +               gpio0: gpio@5000b000 {
> +                       compatible =3D "snps,dw-apb-gpio";

Don't we want an SoC-specific compatible value, too?

> +                       reg =3D <0x5000b000 0x80>;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +                       clocks =3D <&sysctrl R9A06G032_HCLK_GPIO0>;
> +                       clock-names =3D "bus";
> +                       status =3D "disabled";

Usually we keep all GPIO controllers enabled by default.

> +
> +                       /* GPIO0a[0]      connected to pin  GPIO0      */
> +                       /* GPIO0a[1..2]   connected to pins GPIO3..4   */
> +                       /* GPIO0a[3..4]   connected to pins GPIO9..10  */
> +                       /* GPIO0a[5]      connected to pin  GPIO12     */
> +                       /* GPIO0a[6..7]   connected to pins GPIO15..16 */
> +                       /* GPIO0a[8..9]   connected to pins GPIO21..22 */
> +                       /* GPIO0a[10]     connected to pin  GPIO24     */
> +                       /* GPIO0a[11..12] connected to pins GPIO27..28 */
> +                       /* GPIO0a[13..14] connected to pins GPIO33..34 */
> +                       /* GPIO0a[15]     connected to pin  GPIO36     */
> +                       /* GPIO0a[16..17] connected to pins GPIO39..40 */
> +                       /* GPIO0a[18..19] connected to pins GPIO45..46 */
> +                       /* GPIO0a[20]     connected to pin  GPIO48     */
> +                       /* GPIO0a[21..22] connected to pins GPIO51..52 */
> +                       /* GPIO0a[23..24] connected to pins GPIO57..58 */
> +                       /* GPIO0a[25..31] connected to pins GPIO62..68 */
> +                       gpio0a: gpio-port@0 {
> +                               compatible =3D "snps,dw-apb-gpio-port";
> +                               gpio-controller;
> +                               #gpio-cells =3D <2>;
> +                               snps,nr-gpios =3D <32>;
> +                               reg =3D <0>;

Please move "reg" just below "compatible", as per DT coding style.

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

