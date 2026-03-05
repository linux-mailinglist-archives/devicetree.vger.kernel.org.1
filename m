Return-Path: <devicetree+bounces-271601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMDPG26aqWm7AgEAu9opvQ
	(envelope-from <devicetree+bounces-271601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 15:59:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D326D2140C3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 15:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D92A30CF72C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 14:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E07EC3B4E89;
	Thu,  5 Mar 2026 14:54:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD6F3AE197
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 14:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772722458; cv=none; b=SNPsFjGYrVxymexx66b+lRAwtDS+aD40zf3iT1/DIbaAOhcXG6lGdkg3OM7IU5nxj8jel2JnU4hdSFFt7MiO6qitfQd3UwOTm3p9JFs2dt12BRgjCzuMppWmg/jWoKRsyJji5Zg7Xm7pyMTv7BDbpLXmvVmg33k8rl9+mhmFN4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772722458; c=relaxed/simple;
	bh=sqFS7jkvmWko0raJbLD+jIlJ3xHTUXzihuRenty1Nbg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b1fVydnE1sE/fqh+F8QRbf2nSG5cZwFmcC9FzoXyGWDYR0C+02n9zV/+GFETpvgBgkS+bkvTQCa6uAEciiY5QwJFKjOLFwDb8zxvDBRZSTlxUpi0ozhhrEZQG7JYrwLvG4pv8iL25xllwZ/Ww406ayC+VBcR2SdMKkDMDVIjIvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5fded42aa7cso5523621137.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:54:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772722456; x=1773327256;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSuHbHDrfHncDN0mo7GU5amj6QcQduXAgP8+JsZLJ9A=;
        b=dSAzIq5p1P60LUu0qQIY6k5OwoAoa7qUS+ZphiGL9nUrflmpv635ecT8HFSQRAOiuD
         frifsMFP9+AkAQBZWCG00RuGyt3XY2NWcMzTpwNg7Kf+lTuE6O/0bptZl1PVSBgrYbMf
         Nk1SntNrVOfig8B5PLKnT+LgScvYszcRoW2myy2bsqoxTYVgsbtYfrUrOcqgVICyrPIl
         kN6nJXE/sCER6Or+YeHbgYjWabQ9psxjVopux4axG6EL/WZS22Tt55twJpGP4h6fnDbo
         PP3SiqzMmDEeg9bMUNKqCZIaKDMDRscevAUxL9urI+80EoHyMCvRWR84RE+pp0QEwSWD
         67mQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9K9k4sgVk+R/tjx7a4OrAhtTroMnSp4V2ES0CEZ9vPQfR8lOkE9EstIvdI3SIuGaMYYgyWv+aU+YB@vger.kernel.org
X-Gm-Message-State: AOJu0YwSkXYRG7izPYoQfQiXmDlx4JQt4bd8BT/xsHp5cjcCi7jLIPaD
	Z1BfpfShNdP654ksK4IBe6OziwJG3yjKM1LEjrhulRQBzTaSxZSo7Tm7VlKlHEZoKO8=
X-Gm-Gg: ATEYQzyVE3qs6TWOic9cQnFCBSiliE4fYE9iQh5NrdiJZWvFeEAslV6chlmmYGecljA
	L9IJMSnovfr/ShVP5tyk11THx8//BmOVLTv6GlCsvQmuwCneEe2+c3hiKIuxMYsM5Pf54b9PAJC
	gM3CLtcRO+P10EbjhrI/RYlFTA4q9mVU8POuFR3gAVyjoTP/O+9erjgRRJQOouCV4zLNCVcjcpi
	cbW2EeOLnigBGH0FhRHDi52Noj07mBNNRkPgp4Lxr3IE3GJ4NTrVcHAZuDcCkAYcGfTXw67qbR6
	HQYNhl/ZZdnh6IsP/8HejKDgSH9hh817pKoqMVTO1TigUyTNHHcrb/ZWu47HS61KQVRgMqCRD+J
	IXfwraj9ZGVEaTVFG6JM9fpNMm9Q4ZX0K85DJ4fJtB0TFILsYeyhMtFwJc2mtBIRvgKXKmT5UdW
	OPWF7k2YGaFppq4XTakAjM5GRDl0eStEbq9ZqOcw33EZwHJ9gaFk1PJarN8BDjCqMrS++Horg=
X-Received: by 2002:a05:6102:4421:b0:5ff:d71e:c5fd with SMTP id ada2fe7eead31-5ffd71ed09amr438712137.2.1772722456381;
        Thu, 05 Mar 2026 06:54:16 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffbe90d7fbsm4003882137.13.2026.03.05.06.54.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 06:54:16 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5ffbbf07c11so1130550137.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:54:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXL8IFFzkw00ZA4pF4dMOSiIsga0X/+T84B6SPAT5N88Mk2+ALsqkVf7pJJseIfmhlAi04FpRTcY0zu@vger.kernel.org
X-Received: by 2002:a05:6102:a4a:b0:5ff:24b4:8992 with SMTP id
 ada2fe7eead31-5ffaac15453mr2876304137.4.1772722454877; Thu, 05 Mar 2026
 06:54:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-8-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-8-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 15:54:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW20h=D9Tk5T=6rxNanEiON1ZL35CJ6cqzrX12UeDcdPg@mail.gmail.com>
X-Gm-Features: AaiRm53bqTWke9KaVtnJ84J1a0a9Fq6QAkJRkm21cTTLv8kzepb9P_yYa_WTyJw
Message-ID: <CAMuHMdW20h=D9Tk5T=6rxNanEiON1ZL35CJ6cqzrX12UeDcdPg@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: D326D2140C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-271601-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.223];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,0.168.77.240:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.180.91.224:email,100ae000:email]
X-Rspamd-Action: no action

