Return-Path: <devicetree+bounces-324628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tXg6BMY7UWplBAMAu9opvQ
	(envelope-from <devicetree+bounces-324628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:36:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C09273D64C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:36:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KbM3Vs73;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324628-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324628-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 70FF5301FAB7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5251D0DEE;
	Fri, 10 Jul 2026 18:36:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECC928373
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:36:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783708611; cv=none; b=SXJklCnEsehpCXCasC63W3jt3aDm22SzRJJJzKDr+AHkgvpEcPszspotHHNycPqzzHyeYiPDHgG4kBU/hOnhQWDoN732HFZ3s5wcAXLE3nvx1CdKbyZEBC38L3baNo5BJgMZQyLXkV20J4S0ap7PDKbp1aL8FGrgKygbnjudGng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783708611; c=relaxed/simple;
	bh=fNirNZxYJzntpDdZ8X9U7M9S8Sci2eui249KxQQMgxg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FYl3AyCRMX+JVo2KOPJBRoH8gVGhyiAenMFnTTHfhjdw2Ls4bery8rD5BOkDpZTcOCqBIfcUWP7Oh+26lBlp6I+zdPIEgMGshGOvMkmqe28SNc+caGq8Z87lj1Dsit93eVJ0xm1FXL3tx/N4EM9bJiAxYZ97Hm0cXA1GYWJwZ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbM3Vs73; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE6331F000E9;
	Fri, 10 Jul 2026 18:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783708610;
	bh=vVqbAzVbh+kgU3SAyfix9WIp8PXZsk0zkZBzbpIAAG0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KbM3Vs73ndEXSyE0d7fpVYSXumPBgl6r1h8hO01DjDwAPv+vcWQL2H4nLfLmUI4uJ
	 3RYPh5erE9UUHMQfRsBg+dzdyNPVPTratflAxTDaITc5ZqDWkj633KKVMiXPeoXmhQ
	 +mzi5O28NRhIzXCsiIlGXdycD6f5ZIA5px0jex7flFU2a6tIpLHm2Hy6y38N+t2iu1
	 t7Ner2VJyYqnTlKodivq/WEKKYnbULNH8J1tfb4gHSGh1GCWmTkhVj1RYUpeeQdGYT
	 Hevtd5fh/c5xan+1SP9W17JB/9vi101eGyQIQ+0e6q3Ntd8x0rSrAS9nHDAotsYxdA
	 5Dh3/0Gb1Js3w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/7] clk: Use the generic OF phandle parsing in only
 one place
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TWlxdWVsIFJheW5hbCAoU2NobmVpZGVyIEVsZWN0cmljKQ==?= <miquel.raynal@bootlin.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-5-b4680787377e@bootlin.com>
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
 <20260710-schneider-v7-2-rc1-eip201-upstream-v2-5-b4680787377e@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 18:36:49 +0000
Message-Id: <20260710183649.DE6331F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324628-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C09273D64C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Switching to `of_parse_clkspec` breaks out-of-bounds indexed clock=
 lookups on nodes with `clock-ranges`, causing infinite loops and topology =
corruption.
- [High] API mismatch between `of_clk_get_parent_name` and `of_clk_get_pare=
nt_count` regarding `clock-ranges` support.
--

--- Patch [5]: [PATCH v2 5/7] clk: Use the generic OF phandle parsing in on=
ly one place ---
commit bc84db19056243e06a72beb625e47749500a0824
Author: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

clk: Use the generic OF phandle parsing in only one place

This patch refactors of_clk_get_parent_name() to use of_parse_clkspec()
instead of of_parse_phandle_with_args(). The stated goal is to consolidate
Device Tree parsing and ensure consistent handling, particularly to support
the parsing of the clock-ranges property.

> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 7d63d81ebc096..dad4bac10ad45 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -5364,8 +5364,7 @@ const char *of_clk_get_parent_name(const struct dev=
ice_node *np, int index)
>  	int count;
>  	struct clk *clk;
> =20
> -	rc =3D of_parse_phandle_with_args(np, "clocks", "#clock-cells", index,
> -					&clkspec);
> +	rc =3D of_parse_clkspec(np, index, NULL, &clkspec);

[Severity: High]
Does this change break out-of-bounds indexed clock lookups on nodes with
clock-ranges?

When falling back to the parent node, of_parse_clkspec() unconditionally
resets the index:

drivers/clk/clk.c:of_parse_clkspec() {
	...
	np =3D np->parent;
	if (np && !of_property_present(np, "clock-ranges"))
		break;
	index =3D 0;
	...
}

Iterators like of_clk_parent_fill() rely on of_clk_get_parent_name()
returning NULL to terminate when they exceed the available clock indices:

drivers/clk/clk.c:of_clk_parent_fill() {
	...
	while (i < size && (parents[i] =3D of_clk_get_parent_name(np, i)) !=3D NUL=
L)
		i++;
	...
}

Because the index is reset to 0 upon fallback, when the iterator exceeds
the child's valid clock indices, won't this successfully return the
parent's 0-th clock instead of failing?

If so, this could fill the array with duplicate copies of the parent's
0-th clock and corrupt the clock tree topology.

[Severity: High]
Does this create an API mismatch with of_clk_get_parent_count() regarding
clock-ranges support?

of_clk_get_parent_count() strictly counts the elements in the immediate
child node's clocks property and returns 0 if absent:

drivers/clk/clk.c:of_clk_get_parent_count() {
	...
	count =3D of_count_phandle_with_args(np, "clocks", "#clock-cells");
	...
}

Since of_clk_get_parent_name() now falls back to the parent node via
clock-ranges, what happens if a node relies entirely on clock-ranges to
inherit clocks?

If drivers dynamically allocate parent arrays based on the count, won't
they size them to 0 and skip clock initialization entirely, rendering
clock-ranges inheritance ineffective?

>  	if (rc)
>  		return NULL;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-schneider-=
v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com?part=3D5

