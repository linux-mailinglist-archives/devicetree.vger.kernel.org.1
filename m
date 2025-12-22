Return-Path: <devicetree+bounces-248847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B51CD624F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:26:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE694305DCD8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6CCC2DC787;
	Mon, 22 Dec 2025 13:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="hUlu/r69"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32A129B204;
	Mon, 22 Dec 2025 13:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766409936; cv=pass; b=BSL1J76qY/WodRNnk2lrlLLxs0VOxrp0VepNxtxrf8IBHhqTdZtbfjdrpgFJ8wKsU7ao60EZK5aA0UNOimjQN3vOqJJZQ6RYLyddy97TKAH1E4UzjPMgnpfTXQOi4aNJthiZCOx9BUhlF233htdbGZW6/ZloRS6hCSiHUWyVPtU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766409936; c=relaxed/simple;
	bh=lZ/Q8oX8dX5uaEj/uhsbncDoO/1ZJiXs4jnVHSDdKUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ANfLCYL+zUBhlYrha2016VZyaYBBwCeIf7eEfhgORNP9DzdLVy20V9FqdkU6kNeCr6U1dMoysywLlZnZj7DZ7r+DV0OB0r8RK7Z8GJPb9XjSQ0R4jDPRm7dBDswK0+c95kp0OUk4wdaWmH1/xjUrli9gqhQ6p48y4CmQiep3ABk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=hUlu/r69; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1766409903; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=c+Z93QpcfHesOO97mynYUGkc9xrKLrso8ILtdtzBtu8ZCqh/0Ob2rOYTIjSNu6yoTweQl7E/i2sfc45/4FOfjJiPlxpCg4XXRthvk6aD4WOwmpafqG9w3VMgeBz9RPfcbIXAQjvmFDAt4yDMjGSwZa00cRL031wSGlb3Y6a8HHA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766409903; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UkKu+9+jYP9nuseT5iH6tA6Rgk4e8wwX3XyCsgeyjiA=; 
	b=ejieEUpX7nHdpc+r9u6rzxuWYfxP1Ql/S/3O4NXKaXP0g/8rgJpLBmB/ES/FmiRXVK2+YNDSSUJrHLAabPzyjeedpbg7h9LVLwIrmlSCSuyfr88QEj3HqQbWB/VE2StIntPiwyfRkI+dDlDLxd9kAjAO5R+r5NCOpIlWxtiVTC8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1766409903;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=UkKu+9+jYP9nuseT5iH6tA6Rgk4e8wwX3XyCsgeyjiA=;
	b=hUlu/r69leKWJdLf2wYh4hepEi8kHfB1a7rIcSE1yFM86BFmP2rHtPfjSZYsBvFN
	2AIHE5FG526VYG4dxyEYEWewqy8ksFinpw6N/3MQDFVJMpJ/nkZuYCGo+QJEEFnMFPy
	Ir/zissG4s1+FD2kgYvF8PAmpyv99O+abvQhMiEY=
Received: by mx.zohomail.com with SMTPS id 1766409901397690.5053360104508;
	Mon, 22 Dec 2025 05:25:01 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 9D32C180421; Mon, 22 Dec 2025 22:24:57 +0900 (JST)
Date: Mon, 22 Dec 2025 14:24:57 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: remove rtc regulator for
 ArmSoM Sige5
Message-ID: <aUlGPGFYYf8Ndn5D@venus>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4zvrrqo2paksgxc"
Content-Disposition: inline
In-Reply-To: <20251220100010.26643-1-amadeus@jmu.edu.cn>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/266.382.52
X-ZohoMailClient: External


--l4zvrrqo2paksgxc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: remove rtc regulator for
 ArmSoM Sige5
MIME-Version: 1.0

Hi,

On Sat, Dec 20, 2025 at 06:00:08PM +0800, Chukun Pan wrote:
> According to the schematic, RTC is powered by vcc_3v3_s3.
> The vcc_3v3_rtc_s5 regulator does not exist, remove it.
>=20
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

That's true for all board revisions that have a public schematic
(1.1, 1.2 and 1.3), so:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 10 ----------
>  1 file changed, 10 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/=
arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> index 3386084f6318..392ba83ab05a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> @@ -156,16 +156,6 @@ vcc_3v3_pcie: regulator-vcc-3v3-pcie {
>  		vin-supply =3D <&vcc_5v0_sys>;
>  	};
> =20
> -	vcc_3v3_rtc_s5: regulator-vcc-3v3-rtc-s5 {
> -		compatible =3D "regulator-fixed";
> -		regulator-name =3D "vcc_3v3_rtc_s5";
> -		regulator-boot-on;
> -		regulator-always-on;
> -		regulator-min-microvolt =3D <3300000>;
> -		regulator-max-microvolt =3D <3300000>;
> -		vin-supply =3D <&vcc_5v0_sys>;
> -	};
> -
>  	vcc_3v3_s0: regulator-vcc-3v3-s0 {
>  		compatible =3D "regulator-fixed";
>  		regulator-name =3D "vcc_3v3_s0";
> --=20
> 2.25.1
>=20
>=20

--l4zvrrqo2paksgxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlJRqUACgkQ2O7X88g7
+poaSA/7BTJMdVFTQwTR1IPZ16ROOZ3W7/y+6Yh2XxJrD7tqpAbD8yCP0VNxAYr0
YPcI4Bj2XDNCXZFu264NSB0ZFCbA8ZMdVcxa6raHElOJZ2UkutF5ZDEVtTR8aW+d
abMz+yx1xQ2BW4o+tkZWkHs2Qcwbq8SkgDc96Mqx832+FN9cM6wgHn/qnaBAlfga
CWucPY17ElMRPaPCjSre5290qnOXNeqn5Jj5EJq2hMh+A9OLWyTm7bh2rP6uskXS
76L9+6mjH+2swVXGRPLfx72tkasXmO/HA8G9DobZ8ZejE1ocoVs14+vofZaLzLjy
FK4qh8HsZp530RTsfzkF/DwIv0VkTqd6/dhVdSDro583Qr5JCc6TNRHxdILQKFkW
ayvn9NIikq+c5IskB/KKSQm6/JMfXj7D0DSIyYdHj9nF7b8zDt8gTRkBshty50eu
DFJan56BvVxVaL1cbecSfAjmmCnPeRwDOM7U+qI/G2qCw2JGZ3biHZgA4auWWIQ/
11B3OirJDAvSGCDG2VlXwkZ9WXH8Nm0iAhYITNBOipiJJ1bxvvTSq4/CRd+gR68g
v/zMDHx9XLcB3a4VvxPHpPLNXA/fyQ3JIWEcl22QMConaRiwl4yF9OcOohSm/lpy
YlYVCyShnFjajvOIsBjgvBw6rNBJRlYDadoKyYEIkiFSLlnjyK4=
=kfCP
-----END PGP SIGNATURE-----

--l4zvrrqo2paksgxc--

