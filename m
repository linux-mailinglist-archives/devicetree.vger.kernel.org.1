Return-Path: <devicetree+bounces-15619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDED7EAF5C
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 12:41:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C921728115E
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7DF2374B;
	Tue, 14 Nov 2023 11:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCF0224CD
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 11:41:21 +0000 (UTC)
X-Greylist: delayed 370 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 14 Nov 2023 03:41:20 PST
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9203DD;
	Tue, 14 Nov 2023 03:41:20 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 977BC604A7;
	Tue, 14 Nov 2023 11:34:46 +0000 (UTC)
Date: Tue, 14 Nov 2023 13:34:44 +0200
From: Tony Lindgren <tony@atomide.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/1] dt-bindings: pwm: ti,pwm-omap-dmtimer: Update
 binding for yaml
Message-ID: <20231114113444.GB5169@atomide.com>
References: <20231114082709.54138-1-tony@atomide.com>
 <20231114103610.sbiicumbh2xju6lj@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231114103610.sbiicumbh2xju6lj@pengutronix.de>

* Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> [231114 10:36]:
> Hello,
>=20
> On Tue, Nov 14, 2023 at 10:27:06AM +0200, Tony Lindgren wrote:
> > +  ti,timers:
> > +    description: Timer instance phandle for the PWM
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +  ti,prescaler:
> > +    description: |
> > +      Legacy clock prescaler for timer. The timer counter is prescaled
> > +      with 2^n where n is the prescaler.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
> > +    deprecated: true
> > +
> > +  ti,clock-source:
> > +    description: |
> > +      Legacy clock for timer, please use assigned-clocks instead.
> > +      0x00 - high-frequency system clock (timer_sys_ck)
> > +      0x01 - 32-kHz always-on clock (timer_32k_ck)
> > +      0x02 - external clock (timer_ext_ck, OMAP2 only)
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [ 0, 1, 2 ]
> > +    deprecated: true
>=20
> Someone could collect some bonus points by converting these:
>=20
> 	$ git grep ti,clock-source arch/arm/boot
> 	arch/arm/boot/dts/ti/omap/am335x-guardian.dts:          ti,clock-source =
=3D <0x01>;
> 	arch/arm/boot/dts/ti/omap/am3517-evm.dts:               ti,clock-source =
=3D <0x01>;
> 	arch/arm/boot/dts/ti/omap/logicpd-torpedo-baseboard.dtsi:               =
ti,clock-source =3D <0x01>;
> 	arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi:                =
ti,clock-source =3D <0x01>;
> 	arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi:                =
ti,clock-source =3D <0x01>;
> 	arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi:             ti,clock-source =
=3D <0x01>;
> 	arch/arm/boot/dts/ti/omap/omap3-n900.dts:               ti,clock-source =
=3D <0x00>; /* timer_sys_ck */
>=20
> (I verified, this are all about this binding.)

Agreed, we should update all those.

> otherwise LGTM:
>=20
> Reviewed-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
>=20
> Should this go via the pwm tree or via some arm or omap or dt tree?

Please take this via the pwm tree, there are no dependencies.

Regards,

Tony

