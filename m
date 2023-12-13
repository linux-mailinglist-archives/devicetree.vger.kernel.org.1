Return-Path: <devicetree+bounces-24584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D97738107C7
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 02:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E60B1F212DE
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 01:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D20A5E;
	Wed, 13 Dec 2023 01:40:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0B77BE;
	Tue, 12 Dec 2023 17:40:39 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 01BF07FF9;
	Wed, 13 Dec 2023 09:40:32 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 13 Dec
 2023 09:40:31 +0800
Received: from [192.168.60.110] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 13 Dec
 2023 09:40:31 +0800
Message-ID: <10e2ab3c-950f-4a1c-8806-74e5bba2c24a@starfivetech.com>
Date: Wed, 13 Dec 2023 09:40:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3 5/6] drm/vs: Add hdmi driver
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
References: <20231204123315.28456-6-keith.zhao@starfivetech.com>
 <esetsiqgqpk35zue4c6aq7l6zn4kezhxkqqa7ompaz2vhdy3lr@4d5awfqgs2ss>
 <94a1f9fc-82fb-4a04-a44b-f9b20c2bdfdd@starfivetech.com>
 <abdl6kmighvpwojvafq443q7grn6w3abwpvw7zwbna4jvtsvjf@fa42rv46n2wh>
 <40cdd3c7-174e-4611-9ea6-22cb56d1f62b@starfivetech.com>
 <e90142d.44b1.18c43833b63.Coremail.andyshrk@163.com>
 <e0b84511-dbb4-46fa-9465-713369232f6f@starfivetech.com>
 <43e42269.314.18c46dbb4c5.Coremail.andyshrk@163.com>
 <e1c362dc-8aac-4d13-9356-8b7ccae4727f@starfivetech.com>
 <5a79a4b9.1bd7.18c4773c1ea.Coremail.andyshrk@163.com>
 <xevxqusbizjfs4qt5rufhntd3vd656o2smocvivvulzceh3aeu@uuihphhat5wi>
 <2dc5ea49-9a5f-484a-98dc-1b35b79d0945@starfivetech.com>
 <6f7acc9d.5648.18c58cba9be.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <6f7acc9d.5648.18c58cba9be.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable



