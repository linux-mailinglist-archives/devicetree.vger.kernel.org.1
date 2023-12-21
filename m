Return-Path: <devicetree+bounces-27695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D990781B5BA
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 13:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09B331C22727
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 12:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13CE29D08;
	Thu, 21 Dec 2023 12:24:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 7.mo560.mail-out.ovh.net (7.mo560.mail-out.ovh.net [188.165.48.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB07A6E59D
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 12:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=armadeus.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=armadeus.com
Received: from director3.ghost.mail-out.ovh.net (unknown [10.108.25.166])
	by mo560.mail-out.ovh.net (Postfix) with ESMTP id 05A8A2CABB
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 09:57:01 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-kb6cz (unknown [10.110.96.141])
	by director3.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 76DA11FEC5;
	Thu, 21 Dec 2023 09:57:00 +0000 (UTC)
Received: from armadeus.com ([37.59.142.96])
	by ghost-submission-6684bf9d7b-kb6cz with ESMTPSA
	id HM+7GuwLhGVrVgAAYbTcKg
	(envelope-from <sebastien.szymanski@armadeus.com>); Thu, 21 Dec 2023 09:57:00 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-96R001fb6aeb4d-ccf5-442c-9a46-86cfb192a75b,
                    D7AFBC180D16AB5EE42D7186CB84D8D3741D0479) smtp.auth=sebastien.szymanski@armadeus.com
X-OVh-ClientIp:90.11.246.213
Message-ID: <bf76aa11-7005-4bf8-836b-fce616afcdf4@armadeus.com>
Date: Thu, 21 Dec 2023 10:56:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 2/2] ARM: dts: mxs: imx28: Fix NAND hierarchy
 description
Content-Language: en-US
To: Stefan Wahren <wahrenst@gmx.net>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Han Xu <han.xu@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Marek Vasut <marex@denx.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, linux-imx@nxp.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231218130656.9020-1-wahrenst@gmx.net>
 <20231218130656.9020-2-wahrenst@gmx.net>
From: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Autocrypt: addr=sebastien.szymanski@armadeus.com; keydata=
 xsBNBFNfZLEBCACv1lqSePHJNpRgcnER+3emy+Arjz84zFax3XkogjY/e3ZneihIgWrVKe5M
 ql16pX4KTkzNgMUKz4bG/XwT3kjcrXshxFLlg7KrHMl287C+W+QOUjnjVeRi/su+SPmjz8VD
 yr11h+ZkVLAWhS+uQJ93jy1NwG8M4t1kBLAVHHD5Vw4FJ+3ouaVYIp1X1Cr8bVKQw33Q1aTd
 ro0kMBb96B9vNu7ciJZ3gvlaBzUEKOgNnq9KaywuLnqrqr4HUIn5JuxZjCjJzt9kTAKcTfp2
 cJM8qpp+2FF5qtbkse9fZ6M64qozgOPr9Tk4Amf9fZEUQ6UNw14mmBZuXSzoHe75gI7TABEB
 AAHNN1PDqWJhc3RpZW4gU1pZTUFOU0tJIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVz
 LmNvbT7CwJAEEwEIADoCGyMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgBYhBJwGygpYm/1C
 /GCmwbCaKeiBMmTiBQJdhIHLAAoJELCaKeiBMmTixXIH/2W3kbzRG0UF81jtRRnp0H83rjDT
 v0H+8fgFMRL/7HCJ1QPArkfRJlM2wlJkN+ChP09CCarYfUEHfRCHlTb7At6Yyrz1jziD7ZwX
 8IWHYRXnZkY5eZc5DsiUgq6JH49kt+GPzK8UVP9MTa6zkBpPCUf7LzZ4pD3FihdkT52BU3gI
 d9P49fSI0TYySlb/VKn815aOhvwEr7+Dh3mZUjSh7saofbRmVUOr7p+R3MvvGI19/IJZjeOE
 ZWliODDOt6HnBOtoGSXMcNIFF6snH52D5N5gY88njZjTwhgGGUBix1bsgf/EY0v4R5itZBXB
 B/Ze4Tm++YHaB75hZK6PQu/YRv7OwE0EU19ksQEIALo7jhXddrXBTRu5SAjelV53jyHBJTX/
 vN4nL/VbbW/saca+NJjDSxx5DBmotZbQdWIyZiSIjU/xnTREvtDrl6ZeSsKWd7ZqiuiY4fSR
 zwuQp9rd0yqRuxesrWeyJB1zCSdEvLyKASERt+nxkOA+IzJ4y1qLtvnWr+SL1AXgTMw+Tkyw
 KIDCRWHTIYas11ldGj82gOIpYeXnapeNLHfT4EQwg0NeWYHynJxAQWiX5aPlw0uSpAQSsBXQ
 FIe3fpoveMSnXK+PG2BBOzexYv7r4S70a6sF9sgTTPpfKqUaqqC+u1+bUX6alTAKhGKJywaF
 6ViqLlgY8PfwohSyAlqlTRMAEQEAAcLAdgQYAQgAIAIbDBYhBJwGygpYm/1C/GCmwbCaKeiB
 MmTiBQJdhIHSAAoJELCaKeiBMmTitU8IAK7NQM3fEwaF5XaKtepYWsVka44CD8A9e4r7NVK9
 ugirKvXirIxBSDmN/Db862NmVpITsZ6ERNSNZLm/7k55N+TexKYiFZeU7G92TEfAM6qPElvx
 DLEcrkNMq9r08YZeUloacsq31AL5fK4LW+xdvXudkdiKRMJsdTpmff3x5kIziGOHjwFP9wve
 ZgEH52gpbRsP8Whx/Z2lNX/BBRmFM8OnEXFsjjqDzYThdxTq85wGPpkgvvUGyPNRD7TpbB1C
 pajOUUkPxgj5LKt77HD1afeZNudWhgcdkbtT5PMQTT0WY6wvMEj9S1+bGPeXRGWLYB7gHQ+L
 JNoSD7Kz6Y9qnKo=