Hi Biju,

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add the initial DTSI for the RZ/G3L SoC.
> The files in this commit have the following meaning:
>   - r9a08g046.dtsi:    RZ/G3L family SoC common parts
>   - r9a08g046l48.dtsi: RZ/G3L R0A08G046L{46,48} SoC specific parts
>
> Added place holders to reuse the code for Renesas SMARC II carrier
> board.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
> @@ -0,0 +1,251 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Device Tree Source for the RZ/G3L SoC
> + *
> + * Copyright (C) 2026 Renesas Electronics Corp.
> + */
> +
> +#include <dt-bindings/clock/r9a08g046-cpg.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +       compatible = "renesas,r9a08g046";
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +       interrupt-parent = <&gic>;
> +
> +       audio_clk1: audio-clk1 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by boards that provide it. */
> +               clock-frequency = <0>;
> +       };
> +
> +       audio_clk2: audio-clk2 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by boards that provide it. */
> +               clock-frequency = <0>;
> +       };
> +
> +       can_clk: can-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by boards that provide it. */
> +               clock-frequency = <0>;
> +       };

These three are unused, so please drop them.

[...]

> +       eth0_txc_tx_clk: eth0-txc-tx-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board */
> +               clock-frequency = <0>;
> +       };
> +
> +       eth0_rxc_rx_clk: eth0-rxc-rx-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board */
> +               clock-frequency = <0>;
> +       };
> +
> +       eth1_txc_tx_clk: eth1-txc-tx-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board */
> +               clock-frequency = <0>;
> +       };
> +
> +       eth1_rxc_rx_clk: eth1-rxc-rx-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board */
> +               clock-frequency = <0>;
> +       };

TBD...

> +
> +       extal_clk: extal-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* This value must be overridden by the board. */
> +               clock-frequency = <0>;
> +       };
> +
> +       psci {
> +               compatible = "arm,psci-1.0", "arm,psci-0.2";
> +               method = "smc";
> +       };
> +
> +       soc: soc {

> +               i2c0: i2c@100ae000 {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;

Please move these two below "reg".

> +                       reg = <0 0x100AE000 0 0x400>;

Please use lower-case hexadecimal.

> +                       /* placeholder */
> +               };

> +               pinctrl: pinctrl@11030000 {
> +                       reg = <0 0x11030000 0 0x10000>;
> +                       gpio-controller;
> +                       #gpio-cells = <2>;

/* placeholder */

> +               };
> +
> +               dmac: dma-controller@11820000 {

Unused. Surely you can wire up scif0?

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

