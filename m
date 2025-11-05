Return-Path: <devicetree+bounces-235238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 34253C35EF8
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 14:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1B8884EEE31
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 13:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5DD31D370;
	Wed,  5 Nov 2025 13:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Eeancsvt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325E03128C2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 13:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762350909; cv=pass; b=HZm1DpgLfpOTp1Letumv9B6/QOngz3sJVZNrUhN2UP+5C80yKh0c4UklXQ4XjWAN4EQNQFVZeXc57/KNwS8/ld7XYNY2W8ckmTgeWf33De2v18BEpACGIFMDq5w6CLrIGwuFBkiTVXUngbE9XyMoDw1ZjrflQMLfB7fwG9vZwNQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762350909; c=relaxed/simple;
	bh=sPbTPFhkg1P4tHw5a7lZTOH+EaxQhdTi/hfhik1Xkag=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YljQ1SjUa1tcrFHNUzSgwP6hWGJkCYp9DQ4dGNwFN7nCXu5d+EQdBr8gwwyXIvrIRI9qvYCx3oiiXkUeBpS4Aw5v1araAK1RfCDs9VlC4da7Ab+0GNRWAv+2gAkUmBtrdGa+B8CJOuC1sUwpNmcH/aGRLSWfYoSmQhkszE7H7is=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Eeancsvt; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=yFtiMDOoeh/HekdFMijc4CHEieKebU/Qqg67yLRppnQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1762350879;
 b=hrUA9MW8ocWHLuvyzpyD5OuRPBPZi7b4jNW8QiYId+sHaUktonfhCfimdWzofcoBLKxmyCsH
 iYy2ReGB/Meoxan0H72CkyA8buz9gM0hyh6FphyOxy9hKG4elOURY2ElUlg3/TL7TJ70PnHO0XT
 Rn7AeeGLajqL25eDAUYSWWR69kjHRJ+UNJUW/UE9EtcJhVt/b+SOljfA1h+gkVEOlBIOq3alMHu
 O5YkgoZWQ5k9uSRU3dkK0V1VT4W1+XgOAh0i5/RbQFCSmgRPmtrKXTLIE9mTDs8vqOXrev6gELV
 67lggkT8KY9bmlYuEXRE6DMihAr4xcEUcfuBu+pLAhvdw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1762350879;
 b=W8YndogYXwac1eiUIs3ZVhgJke79Nmxx5iFCLZbmoRrgWiOf0eei6VTpbGXz1/11B5TaIpV4
 H38BRfpCuuSl/dfoLiExSC5/3Jxtv5BLME7gAIwT6QlVZcXdtWVXQ+joLkVIF9DSoMPuJ5C2QWB
 ajczuHBmuIzosom+5xF8PnIVg7ghWPICqjldQHqwkjanVIsIG1xqjVfEFz1CKvfoFfI6ny8s+S2
 yUvAMoA61MFowrcg8hWLXaIm3pFvNKouXGmDGXga+TlY2WSJbQ7eS7iSBkjf4THgEIt9Ga1rQzt
 fPlaSVusgySp9QTWCWQ65lTMB+UZ2SPiBgrX2Tuh5J+cA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Wed, 05 Nov 2025 14:54:39 +0100
Received: from [192.168.153.128] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id B6DFBCC0E8A;
	Wed,  5 Nov 2025 14:54:31 +0100 (CET)
Message-ID: <1931ce21959846272e3adf4487597286616baba4.camel@ew.tq-group.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-*: Replace rgmii-rxid with rgmii-id
 for CPSW ports
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Siddharth Vadapalli <s-vadapalli@ti.com>, nm@ti.com, vigneshr@ti.com, 
	kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, srk@ti.com, linux@ew.tq-group.com
Date: Wed, 05 Nov 2025 14:54:31 +0100
In-Reply-To: <20251025073802.1790437-1-s-vadapalli@ti.com>
References: <20251025073802.1790437-1-s-vadapalli@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4d1myw2qmLz4MJLx
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:9adfe7759d99a9eb5707402ae1888998
X-cloud-security:scantime:2.572
DKIM-Signature: a=rsa-sha256;
 bh=yFtiMDOoeh/HekdFMijc4CHEieKebU/Qqg67yLRppnQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1762350878; v=1;
 b=EeancsvtXFX06l0QvDcSTAU/ZUNSaDaNwddA2KxefLfNcPWVDfhCDEgbJ39P+mma6yBxaXsG
 WxIskRuIa4kXHJ4sHfbhtMT7TjNs2IprcCK8v6S6xi56A7KwCZThT0fxV4JBTqgpx4kUuvsXPlJ
 OGBydCKSNDFBKBN9tl+8QIRsEINtK5X/PFX9UQybNexKeC+8zv+xilKchfIJX9KSeNuFHV9rMQc
 1H9KyeBdYGfJj3j0qG+x/VPaY2oCfukoqphSvE9Kf4dLD7RRR2ncZBR2TixkzIHektb3S+eNN1I
 eWb4uIM/VW8/FPYcX2/BTbhn+bqKxTLrieJsG3QjWwq1w==

