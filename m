Return-Path: <devicetree+bounces-20749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A10800C42
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 14:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECF54B210EE
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC9B374FD;
	Fri,  1 Dec 2023 13:33:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D851A6;
	Fri,  1 Dec 2023 05:33:24 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id CCFA524E269;
	Fri,  1 Dec 2023 21:33:21 +0800 (CST)
Received: from EXMBX167.cuchost.com (172.16.6.77) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 1 Dec
 2023 21:33:21 +0800
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX167.cuchost.com
 (172.16.6.77) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 1 Dec
 2023 21:33:21 +0800
Received: from EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f]) by
 EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f%17]) with mapi id
 15.00.1497.044; Fri, 1 Dec 2023 21:33:21 +0800
From: JeeHeng Sia <jeeheng.sia@starfivetech.com>
To: Conor Dooley <conor@kernel.org>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>
CC: Conor Dooley <conor.dooley@microchip.com>, Emil Renner Berthing
	<kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Walker Chen
	<walker.chen@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>
Subject: RE: [PATCH v1] riscv: dts: starfive: move timebase-frequency to .dtsi
Thread-Topic: [PATCH v1] riscv: dts: starfive: move timebase-frequency to
 .dtsi
Thread-Index: AQHaI6gRxG1b5YxtoUOShnBrfnkFMrCUbWfw
Date: Fri, 1 Dec 2023 13:33:21 +0000
Message-ID: <d40dcd7a1ee247c3821c4186497ed3d4@EXMBX066.cuchost.com>
References: <20231130-bobbing-valid-b97f26fe8edc@spud>
In-Reply-To: <20231130-bobbing-valid-b97f26fe8edc@spud>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-yovoleruleagent: yovoleflag
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0



> -----Original Message-----
> From: Conor Dooley <conor@kernel.org>
> Sent: Friday, December 1, 2023 12:11 AM
> To: linux-riscv@lists.infradead.org
> Cc: conor@kernel.org; Conor Dooley <conor.dooley@microchip.com>; Emil Ren=
ner Berthing <kernel@esmil.dk>; Rob Herring
> <robh+dt@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.=
org>; Paul Walmsley <paul.walmsley@sifive.com>;
> Palmer Dabbelt <palmer@dabbelt.com>; devicetree@vger.kernel.org; linux-ke=
rnel@vger.kernel.org; Walker Chen
> <walker.chen@starfivetech.com>; JeeHeng Sia <jeeheng.sia@starfivetech.com=
>; Leyfoon Tan <leyfoon.tan@starfivetech.com>
> Subject: [PATCH v1] riscv: dts: starfive: move timebase-frequency to .dts=
i
>=20
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> Properties fixed by the SoC should be defined in the $soc.dtsi, and the
> timebase-frequency is not sourced directly from an off-chip oscillator.
>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> I actually have no idea whether this is true or not, I asked on the
> jh8100 series but only got an answer for that SoC and not the existing
> ones. I'm hoping that a patch envokes more of a reaction!
I believe it is controlled by the internal clock, but I will let Walker
have the final say.
>=20
> CC: Emil Renner Berthing <kernel@esmil.dk>
> CC: Conor Dooley <conor@kernel.org>
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> CC: Walker Chen <walker.chen@starfivetech.com>
> CC: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> CC: Leyfoon Tan <leyfoon.tan@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7100-common.dtsi               | 4 ----
>  arch/riscv/boot/dts/starfive/jh7100.dtsi                      | 1 +
>  .../riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 4 ----
>  arch/riscv/boot/dts/starfive/jh7110.dtsi                      | 1 +
>  4 files changed, 2 insertions(+), 8 deletions(-)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv=
/boot/dts/starfive/jh7100-common.dtsi
> index b93ce351a90f..214f27083d7b 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> @@ -19,10 +19,6 @@ chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
>=20
> -	cpus {
> -		timebase-frequency =3D <6250000>;
> -	};
> -
>  	memory@80000000 {
>  		device_type =3D "memory";
>  		reg =3D <0x0 0x80000000 0x2 0x0>;
> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7100.dtsi
> index e68cafe7545f..c50b32424721 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> @@ -16,6 +16,7 @@ / {
>  	cpus {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> +		timebase-frequency =3D <6250000>;
>=20
>  		U74_0: cpu@0 {
>  			compatible =3D "sifive,u74-mc", "riscv";
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dt=
si b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-
> 2.dtsi
> index b89e9791efa7..7873c7ffde4d 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -26,10 +26,6 @@ chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
>=20
> -	cpus {
> -		timebase-frequency =3D <4000000>;
> -	};
> -
>  	memory@40000000 {
>  		device_type =3D "memory";
>  		reg =3D <0x0 0x40000000 0x1 0x0>;
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7110.dtsi
> index 45213cdf50dc..ee7d4bb1f537 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -18,6 +18,7 @@ / {
>  	cpus {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> +		timebase-frequency =3D <4000000>;
>=20
>  		S7_0: cpu@0 {
>  			compatible =3D "sifive,s7", "riscv";
> --
> 2.39.2


