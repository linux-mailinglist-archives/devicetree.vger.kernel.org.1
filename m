Return-Path: <devicetree+bounces-254667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C4DD1AB05
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E54FB3017EFC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6633B352F90;
	Tue, 13 Jan 2026 17:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="J3SKXSst"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BF834EEFC
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326216; cv=none; b=XgaLoUUS7btSgXdUTJU119bS5h5rcgRSrbyq6UGO1fGfhcEpXlOdCInJySeyy0Y8AwSwQPqGb/zoOeBI6+KMQS///TyycG5Gm/8K6o9HhpcJT9xgLJQYlAsOeyhhTXTdk2vsiQzfWgZmzyXOCqBYRciTYoW435uAdb9TwtLAhrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326216; c=relaxed/simple;
	bh=MY9rQIVkNttiXg02iqmK+j16GgE1BjxACqj6+wxn5Ag=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YZKOVAQVOx8AQroU0nx2whICmvhI3j+0EiHgL3TbzTr5uOU247leDMq/bJE5SWvxKmBf7efm6l5izoCzFfVQ3ZKklYyJREWoQVHiXlrgsfFuIRTq5GDrJ0hbGn7/WXpOVJlnQbMZ6DqmptsBptUUxWGhpx2lDJn/QOwa19/iuUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=J3SKXSst; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kERDgTlZwEI8Z2uNkyJk/3htfhljWR3RUEeqFlNQCek=; b=J3SKXSstDC/Z/7l9Y2WHu8sKM3
	fEv+8hlRmqWShI0vJ1TTBFu5CP4bCMBE4HLZy8oOvSBo2Ba/yWFy9fRNm6HU0G7juuXCW9mLm870h
	hStVDsd0TgpXxYKq6orRt8W1WdkUhfD8Rv1b1jhtrtLOpQ/X3B2SDaz+LqGnPNfJuR/vQjUpe/uzU
	hcIM71lQIVPf7bxD6AkWmWX7ICso2gjIVYdpvc52o6z5lwD/8Q6hxoOyRLfeRY0KvZOfgw4oocmdA
	0zm0m6mNIk5WvvYdEsdp2o5W4WLUxa5LtLP15k6H3tMOrktV4wo5gXxx35MkXvK/NirgTb9dLiCKB
	vQMOZMvA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfiQB-0029ih-Iu; Tue, 13 Jan 2026 18:43:12 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject:
 Re: [PATCH v2 2/3] soc: rockchip: grf: Support multiple grf to be handled
Date: Tue, 13 Jan 2026 18:43:11 +0100
Message-ID: <1906413.BzM5BlMlMQ@diego>
In-Reply-To: <1768267105-127385-3-git-send-email-shawn.lin@rock-chips.com>
References:
 <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
 <1768267105-127385-3-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Shawn,

Am Dienstag, 13. Januar 2026, 02:18:24 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Shawn Lin:
> Currently, only the first matched node will be handled. This leads
> to jtag switching broken for RK3576, as rk3576-sys-grf is found before
> rk3576-ioc-grf. Change the code to scan all the possible nodes to fix
> the problem.
>=20
> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
> Cc: Detlev Casanova <detlev.casanova@collabora.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>=20
> Changes in v2:
> - use for_each_matching_node_and_match(Heiko)
>=20
>  drivers/soc/rockchip/grf.c | 54 +++++++++++++++++++++++-----------------=
=2D-----
>  1 file changed, 27 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 8974d1c..9b36390 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -217,34 +217,34 @@ static int __init rockchip_grf_init(void)
>  	struct regmap *grf;
>  	int ret, i;
> =20
> -	np =3D of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
> -					     &match);
> -	if (!np)
> -		return -ENODEV;
> -	if (!match || !match->data) {
> -		pr_err("%s: missing grf data\n", __func__);
> +	for_each_matching_node_and_match(np, rockchip_grf_dt_match, &match) {
> +		if (!of_device_is_available(np))
> +			continue;
> +		if (!match || !match->data) {
> +			pr_err("%s: missing grf data\n", __func__);
> +			of_node_put(np);
> +			return -EINVAL;
> +		}
> +
> +		grf_info =3D match->data;
> +
> +		grf =3D syscon_node_to_regmap(np);
>  		of_node_put(np);

This of_node_put can go away I think.

for_each_matching_node_and_match iterates over the nodes via=20
	of_find_matching_node_and_match(dn, matches, match)   [0]

and of_find_matching_node_and_match() will of_node_put() the from node [1]


Heiko

[0] https://elixir.bootlin.com/linux/v6.18.4/source/include/linux/of.h#L1469
[1] https://elixir.bootlin.com/linux/v6.18.4/source/drivers/of/base.c#L1147

> -		return -EINVAL;
> -	}
> -
> -	grf_info =3D match->data;
> -
> -	grf =3D syscon_node_to_regmap(np);
> -	of_node_put(np);
> -	if (IS_ERR(grf)) {
> -		pr_err("%s: could not get grf syscon\n", __func__);
> -		return PTR_ERR(grf);
> -	}
> -
> -	for (i =3D 0; i < grf_info->num_values; i++) {
> -		const struct rockchip_grf_value *val =3D &grf_info->values[i];
> -
> -		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
> -			val->desc, val->reg, val->val);
> -		ret =3D regmap_write(grf, val->reg, val->val);
> -		if (ret < 0)
> -			pr_err("%s: write to %#6x failed with %d\n",
> -			       __func__, val->reg, ret);
> +		if (IS_ERR(grf)) {
> +			pr_err("%s: could not get grf syscon\n", __func__);
> +			return PTR_ERR(grf);
> +		}
> +
> +		for (i =3D 0; i < grf_info->num_values; i++) {
> +			const struct rockchip_grf_value *val =3D &grf_info->values[i];
> +
> +			pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
> +				val->desc, val->reg, val->val);
> +			ret =3D regmap_write(grf, val->reg, val->val);
> +			if (ret < 0)
> +				pr_err("%s: write to %#6x failed with %d\n",
> +					__func__, val->reg, ret);
> +		}
>  	}
> =20
>  	return 0;
>=20





