Return-Path: <devicetree+bounces-240925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3503C77B1F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id D63762BA9C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 07:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E1B337112;
	Fri, 21 Nov 2025 07:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="KGX9sx4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay93-hz2.antispameurope.com (mx-relay93-hz2.antispameurope.com [94.100.136.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A032E32FA26
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.193
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763710087; cv=pass; b=ZC8HOad9ESJAOLGg7oOFNpz3XUarIOex7N+gzSxgCHaILuF/yYiJWqKu/OU1S4spTXvweUZCLMae3NrBUCHgRWGMiE4GpOEmUNdq5+Y4XRDQIVzQvaSLsIoL0AGAqLvR14LxtQ5I9Ubqkm3BQdcPhlf/aqY1CtP0DoPuwYX32N4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763710087; c=relaxed/simple;
	bh=3CYrzkvpc6C4K/ggFYCTbZT39JFV+8mm7/9zk72d7ZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=chB6ynO1pYEUlZSowyW4jqyTKRoTHNiiD0CKKsYpe6xJPbdSpXMGvlsHX7hGk48koKpcZdZo/DamoRIrO54wBL7oUA9Nx5HPCp3wDX9Vm93ccEQ+M9guxNYWaGaWok+9zan3lxamWt0CjZ9dAg5NhmGJE+p4NE40/l70WEX2dEg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=KGX9sx4V; arc=pass smtp.client-ip=94.100.136.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate93-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=k3tJvLsA3nwHU5DlF+mbLwpZA3aTkQK4IJeCwZ9snx8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763710022;
 b=hKuk3x7+6yinnfh7x6Hyxm2QJwtn7/3SxKDnks5DZbuYYPkdxs29XX7P8FrG+QGeUnBOWZhA
 +7opFy+p0dRfv+UhhqsI6h53MnQqMhAf1VzJ8LvQSeoy6WvnMOmicFZDCoBwSWLMFbX4TQWsvTH
 bPsfAMT85z73v+TTN/PNyGXMx+/wBOBPttmmwed4ohb3Z7kdnqlYJR9rAF0MHqJxKoSXqU9MCTt
 qk5rZ8pzGDitd6vES0bWoBML+ATsYsjbkleujWsAlphg9GT1mmjKad35T6eOm24DSKyzGE99MBc
 xGwUpUWEeQEx8utVrnaciFko4LZEtJwjMQqXpYkr6nIcQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763710022;
 b=aGl15XdNJXHc+eI7n1QxaYaGlGX7a71s1z+XAAnVBsAxeeChjAdwNlTQ92C4iSX/zpOgl7Tw
 gi2Seu/qc15khKZf60AXfPWZKUY9iF8UuHYQ6yzbyOUiua3SlKsM2k528Y4s6/duIIUot83u3e7
 Hd/xFwqvH8UTNx3C0UKZomA6gfPtH9W8o6DC6uuWNBcAHwx536ZLBfBv7qr1PqXXbzI4BmTmifA
 NGvqngAaqHeKttQZjwM1ppjpPhKv+yT/q24uk5jpsp/2xXfNnm1B1lnByoEtbBI3qQ9oLiOCyK7
 Qidw20gV0YS9k54bAtYCvUfdmOSVjaPGzC3I6xMM1d2Ug==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay93-hz2.antispameurope.com;
 Fri, 21 Nov 2025 08:27:02 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D12E6CC0CB7;
	Fri, 21 Nov 2025 08:26:55 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "open list:TQ SYSTEMS BOARD & DRIVER SUPPORT" <linux@ew.tq-group.com>,
 "open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Frank Li <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev
Subject:
 Re: [PATCH 1/1] arm64: dts: mba8xx: replace 0 with IMX_LPCG_CLK_0 for lpcg
 indices
