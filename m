Return-Path: <devicetree+bounces-306673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WkfTCBQtIWqDAAEAu9opvQ
	(envelope-from <devicetree+bounces-306673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:45:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D3063DB7A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:45:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bBVWQtzk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306673-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306673-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F8EC3016B46
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887053D6467;
	Thu,  4 Jun 2026 07:45:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703343D8125
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:45:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780559122; cv=none; b=p/JcE8Gl7Hk+tAywY/gN5HlCZ3xIlsqqo3Kt+JTsj1Mvo0ixXnHrhPAl4c/0ficHWN4yBoUy2j9zlXSQkE3rELditjuGY8HFJJL4oBLeKYK9fAIkFu1dmqHmDeyB/xQ5LkIp3gQlBeQ4Esxi+rimWEsU/TpLALxPBp7BO1fNOoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780559122; c=relaxed/simple;
	bh=4784Kku38umKBlO9rmNgUMarwdjy2JMiTqSv6zg8/p4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XJxhQzSNb8eBxi6Bdyq2ewuHjEZDb0MSmhdvZqK10SjCzQP+xBjwv/zxThlLMq0wPq80QDo5JUaNxAEUXItvUkGmC44/jxtXWQGidy2IYZLtisHeBJovKoAXJbdWs3G5EmqCbmKppoxL62fqwrlIpO9gQakhSh06eoEMixUoxHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBVWQtzk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5B181F00893;
	Thu,  4 Jun 2026 07:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780559121;
	bh=DdTsRe8l1ryrVl09rSosiuaZQ0I7wvIWjPNw9oudaKU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bBVWQtzko+lzjLo4u4vDKBfB4or/fWOiCIlMYy3oKXcvqCnm0MkDrcAAk0lI+91Qs
	 E3FD/STK5dOpagxCqEMtQTGnKw/ExUMCjhc/BTHS4Vtkq1l6lWVbhDy8snlGHgXnGu
	 LJAV6EMYGB1kbXF08FsD1DCMG9X7JyJQbJq8XuMbTOSMmPE72tR+SFsP0U3AfzBme7
	 0uqZ75KaTnyz9Ro3GOgpDKVYGQyyT5pPLreNbqbDYp7DgU6E/sbwPvHXaWISIaFI1v
	 NzKX//tlr32IkRYK+OoJSOZUS9EGUxWV3Qgm5wVyxSag2+fr48JTntKWgni/G5wNgB
	 M7gheDRGvmeCg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] of: reserved_mem: avoid stack buffer overflow in
 fdt_scan_reserved_mem()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260604073611.3954433-2-chenwandun1@gmail.com>
References: <20260604073611.3954433-2-chenwandun1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 07:45:20 +0000
Message-Id: <20260604074520.D5B181F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306673-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,lixiang.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6D3063DB7A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added bounds check for `dynamic_nodes_cnt` is placed o=
utside the block that evaluates whether a node is actually a dynamically-pl=
aced region, leading to spurious error logs.
--

commit 6a79f526de5e1185b7c79fb469545f4094fb402f
Author: Wandun Chen <chenwandun@lixiang.com>

of: reserved_mem: avoid stack buffer overflow in fdt_scan_reserved_mem()

This commit adds bounds checking on dynamic_nodes_cnt to prevent a
potential stack buffer overflow in fdt_scan_reserved_mem().

Link: https://sashiko.dev/#/patchset/20260604015332.3669384-1-chenwandun1%4=
0gmail.com?part=3D1 [1]

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c

[ ... ]

> @@ -341,6 +341,12 @@ int __init fdt_scan_reserved_mem(void)
>  		err =3D __reserved_mem_reserve_reg(child, uname);
>  		if (!err)
>  			count++;
> +
> +		if (dynamic_nodes_cnt >=3D MAX_RESERVED_REGIONS) {
> +			pr_err_once("Reserved memory: reached MAX_RESERVED_REGIONS(%d)\n",
> +				    MAX_RESERVED_REGIONS);
> +			continue;
> +		}

[Severity: Medium]
Will this bounds check trigger spurious error logs for statically-placed
regions?

Because the check is placed outside the block that evaluates whether a node
is actually a dynamically-placed region, it evaluates for all subsequent no=
des
once the limit is reached.

If the number of dynamically-placed regions exactly reaches
MAX_RESERVED_REGIONS, and a statically-placed region is processed
afterwards, won't it incorrectly trigger the warning claiming the dynamic
nodes limit was exceeded?

>  		/*
>  		 * Save the nodes for the dynamically-placed regions
>  		 * into an array which will be used for allocation right
>  		 * after all the statically-placed regions are reserved
>  		 * or marked as no-map. This is done to avoid dynamically
>  		 * allocating from one of the statically-placed regions.
>  		 */
>  		if (err =3D=3D -ENOENT && of_get_flat_dt_prop(child, "size", NULL)) {
>  			dynamic_nodes[dynamic_nodes_cnt] =3D child;
>  			dynamic_nodes_cnt++;
>  		}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604073611.3954=
433-1-chenwandun1@gmail.com?part=3D1

