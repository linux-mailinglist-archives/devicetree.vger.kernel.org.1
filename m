Return-Path: <devicetree+bounces-321091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0GQQAWGKS2p1VAEAu9opvQ
	(envelope-from <devicetree+bounces-321091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:58:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DC15170F904
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:58:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321091-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-321091-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A51653015180
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C48639B960;
	Mon,  6 Jul 2026 10:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABA9360EE4;
	Mon,  6 Jul 2026 10:35:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783334120; cv=none; b=INqMYeb0ZtAYtWHKwcFIQAbS4DJQw/oNo9IqA3NyFGFzVfvw6YcgR6sMhAU7baSkQfqgtqESpAHRglZPfIFClQFPwad+SENoq2WsIBKuZRMa6aWWHCgZQMQO9Q6c4My1MlEeTk0Gi2wR+iWPbK0XU3th45sfOBpypudp4b9pC54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783334120; c=relaxed/simple;
	bh=sUHK124mufIKOHmMJggzku9b783c+lCeJzO6zBU9rPQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Lh6E+rp1jpWzJtmO51OBdPSfXhHsxh/SfkRR4hDtqh7+d3rxdEZHdUmfStswruJyonj8Bpp/Rlg6Ts/0rZ2Fh4EHF7i4U2JbJGJd48hiLli+zcIqe4qUepS1D9kiKab4lAEgHc7Zohdgt7b+RU+B4YwoK1ZcZzfWgbcEcJS53qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DD5C0201544;
	Mon, 06 Jul 2026 12:35:14 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wggfS-000OQS-2e;
	Mon, 06 Jul 2026 12:35:14 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wggfS-00000000BL5-32JF;
	Mon, 06 Jul 2026 12:35:14 +0200
Message-ID: <4030fdf119191dfe38618b8057090c710a45880d.camel@pengutronix.de>
Subject: Re: [PATCH v5 2/5] thermal/drivers/sun8i: replace
 devm_reset_control_get to devm_reset_control_get_shared_deasserted
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Mikhail Kalashnikov <iuncuim@gmail.com>, Vasily Khoruzhick	
 <anarsoul@gmail.com>, Yangtao Li <tiny.windzz@gmail.com>, "Rafael J .
 Wysocki"	 <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>,
 Zhang Rui	 <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Jernej
 Skrabec	 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Mon, 06 Jul 2026 12:35:14 +0200
In-Reply-To: <20260704171411.1413349-3-iuncuim@gmail.com>
References: <20260704171411.1413349-1-iuncuim@gmail.com>
	 <20260704171411.1413349-3-iuncuim@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[bounces-321091-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,intel.com,arm.com,sholland.org];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:iuncuim@gmail.com,m:anarsoul@gmail.com,m:tiny.windzz@gmail.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:tinywindzz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pengutronix.de:from_mime,pengutronix.de:email,pengutronix.de:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC15170F904

On So, 2026-07-05 at 01:14 +0800, Mikhail Kalashnikov wrote:
> The A523 processor has two temperature controllers, but they share a
> common reset line. Make it shared with the shared variant of
> devm_reset_control_get(), and also simplify the driver by switching to
> devm_reset_control_get_shared_deasserted().
>=20
> Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>
> Reviewed-by: Chen-Yu Tsai <wens@kernel.org>
> ---
>  drivers/thermal/sun8i_thermal.c | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
>=20
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_ther=
mal.c
> index 226747906..df0c26970 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -342,11 +342,6 @@ static int sun8i_ths_calibrate(struct ths_device *tm=
dev)
>  	return ret;
>  }
> =20
> -static void sun8i_ths_reset_control_assert(void *data)
> -{
> -	reset_control_assert(data);
> -}
> -
>  static struct regmap *sun8i_ths_get_sram_regmap(struct device_node *node=
)
>  {
>  	struct platform_device *sram_pdev;
> @@ -389,19 +384,10 @@ static int sun8i_ths_resource_init(struct ths_devic=
e *tmdev)
>  		return PTR_ERR(tmdev->regmap);
> =20
>  	if (tmdev->chip->has_bus_clk_reset) {
> -		tmdev->reset =3D devm_reset_control_get(dev, NULL);
> +		tmdev->reset =3D devm_reset_control_get_shared_deasserted(dev, NULL);

Nothing wrong with your patch, but why is this stored on struct
ths_device at all? It's never used. You could turn this into a local
variable while you're at it. Either way,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>


regards
Philipp

