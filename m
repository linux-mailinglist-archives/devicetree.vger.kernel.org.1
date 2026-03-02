Return-Path: <devicetree+bounces-269945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDYwJ1d1pWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:32:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 015801D788D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4AAA30675A8
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24A3362153;
	Mon,  2 Mar 2026 11:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ZOCld0Z8"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AC735F607;
	Mon,  2 Mar 2026 11:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450842; cv=none; b=JYyfCctEubjqeeOUzOKu1gnJlKOhWYCGJ0JZ/sGF2yDBLHn0Ngv5YvAuDqjdo46G/vgVbxFdyr1/oIDQPycme+z3RxbysFz5gjpPZkR7t6iKLNluY784lZJxYwvv01xoTEjBVxAtIhuTZaeP2rZ5A3YsnFAYEWEFobDWhWo00Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450842; c=relaxed/simple;
	bh=fBpsi10mwEgOWb+W8wurkFityKNDpmxhxvkN3pim5oo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ogry7Y5DyR6CfBXwv27hbei2wwG9uylx+bMmhFMbDwDps1LgdrOTN8gQdHo1iu7g2KSZeYQODs8WFINh6uuHFxQFlh5zASPDNtLD2lQmhkuWNPP3NEyE1gaPaD7fN7uYgDOy9pL2KTlwZ9KtxCZcoIX3DcBydtH63i6UCQKs/Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ZOCld0Z8; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ok3fRgSARHAkAxOad7EvY0OyS9Ys2Vgqj4W/YMVQmao=; b=ZOCld0Z8aeDFYYmMH1oESJCjBz
	MPe/7G+YZZxYo8Vv4TGNuDp5tsfHOlKpNPAqFw4b3yeiWNKkiFavXMk2BctJnzLqgIzqJgzR8Nfjx
	gTkO+8xz4KGx0GjWtHTh2sulK3872LYd5azkXyQgOH4AnJ8C0MX9632mufdFeIoTxK+tjQFRT2d/l
	/k5sz/FgbocX4mfevpPYzrV2R9rdRgHmxEK8jbEL9PmruPcv5z0L+kUi30cb8GHaLoWWhxYzZ4wkm
	2UOZH0+CYT+UQv3/eaI6LN9fd6k9Q/XZw2Re3ESr5bwzuDO8gm/Pw/InVL2nHuKaXJt05h11QCIdn
	X1U96CyQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dennis@ausil.us
Cc: FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>,
 Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 John Clark <inindev@gmail.com>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>,
 Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dennis Gilmore <dennis@ausil.us>
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
Date: Mon, 02 Mar 2026 12:26:58 +0100
Message-ID: <7914983.EvYhyI6sBW@phil>
In-Reply-To: <20260228205418.2944620-3-dennis@ausil.us>
References:
 <20260228205418.2944620-1-dennis@ausil.us>
 <20260228205418.2944620-3-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269945-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:dkim]
X-Rspamd-Queue-Id: 015801D788D
X-Rspamd-Action: no action

Hi Dennis,

Am Samstag, 28. Februar 2026, 21:54:17 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb dennis@ausil.us:
> From: Dennis Gilmore <dennis@ausil.us>
>=20
> Add device tree for the Xunlong Orange Pi 5 Pro (RK3588S). The Pro
> differs from the base Orange Pi 5 in the following ways:
>=20
> - No SPI NOR flash; eMMC module slot instead, you can optionally solder
>   a SPI NOR fin place and turn off the eMMC
> - PCIe-attached NIC (pcie2x1l1) replaces the GMAC1 ethernet
> - PCIe NVMe slot (pcie2x1l2)
> - AP6256 WiFi (BCM43456) via SDIO with mmc-pwrseq
> - BCM4345C5 Bluetooth via uart9 with full RTS/CTS
> - Two-colour (blue/green) GPIO LED using modern color/function binding
> - audio is wired up differently
>=20
> Vendors description and links to schematics available:
> http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details=
/Orange-Pi-5-Pro.html
>=20
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
>  2 files changed, 377 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.d=
ts
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index 4d384f153c13..c99dca2ae9e7 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -214,6 +214,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-nanopi-r6c.d=
tb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-odroid-m2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5b.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-5-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-orangepi-cm5-base.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-radxa-cm5-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588s-roc-pc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> new file mode 100644
> index 000000000000..d656328c906d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
> @@ -0,0 +1,376 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-orangepi-5.dtsi"
> +
> +/ {
> +	model =3D "Xunlong Orange Pi 5 Pro";
> +	compatible =3D "xunlong,orangepi-5-pro", "rockchip,rk3588s";
> +
> +	aliases {
> +		/delete-property/ ethernet0;
> +		mmc0 =3D &sdhci;
> +		mmc1 =3D &sdmmc;
> +		mmc2 =3D &sdio;
> +	};
> +
> +	/* Pro uses gpio-leds instead; pwm0 LED is not wired up */
> +	/delete-node/ pwm-leds;
> +
> +	/*
> +	 * Pro uses i2s2 (i2s2m1 mux) for audio, not i2s1. Recreate the sound
> +	 * card node pointing at i2s2_2ch instead.
> +	 */
> +	/delete-node/ analog-sound;

I think it would make more sense to move the relevant not-shared part
out of the dtsi instead. Yes the duplication in orangepi-5 and orangepi-5b
should be fine.

Having a devicetree with so many /delete-node/ and /delete-property/
elements sprinkled throughout the file, will definitly cause readability
(and handling issues) in the future.

Additionally this makes all the comments in the file explaining individual
difference unnecessary.


Thanks
Heiko



