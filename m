Return-Path: <devicetree+bounces-307435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bvi0N1jQImrqdwEAu9opvQ
	(envelope-from <devicetree+bounces-307435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:34:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 370CF6488E2
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:34:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EdkW7krm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307435-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307435-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD344301B721
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A71340E8E6;
	Fri,  5 Jun 2026 13:32:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64521EB1AA
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 13:32:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780666368; cv=none; b=tDAcLiI0Yzp9mKGQ0pP/dF2MaJ2cqS/Wptv9hFnQlUBUEPxxBzvneEx41mC0T1naBIORtMC7D8OWenljczMJi5NaBYIJtHea5ceOQ7GN2f10TT1aq8jq/8UNX2VHhLB9Wzs4Yuaup1PA1QvJhiCDFiYfkV8JtGO0R7uPou7SiSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780666368; c=relaxed/simple;
	bh=2WFbGRb+z0bzRXBqVgBhabAcFQmkDaUDT2fZIK5N0Zo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=trEvylkqWna4058l+GG6xo5SQURT7S9bJlWJIHoFWn8bCQ3peZcOjy7Dyx4gByqI9fbtSvFct2PzlXz5ZjQTaPFu8hn2+dWaPngZsBS3HKzm+yCQJUZa4GcabvAh9bo5E70YKInGSzTpLzJLQbDV+rYQtpy19fWbHbUH5fbcDho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdkW7krm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD3661F00893;
	Fri,  5 Jun 2026 13:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780666366;
	bh=BkwYseeHuFbK9tm0zf/vf4QaKGWXDW8nHlYTkDCIjtw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EdkW7krmFIvLxLWVurzjrcbyTdrmErZPoPsmb2DabNSgeZNGH7R1nJTNSXpsGHfqp
	 Ml6mvdD68osxtzNjMteidEiQpHH6Zz3Y63L7h9uiRkTsUZNNOP4GrC0DUN9DEy7iEB
	 w+asHVvgycixXAKy0fWFULzAU2dIgc5x2CUujFbnNEXnpVGl2nlnb+LLYwEZoSob71
	 mtHRc3El4YrCk92z0uaRNMSQZgKwezBcBbrOZe7KjMqKhF6FFdv2HR4E3WJMQJm1KZ
	 m7CXPap/mvXn+pVg4jEfEx1PkiH4fYaVwxsXyEun84WhuE2gguFAtrjCJaXVqaNlA/
	 BVzS0GCVz2/Ag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] ARM: dts: qcom: Support Motorola Moto G2 (2014)
Reply-To: sashiko-reviews@lists.linux.dev
To: "David Wales via B4 Relay" <devnull+daviewales.disroot.org@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260605-device-motorola-titan-mainline-v4-2-08a7be31f05c@disroot.org>
References: <20260605-device-motorola-titan-mainline-v4-2-08a7be31f05c@disroot.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 13:32:45 +0000
Message-Id: <20260605133245.BD3661F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307435-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+daviewales.disroot.org@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,daviewales.disroot.org,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,disroot.org:email,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 370CF6488E2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The fixed regulator `vddio_disp_vreg` is missing its `vin-supply` =
link to `pm8226_l8`, which will cause the display VDDIO to be unpowered aft=
er boot.
--

commit 70499333aacadd0ef2c646a655f7350a4c0e3f57
Author: David Wales <daviewales@disroot.org>
ARM: dts: qcom: Support Motorola Moto G2 (2014)

This commit adds the initial device tree for the Motorola Moto G2 (2014)
smartphone based on the Qualcomm MSM8226 SoC. It adds support for buttons,
eMMC, a Hall Effect Sensor, simple framebuffer display, and a vibrator.

Link: https://github.com/LineageOS/android_kernel_motorola_msm8226/blob/cm-=
14.1/Documentation/devicetree/bindings/misc/hob_ram.txt

> diff --git a/arch/arm/boot/dts/qcom/msm8226-motorola-titan.dts b/arch/arm=
/boot/dts/qcom/msm8226-motorola-titan.dts
> new file mode 100644
> index 0000000000000..1609fb21c5448
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/msm8226-motorola-titan.dts

[ ... ]

> +	vddio_disp_vreg: regulator-vddio-disp {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vddio_disp";
> +
> +		gpio =3D <&tlmm 10 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us =3D <300>;
> +		enable-active-high;
> +		regulator-boot-on;
> +	};

[Severity: High]
Will this regulator fail to supply power if its upstream source is turned
off?

This fixed regulator controls the display VDDIO power via a GPIO, but it
seems to be missing its vin-supply link to pm8226_l8. Without the
vin-supply property, the regulator core is unaware of the parent-child
dependency, so enabling vddio_disp_vreg won't automatically enable
pm8226_l8.

[ ... ]

> +		pm8226_l8: l8 {
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <1800000>;
> +		};

[Severity: High]
Will this regulator get disabled by the regulator core during late init?

Because pm8226_l8 is not referenced by vddio_disp_vreg or any other
consumer, and it is not marked regulator-always-on, it appears it will be
disabled as an unused regulator. When this happens, will power to the
display be cut, causing the screen to go blank?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-device-mot=
orola-titan-mainline-v4-0-08a7be31f05c@disroot.org?part=3D2

