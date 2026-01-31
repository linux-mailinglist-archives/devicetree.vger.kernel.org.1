Return-Path: <devicetree+bounces-261481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN0dH8llfmkPYQIAu9opvQ
	(envelope-from <devicetree+bounces-261481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:27:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D33C1C3E23
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D30F3031328
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E04773783B6;
	Sat, 31 Jan 2026 20:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ZyqFDnDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97F4378800
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 20:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769891249; cv=none; b=ayctDBi+DUq4Ee8t8/95BtQDT1+vnH06izWn5uxijdAkjzvPfCT/Qkkswbl8t9ZrPeasuB77GM8u2HV2bZkO1QpVzH8yAYyONvdcah5vgIpAu+kwM8ubS7oWZy7HA/6woV8oyiaSnRGCzvkvR5GSwTDBu708YlYRQYxTDA9TSDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769891249; c=relaxed/simple;
	bh=AIsfOhCphNVI+fCpooB40Ru5I9dGDZ/0vMKr2BxkakY=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=r+nQf5UaLMx33+k4lBgI0rkdOy07r3/OMFHrWhC2A+/OVAguzTQAzIs74WiuZYrY0iP0kzvvgzVTI7ZKX/4sMP/UE9Ihpv7SseWaKVGNc7j2VG5DqRu8G7UDuuDQIrDuSW+pyVldM3JFTOWgafkKMPNzu/ocF0oB7E0pKJoDZ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ZyqFDnDI; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 855EA41C15;
	Sat, 31 Jan 2026 21:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1769891239; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rGwHSkJZn2IHtl0VYuWdb593LJsaVvLLi0zc9pE7w4M=;
	b=ZyqFDnDImliBIsUp4VykZflufnaQHVYRGy/rqwfzoKWPcQyhQFcSnPflhjZRJQFnKhJacu
	YSOLR8EPflWQM7jcPniJUdaj7UMm6vNDrDJHz/s3u/9gD2tKGa9S1tpKiHjUEqt/sIiAGc
	Eebkdhib4q0FS0TWnpHeZPjo3nopjTtje9Bzuv+AmWyLHiAwO01X9GHI08Wmb0g08NszXB
	DF7WGRS5R6EVu4AVK5HO/BpM8jlCD3VuoSECH7ce670CtP9oZQLKL7ppkPrzhbAAwtWEjl
	wau7sAQs0r+72mhm+aTXwXN6xJmZDU3P2qe3gxD4pMOX7AHSp31pRMVUTOXbrw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260131153106.31723-4-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <20260131153106.31723-1-jerrysteve1101@gmail.com> <20260131153106.31723-4-jerrysteve1101@gmail.com>
Date: Sat, 31 Jan 2026 21:27:13 +0100
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, alchark@gmail.com
To: "Jun Yan" <jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <d2005c66-536c-8c0c-658a-fb6ed7b5f3c6@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
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
	TAGGED_FROM(0.00)[bounces-261481-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,sntech.de,gmail.com];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D33C1C3E23
X-Rspamd-Action: no action

Hello Jun,

Please, see a quick remark below, for now.

On Saturday, January 31, 2026 16:31 CET, Jun Yan <jerrysteve1101@gmail.=
com> wrote:
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
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../rockchip/rk3566-onething-oec-turbo.dts    |  10 +
>  .../boot/dts/rockchip/rk3566-onething-oec.dts |  10 +
>  .../dts/rockchip/rk3566-onething-oec.dtsi     | 309 ++++++++++++++++=
++
>  4 files changed, 331 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-=
turbo.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.=
dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.=
dtsi
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/=
dts/rockchip/Makefile
> index 4d384f153c13..ec57719e4573 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -104,6 +104,8 @@ dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anber=
nic-rg353v.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anbernic-rg353vs.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-odroid-m1s.dtb
> +dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-onething-oec.dtb
> +dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-onething-oec-turbo.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-orangepi-3b-v1.1.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-orangepi-3b-v2.1.dtb
>  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-pinenote-v1.1.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.d=
ts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> new file mode 100644
> index 000000000000..16d0cd0cf577
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> @@ -0,0 +1,10 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3566-onething-oec.dtsi"
> +
> +/ {
> +	model =3D "OneThing OEC-turbo";
> +	compatible =3D "onething,oec-turbo", "rockchip,rk3566";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> new file mode 100644
> index 000000000000..81da771ad63d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> @@ -0,0 +1,10 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3566-onething-oec.dtsi"
> +
> +/ {
> +	model =3D "OneThing OEC";
> +	compatible =3D "onething,oec", "rockchip,rk3566";
> +};

The only difference between the two OneThing OEC board variants is, as
far as I can tell, the amount of LPDDR4X DRAM they have, so I don't thi=
nk
it's justified to have two separate board dts files that descend from t=
he
common dtsi ancestor.

Having different amounts of DRAM on the same board design is present on
virtually all boards from other manufacturers, and some kind of special
DT treatment is needed only in some special cases, such as when differe=
nt
types of DRAM are used for different capacities.

The different naming of the two board variants could be solved by havin=
g
something like this is the single board dts file:

  model =3D "OneThing OEC/OEC-turbo";

Having two separate board dts files only makes it harder down the road,
such as having to build and provide two separate U-Boot builds, with no
real benefits.  Every user can run free(1) to check the amount of avail=
able
DRAM on their board, which also tells them the board variant.


