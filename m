Return-Path: <devicetree+bounces-321766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 20DrLWunTGq7ngEAu9opvQ
	(envelope-from <devicetree+bounces-321766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:14:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0414471857C
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:14:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KZrfHRQU;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321766-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321766-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5EA43093E2C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200E53D3314;
	Tue,  7 Jul 2026 06:59:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15BC3AB5BB;
	Tue,  7 Jul 2026 06:59:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783407598; cv=none; b=ffU/XXrKasG9MGA2JIRYCkrO74GWFk2Hpu0H3XioszeBKjdBn8DYYZIdO8jkv8VEJXxGk9NcwpPPtGNKd87pWfePCGx07EJHCyZDxm2BVtDOx/f88jPNldhNtdhB4lnAEMkHsEtm5n+WqNvTs3EJruCllp+s6JuqmE4vSPQJTPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783407598; c=relaxed/simple;
	bh=uMHHbvJAGDZBA3IaCwkr7iCzbEAMYpWj1HxqUjDDCjA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lDHijpIcf72XtnXKhjR1IPqmnnVi0bVdz+QJbuhZENN3x/jkrjHbOx0kkpXI6mg5XkCzfnkQ2GyKdxMRG1t8ro6dly0QCLJGT9/kXS7EkrrKasd17uKNw4MLacxLYHVeL9HOVJjbTYQltEgOfKtFVY8psbPeIX0nvBF6IvmGpwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZrfHRQU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 124121F000E9;
	Tue,  7 Jul 2026 06:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783407596;
	bh=BneG9+UKQIlZyzv/lIZGSrOlsQXMCcRZrLEy1oMVc9w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KZrfHRQUOanKNIlwLUyBljRMCPIWEnnOhtWcBC67/1C4sMFs6yc+DmUB/9RXkiF20
	 KRcpaRbpZfVax1EV1oGoazMHZyG+mmO6ca4XATBPR7SsgNCKcgQNBtagDUcjaGTNfn
	 lJD+w5ff8mHdAQ6QwfsiPJQXZXQAiUddZawFS+Y1ZVwAPp5oGXKNmpLFqnDB6kJtkf
	 tKOp20JTIDlJfmZx0RIQ6Q5NmtyJPsoh8+wdgPkXtQ4GdmhvEvP3W+odjf5uSQxHoA
	 xgkFKf9evt651Xcvo5LKkG3M349s2CvOtU0Hw5yzWmrP24k4sFL3FYpE8PAkB0ES5T
	 WiwwkCrW/4Mzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/1] arm64: dts: add tqma9596la-mba95xxca
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Stein" <alexander.stein@ew.tq-group.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260707062506.949806-1-alexander.stein@ew.tq-group.com>
References: <20260707062506.949806-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 06:59:55 +0000
Message-Id: <20260707065956.124121F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321766-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,tq-group.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0414471857C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Conflicting GPIO assignments for M.2 Key-E SDIO Reset between the =
`wifi-connector` device node and a leftover `gpio-hog`.
- [High] The fan supply regulator `reg_pwm_fan` is never enabled, leaving t=
he fan unpowered.
--

--- Patch [1]: [PATCH v7 1/1] arm64: dts: add tqma9596la-mba95xxca ---
commit c06cc8eb19eb4a69fc0547caa6773b503beae3a7
Author: Markus Niebel <Markus.Niebel@ew.tq-group.com>

arm64: dts: add tqma9596la-mba95xxca
   =20
This patch adds support for the TQMa95xxLA modules on the MBa95xxCA carrier
board. It introduces a common device tree include for the module and a spec=
ific
device tree for the carrier board.

> diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596la-mba95xxca.dts=
 b/arch/arm64/boot/dts/freescale/imx95-tqma9596la-mba95xxca.dts
> new file mode 100644
> index 0000000000000..db2fd6991d112
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596la-mba95xxca.dts
[ ... ]
> +	wifi-connector {
> +		compatible =3D "pcie-m2-e-connector";
> +		vpcie3v3-supply =3D <&reg_v3v3_mb>;
> +		vpcie1v8-supply =3D <&reg_v1v8_mb>;
> +		i2c-parent =3D <&lpi2c2>;
> +		w-disable1-gpios =3D <&expander2 9 GPIO_ACTIVE_LOW>;
> +		w-disable2-gpios =3D <&expander2 10 GPIO_ACTIVE_LOW>;
> +		/* UART_WAKE is connected to SM */
> +		/* SDIO_WAKE is connected to SM */
> +		sdio-reset-gpios =3D <&expander3 2 GPIO_ACTIVE_LOW>;
> +	};

[Severity: High]
Does this sdio-reset-gpios assignment conflict with the gpio-hog on the same
line?

The wifi-connector node requests expander3 line 2 here, but later in the fi=
le,
m2-keye-sdio-rst-hog hogs the exact same GPIO line. Won't this conflict cau=
se
the wifi-connector driver to fail probing with -EBUSY?

[ ... ]
> +	fan_controller: fan-controller@2f {
> +		compatible =3D "microchip,emc2301", "microchip,emc2305";
> +		reg =3D <0x2f>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		#pwm-cells =3D <3>;
> +		status =3D "okay";
> +
> +		fan: fan@0 {
> +			reg =3D <0x0>;
> +			pwms =3D <&fan_controller 40000 PWM_POLARITY_INVERTED 1>;
> +			#cooling-cells =3D <2>;
> +			fan-supply =3D <&reg_pwm_fan>;
> +		};
> +	};

[Severity: High]
Will the reg_pwm_fan regulator ever be enabled?

The emc2305 driver does not parse or request the fan-supply property from
child nodes. Since reg_pwm_fan is not marked regulator-always-on earlier in
this file, does this leave the fan unpowered?

[ ... ]
> +	/* D41 OUT 1V8 */
> +	expander3: gpio@76 {
> +		compatible =3D "ti,tca9539";
> +		reg =3D <0x76>;
> +		vcc-supply =3D <&reg_v1v8_mb>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +
> +		gpio-line-names =3D
> +			/* 00 */ "ENET1_RESET#", "ENET2_RESET#",
> +			/* 02 */ "M2_KEYE_SDIO_RST#", "M2_KEYE_DEV_WLAN_WAKE#",
> +			/* 04 */ "M2_KEYE_DEV_BT_WAKE", "M2_KEYB_W_DISABLE2#",
> +			/* 06 */ "M2_KEYB_RST#", "M2_KEYB_FULL_CARD_PWR_OFF#",
> +			/* 08 */ "M2_KEYB_DPR", "CAM0_PWR#",
> +			/* 10 */ "CAM1_PWR#", "CAM0_RST#",
> +			/* 12 */ "CAM1_RST#", "CAM0_TRIGGER",
> +			/* 14 */ "CAM1_TRIGGER", "FAN_PWR_EN";
> +
> +		m2-keye-sdio-rst-hog {
> +			gpio-hog;
> +			gpios =3D <2 GPIO_ACTIVE_LOW>;
> +			output-low;
> +			line-name =3D "M2_KEYE_SDIO_RST#";
> +		};

[Severity: High]
This appears to be the leftover hog that conflicts with the wifi-connector
node above. Should this hog be removed to allow the driver to request the
GPIO?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707062506.9498=
06-1-alexander.stein@ew.tq-group.com?part=3D1

