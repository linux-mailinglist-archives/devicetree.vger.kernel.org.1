Return-Path: <devicetree+bounces-251658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB572CF55EE
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E9B230ABCE9
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD943342C92;
	Mon,  5 Jan 2026 19:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="QlP/7Myl"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52CE1F1518;
	Mon,  5 Jan 2026 19:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767641108; cv=pass; b=SNk9350CASjfi6L9hBUfBUrL7GeecWGfnO8tLw6nTD1QErPC2cJvV0mEcjKOYfqQfjo2HwbascvpPfMSeda/5i60OmAVmkZSZ4u5kKROwgtH0x55Jz97md+wSD5yUhfMI6Fcbvdmx5BX8N/j1ixp2tQMea6ugLlDZ5TbeOt7EKU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767641108; c=relaxed/simple;
	bh=EVlW/DuRMDvxJIk7U9Xs2AyoyrDHz/ORl2TdgOXSmO0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JV9YhWtMzkxQ+GJ8BamhoWDl/6TYWU/dRMczQVMDMHcQ6SL4P+NhTWfABGO+FpQY/q3o6GEek0QJJFEtMRlkOxajufagT+jN2xiVHNo2mlYu+Gz3UYEnjJbamrUI95xloCn6kTOsrQ3aGmkd+lBbPIjT/6uV2GRyxrwfjPqVQ4w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=QlP/7Myl; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1767641089; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CottjbLhr1z6jC7i7Flp+v+5LhDl6uS+YVZbNw2ld2JfPW7E1jZGFhN4ADezeT5riWanf1Us9kdXtzLjBvqJ3+eNbm74FfTlLPMyuHEtNwmJ0KVnloLaKIIbGMb+n+5PYvRVd2NSq3vSzEKctz+iyTuG0PzXLqTMDPawzaaPKFw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767641089; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+eYBqoUzN2+h4HGky8/6reMdv+vWNLooxMBisEuv9uw=; 
	b=ZDTo/tCXQ7PAp1toucD2qN20Uh2H8bUa2vslbjsByc3pnuHoTG5AbiUssw4g3HoJYYHdkkuT3WBQjfl0l2FkuCj2erOIfTcH6fYMtkhNBV7djSV19Kl4frOuvsKPdm1yBRDVbQQ41oBKLXmgPyLf47metArVee0qrT9D+IiyKFg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767641089;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=+eYBqoUzN2+h4HGky8/6reMdv+vWNLooxMBisEuv9uw=;
	b=QlP/7MylbzSI4cx96KIuR91JZT+dHf3eGfwqJDoJd9mbvnCEwS8rTZXxqqllByz4
	WI9Y7XF1UtxKj/w+w1QFx543Bzq0CyIh82su6mbzQAEK+QOwl/w6RtdaT31LXowKKRG
	NF2cnox2UNz07hkP0Wd+OUpEU+El+kXTZEVceUoA=
Received: by mx.zohomail.com with SMTPS id 1767641086980433.82009734349515;
	Mon, 5 Jan 2026 11:24:46 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id B1861181D56; Mon, 05 Jan 2026 20:24:42 +0100 (CET)
Date: Mon, 5 Jan 2026 20:24:42 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Frank Wang <frank.wang@rock-chips.com>, 
	Alexey Charkov <alchark@gmail.com>, Liang Chen <cl@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576
 gpu
Message-ID: <aVwIukddZTukxH_8@venus>
References: <20251230090246.46-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gh72f5z6wmtbfhva"
Content-Disposition: inline
In-Reply-To: <20251230090246.46-1-kernel@airkyi.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/267.599.44
X-ZohoMailClient: External


--gh72f5z6wmtbfhva
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576
 gpu
MIME-Version: 1.0

Hi,

On Tue, Dec 30, 2025 at 05:02:46PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>=20
> According to RK3576 TRM part1 page13, the size of the GPU registers
> is 128 KB.

RK3576 TRM V1.2 has the address mapping on page 15. Maybe just
reference "Table 1-1 Address Mapping" instead of giving a page
number?

I think it makes sense to add the following extra text:

The current mapping incorrectly includes the addresses of multiple
following IP like the eInk interface at 0x27900000. This has not
been detected by the DT tooling as none of the extra mapped IP is
described in the upstream RK3576 DT so far.

> Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3576.dtsi
> index 6284e7bdc442..b375015f0662 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1271,7 +1271,7 @@ power-domain@RK3576_PD_VO1 {
> =20
>  		gpu: gpu@27800000 {
>  			compatible =3D "rockchip,rk3576-mali", "arm,mali-bifrost";
> -			reg =3D <0x0 0x27800000 0x0 0x200000>;
> +			reg =3D <0x0 0x27800000 0x0 0x20000>;
>  			assigned-clocks =3D <&scmi_clk SCMI_CLK_GPU>;
>  			assigned-clock-rates =3D <198000000>;
>  			clocks =3D <&cru CLK_GPU>;
> --=20
> 2.51.1
>=20

--gh72f5z6wmtbfhva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlcD+sACgkQ2O7X88g7
+prTtQ//dy/wZmBaqUEGaS9zX4E6AXNwW8NHd8I6RwQHDHAbbbkPNkI66IxfKeBo
nWasz2zmeCym7reEoKvRwNw9h2sofpHJzvPV/EMEOdgaBo4ene8LeTQ1wfBnXNZi
KsTX4cYGDK5YcHeXK5eCPGAZO7ihGRY8vYy9U5xeT91nKbcBGFdG6dLfYsnwbaBf
5CpTmk3RPsDqtXr02hd5d+5/ZSkDE0dD1bLRrYhA14sP0UG3j3UciLlhCMi0DOaU
eljF7vne4wbqpAPYmiqvpEYxhjfeS50WuWqjFBdBQhzUq5788dvh59WS7jPylx9X
0e2No3O3uWHN7s9+hcj070dAOJlxPIqVhoofsqeqHh49KUKFu8MHvzrA//iorxg+
G36wh9A5YTKehH1MBZGDvMz4qpRPWiaPRsqB6/BS+iBXZoFBnp5S8aKjG34xWebK
rXXCE9Nt3TVFJhe55ng42Xl9vLWQZ39vzy1ycNt4KV8wRWFAhKcBvLGOhztoClRV
m7iAHBFkXmNAQZHA6vSkM0a2hZjau2sYXTzDMUQjoiVXA2mYGq6iholyVGwQz4MZ
n+Lcsj+CnBLt7UvxwCXnyzrkf4YIF18F0adMrkl6Ff9IjOnGxJRs3GYRiT5A+9vZ
p+u6xmCBl5IdWMq/q3RB2bYfP3kh5hbDbGHkfJvhslCfkCjM8RQ=
=jLgq
-----END PGP SIGNATURE-----

--gh72f5z6wmtbfhva--

