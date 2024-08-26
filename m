Return-Path: <devicetree+bounces-96661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 572ED95EF08
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 12:55:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED18D1F249BB
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 10:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C812214F9EE;
	Mon, 26 Aug 2024 10:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="Nuvp2MVV"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7AD14A4FB
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 10:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724669560; cv=none; b=cDF7VDlR3KxZuYDzSIsys4xEZA/yLrndpBEmQ9u1KYG4OQN/Zu1QsNnwGXkRKFrr14NwSGAz5Ed5FlumObJYswfXZyhwNhrj4AV0OvtjcFpZEK76REYDnww2lfFnXf+s5tzBadqR/Gcg5+Z+l1SuC39lvz7qU4sZ+DsUBKof7vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724669560; c=relaxed/simple;
	bh=+VPNQ59e721DlIID/Hxdnoy7YLYOuWksopEO8/i2jKY=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=k6+GBYn/Zg69hc7fDnWma24a5qPeRvC9pk7qrGDdHM4kI15dm8NvhDElvHO7aMm12LxKelalhdPMYSg3gXNcYcy59ind+69VxeH+xn2WcFyEnSLAALAfR+KNBZEqzIuqdBgNrbT0JCou8t9iJ9AQoogzd6swWwg0wNXZ0/mzLPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=Nuvp2MVV; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1724669556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pC3CXd7b3nW6nitMDOzjNF3/d6+JckC+lUMoiAYLDf0=;
	b=Nuvp2MVVjRShLuEha/c9tEtw/4BlB19sA/1t/LZZu8tzaTYBh3nx9gUlO5z3LliW25dPNO
	W6sqL8JLRVeqakTDNknPlz5x1BpkNkGiVUeY/Wrnl9NXGAaf3nRZytCIuJSLzptpn7PEAQ
	ao5USRXm1FmBTfsqxXl67kYj7bDasO33hTmT0ysTdSmd3F2pXzF+L4tWTnQYmPi9L4GYuo
	E30nf6A+gP6kJ65gopeB1y3K5AshSJgeJiYdiHNgKQUxDaVn66Jq1VXbXZGI5Sg5zAnN9t
	JD9owdWbBQmUCPpM5c9YFdWV29P1Tt8i2E5Cy2cxioLTP59vXQUEE8IyJOSbFQ==
Content-Type: multipart/signed;
 boundary=88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 26 Aug 2024 12:52:21 +0200
Message-Id: <D3PSBTJGFOST.3DJNY2LQ65A3Z@cknow.org>
To: "Marcin Juszkiewicz" <marcin.juszkiewicz@linaro.org>, "Heiko Stuebner"
 <heiko@sntech.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH v5 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org> <20240826-friendlyelec-nanopc-t6-lts-v5-2-ba33edda7f17@linaro.org>
In-Reply-To: <20240826-friendlyelec-nanopc-t6-lts-v5-2-ba33edda7f17@linaro.org>
X-Migadu-Flow: FLOW_OUT

--88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Aug 26, 2024 at 10:02 AM CEST, Marcin Juszkiewicz wrote:
> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>
> Create common include file and separate DT files for each version of the
> board.
>
> In the LTS version the miniPCIe slot got removed and USB 2.0 setup has
> changed. There are two external accessible ports and two ports on the
> internal header.
>
> There is an on-board USB hub which provides:
> - one external connector (bottom one)
> - two internal ports on pin header
> - one port for m.2 E connector
>
> The top USB 2.0 connector comes directly from the SoC.
>
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 910 +--------------------
>  ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} |  16 -
>  4 files changed, 66 insertions(+), 922 deletions(-)

Would it be useful to split this patch up as follows?
- Move common parts to dtsi and update the non-lts version to use that
- Improve the dtsi file (optionally)
- Improve the non-lts dts file (optionally)
- Add the lts version

> ...
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> index ad8e36a339dc..2a2dc77c71b1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> ...
> -&uart2 {
> -	pinctrl-0 = <&uart2m0_xfer>;
> -	status = "okay";
> -};
> -
> +/* USB 2.0 in minipcie slot */
>  &u2phy2_host {
>  	phy-supply = <&vdd_4g_3v3>;
>  	status = "okay";
>  };

I like comments like these, but I wonder if such things don't make the
diff (way) larger then needed.

Cheers,
  Diederik

--88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZsxeawAKCRDXblvOeH7b
bujlAQD7mr7iLUh0ESifXvOPiHNSTNHrH21hpoQu0JlLz6Gs2QEAu36UVu9WLegQ
ngDg7BmbxXJ1zRQgsYE0HhaG6ybCeQw=
=fPcS
-----END PGP SIGNATURE-----

--88a03f0ace39b47353b9d5c8338341db7b73870548ed87a92bc4735c126f--

