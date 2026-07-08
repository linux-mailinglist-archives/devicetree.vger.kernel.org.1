Return-Path: <devicetree+bounces-322577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BzcxMfX8TWoGBQIAu9opvQ
	(envelope-from <devicetree+bounces-322577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:32:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 135ED722A5A
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:32:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YG1Bd7Zs;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322577-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322577-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6605530F0200
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4FA3EB7FE;
	Wed,  8 Jul 2026 07:24:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DB43EFFC4
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:24:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495490; cv=none; b=Fw9uiZVKpSLUcPXyRF937eaWBm2kB0LTCgI8JRz4vOrcyjXzrmUlQQ+NfmjQGGRE/31m5bvRQo00iN3xyTEnMoVMhydr+F6WdaB9X4Q+NXe8TIhdvFdmMSlqGZatClwr4wgx4qDkmR52DgIiKWAcRdM7llOZA7/lRv6WV6prxq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495490; c=relaxed/simple;
	bh=SsLFigvesMEIHd20e/R2WYHsJ9mAbZk3c2gOeGq+DJk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eBFXyiLnOb5dqYvUEKzunOhEIvCRM8z/27Lhcx6Hoz8s6tvEujCWSexWilghHtD5MIaMhmlo9D6JsUEszmcb6THXK1qcyZurCS94Timx4PMF4V6Jr9BhVt+2tuz//SNJkySP8fvsMDJoczDum3GG2OfbZV4U2pH1OnO4Usas8Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG1Bd7Zs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 590E81F000E9;
	Wed,  8 Jul 2026 07:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783495476;
	bh=33mh9Awz1pwFX9S5L01cw4bsUSApe5wLe2ECJawhhps=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YG1Bd7ZsxRlR+2kN+BxyzryF5qHsnd8dZGoQO37TukixqI6ga95LtGrbRoLvGLxi1
	 GuLriotTzInBUh3dpWVbsteEMwh7NNeorukDUzuxEN8qtZxcY9UsJfugMJShdoJgLL
	 BlIdztbb2C20AbZbUjOd7oxky+faMxR+Lt+1pRis1p6PjpqE1DnnUDO4y3auJlllY7
	 GLkHpwDyOYN3/nhRUb9PbvUf7FNfoT4VXrRca5YYi1nJYP6o6wAiOW3ffnWWrXRc9Y
	 Jj30C5cySi5EgxLoD+uwdNZh+RqT1ZUP50W9Ld+4k2+nXIv5mnscsk1Z0O1yP37qz1
	 tjur7UyVooIUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 21/26] printk: Register information into meminspect
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260708-meminspect-v3-v3-21-7aa5a0a74d5c@oss.qualcomm.com>
References: <20260708-meminspect-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com>
 <20260708-meminspect-v3-v3-21-7aa5a0a74d5c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:24:35 +0000
Message-Id: <20260708072436.590E81F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322577-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 135ED722A5A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The dynamic log buffer is registered into meminspect with a size=
 of 0.
--

--- Patch [21]: [PATCH v3 21/26] printk: Register information into meminspe=
ct ---
commit 898d5571e45a9513c93cedd97dbc95171637944b
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

printk: Register information into meminspect

This commit annotates vital static and dynamic printk variables for the
meminspect debugging tool. It registers variables like the dynamic log
buffers and info structures into the meminspect table during setup.

> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> index 2fe9a963c823a..f7f32c09b9b81 100644
> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c

[ ... ]

> @@ -1238,6 +1246,10 @@ void __init setup_log_buf(int early)
> =20
>  	local_irq_restore(flags);
> =20
> +	meminspect_lock_register_va(new_log_buf, new_log_buf_len);

[Severity: Medium]
Will this register the region with a size of 0?

Looking earlier in setup_log_buf(), new_log_buf_len is explicitly
zeroed out before this call:

	log_buf_len =3D new_log_buf_len;
	log_buf =3D new_log_buf;
	new_log_buf_len =3D 0;

Could this call be changed to use log_buf_len instead so the proper size
is registered?

> +	meminspect_lock_register_va(new_descs, new_descs_size);
> +	meminspect_lock_register_va(new_infos, new_infos_size);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-meminspect=
-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com?part=3D21

