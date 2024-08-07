Return-Path: <devicetree+bounces-91775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2570894A87A
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 15:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 574FE1C238A1
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 13:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AF81EA0A7;
	Wed,  7 Aug 2024 13:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="GBkyUEjM"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF291E7A52;
	Wed,  7 Aug 2024 13:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723036875; cv=none; b=S8tkZZVGSpNDV2np9KX1eZ7a6o24RztHcdSqBbzwVkH9QDySyofm+jMPGAnjMmatkcwzW+Ibl4cwXodRzoi+S6uEdGFRA4i9QILtKqe+p8JVfwKaIiqW81sq/TT7S+omMtpBhfwaPK4LyVvU2PBWEZNivmdnL723umbaDWenhjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723036875; c=relaxed/simple;
	bh=XCTFGHgapMh5jd5eDcay27eRnGXiyocL05vCYSo9sko=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GhpSD4a+RyscWNQWZQoSYnw/YPV7AfuBMLlsi4DXvwbKLhdGrOyj+FBhCIqUsrwzOeyK2cPuM1Gm+R+0prv3P8s1U9PAsRpzpM5eIZjTo50MjSTU3w/VX2i2+f2T/v4S3CSR+wnXaT3X6kyfAVqpwaek6id2y+QOkZCJmnokBIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=GBkyUEjM; arc=none smtp.client-ip=198.47.19.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 477DKsDq130105;
	Wed, 7 Aug 2024 08:20:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1723036854;
	bh=DeALqGHx0wajWlx4yd7By8JyvapwIo0wIDwjJD7Lorg=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=GBkyUEjMdbREe3CFdyUt9wBLNVBkb4saekleA8fn8rgZUlngMfoxt9yoJWZjMV81n
	 VKRhstnk1U9ysnZGWHz7p1YnFUKBq+wT65L65WUuEzw87yyg2ZZw6sshOxaDJXxEuE
	 0TU1hRUsujMmX/bNUOZs7a+JEsHnAG/LqoFjs10w=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 477DKsql002179
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 7 Aug 2024 08:20:54 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 7
 Aug 2024 08:20:54 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 7 Aug 2024 08:20:54 -0500
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 477DKsrE119250;
	Wed, 7 Aug 2024 08:20:54 -0500
Date: Wed, 7 Aug 2024 08:20:54 -0500
From: Nishanth Menon <nm@ti.com>
To: Manorit Chawdhry <m-chawdhry@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Udit Kumar
	<u-kumar1@ti.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Aniket Limaye
	<a-limaye@ti.com>
Subject: Re: [PATCH v3 4/9] arm64: dts: ti: Split
 k3-j784s4-j742s2-main-common.dtsi
Message-ID: <20240807132054.jcz5fdokc5yk3mbo@entrust>
References: <20240731-b4-upstream-j742s2-v3-0-da7fe3aa9e90@ti.com>
 <20240731-b4-upstream-j742s2-v3-4-da7fe3aa9e90@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240731-b4-upstream-j742s2-v3-4-da7fe3aa9e90@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 22:40-20240731, Manorit Chawdhry wrote:
> k3-j784s4-j742s2-main-common.dtsi will be included in k3-j742s2-main.dtsi at a
> later point so move j784s4 related stuff to k3-j784s4-main.dtsi
> 
> Signed-off-by: Manorit Chawdhry <m-chawdhry@ti.com>
> ---
>  .../boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi   | 13 -------------
>  arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi          | 21 +++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j784s4.dtsi               |  2 ++
>  3 files changed, 23 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index 17abd0f1560a..91352b1f63d2 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -2405,19 +2405,6 @@ c71_2: dsp@66800000 {
>  		status = "disabled";
>  	};
>  
> -	c71_3: dsp@67800000 {
> -		compatible = "ti,j721s2-c71-dsp";
> -		reg = <0x00 0x67800000 0x00 0x00080000>,
> -		      <0x00 0x67e00000 0x00 0x0000c000>;
> -		reg-names = "l2sram", "l1dram";
> -		ti,sci = <&sms>;
> -		ti,sci-dev-id = <40>;
> -		ti,sci-proc-ids = <0x33 0xff>;
> -		resets = <&k3_reset 40 1>;
> -		firmware-name = "j784s4-c71_3-fw";
> -		status = "disabled";
> -	};
> -

This patch can be squashed in.

>  	main_esm: esm@700000 {
>  		compatible = "ti,j721e-esm";
>  		reg = <0x00 0x700000 0x00 0x1000>;
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> new file mode 100644
> index 000000000000..2ea470d1206d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
> +/*
> + * Device Tree Source for J784S4 SoC Family Main Domain peripherals
> + *
> + * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +&cbass_main {
> +	c71_3: dsp@67800000 {
> +		compatible = "ti,j721s2-c71-dsp";
> +		reg = <0x00 0x67800000 0x00 0x00080000>,
> +		      <0x00 0x67e00000 0x00 0x0000c000>;
> +		reg-names = "l2sram", "l1dram";
> +		ti,sci = <&sms>;
> +		ti,sci-dev-id = <40>;
> +		ti,sci-proc-ids = <0x33 0xff>;
> +		resets = <&k3_reset 40 1>;
> +		firmware-name = "j784s4-c71_3-fw";
> +		status = "disabled";
> +	};
> +};

I am looking at https://www.ti.com/lit/ug/spruje3/spruje3.pdf (page 26),
Device Comparison:

CPSW/Serdes, PCIE is also different? Was that missed?

> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4.dtsi
> index 16ade4fd9cbd..f5afa32157cb 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4.dtsi
> @@ -168,3 +168,5 @@ cpu7: cpu@103 {
>  		};
>  	};
>  };
> +
> +#include "k3-j784s4-main.dtsi"
> 
> -- 
> 2.45.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

