Return-Path: <devicetree+bounces-324606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FFDdHtYwUWpTAgMAu9opvQ
	(envelope-from <devicetree+bounces-324606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 19:50:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE9273D1E2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 19:50:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UDaAerax;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324606-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324606-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64A5230037FD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6369369985;
	Fri, 10 Jul 2026 17:50:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F338313E00
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 17:50:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783705811; cv=none; b=I8EN/PJpY2jatYMa6bFWOzlv0CXy/amQ3tZn7DfKxwnn2XR2u2w9eCH5Al3uDOpGPT6BMaChvpFwYcX47BWkeFs196+FWWabroTJXrnQZB02S9nONHWBOrun9isVUQnBbnwptHOqS8X4QHKOSjoz3wzTTWWvbsbTBfeW1x7d4Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783705811; c=relaxed/simple;
	bh=mU9jRGvb0+nNon5PIFos/82zQjGRpk7Zdb8GvFRP0FE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t2yRq/nhf19aVQfWu7AnyWWqlq2JR3l2WOTsHbjNpqk2OHOil1s0DpiD6CxMqMZM3thkAhhbRaeW+SQJGJZx5CJleGw7AFTLO0KcaqMpL85R0NPHKDC8hU2vHFv2RSv9cIALCoYdvQzSaITiXKOjFfDIpKnmm82nuhhimh2Frqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDaAerax; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 258CD1F000E9;
	Fri, 10 Jul 2026 17:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783705810;
	bh=Rt7nhop8+LSaIUlbi5PWn0q8WRoOcU4AHASfcQcC65U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UDaAeraxosEZKXMeQU+gigmXPH5oyiqH8mDsCNw6v9iEVsSChnOwTmnNp3IucwPKN
	 VMG/d+4ABMoUkqic3EtB6NFyxYMVRLgkqLVIsPnT+zhev/b4ZBC2bB3Vm09oglOXfO
	 7k/t1fQB9qWKaH+yQgXS785Btem8Veaxp1TTx/sw5cZ8kQ4f4rdAsuzoCgB+Cwz1OA
	 N2P+TokmylbHjiOlxbFhmmJ2uGdvT9TZH/I9ktLsUEj5UzB7oe/tPec075uDuSw6iL
	 mWSVKQt55snoDXoWT5weLIL4J5FYFA5RYP7I5P39YvQxsZiN9WtMqJvmEOoDToXgXT
	 wwy5HmZkSwdnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: ti: var-som-am62: Add support for
 Variscite Symphony Board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <3f58a10e07d9a353c7c18f7d3ec8ea1f4c08f4f0.1783689915.git.stefano.r@variscite.com>
References: <cover.1783689915.git.stefano.r@variscite.com>
 <3f58a10e07d9a353c7c18f7d3ec8ea1f4c08f4f0.1783689915.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 17:50:09 +0000
Message-Id: <20260710175010.258CD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324606-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.it:url,vger.kernel.org:from_smtp,variscite.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AEE9273D1E2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The PCA9534 I2C GPIO expander interrupt is configured as edge-tr=
iggered (IRQ_TYPE_EDGE_FALLING) instead of level-triggered (IRQ_TYPE_LEVEL_=
LOW), which will lead to permanently missed interrupts.
--

--- Patch [3]: [PATCH v3 3/3] arm64: dts: ti: var-som-am62: Add support for=
 Variscite Symphony Board ---
commit bd58b379bc670274a1ca977bcbbbb50a0e0f09a6
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: ti: var-som-am62: Add support for Variscite Symphony Board

This commit adds device tree support for the Variscite Symphony carrier
board with the VAR-SOM-AM62 system on module.

Link: https://www.variscite.it/product/single-board-computers/symphony-boar=
d/

> diff --git a/arch/arm64/boot/dts/ti/k3-am625-var-som-symphony.dts b/arch/=
arm64/boot/dts/ti/k3-am625-var-som-symphony.dts
> new file mode 100644
> index 0000000000000..e2fba95d9b948
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-var-som-symphony.dts

[ ... ]

> +&main_i2c0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c0>;
> +	clock-frequency =3D <400000>;
> +	status =3D "okay";
> +
> +	/* GPIO expander */
> +	pca9534: gpio@20 {
> +		compatible =3D "nxp,pca9534";
> +		reg =3D <0x20>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_pca9534>;
> +		#gpio-cells =3D <2>;
> +		gpio-controller;
> +		interrupt-controller;
> +		#interrupt-cells =3D <2>;
> +		interrupt-parent =3D <&main_gpio1>;
> +		interrupts =3D <30 IRQ_TYPE_EDGE_FALLING>;

[Severity: Medium]
Will this edge-triggered configuration cause permanently missed interrupts?

The PCA9534 INT output is an open-drain active-low signal that remains low
as long as unhandled interrupt events exist. If a new GPIO event occurs
while the CPU is processing a previous interrupt (like a rapid subsequent
button press or a contact bounce on the configured gpio-keys), the INT
line will stay logically low.

Because the interrupt controller is configured for EDGE_FALLING, it won't
detect the subsequent event without a new falling edge, leaving the input
device stuck and unresponsive.

Should this be configured as IRQ_TYPE_LEVEL_LOW instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783689915.gi=
t.stefano.r@variscite.com?part=3D3

