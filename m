Return-Path: <devicetree+bounces-261918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ9+CLntgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:32:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F1CD034C
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0578D30247DA
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDACA2ED848;
	Mon,  2 Feb 2026 18:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="MBteqqAR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E617B2E7F1C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770057086; cv=none; b=e5NUhPB4ymg0G22GxJthY9PzCRpNytfspEeWqZrWRCmflwTAPfbtyLpROeJYqh+7uFK0gHTXxzr1K6fvVB9fGhrM9uJXKmY/vE4q4cHSosP7CGVDTylSerW+iqeAHC3lI5JyS7ACJCX/SZp1c4V0+6viHuki/JuWtBJZczNGmpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770057086; c=relaxed/simple;
	bh=FIKRc7wSbPU+KaBNHxfO3LFqeg3kX7X/bFpDhjTLkGM=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=Y2LUJ0I7ynho3eZpMnH10uKRqlDZ1j+FUFTp/a4aU0MWcI4OJOj/TeXcY7dqx9e0iQw0S/+ShAGir9jbLIxfFA0+Q2wOaJ1SHNL0wOnC9OnAqcK5mdyKBKHWfwkLgOGkQN3JtMsHDQmBNXN3U8Ob7/r5spD3fca8wsQvVyqbdZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=MBteqqAR; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 3AE3B41AF6;
	Mon,  2 Feb 2026 19:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1770057077; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ld37UjSrFShX6fuqs3RJQ/EeY8ITkyXzpESPhn9usrs=;
	b=MBteqqARZXGcsH0GYP3VpJANeTMpcTpQ09y3zR6dwQ8S/ifFxcGckcXplFX0LoFjinIXbX
	KjG2YbMUqlNtZydk0wmgAMh6EkCoJd1CWcO8/1Rz7MpwvNZfx0dH9EM65p07tnd5ZxJLjy
	U+4eVKN7bbD48XcNBGqfm0C+dG2tllO3BRHC2nr7rXbvHP3ZL1K6oWEN3PqxKlRzeP3nCd
	nZbkGGJCgx8m6f9WeJUTwOZ0vVPXYRr/05acpBVQjOZ4ppDw9H1/8nukPL1W7rFdR6TOri
	vD3jrPBtpboigFMZB96TG99S5coXJ8dg/Pa5gXM8S6KZE0z6ddnSBvempWNNNg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260202150437.270567-4-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <20260202150437.270567-1-jerrysteve1101@gmail.com> <20260202150437.270567-4-jerrysteve1101@gmail.com>
Date: Mon, 02 Feb 2026 19:31:13 +0100
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, alchark@gmail.com, andyshrk@163.com
To: "Jun Yan" <jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add OneThing Edge Cube series
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[manjaro.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[manjaro.org:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261918-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,sntech.de,gmail.com,163.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dsimic@manjaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[manjaro.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url,archive.org:url,manjaro.org:mid,manjaro.org:dkim]
X-Rspamd-Queue-Id: 65F1CD034C
X-Rspamd-Action: no action

Hello Jun,

On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.c=
om> wrote:
> The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> port, and one USB 3.0 port.
>=20
> Other than the difference in RAM capacity, the OEC and OEC-turbo are
> identical in all other specifications.
>=20
>   Specification:
>     - Rockchip RK3566
>     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
>     - eMMC 8GB
>     - Gigabit Ethernet port x 1
>     - USB 3.0 port x 1
>     - USB-C 2.0 port x 1
>     - 12V DC Power supply
>     - SATA 3.0 connector x 1
>=20
> These devices do not have a PMIC, and their hardware circuit design
> is highly similar to that of the rk3566-box-demo[1]. Hardware schemat=
ics
> are not available at this time, with the vendor firmware dts availabl=
e
> for reference[2].
>=20
> Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
>=20
> [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/d=
ts/rockchip/rk3566-box-demo.dts
> [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK356=
6-4G-dump.dts
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++=
++
>  2 files changed, 313 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-=
series.dts
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/=
dts/rockchip/Makefile
> index 4d384f153c13..234fa53abe17 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -104,6 +104,7 @@ dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anber=
nic-rg353v.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anbernic-rg353vs.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-odroid-m1s.dtb
> +dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-onething-oec-series.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-orangepi-3b-v1.1.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-orangepi-3b-v2.1.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-pinenote-v1.1.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.=
dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> new file mode 100644
> index 000000000000..2007b93e190e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> @@ -0,0 +1,312 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model =3D "OneThing OEC/OEC-turbo";
> +	compatible =3D "onething,oec-turbo", "onething,oec", "rockchip,rk35=
66";

Thanks for the v3!  After thinking a bit more about it, it would be bet=
ter
to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "ser=
ies"
part, because the only difference between the board variants is the amo=
unt
of DRAM.  Also, "onething,oec-turbo" should be removed from the compati=
bles,
and the single compatible renamed to "onething,edge-cube", because I se=
e no
need to have an additional compatible, which may be added later if real=
ly
needed for some unforeseen differentiating purpose.

Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as=
 the
combined name, because "Edge Cube" is more self-descriptive than just "=
OEC",
which may also help with various search engines down the road.


