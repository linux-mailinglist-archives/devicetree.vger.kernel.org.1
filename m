Return-Path: <devicetree+bounces-326196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q78gKTUpVmqO0QAAu9opvQ
	(envelope-from <devicetree+bounces-326196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:19:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FA87546CE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:19:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="EVdezo/A";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326196-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326196-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0352D300D4F5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CB243DA39;
	Tue, 14 Jul 2026 12:18:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E6243E9F9
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 12:18:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784031528; cv=none; b=CzgA7E1TCGzzqLflVoDPfDlGFBEdMEYzbY2HOuRsZaZyKcBAdEXadJ9piM60sbGzLrkeq5LjfE2mnlNy4vwtqgxUwsp1fLY7j6tTUuHhi9+KJThY2RivdL6zxyV6n5zyjPJYVblOCilQavpiQCJSQH3ZlC3Ef6D8pm6wMCX9Yik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784031528; c=relaxed/simple;
	bh=BTLiOR+mmWKvWOeGuRO/oJXKs3JjsDfGqdQB2B/2KdE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uBnmughy1IYo4XklX+3cPTeu4deMf35wxaiu3bvm+GFEQcuJt57Z2uVUwUHiZ1qd+EAWMkfjXbHyQwxTRm6kAt3MyJASSgb4wHoD1E6CmoTByqgMFyeFGKH3Nv3j/sLrwmFoe6eNgeJ2eZ6bvbKowogWAF9MvWJ4pLZ4BxS/XG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVdezo/A; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8A11F000E9;
	Tue, 14 Jul 2026 12:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784031526;
	bh=n1ojTPV7eAj2hBnYnsUIVpSGYo2Gc8Bo9auy9TdwXJ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EVdezo/A95JlnL5Dx0+880xp54sEbtfzg+sKPANqlStEJP+5bRSHwjio7O5bYuTt1
	 GmRkshsRsnurgydX2VB30GUEmgV5gOZ6wgOkedNgt9LNamZBJ5j0HuYsHyW9BbSA+3
	 8XUxPRuLIFNu5eXIBtPuxXPOQvDNAwYwCPlP3ErnjZvwZ13RxbuWpnas6fn628XCmf
	 Pp4oW8vNLiGt/Obmpjn9eftDmEPZryt/chJjBVrLUDmYbWJ4FwE6F8yEs3DDenJOUK
	 akMpcJpmOaHzvf7LuNRcLz1cg+HcpehNN7VnoYphIpYJ6qbbk2yc7m9tLys+uiQaFn
	 HcY3LMAl5Gjzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: aspeed: bletchley: Add second source
 ISL1208 RTC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cosmo Chou" <chou.cosmo@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714120816.1504058-2-chou.cosmo@gmail.com>
References: <20260714120816.1504058-1-chou.cosmo@gmail.com>
 <20260714120816.1504058-2-chou.cosmo@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 12:18:44 +0000
Message-Id: <20260714121845.EF8A11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326196-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chou.cosmo@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:choucosmo@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46FA87546CE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The new `rtc@6f` node is deliberately inserted out of numerical =
order (before `rtc@51`) to manipulate probe order. This acts as a brittle w=
orkaround for a driver bug in `rtc-pcf85363.c` (which unconditionally regis=
ters a phantom RTC even when the hardware is absent).
--

--- Patch [1]: [PATCH 1/2] ARM: dts: aspeed: bletchley: Add second source I=
SL1208 RTC ---
commit e443fe47105505ac961ac3a866a76ec1173a5817
Author: Cosmo Chou <chou.cosmo@gmail.com>

ARM: dts: aspeed: bletchley: Add second source ISL1208 RTC

This commit adds an alternative ISL1208 RTC at address 0x6f to support
boards populated with it instead of the primary PCF85263 at 0x51.

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
> index d1a04b63df9e0..a966be69ff27d 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
> @@ -865,6 +865,11 @@ eeprom@56 {
>  		reg =3D <0x56>;
>  	};
> =20
> +	rtc@6f {
> +		compatible =3D "isil,isl1208";
> +		reg =3D <0x6f>;
> +	};
> +
>  	rtc@51 {

[Severity: Medium]
Are these device tree nodes intentionally placed out of numerical order?

Typically, device tree nodes are sorted by their unit address, meaning rtc@=
51
would normally appear before rtc@6f.

If this out-of-order placement is intended to force rtc@6f to probe first
as a workaround for a driver issue in rtc-pcf85363.c (which unconditionally
registers a phantom RTC even when the hardware is absent), could this create
a brittle dependency?

If a developer later sorts these nodes by unit address during a routine
cleanup, the probe order would change. This could allow the phantom PCF85263
device to probe first and claim /dev/rtc0, which might silently break system
timekeeping on ISL1208 boards.

>  		/* in-chip rtc disabled, use external rtc (battery-backed) */
>  		compatible =3D "nxp,pcf85263";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714120816.1504=
058-1-chou.cosmo@gmail.com?part=3D1

