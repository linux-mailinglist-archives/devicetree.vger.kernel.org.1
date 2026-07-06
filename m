Return-Path: <devicetree+bounces-320915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d0Q0JUFtS2rbRAEAu9opvQ
	(envelope-from <devicetree+bounces-320915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:54:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BE570E537
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:54:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mqHL8jRy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320915-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320915-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 054E23250770
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AABE1A3165;
	Mon,  6 Jul 2026 08:16:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B217238E8C2
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 08:16:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325790; cv=none; b=qPz55DVesYaewi3UzWmdnDppzVVLH6vs5Wg0HnB57mdnny0ElA6lEEUvYT3F+pB41lcLDYrSBHJhRZ9mGHk2LxXArMFsz6w2CAdyd9UksibD/m8LBAdM2r7ZhFUxUuvP8tCUWMO/fZoCsA/ResEwN7J45hPr0kbujAlIol6TqMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325790; c=relaxed/simple;
	bh=7By+TedtKbm6J+CxXElrbh3EPfmKOCWIM+fgrujbOrc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lhyQzZfW/8ZghB2oxajL35OePToI5JifMraRAWc3ErhySSruV2RVZf5T9YquJC9rXnfTuLxxzgggC17RIwUPU3PGH7r5cfH/ouwYAxbZqlFjg7MAsYZT3ZMHRQfsfpY7qjdX5qsf+ahbWKenlrQChUa7B39LDkjCRfyadubrUOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqHL8jRy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AAFB1F000E9;
	Mon,  6 Jul 2026 08:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783325783;
	bh=0cJ1/FfpMd5Fu1oekl++RqCpdeMBo7Tt8abIgXICNAE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mqHL8jRyoUMhLPnnYVzXlinvkAN20jFlORITu4HWM/EXeBuuetcQFR+Ddo2RCMRx1
	 yX6ohz6xcscXwXnxLxY55vh3jnMT90gs3TlP/vlxzwqJkVvHJmUPy/SxtgEvK6dqJ2
	 6gCd5eTxwP7l1rnB1QBzawcg6totVhT4cvA8I+YqertyhYhxXo/DjJZL35RqVL3jCI
	 pZyegF+ypoWnXXv6zOe0ajPL6G8q1k9DK0N33nif7eqgU+ahZlaQVK2s0QgjbADA6f
	 VcENBrm1nobeDE//T6inMJ7QWrxVKA0k4jE7XpohCDUnJ3CgUTq9AAcmoTS+YJbXJM
	 tesPubuMqJPRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/8] riscv: dts: eswin: add clock generator for
 EIC7700 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pinkesh Vaghela" <pinkesh.vaghela@einfochips.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260706081055.1126275-3-pinkesh.vaghela@einfochips.com>
References: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
 <20260706081055.1126275-3-pinkesh.vaghela@einfochips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 08:16:22 +0000
Message-Id: <20260706081623.5AAFB1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320915-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pinkesh.vaghela@einfochips.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,einfochips.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3BE570E537

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The fixed-clock node in the SoC .dtsi is named 'clock-24m' but omit=
s the 'clock-frequency' property, deferring it to the board-specific .dts.
--

commit 5bc9617a8cdce75f4ec3cb72e9a91cca1ea64a55
Author: Pritesh Patel <pritesh.patel@einfochips.com>

riscv: dts: eswin: add clock generator for EIC7700 SoC
   =20
Add clock generator node for EIC7700 SoC. HiFive Premier P550 boards have
24MHz crystal oscillator to provide the input clock.

> diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts=
/eswin/eic7700.dtsi
> index 430a210f01e66..af9e40d8739ad 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
> +++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
[ ... ]
> @@ -203,6 +204,11 @@ pmu {
>  				<0x00000000 0x0000000f 0xfffffffc 0x000000ff 0x00000078>;
>  	};
> =20
> +	clock_24m: clock-24m {
> +		compatible =3D "fixed-clock";
> +		#clock-cells =3D <0>;
> +	};
> +

[Severity: Low]
Does this node naming and structure make sense if the frequency can vary per
board?

If the oscillator frequency can vary per board, shouldn't the node name in =
the
eic7700.dtsi file be generic like 'oscillator' rather than hardcoding
'clock-24m'?

Conversely, if the frequency is strictly fixed at 24MHz for all EIC7700
implementations, shouldn't clock-frequency =3D <24000000>; be defined direc=
tly
here in the .dtsi to prevent boilerplate duplication across board files?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706081055.1126=
275-1-pinkesh.vaghela@einfochips.com?part=3D2

