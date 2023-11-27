Return-Path: <devicetree+bounces-19432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D46F7FAE64
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 00:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B7A11F20613
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 23:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B098495EC;
	Mon, 27 Nov 2023 23:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D2481B1
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 15:35:33 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7l8U-0007RK-4f; Tue, 28 Nov 2023 00:35:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Lunn <tim@feathertop.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Tue, 28 Nov 2023 00:35:29 +0100
Message-ID: <24475706.hxa6pUQ8Du@diego>
In-Reply-To: <5e89eb12-3462-422e-aca3-7cc18743310c@gmail.com>
References:
 <20231122122232.952696-1-tim@feathertop.org> <50694679.MN2xkq1pzW@diego>
 <5e89eb12-3462-422e-aca3-7cc18743310c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Alex,

Am Dienstag, 28. November 2023, 00:11:37 CET schrieb Alex Bee:
> Hi Heiko,
> Am 27.11.23 um 10:45 schrieb Heiko St=FCbner:
> > Am Montag, 27. November 2023, 10:27:41 CET schrieb Krzysztof Kozlowski:
> >> On 27/11/2023 10:23, Tim Lunn wrote:
> >>> Hi
> >>>
> >>> On 11/27/23 17:52, Krzysztof Kozlowski wrote:
> >>>> On 27/11/2023 00:06, Heiko St=FCbner wrote:
> >>>>> Hi Krzysztof,
> >>>>>
> >>>>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozl=
owski:
> >>>>>> On 22/11/2023 13:22, Tim Lunn wrote:
> >>>>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
> >>>>>>>
> >>>>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
> >>>>>>> ---
> >>>>>>>
> >>>>>>> (no changes since v1)
> >>>>>>>
> >>>>>>>    arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
> >>>>>>>    arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 ++++++++++=
+++++
> >>>>>>>    2 files changed, 25 insertions(+)
> >>>>>>>
> >>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arc=
h/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
> >>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
> >>>>>>>    				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
> >>>>>>>    		};
> >>>>>>>    	};
> >>>>>>> +	i2c2 {
> >>>>>>> +		/omit-if-no-ref/
> >>>>>>> +		i2c2_xfer: i2c2-xfer {
> >>>>>>> +			rockchip,pins =3D
> >>>>>>> +				/* i2c2_scl */
> >>>>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
> >>>>>>> +				/* i2c2_sda */
> >>>>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
> >>>>>>> +		};
> >>>>>>> +	};
> >>>>>>>    	pwm2 {
> >>>>>>>    		/omit-if-no-ref/
> >>>>>>>    		pwm2m0_pins: pwm2m0-pins {
> >>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/bo=
ot/dts/rockchip/rv1126.dtsi
> >>>>>>> index 6c5c928f06c7..cf1df75df418 100644
> >>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> >>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> >>>>>>> @@ -21,6 +21,7 @@ / {
> >>>>>>>   =20
> >>>>>>>    	aliases {
> >>>>>>>    		i2c0 =3D &i2c0;
> >>>>>>> +		i2c2 =3D &i2c2;
> >>>>>> No, this should be per-board to match board labeling/schematics.
> >>>>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin nami=
ngs
> >>>>> and also all board schematics I've seen so far are very consistent =
for
> >>>>> these ... i2c2 for example is labled i2c2 both in the pins in the s=
ocs
> >>>>> and also in the board-schematics using them.
> >>>>>
> >>>>> So while I can agree that things like mmc-aliases might be board-sp=
ecific,
> >>>>> I do think aliases for the core busses should be able to live in th=
e soc dtsi
> >>>>> as for all Rockchip SoCs so far?
> >>>> If you do not list here all aliases, it is already board-specific, i=
sn't it?
> >>>>
> >>>> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=3Dc=
rEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
> >>> I had only added aliases for nodes that are implemented. RV1126 has 6
> >>> i2c busses but so far not all these exist in the soc.dtsi.
> >>>
> >>
> >> OK, that would explain why you have only two. Anyway, it is just gener=
ic
> >> guideline, so up to Heiko what to do with it.
> >=20
> > People see "uart2-tx" on their pin-header description and then of course
> > want to use ttyS2 ... same with reading i2c2-sda on the pin-header and =
then
> > running i2cdetect on said i2c2 dev node.
> >=20
> If that's "the" rule, why was rk3128.dtsi merged after similar=20
> complaints came up [0] without having aliases for the core buses=20
> defined?

probably because it slipped through or so. At least in my argument in
the mail you linked I'm consistent to here ;-)

> It's pretty strange to have to define them on board-level there=20
> as well.
>
> I'm happy to submit a patch which changes that.

Yep and rk3128 really is the only outlier there, so sure, go ahead
with moving the core ones.


Heiko

> [0] https://lore.kernel.org/all/22076018.EfDdHjke4D@diego/








