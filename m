Return-Path: <devicetree+bounces-316473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pKZcH1JWQWognwkAu9opvQ
	(envelope-from <devicetree+bounces-316473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:13:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D62996D480F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:13:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F8O4sz0x;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316473-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316473-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33E94300795F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 17:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62B8E2EA72A;
	Sun, 28 Jun 2026 17:13:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FD52E7F3E
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 17:13:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782666829; cv=none; b=Mmtcs4Ft0xBl7DM9zF5FVWjPERaiDPcbTDRncz6js0gGhgChEMJrPZkXphU99+GbKt01gpY64eOAbUgaOmYcoKWnrtCxN81tDL961UA6zBinKgSOQB9QuUCWpU5Wr20eQILkJQ8mt+gndOe76HrkAHZj0/H6eeI76+18OULf2Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782666829; c=relaxed/simple;
	bh=uP1Yabs5FBje+hf6Y3hP5i6iXJTIZY8PaYyprsqgSkA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B1/W3jFpnVInux8POW5RTOvQjhahQPfsc+iKz3cp5bt19IJ0FcBcMVD0HJaIrEBoGDO53Pgbv4YsdIa2+GTBqEvXs01bR5hQgd03TFLqQt52FXf1ANBS+PlN6t/BYAxmBzdKB6Ux2S/o5O6QG17kFzz3G4AM4nyqBPUt7zv6Is4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8O4sz0x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C92C1F000E9;
	Sun, 28 Jun 2026 17:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782666826;
	bh=j/MlotHbDELNzsvocip4GzcgIGRvXyHvXAX1oWzhQmU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F8O4sz0xqQ8CgvTk6n3zCio4Anw1L+TiCRA6MIyP87YnzEQtIhT07wklnlJhOqLyy
	 R03+Iz/iCBYsSTDcr8Kbcmtcp/vX31qCQqcoqpoVEUHg5Bxo3moanxKJpgBmKSm3Y0
	 PVPwcRgOQrhZgK46wugKF5IWPfOL21+ZhVhtPNxV4lA/9ByhiWvZpAapYCtQVZvpXa
	 DX6vv+oaVfmBs8Xn+os7Mea6dYbd6S1QTujElIZKcsHINB7tFXGkNSCP3rm/B4+8Ar
	 Aq3jzF1HkcVnUjdBAAuKXo9JYhOdrPQ6X1KH7YgqRZha2w7K1KmUDabrI37HtIw8TZ
	 ufTkKjJ60rk9A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 3/4] arm64: dts: am62p5-var-som-symphony: add
 touchscreen support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <8c1c298100af75da363ec03126c31fead6dba947.1782665899.git.stefano.r@variscite.com>
References: <cover.1782665899.git.stefano.r@variscite.com>
 <8c1c298100af75da363ec03126c31fead6dba947.1782665899.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 17:13:45 +0000
Message-Id: <20260628171346.4C92C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316473-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D62996D480F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to configure both the interrupt and wa=
keup pins, but the device tree node and pinctrl only configure the interrup=
t pin, lacking a wakeup pin configuration.
--

commit 6d6b56a3161a61ca2f1a68dce1765826d0594c86
Author: Stefano Radaelli <stefano.radaelli21@gmail.com>

arm64: dts: am62p5-var-som-symphony: add touchscreen support

This commit adds support for the capacitive touchscreen on the Symphony
carrier board. It describes the FT5x06 touchscreen controller, configures
its pins, and marks it as a wakeup source.

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts b/arch=
/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
> index 5ba4ed56755b4..5c41647ff43fa 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
[ ... ]
> @@ -293,6 +293,21 @@ &main_i2c1 {
>  	clock-frequency =3D <400000>;
>  	status =3D "okay";
> =20
> +	/* Capacitive touch controller */
> +	ft5x06_ts: touchscreen@38 {
> +		compatible =3D "edt,edt-ft5206";
> +		reg =3D <0x38>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_captouch_pins>;
> +		interrupt-parent =3D <&main_gpio1>;
> +		interrupts =3D <16 IRQ_TYPE_EDGE_FALLING>;
> +		touchscreen-size-x =3D <800>;
> +		touchscreen-size-y =3D <480>;
> +		touchscreen-inverted-x;
> +		touchscreen-inverted-y;
> +		wakeup-source;
> +	};

[Severity: Medium]
The commit message claims to configure both the interrupt and wakeup pins,
but ft5x06_ts only configures the interrupt pin in its pinctrl.

Does this node also need a wake-gpios property to match the commit message
and properly wake the device from hibernation?

[ ... ]
> @@ -307,6 +322,12 @@ &main_mcan0 {
>  };
> =20
>  &main_pmx0 {
> +	pinctrl_captouch_pins: main-captouch-default-pins {
> +		pinctrl-single,pins =3D <
> +			AM62PX_IOPAD(0x01b8, PIN_INPUT, 7) /* (E20) SPI0_CS1.GPIO1_16 */
> +		>;
> +	};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782665899.gi=
t.stefano.r@variscite.com?part=3D3

