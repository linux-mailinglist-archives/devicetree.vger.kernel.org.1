Return-Path: <devicetree+bounces-306525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y2HDB8S1IGoY7AAAu9opvQ
	(envelope-from <devicetree+bounces-306525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 01:16:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FCD63BD0F
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 01:16:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="nR8o2y2/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306525-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306525-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3B613052898
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 23:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564744D90C8;
	Wed,  3 Jun 2026 23:11:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4059C23D7CE
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 23:11:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780528284; cv=none; b=bWRNpYW23eFv0VpuJZSmPLXuu3TFPP3IpRBgVSmWuaD748Qjdgf/06IZBq+SsnveUzrb4+GlldVXcY0DGyEE1xunk5UAnQZBRvbJ0wQPhswRQ1nNq6Oqyjdi4zSS1ZwN/kRB8gT+dinmARhV9i3AZK4UnsrUB8mmACMBo0DEs34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780528284; c=relaxed/simple;
	bh=d+7Puorxl3BqhdJqt+T5U7VlpHgJL50JVDGZOwMy9Gw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WbSM0N+Rq9RM+GvWo8BqN6gFbEkqLPXvzSxkT18VuvoDXtoEUzAsp2B6eyuTxy7U7hq2sInvpkOc0i6lKR54DzMNKZ3hmRV0scc/s8F10LvcEN+VZkOUNJJFzsHAVdcRgv2lxr4EP4MUIQbqTZ+SuOWfsT7uYvKegJFifnOElSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR8o2y2/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 905771F00893;
	Wed,  3 Jun 2026 23:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780528282;
	bh=YAFImPVZ+gsfbUEcl0eg7TUr7jK6eTZ9KNVE11Un3X8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nR8o2y2/iO5BI/o1EKbaxCmCNTvOb+2/SIH36tCDKfEBxPbnDY23YRt64O5R4c0GZ
	 aAG62LOZWp9ee2Uc/jVS6r5X9Y8J/5XUXrKi3bNmeTidV75egPe0EwVA0aAR2QJbMH
	 grDsEzC4r5fqbLoi5SkInEhskHJmCGF3G+GCpvuOogyA8G2RFLymDV1B35W93B5GGt
	 oJrIOTCwNXsYS9hWmnMiK/uH+Ws/Sb4BqfxFE5284jKII+xpQ+BCRFXS8mn7umlQY6
	 HeGaXWL8xEf9kHmvrr6CAbNfDYIiJ9DWpE/+Bv+mzGTS4TvQ1t8vIDnnHnwi7T+B8y
	 px2Sms1Ji82fA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 1/5] net: dsa: microchip: Add fallback
 Micrel compatibles
Reply-To: sashiko-reviews@lists.linux.dev
To: "Linus Walleij" <linusw@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260603-ks8995-to-ksz8-v4-1-e15149ef21e7@kernel.org>
References: <20260603-ks8995-to-ksz8-v4-1-e15149ef21e7@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 23:11:22 +0000
Message-Id: <20260603231122.905771F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-306525-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linusw@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63FCD63BD0F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The Kconfig dependency `depends on !NET_DSA_MICROCHIP_KSZ_SPI` fai=
ls to prevent both drivers from being compiled as modules simultaneously, l=
eaving the probe race unresolved.
- [High] Enforcing blanket mutual exclusion entirely disables the KS8995 dr=
iver when KSZ_SPI is enabled, breaking support for legacy `micrel,ks8995` (=
KS8995MA) hardware.
--

commit 5818edfd41b48a4993fc7bbca349bb17e8aeaa95
Author: Linus Walleij <linusw@kernel.org>

net: dsa: microchip: Add fallback Micrel compatibles

Because of forking paths when Micrel was acquired by Microchip,
two devices also exist with the micrel,* prefix bindings.
Add these to the KSZ SPI driver so users can use the more capable
driver.

Make the KS8995 driver mutually exclusive with this driver
to avoid probe races.

> diff --git a/drivers/net/dsa/Kconfig b/drivers/net/dsa/Kconfig
> index 4ab567c5bbafc..e704ab702c189 100644
> --- a/drivers/net/dsa/Kconfig
> +++ b/drivers/net/dsa/Kconfig
> @@ -100,6 +100,7 @@ config NET_DSA_RZN1_A5PSW
>  config NET_DSA_KS8995
>  	tristate "Micrel KS8995 family 5-ports 10/100 Ethernet switches"
>  	depends on SPI
> +	depends on !NET_DSA_MICROCHIP_KSZ_SPI

[Severity: High]
Does this correctly prevent both drivers from being built as modules?

In Kconfig, the logical NOT of a module (!m) evaluates to m. Since both
NET_DSA_KS8995 and NET_DSA_MICROCHIP_KSZ_SPI are tristate symbols, if
NET_DSA_MICROCHIP_KSZ_SPI is configured as a module (=3Dm), the dependency
evaluates to m. This allows NET_DSA_KS8995 to also be built as a module.

Since both modules register identical device tree compatible strings, udev
will load both drivers concurrently, triggering the exact probe race this
was intended to fix. To correctly enforce strict mutual exclusivity, the
dependency should use the equality operator, such as:
depends on NET_DSA_MICROCHIP_KSZ_SPI =3D n

While this may be resolved in a later patch that deletes the old driver, th=
is
patch introduces a race condition for modular builds.

[Severity: High]
Does making these mutually exclusive break support for legacy hardware that
the newer driver doesn't handle?

The legacy ks8995.c driver natively supports the original micrel,ks8995
switch chip (the KS8995MA). The newer ksz_spi.c driver does not support
the KS8995MA chip. By forcing NET_DSA_KS8995 to be mutually exclusive with
NET_DSA_MICROCHIP_KSZ_SPI, this patch unconditionally breaks network switch
support on boards relying on the legacy KS8995MA hardware when the new driv=
er
is enabled.

Should the drivers be allowed to coexist to support their respective legacy
hardware, or should the new driver fully implement KS8995MA support before
the legacy driver is disabled?

>  	select NET_DSA_TAG_NONE
>  	help
>  	  This driver supports the Micrel KS8995 family of 10/100 Mbit ethernet

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-ks8995-to-=
ksz8-v4-0-e15149ef21e7@kernel.org?part=3D1