On 2023/12/11 20:13, Andy Yan wrote:
> Hi Keith=EF=BC=9A
>=20
> =E5=9C=A8 2023-12-11 18:24:35=EF=BC=8C"Keith Zhao" <keith.zhao@starfive=
tech.com> =E5=86=99=E9=81=93=EF=BC=9A
>>hi Maxime:
>>hi Andy:
>>
>>On 2023/12/8 17:14, Maxime Ripard wrote:
>>> Hi,
>>>=20
>>> On Fri, Dec 08, 2023 at 11:23:37AM +0800, Andy Yan wrote:
>>>> =E5=9C=A8 2023-12-08 11:00:31=EF=BC=8C"Keith Zhao" <keith.zhao@starf=
ivetech.com> =E5=86=99=E9=81=93=EF=BC=9A
>>>> >
>>>> >
>>>> >On 2023/12/8 8:37, Andy Yan wrote:
>>>> >> Hi Keth=EF=BC=9A
>>>> >>=20
>>>> >>=20
>>>> >>=20
>>>> >>=20
>>>> >>=20
>>>> >>=20
>>>> >> =E5=9C=A8 2023-12-07 18:48:13=EF=BC=8C"Keith Zhao" <keith.zhao@st=
arfivetech.com> =E5=86=99=E9=81=93=EF=BC=9A
>>>> >>>
>>>> >>>
>>>> >>>On 2023/12/7 17:02, Andy Yan wrote:
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>> Hi Keith=EF=BC=9A
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>>=20
>>>> >>>> At 2023-12-06 22:11:33, "Keith Zhao" <keith.zhao@starfivetech.c=
om> wrote:
>>>> >>>>>
>>>> >>>>>
>>>> >>>>>On 2023/12/6 20:56, Maxime Ripard wrote:
>>>> >>>>>> On Wed, Dec 06, 2023 at 08:02:55PM +0800, Keith Zhao wrote:
>>>> >>>>>>> >> +static const struct of_device_id starfive_hdmi_dt_ids[] =
=3D {
>>>> >>>>>>> >> +	{ .compatible =3D "starfive,jh7110-inno-hdmi",},
>>>> >>>>>>> >=20
>>>> >>>>>>> > So it's inno hdmi, just like Rockchip then?
>>>> >>>>>>> >=20
>>>> >>>>>>> > This should be a common driver.
>>>> >>>>>>>
>>>> >>>>>>> Rockchip has a inno hdmi IP. and Starfive has a inno hdmi IP=
.
>>>> >>>>>>> but the harewawre difference of them is big , it is not easy=
 to use the common driver
>>>> >>>>>>> maybe i need the inno hdmi version here to make a distinctio=
n
>>>> >>>>>>=20
>>>> >>>>>> I just had a look at the rockchip header file: all the regist=
ers but the
>>>> >>>>>> STARFIVE_* ones are identical.
>>>> >>>>>>=20
>>>> >>>>>> There's no need to have two identical drivers then, please us=
e the
>>>> >>>>>> rockchip driver instead.
>>>> >>>>>>=20
>>>> >>>>>> Maxime
>>>> >>>>>
>>>> >>>>>ok, have a simple test , edid can get . i will continue=20
>>>> >>>>=20
>>>> >>>> Maybe you can take drivers/gpu/drm/bridge/synopsys/dw-hdmi as a=
 reference=EF=BC=8C this
>>>> >>>> is also a hdmi ip used by rockchip/meson/sunxi/jz/imx=E3=80=82
>>>> >>>> We finally make it share one driver=E3=80=82
>>>> >>>>>
>>>> >>>hi Andy:
>>>> >>>
>>>> >>>dw_hdmi seems a good choice , it can handle inno hdmi hardware by=
 define its dw_hdmi_plat_data.
>>>> >>>does it means i can write own driver files such as(dw_hdmi-starfi=
ve.c) based on dw_hdmi instead of add plat_data in inno_hdmi.c
>>>> >>>
>>>> >>=20
>>>> >> I think the process maybe like this=EF=BC=9A
>>>> >>=20
>>>> >> 1. split the inno_hdmi.c under rockchip to  inno_hdmi.c(the commo=
n part), inno_hdmi-rockchip.c(the soc specific part)
>>>> >> 2. move the common part inno_hdmi.c to drivers/gpu/drm/bridge/inn=
osilicon/
>>>> >> 3. add startfive specific part, inno_hdmi-startfive.c
>>>> >>=20
>>>> >> bellow git log from kernel three show how we convert  dw_hdmi to =
a common driver:=20
>>>> >>=20
>>>> >>=20
>>>> >>=20
>>>> >> 12b9f204e804 drm: bridge/dw_hdmi: add rockchip rk3288 support
>>>> >> 74af9e4d03b8 dt-bindings: Add documentation for rockchip dw hdmi
>>>> >> d346c14eeea9 drm: bridge/dw_hdmi: add function dw_hdmi_phy_enable=
_spare
>>>> >> a4d3b8b050d5 drm: bridge/dw_hdmi: clear i2cmphy_stat0 reg in hdmi=
_phy_wait_i2c_done
>>>> >> 632d035bace2 drm: bridge/dw_hdmi: add mode_valid support
>>>> >> 0cd9d1428322 drm: bridge/dw_hdmi: add support for multi-byte regi=
ster width access
>>>> >> cd152393967e dt-bindings: add document for dw_hdmi
>>>> >> b21f4b658df8 drm: imx: imx-hdmi: move imx-hdmi to bridge/dw_hdmi
>>>> >> aaa757a092c2 drm: imx: imx-hdmi: split phy configuration to platf=
orm driver
>>>> >> 3d1b35a3d9f3 drm: imx: imx-hdmi: convert imx-hdmi to drm_bridge m=
ode
>>>> >> c2c3848851a7 drm: imx: imx-hdmi: return defer if can't get ddc i2=
c adapter
>>>> >> b587833933de drm: imx: imx-hdmi: make checkpatch happy
>>>> >>=20
>>>> >hi Andy:
>>>> >I got you means,=20
>>>> >as I don't have a rockchip board on hand , to split the inno_hdmi.c=
 can not be tested.
>>>> >
>>>> >how adout this idea:
>>>> >1=E3=80=81split the starfive_hdmi.c under verisilicion to  inno_hdm=
i.c(the common part), inno_hdmi-starfive.c(the soc specific part)
>>>> >2. move the common part inno_hdmi.c to drivers/gpu/drm/bridge/innos=
ilicon/
>>>> >3. In the future, inno hdmi.c under rockchip will reuse the public =
driver.
>>>>=20
>>>> I am not sure if drm maintainers are happy with this=E3=80=82
>>>=20
>>> Not really, no.
>>>=20
>>> Because we would still have two drivers for the same controller, and =
a
>>> common one that haven't really been tested on anything but a single
>>> platform. So arguably a worse situation than what you were suggesting=
 in
>>> the first place.
>>>=20
>>> The best solution would be to find someone with a Rockchip board to t=
est
>>> your changes, or to get one if it's doable so you can test yourself.
>>
>>ok I will also try to buy a Rockchip 3036 board for self-test.
>>According to the commit log idea provided by Andy before, make the inno=
_hdmi driver common module.
>=20
> I finally  make my rk3036 based kylin board bootup =EF=BC=88use a linux=
 4.4 downstream bsp=EF=BC=8CI will find time to try boot
> it with mainline=EF=BC=89=E3=80=82 So I can help do the test for rockch=
ip side=E3=80=82
>=20
> It seems not that easy to buy a rk3036 based board from market now=E3=80=
=82
en, The online store seems to have stopped selling rk3036=20
really not easy to buy one , I write the code first , need help testing r=
k3036 in the future.

thanks
>=20
>>
>>would the steps be ok? (if I tested rockchip and starifve pass)
>>1. split the inno_hdmi.c under rockchip to  inno_hdmi.c(the common part=
), inno_hdmi-rockchip.c(the soc specific part)
>>2. move the common part inno_hdmi.c to drivers/gpu/drm/bridge/innosilic=
on/
>>3. add startfive specific part, inno_hdmi-startfive.c
>>
>>Thanks
>>>=20
>>> Maxime

