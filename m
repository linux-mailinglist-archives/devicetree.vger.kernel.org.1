Return-Path: <devicetree+bounces-326333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C5GDNFRPVmrU3AAAu9opvQ
	(envelope-from <devicetree+bounces-326333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:01:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DA675630E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:01:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nU9kFY2N;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326333-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326333-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9683D300CFF2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D251C37E300;
	Tue, 14 Jul 2026 15:01:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC2943D4FB;
	Tue, 14 Jul 2026 15:01:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784041287; cv=none; b=PIYOZbp2xK9MzPLuzQhmnkTa3yuK8QBeHlqe8vsS1o/gWXPrisMlfa2nVBPvJG33wDtG+NY0NjBnQXRFeJsYG2SayR7R06rzPdGwSdBKweyaqiiVDTM0HluWFyBiUrhvaJjYeNgzzegj2a1EBE4XGvLC2Rub691cNvevfifaP4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784041287; c=relaxed/simple;
	bh=zhKUymbyn2XI0RpSVfZER57bToodZaTi8vYChB4P30E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FHLon9jn7XZaP6EzQ51uENRqSSGQqCVWFJMomIhr+L/24m1eWeM6FF/jytZ77x3GEbNZVY9MBm0vmjOSIcRwp6HVg7sbxHBW3Y7OPqglNHJIdNJyyQ/C4/CueSKYfU+8b9xmTKVhS65s33VWfoeBOx2m75Zu0pXVV2E1nY88mDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU9kFY2N; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09D971F000E9;
	Tue, 14 Jul 2026 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784041286;
	bh=ImhKZQMKXk5ZApz5zrH0n0GDyTq3bugLvwuOMGz8W3I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nU9kFY2N1ZDSJNcvimDfEKa86meiWwnJ5Hl/QTCYWabRmrW1StFQqQjp6y21+uOdw
	 lv1YRr2kQrBYsgdwiSLSae6IqhSH4BooDYng1o3Xtn+S0EU0eWUT9BiDfefFDEeuoI
	 SDsz85D17qUwd452+O3agaU9MDPowOibu3TZMmJSpOQSKZxZhmAflUDo7Vwsr//eIA
	 vYwA/YSDvj77zMTwIRn8ireeTnIVhOVklBJpYvO3dEM0p3HBYqmD6Ez00K6wIlM0oz
	 suNaKpmeSHv4ZZFnT7xyud3bFa1M5TCPZAoXEi4+b4wyrmfXcm2Y3K1gtOA9H4085f
	 JXQnZVcWBhluQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/1] arm64: dts: add tqma9596la-mba95xxca
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Stein" <alexander.stein@ew.tq-group.com>
Cc: imx@lists.linux.dev, conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260714143154.787825-1-alexander.stein@ew.tq-group.com>
References: <20260714143154.787825-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 15:01:25 +0000
Message-Id: <20260714150126.09D971F000E9@smtp.kernel.org>
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
	TO_DN_SOME(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326333-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RSPAMD_URIBL_FAIL(0.00)[tq-group.com:query timed out,smtp.kernel.org:query timed out];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[sashiko-reviews.lists.linux.dev:query timed out,markus.niebel.ew.tq-group.com:query timed out,sashiko-bot@kernel.org:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,tq-group.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81DA675630E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unreferenced 10G SFP regulator will be unconditionally disabled =
by the regulator core.
--

--- Patch [1]: [PATCH v8 1/1] arm64: dts: add tqma9596la-mba95xxca ---
commit b7aa596cf679be039938abc33965834ed28f5c60
Author: Markus Niebel <Markus.Niebel@ew.tq-group.com>

arm64: dts: add tqma9596la-mba95xxca

This adds support for TQMa95xxLA modules, designed to be soldered
on a carrier board. MBa95xxCA is a carrier reference board / starter kit
design.

> diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596la-mba95xxca.dts=
 b/arch/arm64/boot/dts/freescale/imx95-tqma9596la-mba95xxca.dts
> new file mode 100644
> index 0000000000000..1d745d66997cb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596la-mba95xxca.dts

[ ... ]

> +	reg_3v3a_10g: regulator-3v3a-10g {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "3V3A_10G";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&expander2 15 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us =3D <2000>;
> +		enable-active-high;
> +	};

[ ... ]

> +	sfp_xfi: sfp-xfi {
> +		compatible =3D "sff,sfp";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_sfp>;
> +		i2c-bus =3D <&lpi2c7>;
> +		maximum-power-milliwatt =3D <2000>;
> +		mod-def0-gpios =3D <&expander1 3 GPIO_ACTIVE_LOW>;
> +		tx-fault-gpios =3D <&gpio2 30 GPIO_ACTIVE_HIGH>;
> +		los-gpios =3D <&gpio2 31 GPIO_ACTIVE_HIGH>;
> +		tx-disable-gpios =3D <&expander2 2 GPIO_ACTIVE_HIGH>;
> +	};

[Severity: Medium]
Will the 10G SFP regulator be turned off by the regulator core?

The reg_3v3a_10g regulator is defined without regulator-always-on, and the
sfp_xfi node seems to be missing the vcc-supply =3D <&reg_3v3a_10g>; proper=
ty
to link the SFP to its power source.

Since it lacks consumers, won't the regulator core automatically disable th=
is
unused regulator at the end of boot and unconditionally turn off power to t=
he
10G interface?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714143154.7878=
25-1-alexander.stein@ew.tq-group.com?part=3D1

