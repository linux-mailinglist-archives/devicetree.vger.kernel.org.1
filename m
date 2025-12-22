Return-Path: <devicetree+bounces-248849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A9CD6285
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97F5C303EF77
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB3C92C2ABF;
	Mon, 22 Dec 2025 13:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="XoJusC6u"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E687E2C3278;
	Mon, 22 Dec 2025 13:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410110; cv=pass; b=IqT10cRzWS9xf+cCgGA2v6Tl2PVxMTeVukatQOMNXnoMzPx3EwBQd0t0nL6f0VkiBpRRGCadRXGkUbclabnK8fREV71GtQLdgpqe8P1vRdYb2ltwQIzMbK7kVBVlvnxpTfA3BvM0G8RFlcoDTj0rQHbwgHtr0W5OnqiyThJrYZ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410110; c=relaxed/simple;
	bh=KIjq/u+sGhc3aom0jKrhUsrA6Yz6hVFTsidc5ynAPio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VsWWdHl/u5YzOf16I9VaXp07aUz0mWV+OgwWsQ699YyJJI2UmteoQ9eTsz/Oe/IBzD8MIWlJMb/bOOktU8EFDZ9+1GUUc4CONKN0AwWiVqxNjz7lANuxbVNghVXKw0sdd254p7yyA/qCoGwXLLiBR7Ig+DkX6jYs3rQzzLF/Ku8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=XoJusC6u; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1766410093; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=L1/IFsv93jm9dJPfOH5z5exRx8KEx9Y8Eox/Zlu2ucOjCqwOzUjxdx6KP5IPWa4riBbXda2jmEBVd9YmDlEo7rltJ6/NQAB0hgYeTRjcGW7UqrNR//zyJBn7VFhGGGvB62MXApRXART6ndGVu2eniKDUKReI0H832FRCLr2vDs0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766410093; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=XcPyVo/INbG+mgbLBjB/e28X/tzSMYtvIP/ykLtkGFg=; 
	b=XYLFaN+IIL/Dp8El9QsMlCTLpVLPDOFxnKsCnPyZQ6XIxqLG0oQQTshhR1+g9L101ICKJBoR4a9PH4OyvGWHdlzp7HtlF8oyj5x8oKQyCqV4z02eQi9xwcQ0aRSzjBKk+ZrRDfkNoFWm1gdiI/Ht9xlnlrteMRZfx7uKLnJL7YI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1766410092;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=XcPyVo/INbG+mgbLBjB/e28X/tzSMYtvIP/ykLtkGFg=;
	b=XoJusC6uNbe5XnHn1TU9hF55SAj9huta4r9Xv0+kf8fGsn59qFkvmHi0Qar+f0mk
	qXWZBzTsx4ACT7cK/E8Ix37vC172EN2tlbb6dnh3BxlR596v+ffpwZBk8WI79J/WcVK
	gAXIa4KCVuTf0vxFgHtcWSZ9k6jFDAjzB00ydlDY=
Received: by mx.zohomail.com with SMTPS id 176641009056882.95030986245024;
	Mon, 22 Dec 2025 05:28:10 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 34ED0180421; Mon, 22 Dec 2025 22:28:07 +0900 (JST)
Date: Mon, 22 Dec 2025 14:28:07 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: fix hp-det pin for ArmSoM Sige5
Message-ID: <aUlGrcNAwp9AK8Mc@venus>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
 <20251220100010.26643-2-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mavwqnpbh2afphvy"
Content-Disposition: inline
In-Reply-To: <20251220100010.26643-2-amadeus@jmu.edu.cn>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/266.382.52
X-ZohoMailClient: External


--mavwqnpbh2afphvy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: fix hp-det pin for ArmSoM Sige5
MIME-Version: 1.0

Hi,

On Sat, Dec 20, 2025 at 06:00:09PM +0800, Chukun Pan wrote:
> Although the hp_det pin is not used, according to the schematic,
> the headphone detection pin is GPIO4_B0. Fix the incorrect pin.
>=20
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

Apparently all of the public schematics (board rev 1.1 - 1.3) have
HP_DET_L connected to GPIO4_B0. It's also easy to see how the wrong
pin ended up in the DT: the schematics also added HP_DET_L as a
comment to GPIO0_D3 (which is actually connected to TP_RST_L)!

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/=
arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> index 392ba83ab05a..a0d8f52a706f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
> @@ -812,8 +812,8 @@ gmac1_rst: gmac1-rst {
>  	};
> =20
>  	headphone {
> -		hp_det: hp-det {
> -			rockchip,pins =3D <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		hp_det_l: hp-det-l {
> +			rockchip,pins =3D <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> =20
> --=20
> 2.25.1
>=20
>=20

--mavwqnpbh2afphvy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlJR2YACgkQ2O7X88g7
+pqWog//X+vOJzl7Gh9baLrsAMP1sxkw4DPfvqF0IvGB7q5lqKZVfRcvE68kskwA
zbp+frT64ebUM0dQ8F5jdYoy0AnWQvuO48aEg3P4QnQByU5NZ7KDILQuJByonHzB
VcWhh0FCuxhs8iPE5EJ3U2aUKDO6110nfskA3+wkeXJDy5S5DEZCOnaiaVAeaW5M
GZ3fRdtz3OvJFbUGvKFDTTRfCS9O9EKdZwBETEVLa/rID+M/i1qYnjHi7DxOf6tP
YO0rDyEwK3fyWuw2TzbuK2flvtzpS06lNco4pQrKInCfbrHGxI9VpguF/wo0lxim
XJAj4fbJt14Csfpycjr91sCgBEf3Q3jiDv465ZvVTX2KF8oU047JsCQs0kh6VD1k
ihWm/Fgi+O7D4CWvzMBLztcjnxvG8zGPUNRfD0HLs48jUutM+xobROO53qcm8DWO
AwpgNXGH7ZmZYkMRz9xPnutX5NE9FGOOQhMMIeC/NutbByPoZZ2uei/0hDx7OFst
izCfG3MAHzl0Ze8b49tZTUOQ73vzieAFE/f7ffrUbdX9qR0yKoGP9Dw5R4giOVqC
QHyRqWC8Xn31X5RlOYQAaeYg+Yk/Nq8TRxzXU/Y5mgwe0FM04qIfFLpQIJo9usHR
LOdEtyNMv/DC/M4yqRISba6qV4Xs0EZzakBVYHFUhkQNoNLxpcs=
=GMVl
-----END PGP SIGNATURE-----

--mavwqnpbh2afphvy--

