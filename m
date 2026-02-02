Return-Path: <devicetree+bounces-261847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLH8Jz+vgGn6AQMAu9opvQ
	(envelope-from <devicetree+bounces-261847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:05:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E2ACD1D9
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41A48302DF71
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 14:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5463336607B;
	Mon,  2 Feb 2026 14:05:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C485369986
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 14:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770041123; cv=none; b=fLv9eJCitTu6+uo2tqpavhSJM8GdhuD0GitloWzaNM91bmJmo7sbiTu3Nq2EoV1iHI6UVmTFnY+DPcwN/CwEBzmgwpZyF44ZhGF2mtwqjJam7Ay9fX+5wzgHEUhoejY7VOsl1IWuJUN9Pbr7iLYWzXufiCWb6vNWuVpjvLJCZmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770041123; c=relaxed/simple;
	bh=jKeKlzbc6F3kaHHy5UVAovmfEXOB3L8i605E7NTJsaY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=uWYSQEAloE6JzhU0ksHhyIgsnHhz+84Pu0bAGN6XimvRsIreV6OSpVlwQRNIGn4u85KpEah/q7E4OESzFlmPd100Ha9pEUPtnuJv8YQfDPMOK9GwU7r4rgL+bVnHtpj/G/6UXGJi7EnJj1gha5AO7A/B1v6YgUAmJVVMoCo4nUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vmuYC-0003l2-3s; Mon, 02 Feb 2026 15:05:12 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vmuYA-003kK6-33;
	Mon, 02 Feb 2026 15:05:10 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vmuYA-00000000BVX-0mYa;
	Mon, 02 Feb 2026 15:05:10 +0100
Message-ID: <d17eaa6b5fcb22a4c06f7c36408fb919ec60b45e.camel@pengutronix.de>
Subject: Re: [PATCH v4 2/3] reset: tenstorrent: Add reset controller for
 Atlantis
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, Drew Fustini	
 <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
	fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
	npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com,
 	bmasney@redhat.com
Date: Mon, 02 Feb 2026 15:05:10 +0100
In-Reply-To: <20260130-atlantis-clocks-v4-2-46de52d52924@oss.tenstorrent.com>
References: <20260130-atlantis-clocks-v4-0-46de52d52924@oss.tenstorrent.com>
	 <20260130-atlantis-clocks-v4-2-46de52d52924@oss.tenstorrent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261847-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email,tenstorrent.com:email]
X-Rspamd-Queue-Id: D8E2ACD1D9
X-Rspamd-Action: no action

On Fr, 2026-01-30 at 11:50 -0600, Anirudh Srinivasan wrote:
> Adds Atlantis Reset Controller and auxiliary device definitions for
> reset to share same regmap interface as prcm (clock controller).
>=20
> This version of the reset controller driver covers resets from the RCPU
> prcm.
>=20
> Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> ---
>  MAINTAINERS                                |   2 +
>  drivers/reset/Kconfig                      |  11 ++
>  drivers/reset/Makefile                     |   1 +
>  drivers/reset/reset-tenstorrent-atlantis.c | 160 +++++++++++++++++++++++=
++++++
>  include/soc/tenstorrent/atlantis-prcm.h    |  31 ++++++
>  5 files changed, 205 insertions(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0fc7bc6d0458..0cde1774567d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22537,7 +22537,9 @@ T:	git https://github.com/tenstorrent/linux.git
>  F:	Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm.yam=
l
>  F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
>  F:	arch/riscv/boot/dts/tenstorrent/
> +F:	drivers/reset/reset-tenstorrent-atlantis.c
>  F:	include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> +F:	include/soc/tenstorrent/
> =20
>  RISC-V THEAD SoC SUPPORT
>  M:	Drew Fustini <fustini@kernel.org>
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 6e5d6deffa7d..cade77717492 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -324,6 +324,17 @@ config RESET_SUNXI
>  	help
>  	  This enables the reset driver for Allwinner SoCs.
> =20
> +config RESET_TENSTORRENT_ATLANTIS
> +	tristate "Tenstorrent atlantis reset driver"
> +	depends on ARCH_TENSTORRENT || COMPILE_TEST
> +	select AUXILIARY_BUS
> +	default ARCH_TENSTORRENT
> +	help
> +	  This enables the driver for the reset controller
> +	  present in the Tenstorrent Atlantis SoC.
> +	  Enable this option to be able to use hardware
> +	  resets on Atalantis based systems.
> +
>  config RESET_TH1520
>  	tristate "T-HEAD TH1520 reset controller"
>  	depends on ARCH_THEAD || COMPILE_TEST
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 9c3e484dfd81..a31959da0a88 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -41,6 +41,7 @@ obj-$(CONFIG_RESET_SOCFPGA) +=3D reset-socfpga.o
>  obj-$(CONFIG_RESET_SPACEMIT) +=3D reset-spacemit.o
>  obj-$(CONFIG_RESET_SUNPLUS) +=3D reset-sunplus.o
>  obj-$(CONFIG_RESET_SUNXI) +=3D reset-sunxi.o
> +obj-$(CONFIG_RESET_TENSTORRENT_ATLANTIS) +=3D reset-tenstorrent-atlantis=
.o
>  obj-$(CONFIG_RESET_TH1520) +=3D reset-th1520.o
>  obj-$(CONFIG_RESET_TI_SCI) +=3D reset-ti-sci.o
>  obj-$(CONFIG_RESET_TI_SYSCON) +=3D reset-ti-syscon.o
> diff --git a/drivers/reset/reset-tenstorrent-atlantis.c b/drivers/reset/r=
eset-tenstorrent-atlantis.c
> new file mode 100644
> index 000000000000..6fe9143ad76c
> --- /dev/null
> +++ b/drivers/reset/reset-tenstorrent-atlantis.c
> @@ -0,0 +1,160 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Tenstorrent Atlantis PRCM Reset Driver
> + *
> + * Copyright (c) 2026 Tenstorrent
> + */
> +
> +#include <dt-bindings/clock/tenstorrent,atlantis-prcm.h>
> +#include <linux/auxiliary_bus.h>
> +#include <linux/reset-controller.h>
> +#include <linux/regmap.h>
> +#include <soc/tenstorrent/atlantis-prcm.h>
> +
> +struct atlantis_reset_data {
> +	u8 bit;
> +	u16 reg;
> +	bool active_low;
> +};
> +
> +struct atlantis_reset_controller_data {
> +	const struct atlantis_reset_data *reset_data;
> +	size_t count;
> +};
> +
> +struct atlantis_reset_controller {
> +	struct reset_controller_dev rcdev;
> +	const struct atlantis_reset_controller_data *data;
> +	struct regmap *regmap;
> +};
> +
> +#define to_atlantis_reset_controller(_rcdev) \
> +	container_of((_rcdev), struct atlantis_reset_controller, rcdev)

Please make this an inline function as well. With that,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Since this patch both depends on patch 1 and is a dependency for patch
3, I suppose this should go through the clock tree.

regards
Philipp

