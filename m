Return-Path: <devicetree+bounces-257967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNp9M2fdcGnCaQAAu9opvQ
	(envelope-from <devicetree+bounces-257967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 15:06:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC925823B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 15:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C3AA4A41C8E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2095448A2BD;
	Wed, 21 Jan 2026 13:48:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E95648A2B9
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769003297; cv=none; b=qPF4TgfOAYd5ivVCuWXG2cwxxgZWzTNX+HK1AmpqbygwW8Xa4vqD0jtjfb5g/r9Go0mZJut39yHM2OPmmJCZuLUf4Ivwdb/7cUUTbiRXdo29VQc+WkbZEiy0PE64NsS+Y0acMm6jtLc/Rd63mVMj/wQAAJM31MbMmC3WBp04dMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769003297; c=relaxed/simple;
	bh=nILMXFRRKbSWRtkWBDrdGe9Su2xonO+3lj3Iv//nTxM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nvIjmuqpp3B8U+ZYmyp9zK997T/g7HyHfVrF58h0vyFNL6jpoCx2fj0VpZOM3fyDUhK3hTrCk5SXuJh/3UT5xhcNDznuonOtOxREK3Ly0/0mNGJd5LMuBR9zv3gnXPiim73ICZyk0QbWHVU2WeODUUj/naIm7fN5Hd4TiFJwLpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-947fef8ebf4so630721241.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:48:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769003294; x=1769608094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FDhI8tIlTzFkDL9hKs3tIMe24M9SzYYyQ7hRvEJ46wo=;
        b=crUOjueRERMlv2tQLewYf41JJBeVG4w6aRWa8R1jQa8R2PTUVMo68ke5GC3EUwdIDQ
         650QagiPo9kj6sts59shWpS1mtv6+GJYWwLp0dInTNfUuxDYCup4hBXjLwZHBze5sQyp
         peUi028dUCX4vywbp4Imzj83pErZBeET/Eh/BXpa5O6XUT/oG//Tl0+V1cxyZuO/rQyS
         tqFJL1Trnl5r4XoOqPpgfYzp/tULQcqbGQppwSn48lCB2a9oZGkTSALA4KoxBwktXbZE
         MOxYitAi0p0NP+NTWnAqnv5et85FkZddA3Hu1zVMEsMI/+UcrbomwZb4j+AfG3iGVRAP
         TrvA==
X-Forwarded-Encrypted: i=1; AJvYcCWepb7h+6hLffV+WWTP26Rbd4K1E8Ti7Dzwf7XYmlOw7iaiQCSNIScHtPs2pCzQiUr1+Wu4t+LKJAHr@vger.kernel.org
X-Gm-Message-State: AOJu0YyoE9IvA+t7a3nAmmOZX1yej5IO0oRLtbZCZuVKfs+SBFTJ9Ek9
	rb74IyymlEgW7C2z1uiYu53wQrZnFzOdp23QDt/Rx6GfO9NITW1QLIpmkYFy43NF
X-Gm-Gg: AZuq6aLVxacgmowoM+n76WoDUdMfF88Bcj00Q5JVzleOl6yCZFHcAWdUAbikD+6wqFY
	4VJrMYIfi4gMUg2Lk7DcEm0Nev3MTdTRZXBKuaqgCTbRh0TozCNL2IuEckjwOdHx7i3u1PbGjFi
	TMKkSxv7iuRxBDkXCK9aotDK+JjUgJpmxEuL6dZfI9MNNyuttN5g84sdmWFmkHCAtcKMKVJXvwy
	MQr6AdTX4nLHfPnOt8PBiExt3Bsk5MAoW1kZx+8bNWs+oUQOy2UTs9I28GDCtjSnd1XLFDK5ZVf
	ajxdL95J0xlY0TRn3zirOF9rbeTooFj1UbX96RY2mAf9hF2mCnvQHcJS6isis9rdhHeM+gDOt8m
	sdotS4hN36CYqBCGvCOXdZC/oFPFygRZlt6cOJlZarP8ZtAbUMZs4DzKDwBgvlCoawoX+JighnI
	/3oVtpBrXGPquYydULWWX97peIXHS/mMbeuK8bfD3XLgNvCxlU
X-Received: by 2002:a05:6102:304f:b0:5db:3569:9059 with SMTP id ada2fe7eead31-5f1a55a28cfmr4538654137.17.1769003293836;
        Wed, 21 Jan 2026 05:48:13 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6772b70sm5406721137.0.2026.01.21.05.48.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 05:48:13 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9480078b2fbso583392241.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:48:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXO0iZAiOEK9br1AD9Tb9pHghUabeF5fs65/wjovxYTk5aogWx5T2XesXmcSf4FVky371QczgvqbXq1@vger.kernel.org
X-Received: by 2002:a05:6102:d92:b0:5ed:ab0:e5d1 with SMTP id
 ada2fe7eead31-5f192539f6amr7680722137.15.1769003293334; Wed, 21 Jan 2026
 05:48:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-10-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Jan 2026 14:48:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
X-Gm-Features: AZwV_Qi-WLBK0O_q5kA0yh25XZR3hcQUNirELFZFoxr2VQqkUKi0-PPk2Bs3v1s
Message-ID: <CAMuHMdWfkHMQFvUzaHpso-fMFAS5u8ABHpEA9ZXq1fxcR-oN6Q@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: renesas: ebisu: Describe PCIe/USB3.0
 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,glider.be,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-257967-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.68:email,0.0.0.70:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,mailbox.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 3BC925823B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Marek,

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on Ebisu
> board. The clock generator supplies 100 MHz differential clock for both
> PCIe slot and BT/WLAN expansion port, as well as for the USB 3.0 PHY.
>
> This configuration is valid for SW49 in OFF position, which means the
> PCIe signals are routed to the PCIe slot and U11 9FGV0841 PCIe clock
> generator output 3 supplies clock to the PCIe slot.
>
> In case the SW49 is set to ON position, which means the PCIe signals
> are routed to the EX BT/WLAN expansion port, and U11 9FGV0841 PCIe
> clock generator output 4 supplies clock to the port and &pciec0_rp
> clocks should be changed to "clocks = <&pcie_usb_clk 4>;". Once the
> BT/WLAN port is tested, this can be implemented using a DTO. Until
> then, assume SW49 is set to OFF position.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
> +++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
> @@ -53,6 +53,12 @@ backlight: backlight {
>                 power-supply = <&reg_12p0v>;
>         };
>
> +       pcie_usb_refclk: clk-x7 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <25000000>;
> +       };
> +
>         cvbs-in {
>                 compatible = "composite-video-connector";
>                 label = "CVBS IN";
> @@ -439,6 +445,13 @@ adv7511_out: endpoint {
>                 };
>         };
>
> +       pcie_usb_clk: clk@68 {
> +               compatible = "renesas,9fgv0841";
> +               reg = <0x68>;
> +               clocks = <&pcie_usb_refclk>;
> +               #clock-cells = <1>;
> +       };

During boot, the rs9 prints a warning:

    clk-renesas-pcie-9series 0-0068: No cache defaults, reading back from HW

which probably shouldn't be printed at the warning level?

> +
>         video-receiver@70 {
>                 compatible = "adi,adv7482";
>                 reg = <0x70>;

> @@ -871,7 +902,19 @@ &usb2_phy0 {
>         status = "okay";
>  };
>
> +&usb3_phy0 {
> +       clocks = <&pcie_usb_clk 6>;
> +       status = "okay";
> +};

This does not work, probing fails with:

    usb_phy_generic usb-phy: dummy supplies not allowed for exclusive
requests (id=vbus)

Adding a fixed regulator that serves as vbus-supply like in commit
fec2d8fcdedaeeb0 ("arm64: dts: freescale: imx93-phyboard-nash: Add USB
vbus regulators") fixes that issue (and my USB3.0 FLASH driver is
detected, yeah!), but a more accurate description would be better.

> +
> +&usb3s0_clk {
> +       clock-frequency = <100000000>;
> +       status = "disabled";
> +};
> +
>  &usb3_peri0 {
> +       phys = <&usb3_phy0>;
> +       phy-names = "usb";
>         companion = <&xhci0>;
>         status = "okay";
>  };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

