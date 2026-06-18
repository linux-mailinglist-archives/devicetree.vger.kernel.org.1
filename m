Return-Path: <devicetree+bounces-313378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GNwIEuPFM2pZGAYAu9opvQ
	(envelope-from <devicetree+bounces-313378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:18:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B212569F358
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:18:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313378-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313378-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06A3231C0A1C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1FB3E9C0C;
	Thu, 18 Jun 2026 10:11:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1AA3DB658;
	Thu, 18 Jun 2026 10:11:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781777484; cv=none; b=Jq3tquXjzmHOmOFTaUZxM5WzL0xexW6ckzoaAPMDSGQ+isd9J67kNGEozCmBCH8MW0wPPC6b8ebnAbFVeI9hhXiw7Zz2xrw22sS51ZSkwReHfrripxUwfpvzJPzVwW/tbjPASIV4HPqVexlDLVn1Q127VlZK6bEqbItF3LVi4ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781777484; c=relaxed/simple;
	bh=km8rX9tE+4DRvF+dDW0otK5nMqdtow0Yx/b4CMneHlM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TM/U8TW0GXzTN21W2dySCEB2VRyzb4QbdlaF5cokE9WmU79G1LZ6WMt6awg3wgBHftAUsAWq3kTCnzeXzJmOJdHnK1OyoWtCIZ+SarwizY4tvmJKkL4x0ohV6lbLQvfD0BXk/km3HdoY6w/Yaf5g/YVnOa47xYx5MGiH8B35oDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 03140200275;
	Thu, 18 Jun 2026 12:11:16 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa9iN-003QAS-2z;
	Thu, 18 Jun 2026 12:11:15 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa9iN-0000000065I-3Quw;
	Thu, 18 Jun 2026 12:11:15 +0200
Message-ID: <ab7fd447a05ab86e889c401350b83c3c85569f5c.camel@pengutronix.de>
Subject: Re: [PATCH v8 02/10] reset: Add Realtek basic reset support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yu-Chun Lin <eleanor.lin@realtek.com>, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 	cylee12@realtek.com, afaerber@suse.com, jyanchou@realtek.com
Cc: bmasney@redhat.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 
	linux-realtek-soc@lists.infradead.org, james.tai@realtek.com, 
	cy.huang@realtek.com, stanley_chang@realtek.com
Date: Thu, 18 Jun 2026 12:11:15 +0200
In-Reply-To: <20260610080824.255063-3-eleanor.lin@realtek.com>
References: <20260610080824.255063-1-eleanor.lin@realtek.com>
	 <20260610080824.255063-3-eleanor.lin@realtek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313378-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:cylee12@realtek.com,m:afaerber@suse.com,m:jyanchou@realtek.com,m:bmasney@redhat.com,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-realtek-soc@lists.infradead.org,m:james.tai@realtek.com,m:cy.huang@realtek.com,m:stanley_chang@realtek.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,pengutronix.de:mid,pengutronix.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B212569F358

On Mi, 2026-06-10 at 16:08 +0800, Yu-Chun Lin wrote:
> From: Cheng-Yu Lee <cylee12@realtek.com>
>=20
> Define the reset operations backed by a regmap-based register interface
> and prepare the reset controller to be registered through the reset
> framework.
>=20
> Since the reset controllers on Realtek SoCs often share the same register
> space with the clock controllers, this common framework is designed to
> extract the regmap and device tree node from the parent device
> (e.g., an auxiliary device parent).
>=20
> Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
> Co-developed-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> ---
> Changes in v8:
> - None
> ---
>  MAINTAINERS                    |  1 +
>  drivers/reset/Kconfig          |  1 +
>  drivers/reset/Makefile         |  1 +
>  drivers/reset/realtek/Kconfig  |  8 +++
>  drivers/reset/realtek/Makefile |  2 +
>  drivers/reset/realtek/common.c | 90 ++++++++++++++++++++++++++++++++++
>  drivers/reset/realtek/common.h | 29 +++++++++++
>  7 files changed, 132 insertions(+)
>  create mode 100644 drivers/reset/realtek/Kconfig
>  create mode 100644 drivers/reset/realtek/Makefile
>  create mode 100644 drivers/reset/realtek/common.c
>  create mode 100644 drivers/reset/realtek/common.h
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 613ca7e95e47..80e840a6691d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22484,6 +22484,7 @@ L:	devicetree@vger.kernel.org
>  L:	linux-clk@vger.kernel.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/clock/realtek*
> +F:	drivers/reset/realtek/*
>  F:	include/dt-bindings/clock/realtek*
>  F:	include/dt-bindings/reset/realtek*
> =20
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index d009eb0849a3..45a4227b5f44 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -418,6 +418,7 @@ config RESET_ZYNQMP
> =20
>  source "drivers/reset/amlogic/Kconfig"
>  source "drivers/reset/hisilicon/Kconfig"
> +source "drivers/reset/realtek/Kconfig"
>  source "drivers/reset/spacemit/Kconfig"
>  source "drivers/reset/starfive/Kconfig"
>  source "drivers/reset/sti/Kconfig"
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 3e52569bd276..7330fee91365 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -2,6 +2,7 @@
>  obj-y +=3D core.o
>  obj-y +=3D amlogic/
>  obj-y +=3D hisilicon/
> +obj-y +=3D realtek/
>  obj-y +=3D spacemit/
>  obj-y +=3D starfive/
>  obj-y +=3D sti/
> diff --git a/drivers/reset/realtek/Kconfig b/drivers/reset/realtek/Kconfi=
g
> new file mode 100644
> index 000000000000..bb6dd856a64a
> --- /dev/null
> +++ b/drivers/reset/realtek/Kconfig
> @@ -0,0 +1,8 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +config RESET_RTK_COMMON
> +	tristate "Realtek common reset driver" if COMPILE_TEST
> +	help
> +	  This option enables the common reset controller library for
> +	  Realtek SoCs. It provides shared reset control operations
> +	  (assert, deassert, status) and a registration helper function
> +	  that other Realtek-specific reset drivers can use.
> diff --git a/drivers/reset/realtek/Makefile b/drivers/reset/realtek/Makef=
ile
> new file mode 100644
> index 000000000000..b59a3f7f2453
> --- /dev/null
> +++ b/drivers/reset/realtek/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_RESET_RTK_COMMON) +=3D common.o

That's an awfully generic module name. Id doesn't match the config option w=
ell. Please rename this to reset-rtk-common.o, reset-realtek.o, or somethin=
g similar.

regards
Philipp

