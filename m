Return-Path: <devicetree+bounces-303618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCR4J7CtF2qiNAgAu9opvQ
	(envelope-from <devicetree+bounces-303618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 04:51:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A3A5EBFC9
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 04:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E28F530B3293
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 02:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CAA62F8E88;
	Thu, 28 May 2026 02:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erlSa0iH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CE925F98A
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 02:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779936196; cv=none; b=urR9hZtyY5RWeeiAldg4pjSUuTarUqN8ChSQTEPrudBoyfN+6XNe4v8sRDzTrRXZ6YaUXVYAyibpzaaLxfwm+5XYvOaLNHSWmNDceHqiZK5OeRUw9/pwxONdIwlx4w3WsNoNadlhP0fY+NtUaNKp98ORanXqnjnZLyLZ8RBQ+68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779936196; c=relaxed/simple;
	bh=KXvMhw1XMo3sBxFJ95LilM/A6nN/esoOvIclEKTr5SA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AdTk+dfYKN8Py4g67nO68g126+chGuwv1IIy9b12Szs7uufyxAIM+uVwTNPbGd1aWja5WlBmgWMiOiETnE58WE03VYnCc626yvowILqgbM89SFL2GOoUsDvLqTRJBHonpeO3Lvp8IhWsS+EPcau5vuo91zfxYnAUkY8xewrF2Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erlSa0iH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94F481F000E9;
	Thu, 28 May 2026 02:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779936195;
	bh=l3Nh86ZiwkrxOikumhWDWnm9jywLr8mBsL+MKOqFin4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=erlSa0iHlBTnocPI++c9b31pwZqu1G4AWRNaXw/A/KmfpDtiPAxaHv+zXd6ojEtqF
	 V2Z75+yd4hvgYI2vCOYeVyG8Qsq6Mvd9Hl7FhBA/jszFCgSbYcLVr3eQ5SeC+8sLk6
	 2gdqJtnVsj9ONdku8e/k+iOsTA7BVEWOPiBgawnoCHtFUMd4/IaaDGKDwB68pMFX2C
	 qVyPtX6mM28yZ+c8dJdsaicvoN+4LPZw9qFaXL6BkBB8z7m6e8OrnsJmdj8nmidGRz
	 ZA/vRCP5w5ZOaa76RxpWHh+fZplsET4wn88Smbx/aO/mfBnPrXMz/zu37M/Z4xcOro
	 ppdYzf5wZg1Sg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rudraksha Gupta via B4 Relay" <devnull+guptarud.gmail.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260527-expressatt-touchkey-v2-1-049dca41fc3a@gmail.com>
References: <20260527-expressatt-touchkey-v2-1-049dca41fc3a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 02:43:14 +0000
Message-Id: <20260528024314.94F481F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303618-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,guptarud.gmail.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D7A3A5EBFC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `pm8921_l29` regulator provides a wide voltage range instead o=
f a fixed voltage, which is incompatible with the `tc360-touchkey` driver t=
hat expects a fixed regulator.
- [Low] The newly added nodes `i2c-gpio-touchkey` and `touchkey-enable` vio=
late standard devicetree node naming schemas and will trigger `dtbs_check` =
warnings.
--

commit df1b82e005a06f9e0f91c39a21c42b56f537d34d
Author: Rudraksha Gupta <guptarud@gmail.com>

ARM: dts: qcom: msm8960: expressatt: Add coreriver,tc360-touchkey

This commit adds the tc360 touchkey using an i2c-gpio bus for the msm8960
samsung expressatt device. It includes the necessary pin configurations,
regulators, and interrupt mappings.

Link: https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm=
-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5

> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b=
/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -52,6 +52,40 @@ key-volume-down {
>  			linux,code =3D <KEY_VOLUMEDOWN>;
>  		};
>  	};
> +
> +	touchkey_enable: touchkey-enable {

[Severity: Low]
Will this node name trigger dtbs_check warnings? The fixed regulator schema
typically requires nodes to match the regular expression
^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$. Would renaming this to something
like regulator-touchkey be more compliant?

> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "touchkey_enable";
> +		gpio =3D <&tlmm 51 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-boot-on;
> +	};
> +
> +	i2c-gpio-touchkey {

[Severity: Low]
Does this node name violate the standard I2C controller schema? The standard
schema expects the bus node to match the regular expression ^i2c(@.*)?$.
Should this be named just i2c instead?

> +		compatible =3D "i2c-gpio";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;

[ ... ]

> @@ -420,6 +468,12 @@ pm8921_l25: l25 {
>  			bias-pull-down;
>  		};
> =20
> +		pm8921_l29: l29 {
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <3300000>;

[Severity: High]
Will the wide voltage range here cause the touchkey to fail?

The tc360-touchkey driver is configured as a fixed regulator and only enabl=
es
it without calling regulator_set_voltage(). If the core regulator framework
enables this at the minimum voltage of 1.8V, will it be below the typical
voltage expected by the hardware?=20

Should the min and max microvolts be constrained to the exact required fixed
voltage?

> +			bias-pull-down;
> +		};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527-expressatt=
-touchkey-v2-1-049dca41fc3a@gmail.com?part=3D1

