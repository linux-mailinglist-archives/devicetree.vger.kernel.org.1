Return-Path: <devicetree+bounces-15581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8329B7EAE28
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:36:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBFF5281142
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C1515AF6;
	Tue, 14 Nov 2023 10:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0B2224CF
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 10:36:33 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4DB293
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:36:31 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2qmC-000319-AS; Tue, 14 Nov 2023 11:36:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2qmB-008yF9-4C; Tue, 14 Nov 2023 11:36:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2qmA-001JJi-R6; Tue, 14 Nov 2023 11:36:10 +0100
Date: Tue, 14 Nov 2023 11:36:10 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Tony Lindgren <tony@atomide.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/1] dt-bindings: pwm: ti,pwm-omap-dmtimer: Update
 binding for yaml
Message-ID: <20231114103610.sbiicumbh2xju6lj@pengutronix.de>
References: <20231114082709.54138-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7b6i2lxusyiit2rg"
Content-Disposition: inline
In-Reply-To: <20231114082709.54138-1-tony@atomide.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--7b6i2lxusyiit2rg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Nov 14, 2023 at 10:27:06AM +0200, Tony Lindgren wrote:
> +  ti,timers:
> +    description: Timer instance phandle for the PWM
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  ti,prescaler:
> +    description: |
> +      Legacy clock prescaler for timer. The timer counter is prescaled
> +      with 2^n where n is the prescaler.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
> +    deprecated: true
> +
> +  ti,clock-source:
> +    description: |
> +      Legacy clock for timer, please use assigned-clocks instead.
> +      0x00 - high-frequency system clock (timer_sys_ck)
> +      0x01 - 32-kHz always-on clock (timer_32k_ck)
> +      0x02 - external clock (timer_ext_ck, OMAP2 only)
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2 ]
> +    deprecated: true

Someone could collect some bonus points by converting these:

	$ git grep ti,clock-source arch/arm/boot
	arch/arm/boot/dts/ti/omap/am335x-guardian.dts:          ti,clock-source =
=3D <0x01>;
	arch/arm/boot/dts/ti/omap/am3517-evm.dts:               ti,clock-source =
=3D <0x01>;
	arch/arm/boot/dts/ti/omap/logicpd-torpedo-baseboard.dtsi:               ti=
,clock-source =3D <0x01>;
	arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi:                ti=
,clock-source =3D <0x01>;
	arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi:                ti=
,clock-source =3D <0x01>;
	arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi:             ti,clock-source =
=3D <0x01>;
	arch/arm/boot/dts/ti/omap/omap3-n900.dts:               ti,clock-source =
=3D <0x00>; /* timer_sys_ck */

(I verified, this are all about this binding.)

otherwise LGTM:

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Should this go via the pwm tree or via some arm or omap or dt tree?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7b6i2lxusyiit2rg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVTTZkACgkQj4D7WH0S
/k7ERgf+IaYSSEKLl5KVBFqv40539YINuhNaIstLunhrxIN+o899MuLjyLl/DM13
DCXIGigv9OBuBnflHhUy3DCsMEiF400x469OXwNhtHjjmEXbo2XlxODea/hkrIGw
+tbrf8c7wc4Tca/R0ZN411wCtaE7o2zPsKM5/fL6evW9dB9qhonCX+KeAlE1IKAo
8HS5J/NT8ZonhYPtGHLUt7Uee+b8VzZVPkGVjxb+eZ/ZWbX5NZq2XyOh0yCfPvVm
fpTc40h0wUGIjQu5TO06ZyF0zC218hJOdpO6YvrJAmpTeUKTgPwjfNeZBRjtpIjl
WRxfbSvCKi0L7StGP6Bgcqsd++tWvg==
=TLmH
-----END PGP SIGNATURE-----

--7b6i2lxusyiit2rg--

