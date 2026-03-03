Return-Path: <devicetree+bounces-270286-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zUoVDqJ1pmnDQAAAu9opvQ
	(envelope-from <devicetree+bounces-270286-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:46:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C02831E94E6
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BC34C301BAB4
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 05:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4343D994;
	Tue,  3 Mar 2026 05:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bnRbfky+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C831729A2
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 05:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772516765; cv=pass; b=ufoKHieZ0HiiHDCyHWttJCsn+S3X5HiJMMhNzcBJwd9uw1XQuPzO/nWPVocd89rQlOANb/5I5YwMCvt76RhKuLOjuxGF+qxoXPFdZizz93GGuEqWGegme0Gmd6JbT06ZCok/H57vTb/M++Mw5ZzszAjpRN5OaC2GU8wy89YkolE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772516765; c=relaxed/simple;
	bh=DsX1kTnKCeSfsHdDeFpxr4GGfo2SoOOYDiI+D+KDcr0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hRruR30L8Bw8QZJW9LO7fGyI7m4oageu1Gi/Uok11A/yR8Qq3wRrwkEKbQVY3LwAkyRtn293tYvhCs+DlVxlw9oA0zXPxjtwYEvLDvno0ibYpr3zkQNOx2uVCSgZxY827O9Tu4EYEu+uAKnV4TSUbDRf9fzRFQGTELkvgcSD4QU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bnRbfky+; arc=pass smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48371119eacso64879075e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 21:46:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772516762; cv=none;
        d=google.com; s=arc-20240605;
        b=XJ3ES1SXG/DH9+tOSQUTubBZq4x3Nn1lpwSm7bHZE5huIHxWPCQpdEeMLymm4k6p8/
         MnEe1JnT1xOYUo99NG1KWbJqIxipE2lFm0fqQztVUM4rh7pyve5EZ/KYvh7EeB2h1s6W
         gf3n6fKJvmqymb0Qp6YfHh47DCn5A2tnQMIg3n8SrbUnPoDNRXkjuO+HDp0uAP0GZoLL
         YkMlwPHFcGpMPkiU7QwRDCJOLkQ/1McftjIlZxRoyqddFReNylMJHpM88chNTbbg4Lgq
         kQFwjz0Xbf6QqpXBOLYig/unBGvCvHmXCiWNGbtZICm3cpPKHok7dqFMQCmakdg1E5kY
         of+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xg1uZWJossyBD+q6zxGguo3A8O0UO4OS1MVY0/VBkLM=;
        fh=7faFSVyVWf2HiVn310ScVMXnSx1V+UPJUjeJUqPtBRI=;
        b=hZcJadO5cNAgt51559HLk6Mdo5PS/S0t86fhvRRbnK5rGMlFAK0BNR91Sux92WS7mw
         Z82rOZO4lz4kE0iBd+Ew/aXS2243xCxe0jFVuBrZpCMPlhOPP7RDRYC+jwuNvAkHf2uk
         6A2S6AVQOPQ3GpzVAGdi2BBtfq5M5n+IFrf0+zOqXZHDtFtqiHBszGD7IJDO33+n+Ccx
         Kqdg8JdcQBOHuKgNH/dYG9HG+20vwDcu4/LXyrLicIeKDNctNgYWIQA+YE88rrysWpbG
         1hFV4O15WJkGWt49q4M0kddZ8b7w4Za09wBOBPp7NzX4mp9HTmq/peLQN7w0eW4KFQPf
         /2WQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772516762; x=1773121562; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xg1uZWJossyBD+q6zxGguo3A8O0UO4OS1MVY0/VBkLM=;
        b=bnRbfky+3vV8s4RaRYvm9A618Hh/C8b6qRw3rYz7ijlOoPXAnQtKefqWWM89G46XGC
         IBe7Ps6oqoAUY38VQqUiltqIlRzyBP71j7G2EmldbFV3fuGfavN1UTfH7uyNQaxDBeBh
         rFw8hGhT/t6yCYRl5j0gp7+/+J4K0ssjG6X65mE1WWaxLXbI0Nn3tlQILwKI49MZuDbo
         jgGbxdOTMKhmOUDjlHCBieD21DyOXT8+x5ZnqzPS4WCbtiJO9FwuvpUSkv7g0mbqp8d4
         J/SZJ3NPn0amQu15D/W61cA2B5T+7erXgjKfzgSbnpmqROWHWQHsmOvjyNe+6LCFudvS
         7p0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772516762; x=1773121562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xg1uZWJossyBD+q6zxGguo3A8O0UO4OS1MVY0/VBkLM=;
        b=NgyHn0wxcq7tDBhr/SkbrmjrJo4CLCm1tnBBS8+IWvSPC7zF6kf0vNjZ5oGNL+7TR3
         BqaTqcVB3AlFz4gPDcWuwXqn6XIt8cRvRXk6yf8vyW+B4p0cgMAG1icp0SH3ZIL0MmuX
         q3MgIp9Msnbi5A2BlF/WQoiXEpi2HD5/WoXkH6tD/CLiorJ1JUIzm2RTux7Ujuw/fq6Q
         zHhMVkZutA4bHx1dr5TYhOza6CiVqpEFIEyaXsZAv1UfrhUkguQvNHckDl6V8qZ6nR8m
         W9S16iZf12BKJlBNqBeP7uo4F19tDrr2/gsP28rBLdLkgfojZB5Rcf7OzH9+VcLtGdvC
         SuaA==
X-Forwarded-Encrypted: i=1; AJvYcCWB3iUj6thFCAzGnJpCWjfKYXUNZZ46aNyUY2QxUOVawx/NRIDS0BzSbY9EaBOvwPqSEWPKMRfKcLmT@vger.kernel.org
X-Gm-Message-State: AOJu0YzqBJjW8bjdtBVtctWj8igWatfqZlHh8VlSXfTfRLXxmfdkAJUZ
	NMogRzESkQi8qUKW0ZbHmTYMQQZ2g2JVYm7MfwOS/binpoBzClMeOZGeZ6ZTgirE10joyTxRoJi
	qBd6+SVmondPK8+n9wAX1K0rN4r63OcY=
X-Gm-Gg: ATEYQzxHrflFxTnc7LTGqzaPjbGbPY+uj0+2Q0VTIsQO2snm+bB6yLBOas3l8f2BhXG
	DuKgkNhhjPcaRwZXHRul+CD6Fx0B6qnX/SmHUGQzrnP4oLPk3JGuCBbttOCj+rPoLc+aM7KqqsW
	FpA5ieW6Q0jEvR3dcJaKbsg+blxWLUFkB2OTKJk+VL9lWWUelQyH/fdJQYTKHSnunf+qsV3K6w+
	8UHwiDpy52UDwVSOp9NyM4cl9vKdn5def4qgWoYJ+K1eDw40EVZHMTBfEkXIssKta2fXLaC1+fs
	zlJIMhyWhHT+I9w3lYSY4qXpHVxWmEJhJXalMoI=
X-Received: by 2002:a05:600c:444d:b0:480:4a90:1afe with SMTP id
 5b1f17b1804b1-483c9c2be1dmr238500735e9.34.1772516761986; Mon, 02 Mar 2026
 21:46:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <7914983.EvYhyI6sBW@phil>
In-Reply-To: <7914983.EvYhyI6sBW@phil>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 2 Mar 2026 23:45:51 -0600
X-Gm-Features: AaiRm513DtYPYb0SE8zCJViZ_vWjiX4flM-ALyo4bupgiMyyhndhFJi4olO5cRM
Message-ID: <CALWfF7+fkGRVGBtjupK_1xL9F48JSSHiz2xt2_6_BX_-bt8rDQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Heiko Stuebner <heiko@sntech.de>, dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C02831E94E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270286-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[honyuenkwun@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,orangepi.org:url,ausil.us:email,sntech.de:email]
X-Rspamd-Action: no action

On Mon, Mar 2, 2026 at 5:27=E2=80=AFAM Heiko Stuebner <heiko@sntech.de> wro=
te:
>
> Hi Dennis,
>
> Am Samstag, 28. Februar 2026, 21:54:17 Mitteleurop=C3=A4ische Normalzeit =
schrieb dennis@ausil.us:
> > From: Dennis Gilmore <dennis@ausil.us>
> >
> > Add device tree for the Xunlong Orange Pi 5 Pro (RK3588S). The Pro
> > differs from the base Orange Pi 5 in the following ways:
> >
> > - No SPI NOR flash; eMMC module slot instead, you can optionally solder
> >   a SPI NOR fin place and turn off the eMMC
> > - PCIe-attached NIC (pcie2x1l1) replaces the GMAC1 ethernet
> > - PCIe NVMe slot (pcie2x1l2)
> > - AP6256 WiFi (BCM43456) via SDIO with mmc-pwrseq
> > - BCM4345C5 Bluetooth via uart9 with full RTS/CTS
> > - Two-colour (blue/green) GPIO LED using modern color/function binding
> > - audio is wired up differently
> >
> > Vendors description and links to schematics available:
> > http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/detai=
ls/Orange-Pi-5-Pro.html
> >
> > Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
> >  2 files changed, 377 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro=
.dts
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 4d384f153c13..c99dca2ae9e7 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -214,6 +214,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-nanopi-r6c=
.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-odroid-m2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5b.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5-pro.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-cm5-base.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-radxa-cm5-io.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-roc-pc.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/=
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> > new file mode 100644
> > index 000000000000..d656328c906d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> > @@ -0,0 +1,376 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3588s-orangepi-5.dtsi"
> > +
> > +/ {
> > +     model =3D "Xunlong Orange Pi 5 Pro";
> > +     compatible =3D "xunlong,orangepi-5-pro", "rockchip,rk3588s";
> > +
> > +     aliases {
> > +             /delete-property/ ethernet0;
> > +             mmc0 =3D &sdhci;
> > +             mmc1 =3D &sdmmc;
> > +             mmc2 =3D &sdio;
> > +     };
> > +
> > +     /* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> > +     /delete-node/ pwm-leds;
> > +
> > +     /*
> > +      * Pro uses i2s2 (i2s2m1 mux) for audio, not i2s1. Recreate the s=
ound
> > +      * card node pointing at i2s2_2ch instead.
> > +      */
> > +     /delete-node/ analog-sound;
>
> I think it would make more sense to move the relevant not-shared part
> out of the dtsi instead. Yes the duplication in orangepi-5 and orangepi-5=
b
> should be fine.
>
> Having a devicetree with so many /delete-node/ and /delete-property/
> elements sprinkled throughout the file, will definitly cause readability
> (and handling issues) in the future.
>
> Additionally this makes all the comments in the file explaining individua=
l
> difference unnecessary.
>
>
> Thanks
> Heiko
>
Hi Dennis,

You could follow the pattern that was used for the full RK3588 Orange
Pi 5 boards.
The Orange Pi 5 Max and Ultra are very similar, so they both share a
DTSI. However, the parts that are also common with the Orange Pi 5
Plus are put into a common DTSI that is used by all 3 boards.

So for these RK3588s Orange Pi 5 boards, you could refactor the
existing DTSI to separate the parts that are only used by the older
DDR4 Orange Pi 5 and 5B, from the parts that are common to all 3
boards.

To verify the existing Orange Pi 5 and 5B boards DTBs are not damaged,
you should be able to convert the DTBs to DTSs before refactoring as a
baseline, and then after the refactoring, convert the DTBs to DTSs and
compare with the baseline.

As an example of the delete-node/delete-property leading to problems
in the future is when DisplayPort AltMode is added to the 5 and 5B.
The new properties will be inherited into the 5 Pro device tree, when
they are not wanted.

Jimmy

