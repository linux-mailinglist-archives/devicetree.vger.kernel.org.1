Return-Path: <devicetree+bounces-316598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jffLDMaqQWoXtQkAu9opvQ
	(envelope-from <devicetree+bounces-316598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:14:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BE56D53FA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:14:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nzIuSKK7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316598-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316598-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76EA1300330C
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7C7372EF6;
	Sun, 28 Jun 2026 23:13:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED656372EF1
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 23:13:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782688400; cv=none; b=Fzpo0mSMeESP8YPhaTZNPSFM3diFUe41/htSrN56HHvysnOxnBfXKI/9QOptuN/GWNkgUcy6PXwKuRqHtO+1IO4GMqfvM7GLDpxMaM2qJ+IeuxjC7lgKWih3IXsh4jNX5+OWVIiHT3jxPxw0EGNmpZdWdkdeb3EjkpJs42rAcOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782688400; c=relaxed/simple;
	bh=Qj62mRbm4qQ/1qnvsZXC/OBopg/w+e/h1DeVAp8VNwY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jtb9Q0CkQebMNeKvZxTeQi0KsSizNmt0ngqrnfnLwpFJ3eL991OBIhpZ5/bZiCx9xq4UcSt2+ggVg42y7lk5YZ/BwRFDWphebJJNhP6s4xmK2y8pXWT/Pvhmsmq86WkSNvwEw01iXd7Puab0nrxgfJBqNLcRYwJ7N1pdzbrI+7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzIuSKK7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6736C1F000E9;
	Sun, 28 Jun 2026 23:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782688398;
	bh=8Zej5PyS48mH1lD3PtCr+68NhM0IBhScBgxSrw9R2m8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nzIuSKK7hOWQGEpwXVSH4WIIuBwTv2lm2nzNkS6huE6li662sgX7PbcHfyTdvpW7G
	 oI9+dDUVZD2MuOlTXXwwLHYSrhHOWKpfNKP9cZPwus/Lfmm608NpaAjNHIADFv07sE
	 m6Begnjf+l336s8G+M/71xr2J0OYm9cCPxMgG3ncQlT2R43SZIXuxRaN8xB9RzW4QF
	 n7tu5rs5yIfgh4WJ8wkv0hcIZL4BJK7vuTqZxDeuHmaH3LspOoKrpHVzn3ir3oGKyg
	 YE7IB/BT4dR+3Ntm68ACSnlNLKju2r/bi7vKlAImAtHlwAHybbDNcOK16jptOQMOkk
	 HHcojkIZ/h7cA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] ARM: dts: helios4: wire LM75 into a thermal zone
 with fan cooling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rosen Penev" <rosenp@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260628230042.1204293-5-rosenp@gmail.com>
References: <20260628230042.1204293-1-rosenp@gmail.com>
 <20260628230042.1204293-5-rosenp@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 23:13:17 +0000
Message-Id: <20260628231318.6736C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316598-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rosenp@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83BE56D53FA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The `pwm-fan` nodes (`fan1` and `fan2`) are missing the `cooling-l=
evels` property, rendering the dynamic thermal fan cooling entirely non-fun=
ctional.
- [Low] The `#thermal-sensor-cells` property is added to the LM75 node with=
out documenting it in the `lm75.yaml` DT binding schema.
- [Low] The `board_alert` trip point incorrectly uses `type =3D "passive"` =
for active cooling fans.
--

commit 1aed98d24fa9eab58f80e2422b885b0e44e17d12
Author: Rosen Penev <rosenp@gmail.com>

ARM: dts: helios4: wire LM75 into a thermal zone with fan cooling

The LM75 temperature sensor on i2c0 creates a hwmon interface but was
not referenced by any thermal zone. This patch wires it into a thermal
zone with fan cooling maps.

> diff --git a/arch/arm/boot/dts/marvell/armada-388-helios4.dts b/arch/arm/=
boot/dts/marvell/armada-388-helios4.dts
> index 003b0708e9656..51675646ec397 100644
> --- a/arch/arm/boot/dts/marvell/armada-388-helios4.dts
> +++ b/arch/arm/boot/dts/marvell/armada-388-helios4.dts

[ ... ]

> @@ -68,6 +69,35 @@ reg_5p0v_usb: regulator-5v-usb {
>  		vin-supply =3D <&reg_12v>;
>  	};
> =20
> +	thermal-zones {
> +		board-thermal {
> +			polling-delay-passive =3D <2000>;
> +			polling-delay =3D <10000>;
> +			thermal-sensors =3D <&temp_sensor>;
> +
> +			trips {
> +				board_alert: board-alert {
> +					temperature =3D <55000>;
> +					hysteresis =3D <5000>;
> +					type =3D "passive";

[Severity: Low]
Does this trip type match the intended use for active cooling fans?

The thermal-zones.yaml device tree binding explicitly designates type =3D a=
ctive
for fans and type =3D passive for CPU throttling. By using passive, the the=
rmal
framework will use polling-delay-passive intervals instead of standard acti=
ve
cooling intervals.

> +				};

[ ... ]

> @@ -129,6 +159,7 @@ fan1: j10-pwm {
>  		pwms =3D <&gpio1 9 40000>;	/* Target freq:25 kHz */
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&helios_fan1_pins>;
> +		#cooling-cells =3D <2>;

[Severity: High]
Is the required cooling-levels property missing from this fan node?

Without cooling-levels defined in the pwm-fan nodes, the driver's
pwm_fan_get_cooling_data() in drivers/hwmon/pwm-fan.c returns early.

This leaves pwm_fan_max_state at 0, causing the driver to set the fans to a
100% duty cycle and register the cooling device with a max state of 0. When
the thermal governor attempts to change the state, it can only request state
0, leaving the fan permanently at full speed.

>  	};
> =20
>  	fan2: j17-pwm {
> @@ -136,6 +167,7 @@ fan2: j17-pwm {
>  		pwms =3D <&gpio1 23 40000>;	/* Target freq:25 kHz */
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&helios_fan2_pins>;
> +		#cooling-cells =3D <2>;

[Severity: High]
Will this fan also need the cooling-levels property to be controlled by the
thermal zone?

Without the property, the same issue as above will prevent the thermal
governor from adjusting this fan's speed.

>  	};

[ ... ]

> @@ -201,6 +233,7 @@ temp_sensor: temp@4c {
>  					compatible =3D "ti,lm75";
>  					reg =3D <0x4c>;
>  					vcc-supply =3D <&reg_3p3v>;
> +					#thermal-sensor-cells =3D <0>;

[Severity: Low]
Should the LM75 device tree binding schema be updated to document this new
provider capability?

Adding an undocumented capability causes dtbs_check schema validation errors
or warnings. The Documentation/devicetree/bindings/hwmon/lm75.yaml file nee=
ds
to be updated to include #thermal-sensor-cells.

>  				};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628230042.1204=
293-1-rosenp@gmail.com?part=3D4

