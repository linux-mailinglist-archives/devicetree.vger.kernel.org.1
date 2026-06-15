Return-Path: <devicetree+bounces-311710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BLpkOA2iL2oaDwUAu9opvQ
	(envelope-from <devicetree+bounces-311710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:56:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715A683F74
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:56:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XneBRBkH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311710-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311710-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F065A30027F6
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417833B3BFA;
	Mon, 15 Jun 2026 06:56:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399DA3B19B7
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:55:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781506560; cv=none; b=Mh6Pl3dQXhGaCYDFZ4XVeSp/ySf2dHnjcz4LaVke1Cl0Hi74+PU3FTa1Jan/Pw7Hki3pqEzJp+3obwcXSxnjwlKXbfnyIrhI7NtjYVokaz+xglOf+/fNSSnPuPGa9wWV1IhY/G8psaAIrOw5+s2QksGk9/exAtD/ChdUmElvtQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781506560; c=relaxed/simple;
	bh=NhDPTq7mXsbUypiWbHR5gFk6IcF+ux19r0TCN6+CMQg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fRx9QqMMlmnX1TzHC6muJbM1cdjfNusMcEhpyvsqtdL7Chs9o2IBnthWCrVhEEo1xdOxFjcZI00AOR90sgR1mgFdYVfZaFbwVpfScYAx3HSRRB/mvij/CgCrXEfPnKLeRFKDraRzI9A8+wOGIOq9kpucgjXUFkvNd433FInuig4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XneBRBkH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E3E21F000E9;
	Mon, 15 Jun 2026 06:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781506558;
	bh=T3LSXmzpTFTRTdihU3q1t/l6ZEL6HXyu5BiFM+333F4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XneBRBkHOo9ZVEpE/4VFLpoHJy9dIn6hqbNRVDwQI+Vxdczxv2WNz+2jadKLIxu34
	 JjYIYwFli7FKKbhV1UOk4odAX1P6iOcB0sc52R4bn1b2Fc9ykIr9hcfhDHx4Cz6d5K
	 B3F6r3MZq8VK0gGsFm86cpOMn9VZ/f1DOcNY6JJLhrTGo96U7siWxgvQhl0pwE3dVY
	 T5d6/ggx3lSlhDlEvf59lIXdlfPU6falTN51XElomK1oK7HfkEbbyA+tsv5SVe4wGd
	 p1MSUlh00EhVditTkzz6r1MGm51ChN+sTiBfCOQIKy+heVgcKpBRSMDFhgQGEalJ/z
	 PrsfseoX+ROzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: display: verisilicon,dc: generalize
 for single-output variants
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260615065003.76661-2-a0987203069@gmail.com>
References: <20260615065003.76661-2-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:55:58 +0000
Message-Id: <20260615065558.8E3E21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311710-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5715A683F74

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The top-level `clock-names` property enforces a strict positiona=
l sequence (`core`, `axi`, `ahb`, `pix0`, `pix1`) that conflicts with the `=
nuvoton,ma35d1-dcu` variant, causing valid device trees to fail schema vali=
dation.
--

commit 644d6513333f2ad52d35609ed1c0190fdeaa8192
Author: Joey Lu <a0987203069@gmail.com>

dt-bindings: display: verisilicon,dc: generalize for single-output variants

This commit generalizes the verisilicon,dc schema to support single-output
variants. It extracts variant-specific constraints into allOf/if blocks and
adds support for the Nuvoton MA35D1 SoC.

> diff --git a/Documentation/devicetree/bindings/display/verisilicon,dc.yam=
l b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> --- a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> +++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
[ ... ]
>    clock-names:
> +    minItems: 2
> +    maxItems: 5
>      items:
>        - const: core
>        - const: axi
>        - const: ahb
>        - const: pix0
>        - const: pix1
[ ... ]
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: nuvoton,ma35d1-dcu
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            - description: DC Core clock
> +            - description: Pixel clock of output 0
> +
> +        clock-names:
> +          minItems: 2
> +          maxItems: 2

[Severity: Medium]
Will this cause validation failures for valid device trees?

The top-level clock-names defines a strict positional sequence where the=20
second item must be "axi". However, the clocks definition for the=20
nuvoton,ma35d1-dcu variant indicates it uses "core" and "pix0".

Since the variant's clock-names block doesn't redefine the items array, won=
't
dt-schema evaluate "pix0" against the inherited "axi" constraint at index 1=
=20
and fail?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615065003.7666=
1-1-a0987203069@gmail.com?part=3D1

