Return-Path: <devicetree+bounces-326995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FcvQEfqCV2rIUAAAu9opvQ
	(envelope-from <devicetree+bounces-326995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:54:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B8F75E5E8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:54:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Devw1A2Q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326995-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326995-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8FA593071487
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712A64508F8;
	Wed, 15 Jul 2026 12:40:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF0344683F
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:40:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119258; cv=none; b=iSsCCDlRyT8jEbXLA/xqwbEorUN/42O9WFpMHRCcdY+ninQgIcDCO0XPtvBW18e6U2zelqw3z5c06aet58aXL+PGCp3iAuMQQ7TQUUSv9GsJnTVw12xEP53LQFgKI8wVfD3XKYVoc87PCb5DEFHpsca+vOrV8PI44nKn6QfkPHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119258; c=relaxed/simple;
	bh=CuOK4voCIiDYt7D4sIofcx3I5aw+9QrHKaqnVEzgwQI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cn0VWqQVz0tJllJsZhogVK2WrzpAhfAULI8ScaPDhO0qh3ohPyZai0mRHDEQyNmWwMU+9NMrY0xXNs9q8T9IYBU+NJ4+vCQG8FKmqtJTjJhJaQrtUBQqJ7I3axZMvZRnDuauPnAJfp01fpi2w9b6vH1E/dRiHWfZv0/d7OTBEwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Devw1A2Q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5740F1F000E9;
	Wed, 15 Jul 2026 12:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784119255;
	bh=dA/f9E9jWlHUYmP7TlKvVgCj8AhQbKn4iqW711eb9uc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Devw1A2Q2mU9ydyVaPGQxqU/IudnvfuNu1BLqSCnuFzdSDCocShMswBkD9yfGJSf3
	 FBiC5xDxd5k+rtx7MiiVMmFsJY/jzLrn8xS6U/aCRbaxen5sH4NZz/NbVja6UUEGqQ
	 ojLq9gnfHqize20gowOOfGhBcX1pBdFurKWwSg2r2Piaqx4wHx5DN0ESntfFdN1wuH
	 9LywAVQEoiqJGA7lEY133LuC5v+pDf8dqwGgoPJtHpzGUREM+MbspH9oAiYAUkpChd
	 hMWy+vq++nwr0KZkBU70cGf0/dtI6xZmWg/h5l4MFE79KC8b3kfP43BVwrl7mieXr9
	 GR5q/cCyMQYrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-eb: enable GPIOs
 on CN12
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wolfram Sang" <wsa+renesas@sang-engineering.com>
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260715122341.47838-2-wsa+renesas@sang-engineering.com>
References: <20260715122341.47838-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:40:54 +0000
Message-Id: <20260715124055.5740F1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326995-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21B8F75E5E8
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `pinctrl-0` and `pinctrl-names` properties added to the `&gp=
io2b` subnode will be silently ignored by the kernel because the `snps,dw-a=
pb-gpio` driver does not probe its subnodes as independent platform devices.
--

--- Patch [1]: [PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-eb: enable GPI=
Os on CN12 ---
commit a17e87c79ff350400e4cf32dff0313dad00fefe9
Author: Wolfram Sang <wsa+renesas@sang-engineering.com>

ARM: dts: renesas: r9a06g032-rzn1d400-eb: enable GPIOs on CN12

This commit adds device tree nodes to enable GPIOs on CN12 for the
r9a06g032-rzn1d400-eb board.

> diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts b/arch/a=
rm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
> index ead379988fb1c..7d6ddc91bb2e4 100644
> --- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
> +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
> @@ -57,6 +57,12 @@ &gpio2 {
>  	status =3D "okay";
>  };
> =20
> +&gpio2b {
> +	pinctrl-0 =3D <&pins_gpio2b>;
> +	pinctrl-names =3D "default";
> +	status =3D "okay";
> +};

[Severity: Medium]
Will the pinctrl core actually apply these settings when attached to this
subnode?

The snps,dw-apb-gpio driver iterates over its port subnodes (like gpio2b)
to register gpio_chip interfaces, but it doesn't appear to register these
subnodes as independent platform devices.

Because the driver core only applies pinctrl-0 properties automatically
during probe for fully initialized device instances, this configuration
might be silently ignored by the kernel.

Should these pinctrl properties be moved to the parent &gpio2 node instead
so they are properly applied to the hardware?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715122341.4783=
8-2-wsa+renesas@sang-engineering.com?part=3D1

