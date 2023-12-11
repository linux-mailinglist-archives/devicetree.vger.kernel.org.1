Return-Path: <devicetree+bounces-23783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE8A80C4D4
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46CB7280F69
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E9D21372;
	Mon, 11 Dec 2023 09:38:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F240DB3;
	Mon, 11 Dec 2023 01:38:05 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 3733424DC13;
	Mon, 11 Dec 2023 17:38:04 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 11 Dec
 2023 17:38:03 +0800
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 11 Dec
 2023 17:38:03 +0800
Received: from EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f]) by
 EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f%17]) with mapi id
 15.00.1497.044; Mon, 11 Dec 2023 17:38:03 +0800
From: JeeHeng Sia <jeeheng.sia@starfivetech.com>
To: Conor Dooley <conor.dooley@microchip.com>
CC: Shengyu Qu <wiagn233@outlook.com>, "kernel@esmil.dk" <kernel@esmil.dk>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
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
	<michael.zhu@starfivetech.com>, "drew@beagleboard.org"
	<drew@beagleboard.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Leyfoon Tan <leyfoon.tan@starfivetech.com>
Subject: RE: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Thread-Topic: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Thread-Index: AQHaJFAfN2r53q/6u0mikZZoJRWxOLCez+mAgASMRMD//+TAgIAAoXXw
Date: Mon, 11 Dec 2023 09:38:03 +0000
Message-ID: <b3690246eb1e48428238ceb26b046297@EXMBX066.cuchost.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-7-jeeheng.sia@starfivetech.com>
 <TY3P286MB2611F70A3D61788E556C8A30988AA@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <358bcdb3f0ab4a7b9d6bbe17ca1a696d@EXMBX066.cuchost.com>
 <20231211-submerge-vegan-244889f1751c@wendy>
In-Reply-To: <20231211-submerge-vegan-244889f1751c@wendy>
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
> From: Conor Dooley <conor.dooley@microchip.com>
> Sent: Monday, December 11, 2023 3:59 PM
> To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> Cc: Shengyu Qu <wiagn233@outlook.com>; kernel@esmil.dk; robh+dt@kernel.or=
g; krzysztof.kozlowski+dt@linaro.org;
> krzk@kernel.org; conor+dt@kernel.org; paul.walmsley@sifive.com; palmer@da=
bbelt.com; aou@eecs.berkeley.edu;
> daniel.lezcano@linaro.org; tglx@linutronix.de; conor@kernel.org; anup@bra=
infault.org; gregkh@linuxfoundation.org;
> jirislaby@kernel.org; michal.simek@amd.com; Michael Zhu <michael.zhu@star=
fivetech.com>; drew@beagleboard.org;
> devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-kernel=
@vger.kernel.org; Leyfoon Tan
> <leyfoon.tan@starfivetech.com>
> Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH=
8100 device tree
>=20
> On Mon, Dec 11, 2023 at 01:38:06AM +0000, JeeHeng Sia wrote:
> >
> > > From: Shengyu Qu <wiagn233@outlook.com>
> > > Sent: Friday, December 8, 2023 8:09 PM
>=20
> > > Does the dubhe-80 cores actually support vector? Or vector support
> > >
> > > doesn't exist on actual silicon?
>=20
> > We don't have a use case for vector application in JH8100
>=20
> I am sorry, but I am not clear on what this means. Do the CPUs on
> the JH8100 support vector or not?
The JH8100 CPU does not support vector operation.