On Sat, 2025-10-25 at 13:07 +0530, Siddharth Vadapalli wrote:
> The MAC Ports across all of the CPSW instances (CPSW2G, CPSW3G, CPSW5G an=
d
> CPSW9G) present in various K3 SoCs only support the 'RGMII-ID' mode. This
> correction has been implemented/enforced by the updates to:
> a) Device-Tree binding for CPSW [0]
> b) Driver for CPSW [1]
> c) Driver for CPSW MAC Port's GMII [2]
>=20
> To complete the transition from 'RGMII-RXID' to 'RGMII-ID', update the
> 'phy-mode' property for all CPSW ports by replacing 'rgmii-rxid' with
> 'rgmii-id'.
>=20
> [0]: commit 9b357ea52523 ("dt-bindings: net: ti: k3-am654-cpsw-nuss: upda=
te phy-mode in example")
> [1]: commit ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode f=
or fixed RGMII TX delay")
> [2]: commit a22d3b0d49d4 ("phy: ti: gmii-sel: Always write the RGMII ID s=
etting")
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>=20
> Hello,
>=20
> This patch is based on linux-next tagged next-20251024.
>=20
> Regards,
> Siddharth.

Tested-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com> # k3-am642=
-tqma64xxl-mbax4xxl


>=20
>  arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi          | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi           | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62-verdin-ivy.dtsi           | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi               | 2 +-
>  arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts           | 2 +-
>  arch/arm64/boot/dts/ti/k3-am625-sk-common.dtsi           | 3 +--
>  arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi         | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62a7-sk.dts                  | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62p-verdin-dev.dtsi          | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62p-verdin-ivy.dtsi          | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62p-verdin.dtsi              | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62p5-sk.dts                  | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am62x-phyboard-lyra.dtsi       | 2 +-
>  arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi           | 2 +-
>  arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi          | 2 +-
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts                  | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts                   | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts   | 2 +-
>  arch/arm64/boot/dts/ti/k3-am654-base-board.dts           | 2 +-
>  arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts           | 2 +-
>  arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts         | 2 +-
>  arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi          | 2 +-
>  arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts         | 2 +-
>  arch/arm64/boot/dts/ti/k3-am69-sk.dts                    | 2 +-
>  arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts    | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts       | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts    | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721e-evm-gesi-exp-board.dtso  | 8 ++++----
>  arch/arm64/boot/dts/ti/k3-j721e-sk.dts                   | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts   | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721s2-evm-gesi-exp-board.dtso | 2 +-
>  arch/arm64/boot/dts/ti/k3-j722s-evm.dts                  | 2 +-
>  arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi  | 4 ++--
>  33 files changed, 40 insertions(+), 41 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi b/arch/arm64=
/boot/dts/ti/k3-am62-phycore-som.dtsi
> index eeca643fedbe..985963774c00 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> @@ -214,7 +214,7 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy1>;
>  	bootph-all;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi b/arch/arm64/=
boot/dts/ti/k3-am62-verdin-dev.dtsi
> index 5c1284b802ad..3d1406acf680 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> @@ -74,7 +74,7 @@ &cpsw_port1 {
>  /* Verdin ETH_2_RGMII */
>  &cpsw_port2 {
>  	phy-handle =3D <&cpsw3g_phy1>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "okay";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-ivy.dtsi b/arch/arm64/=
boot/dts/ti/k3-am62-verdin-ivy.dtsi
> index 71c29eab0eee..844f59f772e1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-ivy.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-ivy.dtsi
> @@ -268,7 +268,7 @@ &cpsw_port1 {
>  /* Verdin ETH_2_RGMII */
>  &cpsw_port2 {
>  	phy-handle =3D <&cpsw3g_phy1>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "okay";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi b/arch/arm64/boot=
/dts/ti/k3-am62-verdin.dtsi
> index dc4b228a9fd7..2a7242a2fef8 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
> @@ -845,7 +845,7 @@ &cpsw3g {
>  /* Verdin ETH_1 (On-module PHY) */
>  &cpsw_port1 {
>  	phy-handle =3D <&cpsw3g_phy0>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "disabled";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/=
boot/dts/ti/k3-am625-beagleplay.dts
> index 7028d9835c4a..7b9ae467e95a 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> @@ -593,7 +593,7 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk-common.dtsi b/arch/arm64/=
boot/dts/ti/k3-am625-sk-common.dtsi
> index fe0b98e1d105..7eb9066bff82 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-sk-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am625-sk-common.dtsi
> @@ -215,8 +215,7 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port2 {
> -	/* PCB provides an internal delay of 2ns */
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy1>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi b/arch/arm6=
4/boot/dts/ti/k3-am62a-phycore-som.dtsi
> index b3d012a5a26a..b24a63feeab8 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-phycore-som.dtsi
> @@ -192,7 +192,7 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy1>;
>  	bootph-all;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dt=
s/ti/k3-am62a7-sk.dts
> index af591fe6ae4f..de850307912c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -731,7 +731,7 @@ &phy_gmii_sel {
> =20
>  &cpsw_port1 {
>  	status =3D "okay";
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	bootph-all;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-verdin-dev.dtsi b/arch/arm64=
/boot/dts/ti/k3-am62p-verdin-dev.dtsi
> index 0679d76f31bd..a0d5b15fc147 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-verdin-dev.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-verdin-dev.dtsi
> @@ -78,7 +78,7 @@ &cpsw_port1 {
>  /* Verdin ETH_2_RGMII */
>  &cpsw_port2 {
>  	phy-handle =3D <&carrier_eth_phy>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "okay";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-verdin-ivy.dtsi b/arch/arm64=
/boot/dts/ti/k3-am62p-verdin-ivy.dtsi
> index 317c8818f9ee..04f13edcb166 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-verdin-ivy.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-verdin-ivy.dtsi
> @@ -275,7 +275,7 @@ &cpsw_port1 {
>  /* Verdin ETH_2_RGMII */
>  &cpsw_port2 {
>  	phy-handle =3D <&carrier_eth_phy>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "okay";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-verdin.dtsi b/arch/arm64/boo=
t/dts/ti/k3-am62p-verdin.dtsi
> index 99810047614e..5e050cbb9eaf 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-verdin.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-verdin.dtsi
> @@ -813,7 +813,7 @@ som_eth_phy: ethernet-phy@0 {
>  /* Verdin ETH_1 (On-module PHY) */
>  &cpsw_port1 {
>  	phy-handle =3D <&som_eth_phy>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "disabled";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dt=
s/ti/k3-am62p5-sk.dts
> index a064a632680e..f04cf2d23d84 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> @@ -541,14 +541,14 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	status =3D "okay";
>  	bootph-all;
>  };
> =20
>  &cpsw_port2 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy1>;
>  	status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62x-phyboard-lyra.dtsi b/arch/ar=
m64/boot/dts/ti/k3-am62x-phyboard-lyra.dtsi
> index aab74d6019b0..d6e70ee15938 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62x-phyboard-lyra.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62x-phyboard-lyra.dtsi
> @@ -291,7 +291,7 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port2 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy3>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/=
boot/dts/ti/k3-am62x-sk-common.dtsi
> index 58f78c0de292..50ed859ae06c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> @@ -438,7 +438,7 @@ &cpsw3g {
> =20
>  &cpsw_port1 {
>  	bootph-all;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64=
/boot/dts/ti/k3-am64-phycore-som.dtsi
> index 02ef1dd92eaa..d64fb81b04e2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> @@ -178,7 +178,7 @@ cpsw3g_phy1: ethernet-phy@1 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy1>;
>  	bootph-all;
>  	status =3D "okay";
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dt=
s/ti/k3-am642-evm.dts
> index 85dcff104936..80c52e06b4ce 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> @@ -579,13 +579,13 @@ &cpsw3g {
> =20
>  &cpsw_port1 {
>  	bootph-all;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	status =3D "okay";
>  };
> =20
>  &cpsw_port2 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy3>;
>  	status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts=
/ti/k3-am642-sk.dts
> index 1fb1b91a1bad..34bfa99bd4b8 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> @@ -499,13 +499,13 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	status =3D "okay";
>  };
> =20
>  &cpsw_port2 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy1>;
>  	status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arc=
h/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
> index 8f64d6272b1b..e5f2f20fdb11 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
> @@ -185,7 +185,7 @@ &cpsw3g {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/=
boot/dts/ti/k3-am654-base-board.dts
> index 0c42c486d83a..961287b6a3ed 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -586,7 +586,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts b/arch/arm64/=
boot/dts/ti/k3-am67a-beagley-ai.dts
> index b697035df04e..5255e04b9ac7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
> @@ -249,7 +249,7 @@ cpsw3g_phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	status =3D "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts b/arch/arm6=
4/boot/dts/ti/k3-am68-phyboard-izar.dts
> index 41c8f8526e15..edc9f9b12f0e 100644
> --- a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
> @@ -281,7 +281,7 @@ J721S2_WKUP_IOPAD(0x04c, PIN_OUTPUT, 0) /* (D27) WKUP=
_UART0_TXD */
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi b/arch/arm64=
/boot/dts/ti/k3-am68-phycore-som.dtsi
> index adef02bd8040..911007778bc6 100644
> --- a/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am68-phycore-som.dtsi
> @@ -175,7 +175,7 @@ phy1: ethernet-phy@0 {
> =20
>  &main_cpsw_port1 {
>  	phy-handle =3D <&phy1>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	status =3D "okay";
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm6=
4/boot/dts/ti/k3-am68-sk-base-board.dts
> index 75a107456ce1..b8400cba832b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
> @@ -705,7 +705,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  	bootph-all;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/=
ti/k3-am69-sk.dts
> index 5896e57b5b9e..3a870b9b984d 100644
> --- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> @@ -771,7 +771,7 @@ mcu_phy0: ethernet-phy@0 {
> =20
>  &mcu_cpsw_port1 {
>  	status =3D "okay";
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&mcu_phy0>;
>  	bootph-all;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch=
/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
> index f684ce6ad9ad..4608828512d1 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
> @@ -334,7 +334,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/ar=
m64/boot/dts/ti/k3-j721e-beagleboneai64.dts
> index 352fb60e6ce8..2e9455ab0bfa 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
> @@ -677,7 +677,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch=
/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> index 45311438315f..317cd0bfa406 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> @@ -780,7 +780,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-evm-gesi-exp-board.dtso b/ar=
ch/arm64/boot/dts/ti/k3-j721e-evm-gesi-exp-board.dtso
> index f84aa9f94547..3bfe6036a8e6 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-evm-gesi-exp-board.dtso
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-evm-gesi-exp-board.dtso
> @@ -37,7 +37,7 @@ &rgmii3_default_pins
>  &cpsw0_port1 {
>  	status =3D "okay";
>  	phy-handle =3D <&cpsw9g_phy12>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	mac-address =3D [00 00 00 00 00 00];
>  	phys =3D <&cpsw0_phy_gmii_sel 1>;
>  };
> @@ -45,7 +45,7 @@ &cpsw0_port1 {
>  &cpsw0_port2 {
>  	status =3D "okay";
>  	phy-handle =3D <&cpsw9g_phy15>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	mac-address =3D [00 00 00 00 00 00];
>  	phys =3D <&cpsw0_phy_gmii_sel 2>;
>  };
> @@ -53,7 +53,7 @@ &cpsw0_port2 {
>  &cpsw0_port3 {
>  	status =3D "okay";
>  	phy-handle =3D <&cpsw9g_phy0>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	mac-address =3D [00 00 00 00 00 00];
>  	phys =3D <&cpsw0_phy_gmii_sel 3>;
>  };
> @@ -61,7 +61,7 @@ &cpsw0_port3 {
>  &cpsw0_port4 {
>  	status =3D "okay";
>  	phy-handle =3D <&cpsw9g_phy3>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	mac-address =3D [00 00 00 00 00 00];
>  	phys =3D <&cpsw0_phy_gmii_sel 4>;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts=
/ti/k3-j721e-sk.dts
> index 5e5784ef6f85..febbac9262de 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
> @@ -1045,7 +1045,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arc=
h/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> index 9e43dcff8ef2..24f57f02588f 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> @@ -469,7 +469,7 @@ phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&phy0>;
>  };
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-evm-gesi-exp-board.dtso b/a=
rch/arm64/boot/dts/ti/k3-j721s2-evm-gesi-exp-board.dtso
> index 8583178fa1f3..6869a95c6214 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-evm-gesi-exp-board.dtso
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-evm-gesi-exp-board.dtso
> @@ -80,6 +80,6 @@ main_cpsw_phy0: ethernet-phy@0 {
> =20
>  &main_cpsw_port1 {
>  	status =3D "okay";
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&main_cpsw_phy0>;
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dt=
s/ti/k3-j722s-evm.dts
> index e0e303da7e15..5e7767e45130 100644
> --- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> @@ -388,7 +388,7 @@ cpsw3g_phy0: ethernet-phy@0 {
>  };
> =20
>  &cpsw_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&cpsw3g_phy0>;
>  	status =3D "okay";
>  	bootph-all;
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi b/ar=
ch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
> index 419c1a70e028..4221f172779b 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi
> @@ -920,7 +920,7 @@ mcu_phy0: ethernet-phy@0 {
> =20
>  &mcu_cpsw_port1 {
>  	status =3D "okay";
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&mcu_phy0>;
>  };
> =20
> @@ -944,7 +944,7 @@ main_cpsw1_phy0: ethernet-phy@0 {
>  };
> =20
>  &main_cpsw1_port1 {
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&main_cpsw1_phy0>;
>  	status =3D "okay";
>  };

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