In-Reply-To: <20231218130656.9020-2-wahrenst@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 859343106113334040
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvkedrvddugedguddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefurogsrghsthhivghnucfuiiihmhgrnhhskhhiuceoshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmqeenucggtffrrghtthgvrhhnpedtgeehtdduledtudevveekveevveefffdthedtieekgeeukeevtdffieegteekhfenucfkphepuddvjedrtddrtddruddpledtrdduuddrvdegiedrvddufedpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeoshgvsggrshhtihgvnhdrshiihihmrghnshhkihesrghrmhgruggvuhhsrdgtohhmqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheeitddpmhhouggvpehsmhhtphhouhht

Hello Stefan,

On 12/18/23 14:06, Stefan Wahren wrote:
> The size-cells for GPMI are wrong in imx28.dtsi, which causes the
> following warning:
> 
>      nand-controller@8000c000: #size-cells:0:0: 0 was expected
> 
> The reason for this is the definition of the partitions directly
> below the nand controller node. According to nand-controller.yaml
> the NAND chip must be defined as a child of the controller. Even
> the fixed partitions must be kept in a partitions container.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
> 
> Hi,
> unfortunately i don't have access to MSR M28CU3 or an Armadeus Systems APF28
> so it would be nice if someone can give a try.

I have tried this patch on an APF28. Unfortunately it doesn't work:

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 6.7.0-rc6 (sszy@gentoo) 
(arm-buildroot-linux-gnueabi-gcc.br_real (Buildroot 
armadeus-7.0-387-g06d2e893315e-dirty) 12.3.0, GNU ld (GNU Binutils) 
2.40) #1 Thu Dec 21 10:24:41 CET 2023

...

[    4.224482] nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xda
[    4.231238] nand: Micron MT29F2G08ABAEAWP
[    4.235399] nand: 256 MiB, SLC, erase size: 128 KiB, page size: 2048, 
OOB size: 64
[    4.245851] Scanning device for bad blocks
[    4.252904] Bad eraseblock 0 at 0x000000000000
[    4.257842] Bad eraseblock 1 at 0x000000020000
[    4.262972] Bad eraseblock 2 at 0x000000040000
[    4.267886] Bad eraseblock 3 at 0x000000060000
[    4.272994] Bad eraseblock 4 at 0x000000080000
[    4.277900] Bad eraseblock 5 at 0x0000000a0000
[    4.283007] Bad eraseblock 6 at 0x0000000c0000
[    4.287916] Bad eraseblock 7 at 0x0000000e0000
[    5.443712] gpmi-nand: ofpart partition 
/apb@80000000/apbh@80000000/nand-controller@8000c000/nand@0 
(/apb@80000000/apbh@80000000/nand-controller@8000c000) #size-cells is 
wrongly set to <0>, assuming <1> for parsing partitions.
[    5.464436] gpmi-nand: error parsing ofpart partition 
/apb@80000000/apbh@80000000/nand-controller@8000c000/nand@0 
(/apb@80000000/apbh@80000000/nand-controller@8000c000)
[    5.523845] gpmi-nand 8000c000.nand-controller: driver registered.

Without this patch:

[    5.443988] 7 fixed-partitions partitions found on MTD device gpmi-nand
[    5.450992] Creating 7 MTD partitions on "gpmi-nand":
[    5.456234] 0x000000000000-0x000000300000 : "u-boot"
[    5.506409] 0x000000300000-0x000000380000 : "env"
[    5.537298] 0x000000380000-0x000000400000 : "env2"
[    5.568253] 0x000000400000-0x000000480000 : "dtb"
[    5.598940] 0x000000480000-0x000000500000 : "splash"
[    5.629766] 0x000000500000-0x000000d00000 : "kernel"
[    5.661523] 0x000000d00000-0x000010000000 : "rootfs"
[    5.710012] gpmi-nand 8000c000.nand-controller: driver registered.

Regards,

> 
>   arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts  | 64 +++++++++++++---------
>   arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi   |  2 -
>   arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts | 28 ++++++----
>   arch/arm/boot/dts/nxp/mxs/imx28.dtsi       |  2 +-
>   4 files changed, 56 insertions(+), 40 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts b/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts
> index 98672932e41b..10bfac31f672 100644
> --- a/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts
> +++ b/arch/arm/boot/dts/nxp/mxs/imx28-apf28.dts
> @@ -27,39 +27,49 @@ &gpmi {
>   	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
>   	status = "okay";
> 
> -	partition@0 {
> -		label = "u-boot";
> -		reg = <0x0 0x300000>;
> -	};
> +	nand@0 {
> +		reg = <0>;
> 
> -	partition@300000 {
> -		label = "env";
> -		reg = <0x300000 0x80000>;
> -	};
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> 
> -	partition@380000 {
> -		label = "env2";
> -		reg = <0x380000 0x80000>;
> -	};
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x0 0x300000>;
> +			};
> 
> -	partition@400000 {
> -		label = "dtb";
> -		reg = <0x400000 0x80000>;
> -	};
> +			partition@300000 {
> +				label = "env";
> +				reg = <0x300000 0x80000>;
> +			};
> 
> -	partition@480000 {
> -		label = "splash";
> -		reg = <0x480000 0x80000>;
> -	};
> +			partition@380000 {
> +				label = "env2";
> +				reg = <0x380000 0x80000>;
> +			};
> 
> -	partition@500000 {
> -		label = "kernel";
> -		reg = <0x500000 0x800000>;
> -	};
> +			partition@400000 {
> +				label = "dtb";
> +				reg = <0x400000 0x80000>;
> +			};
> +
> +			partition@480000 {
> +				label = "splash";
> +				reg = <0x480000 0x80000>;
> +			};
> +
> +			partition@500000 {
> +				label = "kernel";
> +				reg = <0x500000 0x800000>;
> +			};
> 
> -	partition@d00000 {
> -		label = "rootfs";
> -		reg = <0xd00000 0xf300000>;
> +			partition@d00000 {
> +				label = "rootfs";
> +				reg = <0xd00000 0xf300000>;
> +			};
> +		};
>   	};
>   };
> 
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi
> index 66facef10ba9..54b0f715f091 100644
> --- a/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi
> +++ b/arch/arm/boot/dts/nxp/mxs/imx28-m28.dtsi
> @@ -24,8 +24,6 @@ reg_3p3v: regulator-0 {
>   };
> 
>   &gpmi {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
>   	status = "okay";
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts b/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts
> index 34b4d3246db1..d069ac907490 100644
> --- a/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts
> +++ b/arch/arm/boot/dts/nxp/mxs/imx28-m28cu3.dts
> @@ -93,21 +93,29 @@ &duart {
>   };
> 
>   &gpmi {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
>   	status = "okay";
> 
> -	partition@0 {
> -		label = "gpmi-nfc-0-boot";
> -		reg = <0x00000000 0x01400000>;
> -		read-only;
> -	};
> +	nand@0 {
> +		reg = <0>;
> 
> -	partition@1 {
> -		label = "gpmi-nfc-general-use";
> -		reg = <0x01400000 0x0ec00000>;
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "gpmi-nfc-0-boot";
> +				reg = <0x00000000 0x01400000>;
> +				read-only;
> +			};
> +
> +			partition@1 {
> +				label = "gpmi-nfc-general-use";
> +				reg = <0x01400000 0x0ec00000>;
> +			};
> +		};
>   	};
>   };
> 
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
> index 4817fba2d938..9655403b7f90 100644
> --- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
> +++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
> @@ -99,7 +99,7 @@ perfmon: perfmon@80006000 {
>   			gpmi: nand-controller@8000c000 {
>   				compatible = "fsl,imx28-gpmi-nand";
>   				#address-cells = <1>;
> -				#size-cells = <1>;
> +				#size-cells = <0>;
>   				reg = <0x8000c000 0x2000>, <0x8000a000 0x2000>;
>   				reg-names = "gpmi-nand", "bch";
>   				interrupts = <41>;
> --
> 2.34.1
> 

-- 
Sébastien Szymanski, Armadeus Systems
Software engineer


