Return-Path: <devicetree+bounces-3637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4097AF8CD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 05:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 584A72811F8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 03:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4516CE577;
	Wed, 27 Sep 2023 03:46:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B847491
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:46:19 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B50E10FB;
	Tue, 26 Sep 2023 20:46:17 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 87BB27FDC;
	Wed, 27 Sep 2023 11:46:09 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 11:46:09 +0800
Received: from [192.168.125.113] (113.72.144.128) by EXMBX168.cuchost.com
 (172.16.6.78) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 11:46:08 +0800
Message-ID: <e16456fe-4df9-5f4a-df43-3288d732f0d0@starfivetech.com>
Date: Wed, 27 Sep 2023 11:46:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] riscv: dts: starfive: Add VisionFive 2 PHY supplies
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, "Daniel
 Maslowski" <cyrevolt@googlemail.com>, <linux-riscv@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing
	<kernel@esmil.dk>, Daniel Maslowski <cyrevolt@gmail.com>
References: <20230923152653.3371216-1-cyrevolt@gmail.com>
 <CAJM55Z8hfZ3+-=Gea9o_0yRH6-kD1dVMfXHOu-k2GxghK2RwJw@mail.gmail.com>
Content-Language: en-US
From: Walker Chen <walker.chen@starfivetech.com>
In-Reply-To: <CAJM55Z8hfZ3+-=Gea9o_0yRH6-kD1dVMfXHOu-k2GxghK2RwJw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [113.72.144.128]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 2023/9/24 20:22, Emil Renner Berthing wrote:
> Daniel Maslowski wrote:
>> I checked the schematics to see what power supplies are needed.
>> This allows for using ethernet without other drivers enabled
>> that would coincidentally enable the same power supply. =E2=9A=A1
>>
>> Signed-off-by: Daniel Maslowski <cyrevolt@gmail.com>
>> ---
>>  .../boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts    | 2 +=
+
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2=
-v1.3b.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1=
.3b.dts
>> index d4ea4a2c0b9b..bc1ac12bc71b 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.=
dts
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.=
dts
>> @@ -16,12 +16,14 @@ &gmac0 {
>>  	starfive,tx-use-rgmii-clk;
>>  	assigned-clocks =3D <&aoncrg JH7110_AONCLK_GMAC0_TX>;
>>  	assigned-clock-parents =3D <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
>> +	phy-supply =3D <&vcc_3v3>;
>>  };
>>
>>  &gmac1 {
>>  	starfive,tx-use-rgmii-clk;
>>  	assigned-clocks =3D <&syscrg JH7110_SYSCLK_GMAC1_TX>;
>>  	assigned-clock-parents =3D <&syscrg JH7110_SYSCLK_GMAC1_RMII_RTX>;
>> +	phy-supply =3D <&vcc_3v3>;
>>  };
>=20
> Hi Daniel,
>=20
> Thank you for the patch! I've looked into this a bit now and I found 3 =
things:
>=20
> 1) The vcc_3v3 regulator (DCDC1 on the PMIC) already has the
>    regulator-always-on property, so should never be turned off even if =
there
>    are no consumers.
>=20
> 2) As far as I can tell the schematic for both the 1.2A and 1.3B says t=
he PHYs
>    are powered by DCDC6 (and not DCDC1) on the PMIC via the VDD33_IO li=
ne.
>=20
> 3) There doesn't seem to be any generic code in the dwmac driver handli=
ng the
>    phy-supply property, only the Rockchip wrapper (dwmac-rk.c) does tha=
t.
>=20
> So all in all I'm a little confused how this change can make a differen=
ce for
> you.
>=20
> @Walker does the above and 2) in particular seem correct to you?

I checked the schematic of VisionFive2 again, the GMAC PHY is powered by =
DCDC6 via the VDD33_IO line,
not DCDC1. So there's no need to add the property 'phy-supply' and handle=
r code for regulator in probe().

>=20
> I'd expect something like the following instead (although split in 3 pa=
tches).
> Daniel, does this work for you?
>=20
> diff --git a/Documentation/devicetree/bindings/net/starfive,jh7110-dwma=
c.yaml
> b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> index 5e7cfbbebce6..9ce877782419 100644
> --- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
> @@ -54,6 +54,9 @@ properties:
>      minItems: 3
>      maxItems: 3
>=20
> +  phy-supply:
> +    description: PHY regulator
> +
>    resets:
>      items:
>        - description: MAC Reset signal.
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.=
dtsi
> b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 2209d5348928..6633c8d29be7 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -101,6 +101,7 @@ &tdm_ext {
>  &gmac0 {
>  	phy-handle =3D <&phy0>;
>  	phy-mode =3D "rgmii-id";
> +	phy-supply =3D <&vdd33_io>;
>  	status =3D "okay";
>=20
>  	mdio {
> @@ -117,6 +118,7 @@ phy0: ethernet-phy@0 {
>  &gmac1 {
>  	phy-handle =3D <&phy1>;
>  	phy-mode =3D "rgmii-id";
> +	phy-supply =3D <&vdd33_io>;
>  	status =3D "okay";
>=20
>  	mdio {
> @@ -182,6 +184,13 @@ vdd_cpu: dcdc2 {
>  				regulator-name =3D "vdd-cpu";
>  			};
>=20
> +			vdd33_io: dcdc6 {
> +				regulator-boot-on;
> +				regulator-min-microvolt =3D <3300000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-name =3D "vdd33_io";
> +			};
> +
>  			emmc_vdd: aldo4 {
>  				regulator-boot-on;
>  				regulator-always-on;
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> b/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> index 9289bb87c3e3..2ce349421981 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> @@ -12,6 +12,7 @@
>  #include <linux/property.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>=20
>  #include "stmmac_platform.h"
>=20
> @@ -97,6 +98,7 @@ static int starfive_dwmac_probe(struct platform_devic=
e *pdev)
>  	struct plat_stmmacenet_data *plat_dat;
>  	struct stmmac_resources stmmac_res;
>  	struct starfive_dwmac *dwmac;
> +	struct regulator *reg_phy;
>  	struct clk *clk_gtx;
>  	int err;
>=20
> @@ -124,6 +126,11 @@ static int starfive_dwmac_probe(struct
> platform_device *pdev)
>  		return dev_err_probe(&pdev->dev, PTR_ERR(clk_gtx),
>  				     "error getting gtx clock\n");
>=20
> +	reg_phy =3D devm_regulator_get_enable_optional(&pdev->dev, "phy");
> +	if (IS_ERR(reg_phy))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(reg_phy),
> +				     "error getting phy regulator\n");
> +
>  	/* Generally, the rgmii_tx clock is provided by the internal clock,
>  	 * which needs to match the corresponding clock frequency according
>  	 * to different speeds. If the rgmii_tx clock is provided by the

