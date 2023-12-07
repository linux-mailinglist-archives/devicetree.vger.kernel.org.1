Return-Path: <devicetree+bounces-22666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C7D8085BF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:48:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D624D284140
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A71F321B5;
	Thu,  7 Dec 2023 10:48:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 469A2D53;
	Thu,  7 Dec 2023 02:48:25 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 335198062;
	Thu,  7 Dec 2023 18:48:18 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 7 Dec
 2023 18:48:15 +0800
Received: from [192.168.60.132] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 7 Dec
 2023 18:48:16 +0800
Message-ID: <e0b84511-dbb4-46fa-9465-713369232f6f@starfivetech.com>
Date: Thu, 7 Dec 2023 18:48:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3 5/6] drm/vs: Add hdmi driver
Content-Language: en-US
To: Andy Yan <andyshrk@163.com>
CC: Maxime Ripard <mripard@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "tzimmermann@suse.de"
	<tzimmermann@suse.de>, "airlied@gmail.com" <airlied@gmail.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	William Qiu <william.qiu@starfivetech.com>, Xingyu Wu
	<xingyu.wu@starfivetech.com>, "paul.walmsley@sifive.com"
	<paul.walmsley@sifive.com>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, Shengyang Chen <shengyang.chen@starfivetech.com>,
	Jack Zhu <jack.zhu@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "suijingfeng@loongson.cn"
	<suijingfeng@loongson.cn>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-6-keith.zhao@starfivetech.com>
 <esetsiqgqpk35zue4c6aq7l6zn4kezhxkqqa7ompaz2vhdy3lr@4d5awfqgs2ss>
 <94a1f9fc-82fb-4a04-a44b-f9b20c2bdfdd@starfivetech.com>
 <abdl6kmighvpwojvafq443q7grn6w3abwpvw7zwbna4jvtsvjf@fa42rv46n2wh>
 <40cdd3c7-174e-4611-9ea6-22cb56d1f62b@starfivetech.com>
 <e90142d.44b1.18c43833b63.Coremail.andyshrk@163.com>
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <e90142d.44b1.18c43833b63.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable



On 2023/12/7 17:02, Andy Yan wrote:
>=20
>=20
>=20
>=20
> Hi Keith=EF=BC=9A
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> At 2023-12-06 22:11:33, "Keith Zhao" <keith.zhao@starfivetech.com> wrot=
e:
>>
>>
>>On 2023/12/6 20:56, Maxime Ripard wrote:
>>> On Wed, Dec 06, 2023 at 08:02:55PM +0800, Keith Zhao wrote:
>>>> >> +static const struct of_device_id starfive_hdmi_dt_ids[] =3D {
>>>> >> +	{ .compatible =3D "starfive,jh7110-inno-hdmi",},
>>>> >=20
>>>> > So it's inno hdmi, just like Rockchip then?
>>>> >=20
>>>> > This should be a common driver.
>>>>
>>>> Rockchip has a inno hdmi IP. and Starfive has a inno hdmi IP.
>>>> but the harewawre difference of them is big , it is not easy to use =
the common driver
>>>> maybe i need the inno hdmi version here to make a distinction
>>>=20
>>> I just had a look at the rockchip header file: all the registers but =
the
>>> STARFIVE_* ones are identical.
>>>=20
>>> There's no need to have two identical drivers then, please use the
>>> rockchip driver instead.
>>>=20
>>> Maxime
>>
>>ok, have a simple test , edid can get . i will continue=20
>=20
> Maybe you can take drivers/gpu/drm/bridge/synopsys/dw-hdmi as a referen=
ce=EF=BC=8C this
> is also a hdmi ip used by rockchip/meson/sunxi/jz/imx=E3=80=82
> We finally make it share one driver=E3=80=82
>>
hi Andy:

dw_hdmi seems a good choice , it can handle inno hdmi hardware by define =
its dw_hdmi_plat_data.
does it means i can write own driver files such as(dw_hdmi-starfive.c) ba=
sed on dw_hdmi instead of add plat_data in inno_hdmi.c

Thanks for pointing this out!!!

>>
>>_______________________________________________
>>linux-riscv mailing list
>>linux-riscv@lists.infradead.org
>>http://lists.infradead.org/mailman/listinfo/linux-riscv

