Return-Path: <devicetree+bounces-311423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PMsoMK5jLmqovAQAu9opvQ
	(envelope-from <devicetree+bounces-311423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 10:17:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEFE680A28
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 10:17:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gK7Io623;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311423-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311423-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 325033007670
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 08:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 573DD21D3E2;
	Sun, 14 Jun 2026 08:17:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A57390C84
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 08:17:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781425066; cv=none; b=E1sPJeHATbCCACl4nW97vCthDpZ2ziyZU8D7ptQn88vzjkIs9IzwkyifQfnHMveklGPYzNs35TaEL1gThZw//GjnJyPYK4oKQgZaMOnZnoKZoDUn9TM6vW2jU/Sk6BbnowxpCl8JxRAeLGqp0h6AgktawIIUE8HiNILzKQOV0Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781425066; c=relaxed/simple;
	bh=DjU70LBBiheKzrkdopJRWcXqbphQKFp/9O0QLhOYq1k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SHIaIcMe0gq8RpfIMQT9o3uPmH4dSpNFG28uhl5k+l0+t3MobMXWGd0kJjAOCZXjznFUlHwEOemomw7lsk4sKxKirH44Xe4Zghr/3CwUeOKa5Azd/rsUCesaxkD67llGiUqKp6M1Xpap0V50VV1GphoxPl6VAU0GugPEViZIXAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK7Io623; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E1141F000E9;
	Sun, 14 Jun 2026 08:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781425063;
	bh=seu7f4h//VZtBm7HY5ys5hHIgTAlOXbC3bLQISGP1DU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gK7Io623LQsqsOsPrEWPQ9ALCv5FXCkivr2+6XrODo6WG6pc7D/YmowKpQzW0lzPW
	 RndyxU/TMJmF6bxqsSDz/FpIbukl96sHuZr/ycWbG7b5E5aDNjhp8q6cN/oD5HsgpJ
	 hRc/WzNAdAGxayGCn0+T8V4AAx+UL88M9g8fAuNyb+TUeLSiWNWJfn+RaYVXHjIk9Q
	 VATjqCfliU1Q0srzs+5oipVcVv1abpeH8wnj8++9DAQa8akPJeSE5/ooFkj+FNLSYA
	 epU4XROLPvwH0zcFmqW0+WSA2N+3qzvoUkdV3CzuAGNZ/EwBVkqLw2Sw/kR7AK5Gs/
	 PKWaROZ/M57BA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: hamoa-pmics: Add ADC support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jishnu Prakash" <jishnu.prakash@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260614-adc5_gen3_dt-v2-4-32ec576c5865@oss.qualcomm.com>
References: <20260614-adc5_gen3_dt-v2-4-32ec576c5865@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 08:17:42 +0000
Message-Id: <20260614081743.5E1141F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311423-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jishnu.prakash@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2EEFE680A28

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing Thermal Sensor Provider for VADC causing thermal zones t=
o indefinitely defer
- [Low] Devicetree Naming Violation: Underscore in node name
--

commit 7b5021a0220835eeee60f0b85faf679ed9b09977
Author: Ayyagari Ushasreevalli <aushasre@qti.qualcomm.com>

arm64: dts: qcom: hamoa-pmics: Add ADC support

This commit adds the ADC node and defines channels for die temperature,
VPH power, and system thermistors for PMK8550, PM8550VE*, and PMC8380*
PMICs. It also defines several thermal zones corresponding to the off-PMIC
system thermistors.

> diff --git a/arch/arm64/boot/dts/qcom/hamoa-pmics.dtsi b/arch/arm64/boot/=
dts/qcom/hamoa-pmics.dtsi
> index 6a31a0adf8be4..2e746ede850f8 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-pmics.dtsi
[ ... ]
> @@ -189,6 +191,90 @@ trip1 {
>  				};
>  			};
>  		};
> +
> +		sys-0-thermal {
> +			polling-delay-passive =3D <0>;
> +			thermal-sensors =3D <&pmk8550_vadc ADC5_GEN3_AMUX1_GPIO_100K_PU(1)>;
[ ... ]
> @@ -277,6 +363,142 @@ pmk8550_pwm: pwm {
> =20
>  			status =3D "disabled";
>  		};
> +
> +		pmk8550_vadc: adc@9000 {
> +			compatible =3D "qcom,spmi-adc5-gen3";
> +			reg =3D <0x9000>, <0x9100>;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			interrupts =3D <0x0 0x90 0x1 IRQ_TYPE_EDGE_RISING>,
> +				     <0x0 0x91 0x1 IRQ_TYPE_EDGE_RISING>;
> +			#thermal-sensor-cells =3D <1>;

[Severity: Medium]
Does the driver for pmk8550_vadc (qcom-spmi-adc5-gen3.c) actually register a
thermal zone provider?

It looks like the driver currently registers IIO channels but delegates
thermal monitor capabilities to an auxiliary device named adc5_tm_gen3,
which currently has no driver in the kernel to bind to it.

Without a driver registering the thermal zones via
devm_thermal_of_zone_register(), will the generic thermal framework
indefinitely defer probing for these thermal zones, leaving the system
thermistor monitoring uninitialized?

[ ... ]
> @@ -301,6 +525,18 @@ pm8550_gpios: gpio@8800 {
>  			#gpio-cells =3D <2>;
>  			interrupt-controller;
>  			#interrupt-cells =3D <2>;
> +
> +			sys_therm_0_gpio3: sys-therm_0-gpio3-state {

[Severity: Low]
This isn't a bug, but does this node name violate devicetree conventions?

Devicetree specifications strongly discourage underscores in node names,
recommending hyphens instead. While the node label (sys_therm_0_gpio3)
can use underscores, should the node name be sys-therm-0-gpio3-state?

The sibling node sys-therm-1-gpio4-state correctly uses hyphens. Leaving
the underscore might trigger a node_name_chars warning in dtc when compiled
with W=3D1.

> +				pins =3D "gpio3";
> +				function =3D PMIC_GPIO_FUNC_NORMAL;
> +				bias-high-impedance;
> +			};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-adc5_gen3_=
dt-v2-0-32ec576c5865@oss.qualcomm.com?part=3D4

