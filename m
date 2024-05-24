Return-Path: <devicetree+bounces-69063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9958CEA0F
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 20:54:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED8FA282A09
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 18:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0DC640848;
	Fri, 24 May 2024 18:54:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F29393EA64
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 18:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716576891; cv=none; b=up6ahe6r8SCByAOwjbQ3hYuyGhgR48w/MCuFrPiQiCLL4ezT+yP4lgFy/6xHu8xxHijk/2+/+4ucwgjj1iwMvzI0mVXjs03Sr5W1uYc4nF5oVxHhwPuV0QJQjqCZmbXrLvi4a+zP726ciYXxB1oapbV5QzdnU3CtVdLEbXNLPRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716576891; c=relaxed/simple;
	bh=qn6Vkvzj5JGs44Cc6xvsUt9I7gZyNx3518aH165iGSw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JaXtKgac42gWPQTHHDOgBXk3YOMikCu7y9x+Mp54HEtV7B+Yf4V04yKh8Ipj2FKUyIysOcQfLRT2bD7eq3X3qc4GzEx/iY1Bb7USKGa5oRZXfsO0HSMKrP2zxgGRff36X9ICVe0UEX75GQS46lYlyp0/syvW6Y+wlVW6SVtD0tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A140339;
	Fri, 24 May 2024 11:55:11 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A395F3F762;
	Fri, 24 May 2024 11:54:45 -0700 (PDT)
Date: Fri, 24 May 2024 19:52:36 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: allwinner: convert NanoPi R1S H5 NVMEM
 content to layout syntax
Message-ID: <20240524195236.289b4e8f@minigeek.lan>
In-Reply-To: <20240524125617.27714-1-zajec5@gmail.com>
References: <20240524125617.27714-1-zajec5@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 24 May 2024 14:56:17 +0200
Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> wrote:

Hi Rafa=C5=82,

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Use cleaner (and non-deprecated) bindings syntax. See commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> details.

Is there anything that this commit fixes, or is it just "nicer"?
If I see this correctly, then this commit would break with older
kernels, or more precisely anything that doesn't support the
"fixed-layout" compatible string, right?
For sunxi we try to keep the DTs compatible both ways, so that the
latest DT (as imported in U-Boot, for instance), can run with both
older stable and the newest kernels.

Cheers,
Andre

> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  .../boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts   | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts b/=
arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts
> index 3a7ee44708a2..36e46e40b8f8 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts
> @@ -146,11 +146,15 @@ eeprom@51 {
>  		reg =3D <0x51>;
>  		pagesize =3D <16>;
>  		read-only;
> -		#address-cells =3D <1>;
> -		#size-cells =3D <1>;
> =20
> -		eth_mac1: mac-address@fa {
> -			reg =3D <0xfa 0x06>;
> +		nvmem-layout {
> +			compatible =3D "fixed-layout";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			eth_mac1: mac-address@fa {
> +				reg =3D <0xfa 0x06>;
> +			};
>  		};
>  	};
>  };


