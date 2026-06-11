Return-Path: <devicetree+bounces-310054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XUJYNEYQKmpyiAMAu9opvQ
	(envelope-from <devicetree+bounces-310054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 03:32:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B87366DA57
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 03:32:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PDCxZPlI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310054-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310054-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9905309D102
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 01:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE0B61DED4C;
	Thu, 11 Jun 2026 01:32:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B58A450F2
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 01:32:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781141571; cv=none; b=Dehn7qxmh26vXC6kKZpoQxMyaUEfUkgHElsq+o3RtkDqr6/8+Z1b5pIibTpVIyf/o/nn283UUHegQb+yEP8QmEKWWxN0LFQrlBS+n7qGt7tbvyD2/bhtIl7wDvxhBSecB042FZE6jVtDHgLpIRPLL7q4GhxXL4D7ydVMA3mvEhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781141571; c=relaxed/simple;
	bh=bFnBxkkma2BGYEw4iDuNEgr7ryBODbF3GGrt3XcCZwA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YRowDOi2NH0yEexV9A56y3M92jjE9hq/7EHpVBulFicSJISBCcCh8RN/jcCvSQqedroS1goGlqEfyS1Ze0VzT21C+mclueLY+iGu9eJA7leUpNBEXWsfDoqNUSsiQOOrU31ahE3Ga0oZvdetq6ivZwDKnqpSIAz9mmcPLe4CVR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDCxZPlI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E03641F00893;
	Thu, 11 Jun 2026 01:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781141570;
	bh=lEAyT7t+VlP9JknEnBM0Xt0PcUefAyMIvunciMYN7lc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PDCxZPlI7neVGPcxIDtEDG6KaOm1lN77XczW+Vr8yC6dn2q8+9YO5326g3OK/A/v3
	 m/hHWMgoSAhOMgGvy7IYByI5S0Mpje3KWl9+kt5bJLJmm4XzjXgJQ7rCZQ8FQoMbOz
	 ImOWRcbmB8o5F9wZyt1sow5gFcgL7PFn71pgwSf/K07orHdrNZeZ7TWP1z/M6Q2jTX
	 E6MflpL0O/9Naq/bPGbLEX5Tvoo9tNCt1s0wlBj59FuX5Ow1x56VUYu9RPHPZUIl8Z
	 40EB5wIZwLpylbHCA71o4cRp/6k0BmzskH1OqrllRXFhskv4JqI+LzYGJU6hU2uHKQ
	 WlTBAddxwxuxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v8 2/6] dt-bindings: ethernet: eswin: add
 EIC7700 eth1 RX clock inversion variant
Reply-To: sashiko-reviews@lists.linux.dev
To: lizhi2@eswincomputing.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610012907.894-1-lizhi2@eswincomputing.com>
References: <20260610012907.894-1-lizhi2@eswincomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 01:32:49 +0000
Message-Id: <20260611013249.E03641F00893@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310054-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:lizhi2@eswincomputing.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B87366DA57

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Using a top-level `oneOf` partition for `compatible`-based const=
raints breaks schema extensibility and violates dt-schema conditional patte=
rns.
--

commit c1875936c193e91a73baa1d661559e819f16e710
Author: Zhi Li <lizhi2@eswincomputing.com>

dt-bindings: ethernet: eswin: add EIC7700 eth1 RX clock inversion variant

This commit adds a new compatible string for the EIC7700 eth1 MAC variant
to handle RX clock inversion requirements. It introduces specific
tx-internal-delay-ps constraints for each variant using a oneOf block.

> diff --git a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml=
 b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> index 4e02fedae5c67..8cb7545c56e87 100644
> --- a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> +++ b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml

[ ... ]

>  allOf:
>    - $ref: snps,dwmac.yaml#
> =20
> +oneOf:
> +  - properties:
> +      compatible:
> +        contains:
> +          const: eswin,eic7700-qos-eth
> +      tx-internal-delay-ps:
> +        minimum: 0
> +        maximum: 2540
> +        multipleOf: 20
> +
> +  - properties:
> +      compatible:
> +        contains:
> +          const: eswin,eic7700-qos-eth-clk-inversion
> +      tx-internal-delay-ps:
> +        minimum: 2000
> +        maximum: 4540
> +        multipleOf: 20

[Severity: Medium]
According to the device tree bindings subsystem guidelines, YAML binding=20
schemas typically use allOf with if-then blocks to apply different=20
constraints based on the compatible string.

Does placing a oneOf block at the root level create a mutually-exclusive=20
validation partition that will break schema extensibility?=20

If a new compatible string is added to the enum in the future, it looks=20
like it might fail the entire oneOf block by not matching either arm,=20
causing the whole document to fail validation.

Could this be rewritten using allOf and if-then conditionals?

[ ... ]

> @@ -67,11 +89,6 @@ properties:
>      maximum: 2540
>      multipleOf: 20
> =20
> -  tx-internal-delay-ps:
> -    minimum: 0
> -    maximum: 2540
> -    multipleOf: 20
> -
>    eswin,hsp-sp-csr:
>      description:
>        HSP CSR is to control and get status of different high-speed perip=
herals

[Severity: Medium]
Is it intended to remove tx-internal-delay-ps entirely from the main=20
properties block?=20

Removing the property from the root properties block is usually considered=
=20
a schema anti-pattern. Should the base property definition remain here,=20
with only the range constraints being overridden in the conditional blocks=
=20
above?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610012727.848-=
1-lizhi2@eswincomputing.com?part=3D2

