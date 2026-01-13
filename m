Return-Path: <devicetree+bounces-254741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2B4D1B76A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 924D530127B4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C4030EF87;
	Tue, 13 Jan 2026 21:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="ONVo5bmM"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC992D77FE;
	Tue, 13 Jan 2026 21:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768340654; cv=pass; b=A5Zw7RtZlkofm5Wz30z/8uTwUVnAOKmPbhlKtOk0wQXGDnJPcd/OXi80Kd63iATqcrvu4+huxRpDgIX+38Tk7qfu0XL+/lKhbSdBFoMCy5P61Fzg+220cqgOOSubwCG1s7Np89+hjN5DvYYT9SaWGsaFMYUgr5g4mKF8QJioY8M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768340654; c=relaxed/simple;
	bh=g5ZhvMqr9u9ysAC0VtYDENJNeQXQ+kK9DBRR9f5IM34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sVsu6UIODgnC6rHBYPfB/AWtLJYpv3psPPYzYPActfTF817ywI6gteQROO3thGj8aTfxbdmbmmKuuuDmm3HVMt0/RrJe7AukXsEO94o9pm+EHhYRT1+x7qoBURCXnrTss//oE7WSrmz5r2ozqtoMVmcLYh/GTZ8nwn0ekSb7q0k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=ONVo5bmM; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1768340630; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=l0WuONUE02bm6kJBK+49JHXfvEtd0LAUtlh8OeqXtrsajWOxisuIwi9vYET/F3bxSR3PNjMlqGEusD6yM8g++c6ILKqP7Rvnd2W2e825IQ8EopqhFTtfaZPrnnPFUTENQl1DV55YrHCwrtb8tiKlFdE9YGjLCj5grsAzg/PphKI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768340630; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QHBYeueOqFpt4Agp3p/anXw1jafjMamStjjeOnNMbD8=; 
	b=SYdShVrwJvyHDvrKXGcRxXvLuhmsce3mR4WdPYr0rOUUdFTjFRmII3Z3CaTlk8LRp8VrPwmV4n9Erwu4MezMUdi/QN2iX5N7Chb3h6E78fHH0OsYxGxoZMHB0z/EoZCFNdH9zK3iFJi6lAdeUoI2JYGPs+T7ITrkgAPJFqPkoj4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768340630;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=QHBYeueOqFpt4Agp3p/anXw1jafjMamStjjeOnNMbD8=;
	b=ONVo5bmMIeFAeQDNjZJoS1GrrtSjrJ+hAWW94uOjHjGHq4SGXtytQqx0scvlGrMh
	HHqVz31t8RHQKGD5iZ3Mm9H5N06mHGPHfHsId8ExffR7ItXmcaqQ4LEws94GRQ0ch1v
	AoZtUBRy3xUrFXibZVPyW7seyom6j+qTdL3l6z/I=
Received: by mx.zohomail.com with SMTPS id 176834062782856.444600686903414;
	Tue, 13 Jan 2026 13:43:47 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id F3AB3181010; Tue, 13 Jan 2026 22:43:41 +0100 (CET)
Date: Tue, 13 Jan 2026 22:43:41 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, dmitry.baryshkov@oss.qualcomm.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, cristian.ciocaltea@collabora.com, 
	Laurent.pinchart@ideasonboard.com, mripard@kernel.org, hjc@rock-chips.com, robh@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Add DisplayPort dt node for
 rk3576
Message-ID: <aWa7M24CNaC6iz4K@venus>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-6-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fi3utza5uiabvpxq"
Content-Disposition: inline
In-Reply-To: <20260109080054.228671-6-andyshrk@163.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.5.1/268.322.40
X-ZohoMailClient: External


--fi3utza5uiabvpxq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Add DisplayPort dt node for
 rk3576
MIME-Version: 1.0

Hi,

On Fri, Jan 09, 2026 at 04:00:48PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>=20
> The DisplayPort on rk3576 is compliant with DisplayPort Specification
> Version 1.4 with MST support, and share the USBDP combo PHY with USB 3.1
> OTG0 controller.
>=20
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3576.dtsi
> index a86fc6b4e8c4..a153c3976cb3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
>  			};
>  		};
> =20
> +		dp: dp@27e40000 {
> +			compatible =3D "rockchip,rk3576-dp";
> +			reg =3D <0x0 0x27e40000 0x0 0x30000>;
> +			interrupts =3D <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>;
> +			assigned-clocks =3D <&cru CLK_AUX16MHZ_0>;
> +			assigned-clock-rates =3D <16000000>;
> +			clocks =3D <&cru PCLK_DP0>, <&cru CLK_AUX16MHZ_0>,
> +				 <&cru ACLK_DP0>;
> +			clock-names =3D "apb", "aux", "hdcp";
> +			resets =3D <&cru SRST_DP0>;
> +			phys =3D <&usbdp_phy PHY_TYPE_DP>;
> +			power-domains =3D <&power RK3576_PD_VO1>;
> +			status =3D "disabled";
> +
> +			ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				dp0_in: port@0 {
> +					reg =3D <0>;
> +				};
> +
> +				dp0_out: port@1 {
> +					reg =3D <1>;
> +				};
> +			};
> +		};
> +
>  		sai7: sai@27ed0000 {
>  			compatible =3D "rockchip,rk3576-sai";
>  			reg =3D <0x0 0x27ed0000 0x0 0x1000>;
> --=20
> 2.43.0
>=20

--fi3utza5uiabvpxq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmlmvI0ACgkQ2O7X88g7
+pqGeBAAgSIlurnmjn/ludGRWvRQic6y7Frdz87wPJMlJunZdxA1iDokPIlfv6BW
UHnKxecSag+yanMjJB/pGuzCRzfIeqz0GQa6mboNnDlhvbGG+Gp8hTCXhQllOo9c
1AvqKwhOpXpEfg7Qx/RTy9kp/lWvteCXw30GIy2ninhuzsLjypYNg7dZtEC7pNax
ppxDTtkSwZ2rKRfVDis/rGLja2mDtTn9lNxoEidAVRntddxLu12/rseOj/AeooNo
RDTGM8Wn66U5i5ogVxfuDdr4N1yZDGZxk8iI35uZgFfFHQeYpy/EGPoijj+nwsX8
+2No89u6MnPG3MqNmPzrZMns+D80zAkH4WOo5vOsCq2tHspWieUVx3U3py4DUKnG
RDVpkDbSIZuTPRGFmcQekIIzrUJgPcxfDpLiOQ03Iq5M/sPkS92w7m0EH6vq5XkA
KKTyeJrhq/qy3B391KtFRnuXquA3Wq2pxsfjIbMjV2BItt4V9Pc0zM84fRsRIJcX
s4fyN6IxSrQpODIgo7P7NSezcAyX/KyEaHspoYzcZI+CZO/luM5+a5ycNoBbznwk
9pdSI25ZlnwS+/PWrtAZzonFtZnczjoPXKqNLUyvve/EGDDtetevss2JYG2G8xzW
5QrORuh/s0apFAYDhKK1+uI8pZb+UaaoT3FX6o0yYFibp5Xhlso=
=Bik6
-----END PGP SIGNATURE-----

--fi3utza5uiabvpxq--

