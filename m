Return-Path: <devicetree+bounces-313557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N3efNYAYNGqWOQYAu9opvQ
	(envelope-from <devicetree+bounces-313557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:10:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FDF6A17F2
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:10:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TxWtOYsJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313557-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313557-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7A753013876
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE5B31ED7D;
	Thu, 18 Jun 2026 16:10:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61AA1DDC1D
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 16:10:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781799038; cv=none; b=mmsDpAr7LrgWYTgJYlth8cnXhkYGbJl43nkxDdmyOWDVPB64bW1hX2z5yBgU35cr9HEbKIopgribrNwZZOJ8tegp1itVZ4nRhD6N9Zmfmym2Q/ZfJstUNkQ1r2//KBtkNklOHJEPaH5zNoyBgUl2+WEf+GeGyo9GT8WnQqur0dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781799038; c=relaxed/simple;
	bh=9axRLpJPKjzDysIbQ94KaYEF8vGnh/56ahK/E9Z0IAU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=drBNPw1PtzzQJtg9ug0r4Ar461JTpOJd1jDVF+gI7YLiHfondME+ttF8ERZmsFxkiQHcDpuIvOC8qvtlQLmKOdIRp3KdPYDl8GYXb+4ojxkjJNLo/fFPrEIp7yXxOx/+VkkOmbAIg8t6a9g6PuSCBZN6bpwpB0AyOvfdVIIA0hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxWtOYsJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E95E1F000E9;
	Thu, 18 Jun 2026 16:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781799037;
	bh=3nXZPgulRa4wuuejmJDYrHu4OhbK+RW7DSL0aGmL+m8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TxWtOYsJpkUt3HmMDFPjFBq6sPeNt7ZKwBTZIzY7TP3Ke3kHaCrxuSRDGd0TaeZt8
	 ElhKSGkBHcZbRxAUNVsWS/aB0YregJGhoI7zq3NHjGmDnmS70xh/xcMFcO8KoVJLkl
	 y7tMiAa1/tK5WVrQx0UpaLPWybNWD9ziV0LGND+4I25WzMvuApLST6So2/6KIhi3hP
	 SGnnO0d2EiAzMwdl0mrY4RWeyrGhdMOo3Z5BQhYF3IMv8Pd7Nrxj0xVX79rvU76i6/
	 SGs51crktxDsImYiwmo7dG8x2Utx6rwDMdw8fQWj2QWTOs42lwEeK1E3u3ada0xGDb
	 IFmvK99c10QaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: magnetometer: add Melexis
 MLX90393
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nikhil Gautam" <nikhilgtr@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618160141.11409-2-nikhilgtr@gmail.com>
References: <20260618160141.11409-1-nikhilgtr@gmail.com>
 <20260618160141.11409-2-nikhilgtr@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 16:10:36 +0000
Message-Id: <20260618161037.4E95E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313557-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nikhilgtr@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,animalcreek.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 69FDF6A17F2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new entry for 'MELEXIS MLX90393 MAGNETOMETER DRIVER' in the MAI=
NTAINERS file is inserted out of alphabetical order.
--

commit 756049ed43f6fd027532ae2aea78e2889e87ad8e
Author: Nikhil Gautam <nikhilgtr@gmail.com>

dt-bindings: iio: magnetometer: add Melexis MLX90393
   =20
This commit adds devicetree bindings for the Melexis MLX90393 3-axis
magnetometer and temperature sensor. The initial binding documents the
I2C interface.

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index a92290fffa163..e9ddcd12feb5e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -24926,6 +24926,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/magnetometer/ti,tmag5273.yaml
>  F:	drivers/iio/magnetometer/tmag5273.c
> =20
> +MELEXIS MLX90393 MAGNETOMETER DRIVER
> +M:	Nikhil Gautam <nikhilgtr@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393.y=
aml
> +
>  TI TRF7970A NFC DRIVER

[Severity: Low]
This isn't a bug, but should this new entry be placed earlier in the file?=
=20
The MAINTAINERS list is generally sorted alphabetically, and the "MELEXIS"=
=20
driver block is currently being inserted in the "T" section, between=20
"TI TMAG5273" and "TI TRF7970A".

>  M:	Mark Greer <mgreer@animalcreek.com>
>  L:	linux-wireless@vger.kernel.org

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618160141.1140=
9-1-nikhilgtr@gmail.com?part=3D1

