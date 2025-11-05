Return-Path: <devicetree+bounces-235255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3608DC36465
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 16:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A333F4FB1AB
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 15:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D4E32E6AE;
	Wed,  5 Nov 2025 15:10:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B36E2D46DB
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 15:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762355459; cv=none; b=klEBCHfHpOBFLvIS5aLMylK25+HTeLvZViRgByWkdk9/BuKE3z0GwmBUaq45slajx88X6malXZzD+eV86eu90eTRT0DvOnchFMbskinJZbQCTswTcF34u94gqeUvfvCd0i420E2HrWOMS/f3lzxHrfuCIUsChjpxrZOw1lcVCls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762355459; c=relaxed/simple;
	bh=OjAxb9QR8u9JQcXq77eKB8IeA/NNyxUQGl+cwvR4fiA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=K+YDH+wtehfaFWoxhv0y//970wXHOo9+JOiam5gZWeUcfZN1h7Zv6NF2AY1Kig/vd3IDp6isiSBmS9RlqY9PZNJfqQiNnacivhlt+z6hIXLdmACYcQ0ntIp8eD3crOwwnyAUizJhKZJEA59t9a50Y0vbwbyzvLerUHxtmIB83jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGf9j-0000l2-8Q; Wed, 05 Nov 2025 16:10:39 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGf9i-007DbY-21;
	Wed, 05 Nov 2025 16:10:38 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGf9i-00000000BT8-2G0G;
	Wed, 05 Nov 2025 16:10:38 +0100
Message-ID: <5535d4dbf94b01fe775b5f905afea8c860f9c03a.camel@pengutronix.de>
Subject: Re: [PATCH v4 4/8] reset: imx8mp-audiomix: Drop unneeded macros
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>, Abel Vesa	
 <abelvesa@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Fabio
 Estevam	 <festevam@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Shengjiu Wang	 <shengjiu.wang@nxp.com>, Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  Pengutronix Kernel Team	
 <kernel@pengutronix.de>
Date: Wed, 05 Nov 2025 16:10:38 +0100
In-Reply-To: <20251104120301.913-5-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
	 <20251104120301.913-5-laurentiumihalcea111@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
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

On Di, 2025-11-04 at 04:02 -0800, Laurentiu Mihalcea wrote:
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>=20
> The macros defining the mask values for the EARC, EARC PHY resets,
> and the DSP RUN_STALL signal can be dropped as they are not and will
> not be used anywhere else except to set the value of the "mask" field
> from "struct imx8mp_reset_map". In this particular case, based on the
> name of the "mask" field, you can already deduce what these values are
> for, which is why defining macros for them doesn't offer any new
> information, nor does it help with the code readability.
>=20
> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> ---
>  drivers/reset/reset-imx8mp-audiomix.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-=
imx8mp-audiomix.c
> index eceb37ff5dc5..e9643365a62c 100644
> --- a/drivers/reset/reset-imx8mp-audiomix.c
> +++ b/drivers/reset/reset-imx8mp-audiomix.c
> @@ -14,11 +14,7 @@
>  #include <linux/reset-controller.h>
> =20
>  #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
> -#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
> -#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
> -
>  #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
> -#define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
> =20
>  struct imx8mp_reset_map {
>  	unsigned int offset;
> @@ -29,17 +25,17 @@ struct imx8mp_reset_map {
>  static const struct imx8mp_reset_map reset_map[] =3D {
>  	[IMX8MP_AUDIOMIX_EARC_RESET] =3D {
>  		.offset	=3D IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
> -		.mask	=3D IMX8MP_AUDIOMIX_EARC_RESET_MASK,
> +		.mask =3D BIT(0),

Since the masks are all single-bit, and you make that mandatory in the
next patch, I suggest storing the bit offset in the reset map instead:

-		.mask	=3D IMX8MP_AUDIOMIX_EARC_RESET_MASK,
+		.bit =3D 0,

and so on. That way it's clear that no reset control ever manipulates
multiple bits at the same time.

Either way, either in this patch or the next, add an

  #include <linux/bits.h>

for BIT().

regards
Philipp

