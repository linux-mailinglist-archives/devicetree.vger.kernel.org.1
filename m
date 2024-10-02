Return-Path: <devicetree+bounces-107019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C4298CB65
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 05:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D28651F2138D
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 03:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBD8D2FB;
	Wed,  2 Oct 2024 03:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Qwz0DwBP"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD6410A1F;
	Wed,  2 Oct 2024 03:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727838587; cv=none; b=M8EqLPuZN3CwI0L+pbWC9n5ZqL7j2MX2wK1DSpQjEcm7F2Q1YFTsnIQkEA/oVg+/liSn1ZzMrIScjFDPZq1b+NJhPRv65Ab1GkYYyHxs+ws9kEcQlBffzze/R8JYR52wQvteHa4breUf+Q0ypM8R7tF+eBAo/mqzZ0G2Kf6SlH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727838587; c=relaxed/simple;
	bh=RKFBDqMQiDlV7E+0VhUxoImC0jPlSzUd2tNEQ7rnRqI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tz1GOWaB1PH1RNNVbXXJ8HGheBgCnFLaMRCkT+qYa6I6RhPMqbCPzNT9Rd6sh9wlQLYmM1wHLRNA0x4LF7mx5kahaoaTNc4qMKUFGDENyDi2bA34kRwXDRC85xUlfZDSCm+dS/d+QGPecgLEmJIAU3S3p4R3+zTzOAo0chjbEBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Qwz0DwBP; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1727838584;
	bh=InGTpWHbOeAgyPf0G10q9qzihIDIAq+ryf64rAtaskE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Qwz0DwBP94tjUfcFxExW3GWLoGucll7ZcDUpFV6oFiGxBX3xhvnu99bi+WZGgvsJ5
	 tBan8RhNNsVXOgQK/Djbyh8T/GlTBNFg1XlwNOhT5JApHuov1EyHbDT2a53HSAGqpo
	 CPVm3hRHEBY8UEiEs8KHB/c1x6IqaL1gQUR2QLiGkiJGLGrNNVqMwqWysW/Zj71K6o
	 X9ENhviqAqXFE6EokFRurMUiks+iz2dQCDePfVMguL5XJERtgoZQC9DI5P1/s7dVwK
	 HLhnnWCfa33aOALrFaF7ORhe/obI/IyPcYhgiQ3U8mg1u4oMaz12EFiDVjktdPE6VM
	 IEwe8TczJZVKA==
Received: from [192.168.68.112] (ppp118-210-73-17.adl-adc-lon-bras32.tpg.internode.on.net [118.210.73.17])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 574D164BDC;
	Wed,  2 Oct 2024 11:09:43 +0800 (AWST)
Message-ID: <65b8ae466fd2d285d3bf5c73c9a38ed6c73ef0a8.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: nuvoton: Add OHCI node
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "William A. Kennington III" <william@wkennington.com>, Tomer Maimon
	 <tmaimon77@gmail.com>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, "William A. Kennington III" <wak@google.com>
Date: Wed, 02 Oct 2024 12:39:42 +0930
In-Reply-To: <20240930214329.192587-1-william@wkennington.com>
References: <20240930214329.192587-1-william@wkennington.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi William,

On Mon, 2024-09-30 at 14:43 -0700, William A. Kennington III wrote:
> From: "William A. Kennington III" <wak@google.com>
>=20
> The EHCI peripheral already exists in the devicetree, but the hardware
> also supports a discrete OHCI unit on the same USB PHY. Generic OHCI
> works fine for this device already and has been tested on real hardware.
>=20
> Signed-off-by: William A. Kennington III <wak@google.com>
> ---
>  arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch=
/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
> index 358b52894ac0..5aeb5009a5d7 100644
> --- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
> +++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
> @@ -142,6 +142,13 @@ gmac0: eth@f0802000 {
>  			status =3D "disabled";
>  		};
> =20
> +		ohci1: ohci@f0807000 {

I got an additional warning here too:

+/home/andrew/src/kernel.org/linux/origin/build.multi_v5/arch/arm/boot/dts/=
nuvoton/nuvoton-npcm750-evb.dtb: ohci@f0807000: $nodename:0: 'ohci@f0807000=
' does not match '^usb(@.*)?'
+       from schema $id: http://devicetree.org/schemas/usb/generic-ohci.yam=
l#

Andrew

> +			compatible =3D "generic-ohci";
> +			reg =3D <0xf0807000 0x1000>;
> +			interrupts =3D <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +			status =3D "disabled";
> +		};
> +
>  		ehci1: usb@f0806000 {
>  			compatible =3D "nuvoton,npcm750-ehci";
>  			reg =3D <0xf0806000 0x1000>;


