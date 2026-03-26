Return-Path: <devicetree+bounces-281019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNdOKkb4xGmC5QQAu9opvQ
	(envelope-from <devicetree+bounces-281019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:11:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5817331FBF
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:11:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D16031ACBDB
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21DDA3BED1B;
	Thu, 26 Mar 2026 08:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="SkemjdrG"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981FE3B8D58;
	Thu, 26 Mar 2026 08:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774514906; cv=none; b=KQQxkBxrd7UN/JrvB10j/OyVNvfA6YmaGhDMEjqqXKJwVcsYewwRWdOD01bDsWrln5kR99liUSAowk6ZYGD1rGCf1iw1yAGH/jQX8hlW775dkFJSSOaMWzWYw6tUF/jqpSfizYrk6Iloy3Q2oht++86ArdgO+P3yYGknigmQu28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774514906; c=relaxed/simple;
	bh=9IZHdFG9znARtDh/oliZSJzf4JxW7DWhn4r1I6ZLEeI=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=fHXXO4Y+WuZhoNseN1gsyOClU4yGzrsJ1lbrZOD2ERIvj3oMWcIJ/ZeCX4wsZwIgFgINO6ka4jT7SG83gSbFhzbFApK67b4YRwiYmk77arcc+YkUnFfohIG/GNOnp12MALGdV/pGMY1ASka01MAj30twpd3HrHcNr4LC6Kal8Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=fail (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=SkemjdrG reason="signature verification failed"; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from monstersaurus.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 58A96FCC;
	Thu, 26 Mar 2026 09:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1774514822;
	bh=9IZHdFG9znARtDh/oliZSJzf4JxW7DWhn4r1I6ZLEeI=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=SkemjdrGePjQXWznj2EQIVgcKJv1uoVw4B6U1arSbUf1jk6R3Q/c26GmKZpTPUBbV
	 TkDcVVXlu1R7qAbzMCuRBUMdhpo8iR9GuOuxLoQuLKr4E+3NbpfJUv8VBSqlSLgOaB
	 Ffx/qFD6HEXx/u9/Ej9Czh1n8sfK/GbTM1CBkmIw=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260326-imx8mp-dts-fix-v2-v2-2-62c4ce727448@nxp.com>
References: <20260326-imx8mp-dts-fix-v2-v2-0-62c4ce727448@nxp.com> <20260326-imx8mp-dts-fix-v2-v2-2-62c4ce727448@nxp.com>
Subject: Re: [PATCH v2 02/12] arm64: dts: imx8mp-debix-som-a: Correct PAD settings for PMIC_nINT
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@dh-electronics.com, Peng Fan <peng.fan@nxp.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, =?utf-8?q?B=C3=B6rge_Str=C3=BCmpfel?= <boerge.struempfel@gmail.com>, Christoph Niedermaier <cniedermaier@dh-electronics.com>, Conor Dooley <conor+dt@kernel.org>, Daniel Scally <dan.scally@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, Gilles Talis <gilles.talis@gmail.com>, Goran =?utf-8?q?Ra=C4=91enovi=C4=87?= <goran.radni@gmail.com>, Heiko Schocher <hs@denx.de>, Jagan Teki <jagan@amarulasolutions.com>, Josua Mayer <josua@solid-run.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Manoj Sai <abbaraju.manojsai@amarulasolutions.com>, Marco Felsch <m.felsch@pengutronix.de>, Marek Vasut <marex@denx.de>, Martyn Welch <martyn.welch@collabora.com>, Matteo Lisi <matteo.lisi@engicam.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Ray Chang <ray.chang@technexion.com>, Richard Hu <richard.hu@technexion.com>, Rob Herring <robh@kernel.org>, Sascha Hauer <s.h
 auer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Shengjiu Wang <shengjiu.wang@nxp.com>, Viorel Suman <viorel.suman@nxp.com>
Date: Thu, 26 Mar 2026 08:48:17 +0000
Message-ID: <177451489789.1230693.17921355068406519595@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[ideasonboard.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281019-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.nxp.com,gmail.com,dh-electronics.com,kernel.org,ideasonboard.com,nxp.com,denx.de,amarulasolutions.com,solid-run.com,pengutronix.de,collabora.com,engicam.com,technexion.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kieran.bingham@ideasonboard.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:-];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.227];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5817331FBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Peng Fan (OSS) (2026-03-26 07:28:06)
> From: Peng Fan <peng.fan@nxp.com>
>=20
> With commit 5d0efaf47ee90 ("regulator: pca9450: Correct interrupt type"),
> there is interrupt storm for i.MX8MP DEBIX SOM A. Need to set PAD
> PUE and PU together to make pull up work properly.
>=20
> Fixes: 21baf0b47f81b ("arm64: dts: freescale: Add DEBIX SOM A and SOM A I=
/O Board support")
> Reported-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Closes: https://lore.kernel.org/all/20260323105858.GA2185714@killaraus.id=
easonboard.com/
> Reported-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> Closes: https://lore.kernel.org/imx/20260324194353.GB2352505@killaraus.id=
easonboard.com/T/#m9a07fdc75496369a7d76d52c5e34ed140dcabfe3


Much quieter, thank you.

Tested with

 watch -n0.5 cat /proc/interrupts

...
 28:          0          0          0          0    GICv3  23 Level     arm=
-pmu
 29:          0          0          0          0    GICv3 130 Level     imx=
8_ddr_perf_pmu
 35:          0          0          0          0 gpio-mxc   3 Level     pca=
9450-irq
137:          0          0          0          0 gpio-mxc   3 Edge      hym=
8563
200:        919          0          0          0    GICv3  67 Level     30a=
20000.i2c
201:          5          0          0          0    GICv3  68 Level     30a=
30000.i2c
202:          5          0          0          0    GICv3  69 Level     30a=
40000.i2c
203:        157          0          0          0    GICv3  70 Level     30a=
50000.i2c
204:          0          0          0          0    GICv3  57 Level     380=
08000.gpu
207:          0          0          0          0    GICv3 180 Level     32f=
10100.usb
...

And only the timers are increasing (as expected).


Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts =
b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> index 04619a7229065be496611128ecf6848c9dd7102c..1471ff361b54cba05bb0e0734=
aa6e8d149309025 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> @@ -499,7 +499,7 @@ MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03          0x140
> =20
>         pinctrl_pmic: pmicgrp {
>                 fsl,pins =3D <
> -                       MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03             0=
x41
> +                       MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03             0=
x1c0
>                 >;
>         };
> =20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi b/arch=
/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
> index 91094c2277443c1585dfb7f31dccfb27aa1bcc8d..b31e8fe95ca74500fdc459aec=
feb3f4b573f4244 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
> @@ -241,7 +241,7 @@ MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA                     0=
x400001c3
> =20
>         pinctrl_pmic: pmicgrp {
>                 fsl,pins =3D <
> -                       MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03             0=
x41
> +                       MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03             0=
x1c0
>                 >;
>         };
> =20
>=20
> --=20
> 2.37.1
>

