Return-Path: <devicetree+bounces-20553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 940E2800114
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 02:34:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C487A1C20A57
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 01:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6B610E6;
	Fri,  1 Dec 2023 01:34:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74787D50;
	Thu, 30 Nov 2023 17:34:24 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 80FA180A4;
	Fri,  1 Dec 2023 09:34:10 +0800 (CST)
Received: from EXMBX068.cuchost.com (172.16.6.68) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 1 Dec
 2023 09:34:10 +0800
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX068.cuchost.com
 (172.16.6.68) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 1 Dec
 2023 09:34:09 +0800
Received: from EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f]) by
 EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f%17]) with mapi id
 15.00.1497.044; Fri, 1 Dec 2023 09:34:10 +0800
From: JeeHeng Sia <jeeheng.sia@starfivetech.com>
To: Leyfoon Tan <leyfoon.tan@starfivetech.com>, "kernel@esmil.dk"
	<kernel@esmil.dk>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"krzk@kernel.org" <krzk@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "aou@eecs.berkeley.edu"
	<aou@eecs.berkeley.edu>, "daniel.lezcano@linaro.org"
	<daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
	"conor@kernel.org" <conor@kernel.org>, "anup@brainfault.org"
	<anup@brainfault.org>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "jirislaby@kernel.org" <jirislaby@kernel.org>,
	"michal.simek@amd.com" <michal.simek@amd.com>, Michael Zhu
	<michael.zhu@starfivetech.com>, "drew@beagleboard.org" <drew@beagleboard.org>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Thread-Topic: [PATCH v2 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Thread-Index: AQHaIomdkCH/WE7GIU6i0VyZ0qWNd7CSonGAgAEFIaA=
Date: Fri, 1 Dec 2023 01:34:10 +0000
Message-ID: <823f1c9a43aa4ded919b05f5a96f036b@EXMBX066.cuchost.com>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-7-jeeheng.sia@starfivetech.com>
 <21e2d194efee4bb6b870735e6fe2d65c@EXMBX061.cuchost.com>
In-Reply-To: <21e2d194efee4bb6b870735e6fe2d65c@EXMBX061.cuchost.com>
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
> From: Leyfoon Tan <leyfoon.tan@starfivetech.com>
> Sent: Friday, December 1, 2023 1:58 AM
> To: JeeHeng Sia <jeeheng.sia@starfivetech.com>; kernel@esmil.dk; robh+dt@=
kernel.org; krzysztof.kozlowski+dt@linaro.org;
> krzk@kernel.org; conor+dt@kernel.org; paul.walmsley@sifive.com; palmer@da=
bbelt.com; aou@eecs.berkeley.edu;
> daniel.lezcano@linaro.org; tglx@linutronix.de; conor@kernel.org; anup@bra=
infault.org; gregkh@linuxfoundation.org;
> jirislaby@kernel.org; michal.simek@amd.com; Michael Zhu <michael.zhu@star=
fivetech.com>; drew@beagleboard.org
> Cc: devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-ke=
rnel@vger.kernel.org
> Subject: RE: [PATCH v2 6/6] riscv: dts: starfive: Add initial StarFive JH=
8100 device tree
>=20
>=20
>=20
> -----Original Message-----
> From: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> Sent: Wednesday, November 29, 2023 2:01 PM
> To: kernel@esmil.dk; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.or=
g; krzk@kernel.org; conor+dt@kernel.org;
> paul.walmsley@sifive.com; palmer@dabbelt.com; aou@eecs.berkeley.edu; dani=
el.lezcano@linaro.org; tglx@linutronix.de;
> conor@kernel.org; anup@brainfault.org; gregkh@linuxfoundation.org; jirisl=
aby@kernel.org; michal.simek@amd.com; Michael Zhu
> <michael.zhu@starfivetech.com>; drew@beagleboard.org
> Cc: devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-ke=
rnel@vger.kernel.org; JeeHeng Sia
> <jeeheng.sia@starfivetech.com>; Leyfoon Tan <leyfoon.tan@starfivetech.com=
>
> Subject: [PATCH v2 6/6] riscv: dts: starfive: Add initial StarFive JH8100=
 device tree
>=20
> Add initial device tree for the StarFive JH8100 RISC-V SoC.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/Makefile       |   1 +
>  arch/riscv/boot/dts/starfive/jh8100-evb.dts |  28 ++
>  arch/riscv/boot/dts/starfive/jh8100.dtsi    | 378 ++++++++++++++++++++
>  3 files changed, 407 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh8100-evb.dts
>  create mode 100644 arch/riscv/boot/dts/starfive/jh8100.dtsi
>=20
> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/=
starfive/Makefile
> index 0141504c0f5c..fbb0dc619102 100644
> --- a/arch/riscv/boot/dts/starfive/Makefile
> +++ b/arch/riscv/boot/dts/starfive/Makefile
> @@ -10,3 +10,4 @@ dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7100-starfive-vision=
five-v1.dtb
>=20
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-v1.2a.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-v1.3b.dtb
> +dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh8100-evb.dtb
> Add empty line before this.
Ok, I can add an empty line here to distinguish between the platforms.
>=20
> [....]
>=20
> Regards
> Ley Foon

