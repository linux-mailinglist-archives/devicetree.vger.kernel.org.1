Return-Path: <devicetree+bounces-315911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7v1+IVn1PWoa9QgAu9opvQ
	(envelope-from <devicetree+bounces-315911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:43:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2EF6C9F45
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:43:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Wv2yRmVG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315911-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315911-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79177302A2FA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 03:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE30F2BDC0E;
	Fri, 26 Jun 2026 03:43:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C154D225775
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 03:43:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782445398; cv=none; b=H0bT3rzrIR5594rv1IxK5t/ixELjpxEJFGiMs0F2vt3chXJZ06yjZwrgAjsixN44lG6mnMbfiZL7hc5Bhu0P1Yh8TXvs7y+qWgZsXRhUME0xF2e/fnOzNxjPR7w7Gu5QDPVQAi4w+CyEVj6diJP/rrfxlsroZ03v9X2TjgDO6qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782445398; c=relaxed/simple;
	bh=XfXzYOumHAA0oM13K44N9eLE2yi7Ha5XlIkaF8juPFE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fPjIO6QirYij7Ynok/p6xRKzos4HRGaU8BCQWp1LRi8rBh4ltffdZNzbRbWkOftSg5S75pFkcpQZ/on8BxGDYemL00qLD9zkFt35xn66ZgT5yIPpVOOyBeJa7zRj1Z60NB7J04ejuCrzQnq8pEFf8xEad+al0ClifbcLak7z8R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv2yRmVG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 250CF1F000E9;
	Fri, 26 Jun 2026 03:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782445397;
	bh=QvWU6qL7RZ3yfkLWfbSm+tAZxEODLM9S+CaAzvGwDrk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wv2yRmVGPW4pnfKoOdJUQ5mHf8Twv8aIDu489+wKCsGd0N2SqSHfa2hX/JoffhhQz
	 ILeafR1r3VI0aN8IUr1cv0EbkFiwmAfCsulRkIT2rzl8h0BjG+L/Db/uw7kv3v7aJe
	 vEuVuBm2ntraYvXYG/k3AbXY1foxK7GUA++aCB1L1HJZfgkPtHape11DnwCV/wQEMi
	 xtn/vXAn8eeRyhYl13b4x73b3ESKqxw2O61/RUNsKpkEjgtzszCwoNKCHC4KRQN+0f
	 V+OVFzI0ICzhZWMcgAfz5Yl5dBI7BcbIk27MDKm+JQnMQwowDanYLLzr1rHtm/hz+K
	 pQ6cPstsNGeXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: tegra: Add lenovo,thinkedge-se70
 compatible string
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jiqi Li" <lijq9@lenovo.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260626033418.520762-2-lijq9@lenovo.com>
References: <20260626033418.520762-1-lijq9@lenovo.com>
 <20260626033418.520762-2-lijq9@lenovo.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 03:43:16 +0000
Message-Id: <20260626034317.250CF1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315911-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:lijq9@lenovo.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB2EF6C9F45

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The compatible string array for the Lenovo ThinkEdge SE70 omits the=
 underlying Xavier NX SOM compatible string.
--

commit bdfb0a0b8f7c5312dd01ccd7b35c0e589b16d8f5
Author: Jiqi Li <lijq9@lenovo.com>

dt-bindings: arm: tegra: Add lenovo,thinkedge-se70 compatible string

This commit adds the compatible string for the Lenovo ThinkEdge SE70 carrier
board, which is based on the NVIDIA Tegra194 (Xavier NX) SOM, to the ARM
Tegra device tree bindings schema.

> diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documenta=
tion/devicetree/bindings/arm/tegra.yaml
> index 033a63f6c0687..960c604ef9a3a 100644
> --- a/Documentation/devicetree/bindings/arm/tegra.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra.yaml
> @@ -268,6 +268,10 @@ properties:
>          items:
>            - const: nvidia,p3509-0000+p3668-0001
>            - const: nvidia,tegra194
> +      - description: Lenovo ThinkEdge SE70
> +        items:
> +          - const: lenovo,thinkedge-se70
> +          - const: nvidia,tegra194

[Severity: Low]
Since the Lenovo ThinkEdge SE70 is a carrier board based on the NVIDIA
Tegra194 (Xavier NX) SOM, should this items list also require the underlying
SOM compatible string (nvidia,p3668-0001)?

Restricting the array to exactly two elements here implies the corresponding
device tree will omit the SOM fallback string. Omitting the intermediate SOM
string prevents the OS from natively identifying the underlying module and
could cause drivers or quirks targeting the Xavier NX SOM to fail to match
on this board.

>        - items:
>            - const: nvidia,tegra234-vdk
>            - const: nvidia,tegra234

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626033418.5207=
62-1-lijq9@lenovo.com?part=3D1

