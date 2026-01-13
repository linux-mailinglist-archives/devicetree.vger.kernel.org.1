Return-Path: <devicetree+bounces-254410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 399E8D17FBD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B1054300384D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA64346E54;
	Tue, 13 Jan 2026 10:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="1hNETfxy"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2702234BA56;
	Tue, 13 Jan 2026 10:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768299832; cv=none; b=tX9yKT41UC9xQsIfSiSZ7/T8FmkKwI7wFmx0m/8GqT+VAmiH60i4K4xyR4zqLW4FlpAV0s/39oGQ3nsiELSRudme5bdLa+5+f+shoHNSc0YvZnmsgVt4WSwz9DNjqe1Hu7H9X+kqQRk42vPD7VlrOH+nlQGLBeqq7xQTQrUQCzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768299832; c=relaxed/simple;
	bh=Y8BFZQYlNLSp2hjyFSk9EIXT7ccEYN33Ye+1z2T6I5Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MWK0glTSEBUSpNBbjoQF4BgiBDCtGuz+avShQhsrfDDyMEzZoPTSdr00tx9BRLYJP3JCQu/V+qKj3kDyWm0pVPzR4YDsLUKwllFJNm4gCq6Q5ZprDGCZWddXCAk1tFoZwpu4QfviNGWA45yK8MwcLUFz3/jbTUmXHF0aBGXRnas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=1hNETfxy; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=6ylbTK+s07aeU0l2xyJb3WSMSQ84x36el2OEjXIsKPs=; b=1hNETfxyp9S74G3V6/h4ziny6j
	C8e9NIl9LUIJaNkw6aOE8o+SxQJ8J6BRGZELlgT/3PQIpN0Ke3FGfNAR76cuJIiguJseulWU0dviK
	RI+9VIhMF/rFfw67LoxJm48zfdi57d6wdW4eS6zqGAoq5AIhTP55VmA0geP2eiE6vbc2djA5QjpgA
	34UMSos08JFkBbB+5Fp3t0I9yKMurXk0fC/iuHWJrlCPzZYBmnli/g2yXJVHE9o3FWM5hUKhFv28S
	vLEnHGS/nqy12O7DM1MWg5r/1mLqqlv3q2qv6molfxoYwUeg4LO3IpKidKQmpH3yWDUkiEuBB0Q7v
	ca7wudCA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfbYj-0025LV-LC; Tue, 13 Jan 2026 11:23:34 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 guptarud@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rudraksha Gupta <guptarud@gmail.com>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Date: Tue, 13 Jan 2026 11:23:31 +0100
Message-ID: <2159404.K71DO8KEF6@diego>
In-Reply-To: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
References:
 <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Dienstag, 13. Januar 2026, 07:42:25 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Rudraksha Gupta via B4 Relay:
> From: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
>=20
> While the Wifi and Bluetooth chip are defined in the Pinephone Pro's
> DTS, it actually isn't able to be used. Let's define rk808-clkout2 so
> that userspace can actually interact with Wifi and Bluetooth

Needs of one special device don't really justify changing core drivers.
So this commit message definitly needs a more general description on
why this is needed.

> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  drivers/mfd/rk8xx-core.c  | 1 +
>  include/linux/mfd/rk808.h | 2 ++
>  2 files changed, 3 insertions(+)
>=20
> diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
> index def4587fdfb8..602218694334 100644
> --- a/drivers/mfd/rk8xx-core.c
> +++ b/drivers/mfd/rk8xx-core.c
> @@ -282,6 +282,7 @@ static const struct rk808_reg_data rk818_pre_init_reg=
[] =3D {
>  	{ RK818_H5V_EN_REG,	  BIT(0),	    RK818_H5V_EN },
>  	{ RK808_VB_MON_REG,	  MASK_ALL,	    VB_LO_ACT |
>  						    VB_LO_SEL_3500MV },
> +	{ RK808_CLK32OUT_REG, CLK32KOUT2_FUNC_MASK, CLK32KOUT2_FUNC },

So now you're unconditionally enabling this clock output, without anybody
being able to turn it off again?

Please look at drivers/clk/clk-rk808.c and adapt it to handle the rk8xx
variants, as that provides a real clock driver that your wifi node can
use.


Heiko



