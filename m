Return-Path: <devicetree+bounces-237111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B9785C4CF07
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6DBD034FB3A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF4C6339702;
	Tue, 11 Nov 2025 10:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="WC4DIUe0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay106-hz1.antispameurope.com (mx-relay106-hz1.antispameurope.com [94.100.133.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E131733BBC5
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762856047; cv=pass; b=kFLQRbzSq9lQpDca7CjOE7BOrrq6qliCRr0sMREXIvwB+67fw2OhX/kj0YaNaTsMKnl9uqTd+MCl4iFTC2cuwh2+TwJoLbifgSzIUmPwyL7PV5xYzLakG50lstZurrittGNmdbZvWwza7u3R+51UnjmozJzBNMEDrcD28u+612Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762856047; c=relaxed/simple;
	bh=qffjGVKHGKbLT2g/i1slYDW6JONYYo+k1+ICy3WTD/I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cvnewCzJKvuSVnwjhcgfNXfF7omEDSslwQSSz9PFiCwWPJ3uE4YeOw+uIZpN/mIzTuBfhtkvXlMZ1gfRGnHguj5gdi0XX1dlqrjHXsg2h1LjDHljPnzBdJt8h/3+CYdsGIUYo1r7/Mti/fwJozE8zuqUxYXNTRD84JDbBtxf0b4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=WC4DIUe0; arc=pass smtp.client-ip=94.100.133.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate106-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=5cd8tiR4oA2bomVQnghj6XdfSPPBJKKlunliO1VnFlM=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1762856012;
 b=KFF5gnxt6OIMFhvlGjzvTZhbWlITWWvDwYiFibrMn5u2PzGF1a4tm2rD1xQn2LR3XmSmZKTT
 anSghdxNx9B9IPit43QOh4FCAjYMvsFQd1XzgbWWik0Jhikenrag91d/+a1JhK2652YoMhVKXE8
 YN7Sc6IY9rP7sHto7nu0fljFoKn95UbuYzkyWiUrHao7//28ZKgFcOK4Zjm7xznv1AZjXeL4KCL
 KgBDXGc0dtVIscdh0wBsE1/474oT1gQFDm36o5DGeiT2LW2JeHs9hP4dulYC2lCz3tUQKhUg7TZ
 TNe1QtBWOLBw94WN1rgMR4bFShr1+JD4h/uiV83K2TzOQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1762856012;
 b=dXoyT54AC8seQs/CK8PZ6ZnyaXm9lQmG6kd/WYnvP/9DOyQhxm1S4Eu4ZKm8PT4SIKwdgDLU
 /r+5X/Dbiekuoyg4IX6qG+IzwqrnJZqET/Gx22v3UZ7Tr7u5d/BK0guOTHW5WZ0c9eiz0aUl4Po
 2A+0G1qJkRNJZJ2qsNvQzlXi+SfrCDE+mLTzuLgLKKcRSSlfe5MwvvhgQzNSx40pt5k5D1uG2Mj
 KRTa9XOi2Udv2cfX5fBL8zeuLzvA6GtxNWw7pv+FpfqL28wdbK/6CiJLlf3OOCV5oAso9rYfMUo
 iUfIpPnfgZcWaQmPO+IVY07ylBbmZefqJq1t9212WGq3w==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay106-hz1.antispameurope.com;
 Tue, 11 Nov 2025 11:13:32 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 3B9AC220C9E;
	Tue, 11 Nov 2025 11:13:26 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Nathan Chancellor <nathan@kernel.org>,
 Nicolas Schier <nsc@kernel.org>, linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
 Li Jun <jun.li@nxp.com>, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH 4/9] arm64: dts: imx8mm-evk: add wakeup-source for usb phy
Date: Tue, 11 Nov 2025 11:13:25 +0100
Message-ID: <2809731.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251110-misc_dts-v1-4-7564b9f69a18@nxp.com>
References:
 <20251110-misc_dts-v1-0-7564b9f69a18@nxp.com>
 <20251110-misc_dts-v1-4-7564b9f69a18@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay106-hz1.antispameurope.com with 108FA11C9E97
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:98cd9670ad177dc9a441365add1c322b
X-cloud-security:scantime:1.834
DKIM-Signature: a=rsa-sha256;
 bh=5cd8tiR4oA2bomVQnghj6XdfSPPBJKKlunliO1VnFlM=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1762856011; v=1;
 b=WC4DIUe0R9hm+GtRE3pTAFhV1AbTGoD1xfm14F9ACFNbcAGlcPFqbOF75nvlMewUOMkKj1vl
 zQvLFSIZWmt4v3nyDAIoyVnQ9wGQXL4O3W9RdCheResYpQjPJ+3/QJnlaKbEk3rgvzbCRiXLDaf
 Vh/FgCawheWZcOYEYO9IB+KXqw513c7qdmTVUpTd0JZ+wTRAEzX+Bz7zv0JFCj4hVpKmzXcPjuc
 SeLAKlLpZN3qUGkMvm3iG+8xL6wbefURdEH+jnDTdCs5i0HiJ7AVlRgoR30rsAMEooHFHjynnJI
 ZI2h+m4JwssWNYKtHU+XaEi8ixeODe9XMhfC8qyEVeDJw==

Am Montag, 10. November 2025, 21:54:44 CET schrieb Frank Li:
> From: Li Jun <jun.li@nxp.com>
>=20
> USB phy can be wakeup source to support wakeup system from USB.
>=20
> Signed-off-by: Li Jun <jun.li@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Typo in subject: Just imx8mm. Remove the '-evk'

Best regards,
Alexander

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mm.dtsi
> index ed8b4843acb4804379ba025e83a63fe962c2937e..dfff164db827e80ef8822ae33=
0fa604d1642f6f9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -274,6 +274,7 @@ usbphynop1: usbphynop1 {
>  		assigned-clock-parents =3D <&clk IMX8MM_SYS_PLL1_100M>;
>  		clock-names =3D "main_clk";
>  		power-domains =3D <&pgc_otg1>;
> +		wakeup-source;
>  	};
> =20
>  	usbphynop2: usbphynop2 {
> @@ -284,6 +285,7 @@ usbphynop2: usbphynop2 {
>  		assigned-clock-parents =3D <&clk IMX8MM_SYS_PLL1_100M>;
>  		clock-names =3D "main_clk";
>  		power-domains =3D <&pgc_otg2>;
> +		wakeup-source;
>  	};
> =20
>  	soc: soc@0 {
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



