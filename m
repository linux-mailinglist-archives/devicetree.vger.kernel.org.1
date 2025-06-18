Return-Path: <devicetree+bounces-187163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8E6ADEE5C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:51:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 219891BC2223
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34A22EA72C;
	Wed, 18 Jun 2025 13:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="PO8Pt/Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FE02857C4
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254657; cv=none; b=s/iBqTNdTd2mkTWqmuSH7MkH/gHSwEV0njQdt4Mkny8ag2MmC88Z1TUMwqZLFQH10kIdqSgLwe4CLc3V8YR/Vx/LYL63MrZmVXNfon6Rac4yjc+mnExdssek7kJcyM8TfQlnON5nP4Bomdt0o0aMPioN4MfDBBAnZlpgRzPRbbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254657; c=relaxed/simple;
	bh=l2v9x4LP7Yzj7KwEWaks+xPM5FzpZMhgldtX3QUyb1E=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=YXkzk47wcimqPb6FH0waMqntTj42qQ38cZa0Ug3bZSR3c9etAmX0E7Jn5TjMShHlDiBfmTs8awYGykBoj7PZBtx2e07PklipGgu5s+loJAZz18EJ0ZXLEsRoW5rlG29PDPZWn342V9palLYrs2Gnan6VjTsk2UZpdQJZN4BB+LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=PO8Pt/Bt; arc=none smtp.client-ip=95.215.58.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1750254652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wyRqvCiBUNreiVdu1C2ibSdtvPeHazL8eEH7UAzR7EU=;
	b=PO8Pt/BtUik48+dNlnsyUpVPXJGAil3xpxAmvB3wa5plkjFiDY9SvLfpotgUxNiUpXi2Pn
	RHIceBY5WeG1CUgwC/ijnwS51ENTQqWsKBw0do/zDCK38mBHiBBM9HhYwKzKkRN61QQa0o
	/TXiW4L/qAhWOCdhCJalWaRPpApsfXSELtS/plOMwpSPPpS0YaQXV36Ecgu1WX40K0/4EQ
	uZrAid+s6JWpYmA4Q2PU8FPGATnipXAxOduV7UmOeWbtacFwARWb536WA8Qo9aAW17IPRd
	V0C8tzAic03D549Gox5ZGJ5poa6kbB89SGILMDoSYSVoYMqLl6p6ic2UTP2y/g==
Content-Type: multipart/signed;
 boundary=bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 18 Jun 2025 15:50:39 +0200
Message-Id: <DAPPHL6RPWWM.94C7P26AUCCN@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Olivier Benjamin" <olivier.benjamin@bootlin.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Fix the mipi port definition
 for RK3399
References: <20250618-dtb_fixes-v1-0-e54797ad2eba@bootlin.com>
 <20250618-dtb_fixes-v1-2-e54797ad2eba@bootlin.com>
In-Reply-To: <20250618-dtb_fixes-v1-2-e54797ad2eba@bootlin.com>
X-Migadu-Flow: FLOW_OUT

--bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi (again),

On Wed Jun 18, 2025 at 12:32 AM CEST, Olivier Benjamin wrote:
> The RK3399's MIPI DSI has 2 ports: in an out. The definition of
> the port property necessitates the value of #address-cells to be 1.
>
> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch=
/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 5ebc380a24df86ba7172b0950b89cac56b61c507..5a7341fb6bcb0613af6f3ac31=
d99355a0f890e89 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -468,7 +468,7 @@ &mipi_dsi {
> =20
>  	ports {
>  		mipi_out: port@1 {
> -			#address-cells =3D <0>;
> +			#address-cells =3D <1>;
>  			#size-cells =3D <0>;
>  			reg =3D <1>;
> =20

In rk3399-base.dtsi there is already a definition for mipi-in and
mipi-out. AFAICT what this change does is require a reg property on the
endpoint and I don't think that's correct.

It seems to me that all you need is a mipi_out_panel definition.
So what I came up with is this:

```sh
$ git diff
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/a=
rm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 04ba4c4565d0..b175aeed99e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -466,18 +466,6 @@ &mipi_dsi {
 	status =3D "okay";
 	clock-master;

-	ports {
-		mipi_out: port@1 {
-			#address-cells =3D <0>;
-			#size-cells =3D <0>;
-			reg =3D <1>;
-
-			mipi_out_panel: endpoint {
-				remote-endpoint =3D <&mipi_in_panel>;
-			};
-		};
-	};
-
 	panel@0 {
 		compatible =3D "hannstar,hsd060bhw4";
 		reg =3D <0>;
@@ -495,6 +483,12 @@ mipi_in_panel: endpoint {
 	};
 };

+&mipi_out {
+	mipi_out_panel: endpoint {
+		remote-endpoint =3D <&mipi_in_panel>;
+	};
+};
+
 &pmu_io_domains {
 	pmu1830-supply =3D <&vcc_1v8>;
 	status =3D "okay";
```

I don't have a PPP so I can't verify it, but ``make CHECK_DTBS=3Dy W=3D1
rockchip/rk3399-pinephone-pro.dtb`` no longer reports issues wrt
dsi@ff960000 (after I also fixed the panel compatible like in patch 1
and added a LCD1_RST pinctrl definition as indicated in my reply to
patch 3).

Cheers,
  Diederik

--bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaFLENQAKCRDXblvOeH7b
bv7jAP92BoaEAnzcznQlnluIJ5X4iWpd/HlBmdpadX6RnGY14wEAjkopAG+tNdwu
6H5yPB7qZUbPv1znf4zQjUKT3EQO3AM=
=DH21
-----END PGP SIGNATURE-----

--bf878dc077ebb1f1135359669f74c117a74de9e39e80d44933d5744a26aa--

