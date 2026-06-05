Return-Path: <devicetree+bounces-307255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AqDmHx6JImpSZwEAu9opvQ
	(envelope-from <devicetree+bounces-307255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 10:30:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86613646673
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 10:30:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cH0W1Z50;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307255-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307255-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8DB93304F9D0
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 08:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92933C1973;
	Fri,  5 Jun 2026 08:16:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE723C3787
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 08:16:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780647414; cv=none; b=Z5VYS3KFEAy9tkuYYjULRmmPKnNQQTUTSiiRn9RMRtPSBzftjEHl4p97c/5YsbRxqO+xd0hPnlJjFalMf3QPEXWNaUHpFiel7tgRP+LzLF8AM3RsaTdy9fuaAUv071WEcXooCeFllXnglf8yLqED3IIQjMohlPOc+MoKAMOjHpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780647414; c=relaxed/simple;
	bh=jmWPwB+VvwOS3U2BpullmrMkM8peUqE4CIfFy2USKAY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DSGnfo+UwconX/mR+quKJJMcvbvFeJ89U+HNruc8wtPnX3AKxDF11O4cuS42YZ+yiw5eUjFhuebuWAO9DfU2RaTaiuWPlawnLhWCcq48YRGXglEESpzDZUSZuhP8kqeaRUscV7EmqRZnF3W3NNwTJ4RZcTfXPB//GeonGBS2neU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH0W1Z50; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 865581F00898;
	Fri,  5 Jun 2026 08:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780647410;
	bh=IvoRvDrIeOWZs4QgqGRqJk36pwE+3rWSHFgJZGgZvCU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cH0W1Z50f7ewlqTWydfgF1kGopXUWQ1JoP+VtnsgPqSMuN71ufUn/+xaSsB2xX0ph
	 Yk01Yzm8dSWkz2FbqIAPIZHLlhT4XIoNXFDjBeMst7guim+3F9/C17seViSuT29sLk
	 X+si3yKUlCJCC/V7vSKPxQIFUYkLZs/ibYj/ZvSIjTxcGeJ09B0JO4FCrLLmpHqN3N
	 8Nzg5TjvAyScXOZLgnI+x0We2x3dRQi1Ni0JQebKhKPOPATWeogmch3dkJCStrmv8c
	 ld7PmC7uMAgQawWgj+mhQpGdhy++G2uKHiqrADmYoVZgtHrbg9AdstoLSe87IsamAh
	 ZNj4CG43NwDbw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 5/5] net: dsa: ks8995: Delete surplus driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Linus Walleij" <linusw@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604-ks8995-to-ksz8-v5-5-98baeb45e665@kernel.org>
References: <20260604-ks8995-to-ksz8-v5-5-98baeb45e665@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 08:16:50 +0000
Message-Id: <20260605081650.865581F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307255-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linusw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86613646673

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The transitional Kconfig symbol NET_DSA_KS8995 becomes invisible b=
y removing its prompt string, causing it to be silently dropped during conf=
ig migration and failing to enable the new driver.
- [High] The new ksz_spi driver fails to probe when instantiated via platfo=
rm data (non-DT), breaking existing non-DT ks8995 users.
--

commit 8ed57f24bf56fd7cb6ebaef9e6fc435940681d6f
Author: Linus Walleij <linusw@kernel.org>

net: dsa: ks8995: Delete surplus driver

This commit deletes the old ks8995 driver since the Microchip ksz driver
now handles these switches. It leaves a stub in Kconfig to automatically
transition users to the new symbol when migrating their configurations.

> The Microchip ksz driver now handles all switches that the
> old driver was handling, but better.

[Severity: High]
Does the new ksz_spi driver support non-Device-Tree (platform data)
instantiations like the old ks8995 driver did?

Looking at ksz_spi_probe() in drivers/net/dsa/microchip/ksz_spi.c, it
aborts the probe when no match data is found:

	chip =3D device_get_match_data(ddev);
	if (!chip)
		return -EINVAL;

For non-DT instantiations, this relies on the driver_data field in
the SPI ID table. However, ksz_spi_ids[] in the same file does not define
driver_data mappings for any chip entries:

static const struct spi_device_id ksz_spi_ids[] =3D {
	{ "ks8995" },
	{ "ksz8463" },

This means bus fallback matching will provide a NULL chip data structure,
causing the probe to unconditionally fail with -EINVAL. Could this break
support for existing non-Device-Tree users migrating to the new driver?

> diff --git a/drivers/net/dsa/Kconfig b/drivers/net/dsa/Kconfig
> index e704ab702c189..f2a48c5bfc12b 100644
> --- a/drivers/net/dsa/Kconfig
> +++ b/drivers/net/dsa/Kconfig
> @@ -98,13 +98,15 @@ config NET_DSA_RZN1_A5PSW
>  	  RZ/N1 SoC.
> =20
>  config NET_DSA_KS8995
> -	tristate "Micrel KS8995 family 5-ports 10/100 Ethernet switches"
> +	tristate
>  	depends on SPI

[Severity: High]
Does removing the prompt string make this symbol invisible to Kconfig?

Without a prompt or a default attribute, an invisible symbol unconditionally
evaluates to n. During config migration, such as when running make oldconfi=
g,
the user's previous selection in .config would be ignored and dropped.

Consequently, the select NET_DSA_MICROCHIP_KSZ_SPI statement below would ne=
ver
be triggered, causing users to silently lose switch functionality when upgr=
ading
their kernels.

Would it be better to retain the prompt with an obsolete label or provide
a default fallback to retain the old value?

> -	depends on !NET_DSA_MICROCHIP_KSZ_SPI
> -	select NET_DSA_TAG_NONE
> +	select NET_DSA_MICROCHIP_KSZ_COMMON
> +	select NET_DSA_MICROCHIP_KSZ_SPI
>  	help
> -	  This driver supports the Micrel KS8995 family of 10/100 Mbit ethernet
> -	  switches, managed over SPI.
> +	  This is a transitional option for users who had NET_DSA_KS8995
> +	  enabled. It automatically enables the new NET_DSA_MICROCHIP_KSZ_SPI
> +	  driver which supersedes it. This option will be removed in a future
> +	  kernel release.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-ks8995-to-=
ksz8-v5-0-98baeb45e665@kernel.org?part=3D5

