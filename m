Return-Path: <devicetree+bounces-136474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 935DEA05522
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:19:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD3493A3E24
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2C91AA1FA;
	Wed,  8 Jan 2025 08:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Etj9eUPu"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DF32594B3;
	Wed,  8 Jan 2025 08:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736324349; cv=none; b=CVF3w1EZ80w6lChGRf0Hvq0yueZmW2bfE7sr0HHkYY5399GnFYuogdUYUlrKeUocLGRryVHcFTaLoDN59rm7sRdD6ghIC7ncPGnxurTsz0uJeTGiCD54JEEw0vWvz8Wh45e3ltDz3vDKywA1RHpiJH/7OQShWfwA6poj+eQ/IhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736324349; c=relaxed/simple;
	bh=ZRB0FhMUfFUYdAhPULWjcZuUz1DaECOTZZh1zJtfv3A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CBbQgJgJFh9lLX9DhvyFoIB9+/xfndSFIJx25f41RxPZNK8THlcEoqBYBdQWIHWx8rwq0kcsZj/ixy1zH9O/Fqqjc+sBKr/r+RDC1mwPtBIk/iBBqmPRCbT8v0gYkofEcpoBlYlf9f1P8tsHkwzP5VRSuRs57V0pbmwhdg6uaIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Etj9eUPu; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 59B52C0004;
	Wed,  8 Jan 2025 08:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736324339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m6iG3dvDjNjTNtk0IMyCf+/wWXsMSA8Fz5H1e91qnKU=;
	b=Etj9eUPuKvWQW+jtgmXty90yegxXd/DTNdnvN0CXinHbIxtERael7Ypambb4J2H4HiCN2T
	EOnzD4J/Q1kSseqJxP41+WhiK2XZeRz+qqbu9QhmCEchYi9fntmgctQbe9CRdAnv66LFDW
	LAxit1aWNa/h0Vdav5dgzXb9fevekH/mkz6Gw3q8awNqPxLOedRQ5mDX4M2fCPBkFRuGOt
	Tju9v0Npzdq44ytLx8YAnfXtxCYQZGgbWwYaI0Ln+PGU4057RyiVWIV08KF+1E3eF0WjEm
	rpVOwnhVEd7/bmfQ+sJgHdTJYo52MxwBVkMB7NeTRCMOBeYDTF4KZjGl1IugGw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH] arm64: dts: marvell: cn9131-cf-solidwan: fix cp1 comphy
 links
In-Reply-To: <20241119-cn9131-solidwan-comphy-fixup-v1-1-6e7446434204@solid-run.com>
References: <20241119-cn9131-solidwan-comphy-fixup-v1-1-6e7446434204@solid-run.com>
Date: Wed, 08 Jan 2025 09:18:58 +0100
Message-ID: <87o70hyaz1.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com

Josua Mayer <josua@solid-run.com> writes:

> Marvell CN913x platforms use common phy framework for configuring and
> linking serdes lanes according to their usage.
> Each CP (X) features 5 serdes lanes (Y) represented by cpX_comphyY
> nodes.
>
> CN9131 SolidWAN uses CP1 serdes lanes 3 and 5 for eth1 and eth2 of CP1
> respectively. Devicetree however wrongly links from these ports to the
> comphy of CP0.
>
> Replace the wrong links to cp0_comphy with cp1_comphy inside cp1_eth1,
> cp1_eth2.
>
> Fixes: 1280840d2030 ("arm64: dts: add description for solidrun cn9131 sol=
idwan board")
> Signed-off-by: Josua Mayer <josua@solid-run.com>


Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts b/arch/ar=
m64/boot/dts/marvell/cn9131-cf-solidwan.dts
> index b1ea7dcaed17dc0205d1ae91d4178dd1f8313a5b..47234d0858dd2195bb1485f25=
768ad3c757b7ac2 100644
> --- a/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
> +++ b/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
> @@ -435,7 +435,7 @@ &cp1_eth1 {
>  	managed =3D "in-band-status";
>  	phy-mode =3D "sgmii";
>  	phy =3D <&cp1_phy0>;
> -	phys =3D <&cp0_comphy3 1>;
> +	phys =3D <&cp1_comphy3 1>;
>  	status =3D "okay";
>  };
>=20=20
> @@ -444,7 +444,7 @@ &cp1_eth2 {
>  	managed =3D "in-band-status";
>  	phy-mode =3D "sgmii";
>  	phy =3D <&cp1_phy1>;
> -	phys =3D <&cp0_comphy5 2>;
> +	phys =3D <&cp1_comphy5 2>;
>  	status =3D "okay";
>  };
>=20=20
>
> ---
> base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
> change-id: 20241119-cn9131-solidwan-comphy-fixup-aa1870913d0a
>
> Best regards,
> --=20
> Josua Mayer <josua@solid-run.com>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