Date: Fri, 21 Nov 2025 08:26:54 +0100
Message-ID: <6219606.lOV4Wx5bFT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251120214318.347483-1-Frank.Li@nxp.com>
References: <20251120214318.347483-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5062970.31r3eYUQgx";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-body-digest:85f9472f373959296694e824be05722c
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay93-hz2.antispameurope.com with 4dCRcJ4FP5z4QZkv
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:89040410fe253a30377afa8de9f8e326
X-cloud-security:scantime:2.154
DKIM-Signature: a=rsa-sha256;
 bh=k3tJvLsA3nwHU5DlF+mbLwpZA3aTkQK4IJeCwZ9snx8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763710022; v=1;
 b=KGX9sx4VCzyezP5SQMIBzQtycORYtr0MbMI4F8hY9vl8doiq9HhiGb05w5ittjfOU4NEfcNt
 Q9xYscnHk3Xd8F3MApFAuc5kOPt98j/XDM7JPl+nj7iY8wGY90sS42d4kWQt1TP0/5fUfC8TCTY
 EEaz1BAH6HDTImXLx0+zahKfMML+1WJf5k3DvcUbPkY2/lJkBSA2yaiu+11s/prg5zshTT7cr31
 u20Objukh7h+h5lCsBdOByBFXf0PbcXBMpyKE8u/w+7VoKMaZM1wKQJcpCKX8Q51P2bfh+9xYzv
 yGpIO3gYf+MSqeLMorI/66iYPMqCPOyADfvvczY/HrqCw==

--nextPart5062970.31r3eYUQgx
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: imx@lists.linux.dev
Date: Fri, 21 Nov 2025 08:26:54 +0100
Message-ID: <6219606.lOV4Wx5bFT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251120214318.347483-1-Frank.Li@nxp.com>
References: <20251120214318.347483-1-Frank.Li@nxp.com>
MIME-Version: 1.0

Hi Frank,

Am Donnerstag, 20. November 2025, 22:43:18 CET schrieb Frank Li:
> Replace the 0 with IMX_LPCG_CLK_0 for LPCG clock indices. Although the
> numerical value is identical, the LPCG input is defined as
> IMX_LPCG_CLK_<n>, so using the symbolic constant improves clarity and
> consistency with the LPCG clock naming convention.
>=20
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Thanks!
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  arch/arm64/boot/dts/freescale/mba8xx.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/mba8xx.dtsi b/arch/arm64/boot/=
dts/freescale/mba8xx.dtsi
> index c4b5663949ade..78f5dfdc5cc8a 100644
> --- a/arch/arm64/boot/dts/freescale/mba8xx.dtsi
> +++ b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
> @@ -225,7 +225,7 @@ &i2c1 {
>  	tlv320aic3x04: audio-codec@18 {
>  		compatible =3D "ti,tlv320aic32x4";
>  		reg =3D <0x18>;
> -		clocks =3D <&mclkout0_lpcg 0>;
> +		clocks =3D <&mclkout0_lpcg IMX_LPCG_CLK_0>;
>  		clock-names =3D "mclk";
>  		iov-supply =3D <&reg_1v8>;
>  		ldoin-supply =3D <&reg_3v3>;
> @@ -336,7 +336,7 @@ &sai1 {
>  	assigned-clocks =3D <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_PLL>,
>  			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_SLV_BUS>,
>  			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_MST_BUS>,
> -			  <&sai1_lpcg 0>;
> +			  <&sai1_lpcg IMX_LPCG_CLK_0>;
>  	assigned-clock-rates =3D <786432000>, <49152000>, <12288000>, <49152000=
>;
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pinctrl_sai1>;
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/
--nextPart5062970.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEByESxqszIvkmWRwbaS+g2M0Z/iUFAmkgFD4ACgkQaS+g2M0Z
/iUgUggAtEtgpzATuowAJMkBiof/iitCR7c15FBQ+YaxX5BIvfh29ytr6z25ak3Z
UJhAW2KamHXI21LGIDS6C2VFxJGmNhaZcN89VlEnVoy5IBbqvbWp+2wrWHrPfE67
xm7D/JZh0U04dJOqNbVIoe+SyxGfToEV3BAI3diSkHSmivdHyqVDxWyhdCWp+FR6
ktG4DKP/YNXjzqzNLP+LsSrkbUQqbY45jOjkgL26UlzZVXUmPvm8asTvCrPfUfsf
plaF4ynO9tbyjzEo5ubwFn7F2ynIvdHfJdHjSRJBoseWuVNVTfspue+Tu+Fp1JU3
B3qWpQZXo05V4YjY+JLZpW8BC7gY2A==
=vWvp
-----END PGP SIGNATURE-----

--nextPart5062970.31r3eYUQgx--




