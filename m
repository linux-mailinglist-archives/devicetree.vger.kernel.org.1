Return-Path: <devicetree+bounces-19135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 129F67F9CE2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BE8DB20CBC
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A249F171DE;
	Mon, 27 Nov 2023 09:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85B7E185
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:45:10 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7YAu-0008Pd-3L; Mon, 27 Nov 2023 10:45:08 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 10:45:07 +0100
Message-ID: <50694679.MN2xkq1pzW@diego>
In-Reply-To: <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org>
References:
 <20231122122232.952696-1-tim@feathertop.org>
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
 <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 27. November 2023, 10:27:41 CET schrieb Krzysztof Kozlowski:
> On 27/11/2023 10:23, Tim Lunn wrote:
> > Hi
> >=20
> > On 11/27/23 17:52, Krzysztof Kozlowski wrote:
> >> On 27/11/2023 00:06, Heiko St=FCbner wrote:
> >>> Hi Krzysztof,
> >>>
> >>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlow=
ski:
> >>>> On 22/11/2023 13:22, Tim Lunn wrote:
> >>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
> >>>>>
> >>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
> >>>>> ---
> >>>>>
> >>>>> (no changes since v1)
> >>>>>
> >>>>>   arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
> >>>>>   arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++=
++
> >>>>>   2 files changed, 25 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/=
arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
> >>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
> >>>>>   				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
> >>>>>   		};
> >>>>>   	};
> >>>>> +	i2c2 {
> >>>>> +		/omit-if-no-ref/
> >>>>> +		i2c2_xfer: i2c2-xfer {
> >>>>> +			rockchip,pins =3D
> >>>>> +				/* i2c2_scl */
> >>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
> >>>>> +				/* i2c2_sda */
> >>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
> >>>>> +		};
> >>>>> +	};
> >>>>>   	pwm2 {
> >>>>>   		/omit-if-no-ref/
> >>>>>   		pwm2m0_pins: pwm2m0-pins {
> >>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot=
/dts/rockchip/rv1126.dtsi
> >>>>> index 6c5c928f06c7..cf1df75df418 100644
> >>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> >>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> >>>>> @@ -21,6 +21,7 @@ / {
> >>>>>  =20
> >>>>>   	aliases {
> >>>>>   		i2c0 =3D &i2c0;
> >>>>> +		i2c2 =3D &i2c2;
> >>>> No, this should be per-board to match board labeling/schematics.
> >>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
> >>> and also all board schematics I've seen so far are very consistent for
> >>> these ... i2c2 for example is labled i2c2 both in the pins in the socs
> >>> and also in the board-schematics using them.
> >>>
> >>> So while I can agree that things like mmc-aliases might be board-spec=
ific,
> >>> I do think aliases for the core busses should be able to live in the =
soc dtsi
> >>> as for all Rockchip SoCs so far?
> >> If you do not list here all aliases, it is already board-specific, isn=
't it?
> >>
> >> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=3DcrE=
sK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
> > I had only added aliases for nodes that are implemented. RV1126 has 6=20
> > i2c busses but so far not all these exist in the soc.dtsi.
> >=20
>=20
> OK, that would explain why you have only two. Anyway, it is just generic
> guideline, so up to Heiko what to do with it.

People see "uart2-tx" on their pin-header description and then of course
want to use ttyS2 ... same with reading i2c2-sda on the pin-header and then
running i2cdetect on said i2c2 dev node.

And even if i2c1 is not populated (would even be very rare), then people
would still expect i2c2 to be named that way.

As this is the same for _every_ board, it doesn't really make sense to
duplicate it every time. Which I guess is similar to what I wrote in reply
to the mail you linked above :-) .


It's different for mmc, where this naming scheme isn't normally used,
so we (mostly?) migrated to them being in the board-specific alias section.

Thanks
Heiko



