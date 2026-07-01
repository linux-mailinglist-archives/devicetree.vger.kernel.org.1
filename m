Return-Path: <devicetree+bounces-318662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hp7UJdAYRWq66woAu9opvQ
	(envelope-from <devicetree+bounces-318662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:40:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1A56EE3B0
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:40:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eA8vzGeo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318662-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318662-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9529B305BFD3
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325EB48BD4E;
	Wed,  1 Jul 2026 13:35:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CD248BD26;
	Wed,  1 Jul 2026 13:35:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782912939; cv=none; b=GwcsJQusExiFwHXCrUjBavgd8A0Yj0H2mp9L9yDjvkU7k9cPi2yoyXPEnWsgm8Uh4b9Dp56vFKXSwbQrB+A/AxeJ2vXZub/YoMind97tX/6UQwatD3sH8gbhFTAZ3hCP8mwOo5E+zpQiFvXcJkgIw/NkgCBVYf4Hnzpi/euA70s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782912939; c=relaxed/simple;
	bh=oKA2/aIIdCx1Ob+N9y4UF6SYs35YBxPL3Bef+Olofuk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bD8GV7p4uJvtfRzuSwKx1nMaR0V4yEfJsTq4VsIK9J12QhKj9KcpRLIHOAyOGwFU18zuyaCavHEY00Y7Te7oDgGCOdNIDmarsU8dJB36n0SuJxJS3re/kk2qlo1pB0V+hJylvCf1fpvPkQRzYXkUSwpMEewuGZVDkjqp2A6RicM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA8vzGeo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 480731F000E9;
	Wed,  1 Jul 2026 13:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782912936;
	bh=OObo0zXZJwbEpskHy2AgbBJPVuIP4M++hFxwfUMrzmk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eA8vzGeo4MPnFh2+R6PtIZlbLyFj+SGEnOw5PHWdoQsqduzwk9fEgyKaBpWK3agwR
	 QwGXs39ZI8no+D7JnvF4JwKwkcy5rUxRA0Uiq2OTgp4eEyKcJq4NlX4l7sb6ZkDEpc
	 awNJsORjTVnmqHRqiXfjcsWXp7uwrk/1ehGrepnowGzkLcm8ejY/aMNlxY4ZLKrNbY
	 iAtUnXTY8UxdQP1oH/cNMw7z0WCufQSOzUuESWQhCHn9oDTjZJ4LED6Cy37MBNEku0
	 jT6jUQ2oAoSC8Io+lqDVpQFzU4iI8qNtjJZMK7tOacAIKlyDCbW4l1asEcLlZZcdBZ
	 EInAJ9VuhRlYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 08/17] dt-bindings: riscv: Require block-size for
 Zicbom, Zicbop, and Zicboz
Reply-To: sashiko-reviews@lists.linux.dev
To: "Guodong Xu" <docular.xu@gmail.com>
Cc: robh@kernel.org, kvm@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701-rva23u64-hwprobe-v2-v5-8-2c61f94a695a@gmail.com>
References: <20260701-rva23u64-hwprobe-v2-v5-0-2c61f94a695a@gmail.com>
 <20260701-rva23u64-hwprobe-v2-v5-8-2c61f94a695a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 13:35:35 +0000
Message-Id: <20260701133536.480731F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:docular.xu@gmail.com,m:robh@kernel.org,m:kvm@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:docularxu@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318662-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B1A56EE3B0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] JSON schema 'if' blocks incorrectly match nodes missing the 'ris=
cv,isa-extensions' property, erroneously enforcing block-size requirements =
on legacy device trees.
--

commit 08f47eb689e1ffc05b399844b4f633278d53641f
Author: Guodong Xu <docular.xu@gmail.com>

dt-bindings: riscv: Require block-size for Zicbom, Zicbop, and Zicboz

This commit updates the RISC-V extensions schema to make block-size propert=
ies=20
mandatory for the Zicbom, Zicbop, and Zicboz extensions. The goal is to cat=
ch=20
missing properties during dtbs_check since these extensions do not have a=20
default cache block size.

> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index 5ffc40d599c02..f4dd34d446c02 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml

[ ... ]

> @@ -1142,6 +1142,32 @@ allOf:
>            not:
>              contains:
>                const: zilsd
> +  # All three Zicbo* extensions require their block size property as the=
re's no
> +  # default.
> +  - if:
> +      properties:
> +        riscv,isa-extensions:
> +          contains:
> +            const: zicbom
> +    then:
> +      required:
> +        - riscv,cbom-block-size

[Severity: Medium]
Does this JSON schema 'if' block inadvertently evaluate to true for nodes
missing the 'riscv,isa-extensions' property entirely?

In JSON schema validation, the 'properties' keyword only applies constraints
to properties that are actually present in the instance. If a device tree
node lacks 'riscv,isa-extensions' (such as legacy nodes using only the
deprecated 'riscv,isa' property), this 'if' condition will vacuously succee=
d.

Will this erroneously enforce the 'riscv,cbom-block-size' requirement on
all those legacy nodes during dtbs_check?=20

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-rva23u64-h=
wprobe-v2-v5-0-2c61f94a695a@gmail.com?part=3D8

