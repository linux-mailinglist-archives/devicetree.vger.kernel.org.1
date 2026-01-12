Return-Path: <devicetree+bounces-253871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D99EAD122FC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D94BC308A99F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9D2350D76;
	Mon, 12 Jan 2026 11:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="H26MM37E"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E8929D28A
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216041; cv=none; b=Ph6EeRRZNYjbLO0LuLylvkOhW6/YGLS4e67WFLVOTNMwo8QFDWcPzikLQ+zjb441HnXChpSBaBVa732whj6fUHteYlodGy0CIwdYKpIpN8IyssiH4zKF2vFzDa7zNHP4RypTjM8jhH2zi80IUoAplhKHpkuWvtl6ZRurHhYKjoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216041; c=relaxed/simple;
	bh=tWrO0LsSENpbey5KTmCmAAIB9wgfLDvBF29DiA1ifvk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lMRz07ScoMHNxcidaWqJtvt7+X6LsPkSzGF4l9JsupmEB9lsaZove7TDCJJpV5Qb0szWx6nmgKviHK3H0D0wg1HVHo7M7fGSL2W4r9WfeyFx5DbMK2JIZNdG86sdYUB/8qhSu3TKtlHApSTY4WfQSoJ5rqJGnxnAuoJdu646yCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=H26MM37E; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YOqp9WOX0i/+P9hRPyDbeTpgtUJdKn7Z2cmGsf9yrvA=; b=H26MM37ELvbpBbRN0PQ9a2hIEh
	gXxuDq6L0zwm+o0S2gPVpndwjt04a/bNaoroL3rRwlsgSO6UbOwoO7KnLP6nuNBYsomWClkqyV8FS
	EFZchS9p2pxJ2zPHU4zryz90u+KEkifT8D5Vz7iGhWQk+B7uJPt9OT9/CGHFjQhDiVcLUgjwDAspk
	i0aZx9LLR0PSjWNWhpS0DHjOAv3IcPFY6dR5Q6bFjYhBO9u2k5wAvd8C0ln6Y0WZPGZ9UuB461ei9
	QaAOJROoxHS/X+bDCTc+HIwRz1uwiuPbbdbvuaywxp/bqb8ZvzhP4t2Muo/4sJzbxQEBIXo1Grl9Q
	JtwcO6mg==;
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfFlR-001wN4-Jt; Mon, 12 Jan 2026 12:07:14 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject:
 Re: [PATCH 2/3] soc: rockchip: grf: Support multiple grf to be handled
Date: Mon, 12 Jan 2026 12:07:13 +0100
Message-ID: <7339936.aoefvbuG5b@diego>
In-Reply-To: <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
References:
 <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Montag, 12. Januar 2026, 04:49:27 Mitteleurop=C3=A4ische Normalzeit schr=
ieb Shawn Lin:
> Currently, only the first matched node will be handled. This leads
> to jtag switching broken for RK3576, as rk3576-sys-grf is found before
> rk3576-ioc-grf. Change the code to scan all the possible node to fix
> the problem.
>=20
> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>=20
>  drivers/soc/rockchip/grf.c | 59 +++++++++++++++++++++++-----------------=
=2D-----
>  1 file changed, 30 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 8974d1c..6d1c624e 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -213,40 +213,41 @@ static int __init rockchip_grf_init(void)
>  {
>  	const struct rockchip_grf_info *grf_info;
>  	const struct of_device_id *match;
> -	struct device_node *np;
> +	struct device_node *np, *from_np =3D NULL;
>  	struct regmap *grf;
>  	int ret, i;
> =20
> -	np =3D of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
> -					     &match);
> -	if (!np)
> -		return -ENODEV;
> -	if (!match || !match->data) {
> -		pr_err("%s: missing grf data\n", __func__);
> -		of_node_put(np);
> -		return -EINVAL;
> -	}
> +	while (1) {
> +		np =3D of_find_matching_node_and_match(from_np,
> +				rockchip_grf_dt_match, &match);

I think this loop could be simplified by using
	for_each_matching_node_and_match

(i.e. like in https://elixir.bootlin.com/linux/v6.18.4/source/drivers/clk/c=
lk.c#L5545)

Heiko



