Return-Path: <devicetree+bounces-315219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jgWjL5LHO2oHdAgAu9opvQ
	(envelope-from <devicetree+bounces-315219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:03:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 047756BDF12
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:03:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=W9cQmkPH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315219-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315219-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3466C31170F3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1E4369D6D;
	Wed, 24 Jun 2026 11:58:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8A6389E1A
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 11:58:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782302317; cv=none; b=kyllGr5baMWD7zvOek2Rz0kpWLIJO5Ogu0dKnyfgMlgN/GtmOFqoHPaci1gi/C8ZCn94Mzeaj8ND8V2H0B5/YRgArw1mxStBoZswVokOJrcpr2moY7nK68IIEJ6n2oA1LDjQ3H8UDWL4bRB5QW8GdvVt+zAekmvOKrSSrup2U3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782302317; c=relaxed/simple;
	bh=wlrcp5v/mceanTqMBQYRkZ1nq3sdCFn8SMQY+6pvPL8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X/yARbts+ZVA6hD3kCgOQqbxiccxdb/sTn+R1yIdIPYi4koCV8dBUBbDSvQEaArgq1GSlT2GoYRM6DKhR00/5XinM0bS/CYhR3xvmMXWFwjb3E6nBJbrwewAjJX3JuOfdUsZRN7Ae7mDH5A4KpCwsNpd2WHMyPdp7sv+YqhNGSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9cQmkPH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 520C21F000E9;
	Wed, 24 Jun 2026 11:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782302315;
	bh=k44gsbPGBQzK/pXxFCr26fAvjzyKfoeUyd9hS/afi68=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W9cQmkPHmq1QMn+b9PWzYqAmzkW8eO2W6BC01xJrmQ75bt4wPyviV9+mXewsl8jHj
	 pLunIRSeFnPN9Bzkg0uaXeptcgktg8rfJq/ZEYZ2b16iDfi8MenK9c/XdgdoyQXZCJ
	 6a8dzX+V1ZncMFGCKJLrzQ4LoJ7gl0dHTBXqtklp+lGtAqvI3Of0DmOdrdEnXbPFKA
	 Vg1zf5w7gWASAALSrdZxls8kBU+yu7bWn20y+cRdPtAgerwqLfg8LB4kJQT7QLdr9v
	 sqKq84sLfPf0N2ARxEt5+cN2WNcbiRH7+Okam/q+zbOOPYJIpYbzsYjk/B69PgBTsf
	 Q0HSXoJ8RtbCA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: mediatek: mt8395-radxa-nio-12l: Enable I2C3
 on 40-pin header
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ricardo Pardini via B4 Relay" <devnull+ricardo.pardini.net@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624-nio-12l-add-i2c-40-pin-v1-1-f6c11ed2184c@pardini.net>
References: <20260624-nio-12l-add-i2c-40-pin-v1-1-f6c11ed2184c@pardini.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 11:58:34 +0000
Message-Id: <20260624115835.520C21F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315219-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+ricardo.pardini.net@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ricardo.pardini.net,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,pardini.net:email,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 047756BDF12

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Contradictory and invalid multiple drive strength properties (`d=
rive-strength` and `drive-strength-microamp`) in the `i2c3_pins` pinctrl no=
de.
--

commit cc885ce9bc43909e2fea294bb5532055037c4cf5
Author: Ricardo Pardini <ricardo@pardini.net>

arm64: dts: mediatek: mt8395-radxa-nio-12l: Enable I2C3 on 40-pin header

This commit enables I2C3 on the 40-pin header for the Radxa NIO 12L board.
It adds the corresponding pin configurations to allow users to connect
external I2C devices.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch=
/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
> index bf91305e8e4a5..03a2f2e746475 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts

[ ... ]

> @@ -789,6 +797,16 @@ pins-bus {
>  		};
>  	};
> =20
> +	i2c3_pins: i2c3-pins {
> +		pins-bus {
> +			pinmux =3D <PINMUX_GPIO14__FUNC_SDA3>,
> +				 <PINMUX_GPIO15__FUNC_SCL3>;
> +			bias-pull-up =3D <1000>;
> +			drive-strength =3D <6>;
> +			drive-strength-microamp =3D <1000>;

[Severity: Medium]
Is it expected to specify both drive-strength and drive-strength-microamp
for the same pins here?

The generic pinconf parser will emit a boot error log when it encounters
multiple drive strength properties, as requesting both 6mA and 1mA drive
strengths is contradictory.

Both properties will then propagate to the Mediatek pinctrl driver, which
may program both the standard and advanced driving circuits simultaneously.

Could this leave the I2C3 pins in an undefined electrical state?

> +		};
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-nio-12l-ad=
d-i2c-40-pin-v1-1-f6c11ed2184c@pardini.net?part=3D1

