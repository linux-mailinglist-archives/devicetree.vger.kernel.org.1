Return-Path: <devicetree+bounces-253872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 181EFD122D8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8D7B83000DFD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB3A355054;
	Mon, 12 Jan 2026 11:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zxmuozqE"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D337D26A0DB
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216109; cv=none; b=gwSTywmFfY5BNMsW95dFVGr269ckoTqXMeGJs5qLf0GQeTdpt0Is2bkaDjSywmwp1elp+Ak5AQFWPuxw7sq6BhushH0VgkBzmAYIYgbb8FQul8FOtivvRj0gZe8lWY1McUrdFko06hFikYGc69xBX+rf7A+Nbn8Cf3+XSp/Aubo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216109; c=relaxed/simple;
	bh=JUz3JKWU/sryZ9YN2RTD6vYZu1UKkU3Jt2I9bemB1Zw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uuAocIvVeNiQxCfPAC5qtDC/dp89tV5HoCLozDmM+4rYUrTczwpYWpDj5BkVfMy4n14UJEV187aBiHKDM0/OapazMyJalpDwdYf7dFB3STgZOIUEIZ0F20z7u/0hSCSM9xUZkKwzMn4aFzEFGLrl+MwPchWHxmoBptoy4Q6D+Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zxmuozqE; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4/h7OXFLoj5sNu8S6Ib2yARBNSTdc9EF/svbaK+WcVg=; b=zxmuozqEE9XnFS/kEQkum8DqoK
	bDgV+E5qNQAO80gCNPmTebT0wcqNfSgworJ2jeSi9q2Xx/RGgO6vrPjDThY6D9HXcDfqYlsMy98rn
	GLdoxgjOYnQ6+RvNKR6y3Rf/lYxTMth/5T9NU7PNUomyAynHNZ5jB/OECRa0wEsRfvEoaRB8DLOuT
	cPfjQLkbaIoaw3yO7Lq2RvWTB6V8jsYvUgNhvDXXgeCp2GMt8h8JG9jcURjDe7blX1P9UeHcQeNzA
	n79MtaHF75I4ZzrySaJU1TU1LZ3RWZ5cuqdfz1Oj6TaWjG5B1q3Z9eLvGLOAWpJxL54N36naSxhdo
	ZHxd2OxQ==;
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfFma-001wNx-Bj; Mon, 12 Jan 2026 12:08:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject:
 Re: [PATCH 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Mon, 12 Jan 2026 12:08:24 +0100
Message-ID: <2246870.KiezcSG77Q@diego>
In-Reply-To: <1768189768-96333-4-git-send-email-shawn.lin@rock-chips.com>
References:
 <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-4-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Montag, 12. Januar 2026, 04:49:28 Mitteleurop=C3=A4ische Normalzeit schr=
ieb Shawn Lin:
> Without cd-gpios, the sdmmc would not be detected, because during
> runtime PM, the clock is gated which prevents the irq from issuing.
>=20

this could use a fixes-tag perhaps?

> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>=20
>  arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm6=
4/boot/dts/rockchip/rk3576-evb1-v10.dts
> index 0789733..b583cec 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> @@ -958,6 +958,7 @@
>  	bus-width =3D <4>;
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;
> +	cd-gpios =3D <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	max-frequency =3D <200000000>;
>  	no-sdio;
>=20





