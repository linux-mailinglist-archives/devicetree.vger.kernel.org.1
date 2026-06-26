Return-Path: <devicetree+bounces-316179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D4a6JWC4PmrjKgkAu9opvQ
	(envelope-from <devicetree+bounces-316179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 19:35:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 070AF6CF6F6
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 19:35:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PXpFDMFB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316179-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316179-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E68C300A4C1
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 17:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1B0318EDF;
	Fri, 26 Jun 2026 17:35:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE31401A13
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 17:35:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782495324; cv=none; b=nqB8pZ0waye3P2D8gfZ4h6d3/OV6dvPN1bClyBcCYA/8FMkF4ILJx2wEQEWlsZa3mNG4DfllRJApXEyEq0ttUET/wzTDcvWJJVuDSMPd3jFcLt4hS9wgHdWMTHz1nFA64KdZhniMC+0g+Nozj9uQMLQUHPrMWz6RQkpFGlRuZ94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782495324; c=relaxed/simple;
	bh=ncKGowA1o91AP8N3WSUWsFtz5UuPjDrnlhLorXPSuHM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LGGQUTrpHdYx57DBl2pXS+aFQuWEBAkg4XL8kjZJZXfeRyD8p8I8VpN/kT7T2whvgdixN6GU8uPpFgM0ctnqCivrMhasRaIv6kA44yDF/363ocSGaseKZXnzvCyrc7EhSCLO4vW0PaBBOI8lYcMZ99unB7j7vCHvFD0bckUQbb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXpFDMFB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D83A1F000E9;
	Fri, 26 Jun 2026 17:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782495321;
	bh=bR1HWUdlvc4vxc+2cDF+fB2PizAK3hK3RGDw5+vc4ng=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PXpFDMFB5FTHyWaBhmAcvwR+SLWpW8NZ2wzaxUXPMpenTlhDseUEX6tOs6/MUDZhG
	 grtw5LvU94UbW0auesii48vyVadvyTuTWu1OqXF6Et/w8e6+orzWxJnrXfl+Sfybxk
	 TJgOAArUvyJ4FFatLFAMTU6n0ek5qfurKjR6ipjpduCA+8jNrTGA6e9ROK6XPrNvzG
	 ZQEPyivT0NzOb9FjuOFOHw89YXuoUMUM5ZlHxjRqBph0qIqcqewpcTfoXSHg1aNB35
	 eXD8140gUqueDUshMhqYOGsvJR/Z86mppQFoPl6lGnJp+0ULRJDvHKBOSOA0ipvQDT
	 95pBvj/nbBMeQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] of/address: Drop ISA parts when !CONFIG_ISA
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Palmer" <daniel@thingy.jp>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260626171906.476688-1-daniel@thingy.jp>
References: <20260626171906.476688-1-daniel@thingy.jp>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 17:35:21 +0000
Message-Id: <20260626173521.8D83A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316179-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:daniel@thingy.jp,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,thingy.jp:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 070AF6CF6F6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Wrapping the 'isa' OF bus translator in `#ifdef CONFIG_ISA` breaks=
 I/O address translation for LPC/ISA bridges on architectures that do not e=
nable `CONFIG_ISA`.
--

commit 2b56de0432a2e0bc839872a80da8947f0a3d2b72
Author: Daniel Palmer <daniel@thingy.jp>

of/address: Drop ISA parts when !CONFIG_ISA

This commit wraps the ISA-specific address translation code in of/address.c
with #ifdef CONFIG_ISA. This is intended to reduce code and data size on
configurations that do not enable CONFIG_ISA.

> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index cf4aab11e9b1f..9b2f0d462fb59 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c

[ ... ]

> @@ -349,6 +351,7 @@ static const struct of_bus of_busses[] =3D {
>  		.get_flags =3D of_bus_pci_get_flags,
>  	},
>  #endif /* CONFIG_PCI */
> +#ifdef CONFIG_ISA
>  	/* ISA */
>  	{
>  		.name =3D "isa",
>  		.addresses =3D "reg",
>  		.match =3D of_bus_isa_match,
>  		.count_cells =3D of_bus_isa_count_cells,
>  		.map =3D of_bus_isa_map,
>  		.translate =3D of_bus_default_flags_translate,
>  		.flag_cells =3D 1,
>  		.get_flags =3D of_bus_isa_get_flags,
>  	},
> +#endif /* CONFIG_ISA */

[Severity: High]
Will this break I/O address translation for LPC/ISA bridges on architectures
that do not enable CONFIG_ISA?

While the architecture itself might not have CONFIG_ISA enabled (such as
ARM64, PowerPC, or MIPS), they often still use LPC bridges in their device
trees for devices like RTC, UART, or IPMI nodes.=20

If this "isa" translator is completely disabled, the bus mapping will fall
back to the "default" translator. The default translator will incorrectly
parse these resources as IORESOURCE_MEM instead of IORESOURCE_IO.

Could this prevent drivers relying on I/O space access from probing or
mapping resources correctly on those platforms?

>  	/* Default with flags cell */
>  	{
>  		.name =3D "default-flags",

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626171906.4766=
88-1-daniel@thingy.jp?part=3D1

