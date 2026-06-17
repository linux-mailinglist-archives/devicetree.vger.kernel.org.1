Return-Path: <devicetree+bounces-312971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WSlHIrGKMmoE1wUAu9opvQ
	(envelope-from <devicetree+bounces-312971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:53:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2991B699501
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:53:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=naqa9CBh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312971-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312971-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C13D3202C53
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D26A3E9F93;
	Wed, 17 Jun 2026 11:37:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A6F3E638E
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 11:37:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781696223; cv=none; b=LmuwoI202wEcDY6NDzDiP/IHGMnyQVoSAJZ27HV9mezzP6uaeOfMVRh5LDw/jlvVkIrudMdAdccnn7rEp4p9mLO39Zr0PV98uJRWxdGG+QqZ9jf8a4ZPv/ZKeLOqu/btAkb6c6tuevtJpQooeq1SKXnPKOQgK0GwcRwgPaEoNRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781696223; c=relaxed/simple;
	bh=SiUgdxQngw/T5yFa0vsy39MbcKcD3q8S6Z+CM4QwRWk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=r2Iu0TnG6XyuxDEtseHK9ut2L/N6FVI1xr8rxg8pJmszb5XZZBK2f8NwDB5Aw9L+Wh6Bd7dNDvzM2C/RGURehvoHUASJl686PiOC8GjYJXBOm+9wwq5GNwb+YJj2Z/9+cnZhzzXYfXNUdLHRbrLccMBkwrArqT+3Mw6UdOgJiY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naqa9CBh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8831B1F00A3A;
	Wed, 17 Jun 2026 11:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781696221;
	bh=cNSauPqspIKorUpVhjB9qEi4i4JZ8YC79hY2mqPfNr4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=naqa9CBh/OF4fUZHHgOsmW6ZsNThPBDzKMIaHTxCB83cCkq9ccLmefpmHmiUy1JOb
	 DrDe3rFPy8fIGPHJD/UKMXszpZ+xYznFnxFZzFtzW3tIfvOadC/3LXkUu7zZOQrvQR
	 9X7d35VxraGzfYvpYr1sSjJW2ld80vPx6DAS21VwEo2r45nxetyJn0FeMsAUwOmLhv
	 17hEX97iNIjf0w4l3YYYwgzZK0KzpUB/61dcrfvEtLxpfcJkWtyxqJNmqzMm6Ma8Jv
	 SK4Hbbh6CYR2RCbxWDc3czCXDZzIbGfsGoo4znZOrElbhua09HmG4UA/ryT2+StjyR
	 Zxs0fTqwXC/qQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: rng: timeriomem_rng: add width and
 mask properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617112642.1897096-1-inasj268@gmail.com>
References: <20260617112642.1897096-1-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 11:37:01 +0000
Message-Id: <20260617113701.8831B1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312971-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inasj268@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2991B699501

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Use of non-standard `width` property instead of `reg-io-width`.
--

commit 7dac0db93dcf3017652753bebd5c0a2a7a2a06b5
Author: Jad Keskes <inasj268@gmail.com>

dt-bindings: rng: timeriomem_rng: add width and mask properties

Add optional width (8, 16, 32) and mask properties to the binding. The width
selects the bus access size for reads, while the mask allows filtering out
non-entropy-bearing bits.

> diff --git a/Documentation/devicetree/bindings/rng/timeriomem_rng.yaml b/=
Documentation/devicetree/bindings/rng/timeriomem_rng.yaml
> index 4754174e9849b..636305f211c88 100644
> --- a/Documentation/devicetree/bindings/rng/timeriomem_rng.yaml
> +++ b/Documentation/devicetree/bindings/rng/timeriomem_rng.yaml

[ ... ]

> @@ -26,16 +40,26 @@ properties:
>        instead.  Note that the default quality is usually zero which disa=
bles
>        using this rng to automatically fill the kernel's entropy pool.
> =20
> -  reg:
> -    maxItems: 1
> +  width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 32
> +    enum: [8, 16, 32]
>      description:
> -      Base address to sample from. Currently 'reg' must be at least four=
 bytes
> -      wide and 32-bit aligned.
> +      Access width in bits.  Determines whether the read is performed as
> +      an 8-bit, 16-bit, or 32-bit bus access.

[Severity: Low]
Should this binding use the standard reg-io-width property (representing the
width in bytes) instead of introducing a custom width property in bits?

Using the established reg-io-width standard prevents fragmentation of the
device tree API conventions for specifying memory-mapped I/O access width.

> +
> +  mask:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0xFFFFFFFF
> +    description:
> +      Mask applied to the value read from the register.  Bits set to 0 in
> +      the mask are cleared in the output data.  Default (no mask) passes
> +      all bits through.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617112642.1897=
096-1-inasj268@gmail.com?part=3D1

