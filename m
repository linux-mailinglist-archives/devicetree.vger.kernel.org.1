Return-Path: <devicetree+bounces-319380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iCxKKABeRmp6RwsAu9opvQ
	(envelope-from <devicetree+bounces-319380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:48:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E66DF6F7DD1
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:47:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dNzkhy2E;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319380-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319380-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B33DB3020A6F
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D8B478E3A;
	Thu,  2 Jul 2026 12:38:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9460355F46;
	Thu,  2 Jul 2026 12:38:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995917; cv=none; b=dd4e3sJY2Fa4meU2FuZlaF8ecU9kkjVgOre6HMO9W4+nCL6LB0L9efirrTxNR36FZ6j93Vpovt+gZr0p/VAPCsVgiJxWyCnB621QHsvTcqNjCWRZb4ANg8pDiW1Y1gSWVc7TkvRkeGNopONL8VOHaGG+1c2ggTLhBvAFwRZH2e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995917; c=relaxed/simple;
	bh=o4Bl5i/NFX5eGBIZoJYwpablEiOeQxneaG+7wdxFWEw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RF+gM2eSE548M+SKwTSXcdnigX1jXn6h4hvLT3E8SkL2TRcCqL7TDbwP7nWRTq6pcw61OeE4jEqtac7UCtb5HuctCQbyr3YQBKQ27tl1Ns6XWBszvYCQNb2vzHvN/v7yht+o7ytgTQ5eQIFsftrS9Iiwh/s+xsit4eS2oxLeYXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNzkhy2E; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6801F000E9;
	Thu,  2 Jul 2026 12:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782995916;
	bh=ReZ++DXulMO9R1ndGOQKk48dpQquKICYLIRzoKuOwxM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dNzkhy2EQlWS3S4dWVjQudL/sG7ermVoT+gzeirkUDiu4enDnGlrjTdTt6EYfguqi
	 ymi1lhq52rDWmknO/syhG7AorANZ8fPB8Ictgq6q2HAB+6fDgdzYEW/vsseTt59VXc
	 PVQszoLxpOHR6jfL26QBD+jATcfJ9+tVIcyBLwziJTuP6OXyVYdZ5WQfEAJHm6mhTz
	 mfTqt1XrSa6vERt5WFKnrWmLNJanZvNqDb0jVCcAgi7d+RssOOt+Jg1HI6zf647PJj
	 Ugkk/nw+jcNryFGaxA6GjRDzGZWnX3LSMcT7SwEwt80IbecdYY8kpkNULjAtj0kp7D
	 70ClyrX1Ej8jQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v2 5/9] dt-bindings: watchdog:
 renesas,r9a09g057-wdt: Add SYS syscon support
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, linux-watchdog@vger.kernel.org
In-Reply-To: <20260702123112.161160-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260702123112.161160-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 12:38:34 +0000
Message-Id: <20260702123836.3F6801F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:linux-watchdog@vger.kernel.org,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319380-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E66DF6F7DD1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The deprecation warning message instructs users to pass a register =
offset via 'renesas,sys', contradicting the schema which restricts it to an=
 IP instance index.
--

commit dd09e9278d1657dcf283ff0886c7ec9901f648a4
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

dt-bindings: watchdog: renesas,r9a09g057-wdt: Add SYS syscon support

This commit introduces a renesas,sys phandle-array property to allow the WD=
T=20
driver to access its control register via the system controller. It also=20
deprecates the second reg entry in favor of this new approach.

> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057=
-wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wd=
t.yaml
> --- a/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.ya=
ml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.ya=
ml
> @@ -48,6 +48,17 @@ properties:
>    resets:
>      maxItems: 1
> =20
> +  renesas,sys:
> +    description:
> +      System controller registers control the start/stop of the WDT, and=
 halt debug.
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to system controller
> +          - description: watchdog IP instance index
> +            minimum: 0
> +            maximum: 5
> +

[ ... ]

> +          else:
> +            properties:
> +              reg:
> +                description: Deprecated. Use renesas,sys to pass the off=
set
> +                             of WDTDCR register instead.

[Severity: Low]
Is this deprecation message accurate regarding passing an offset?

Looking at the renesas,sys property definition added above, it expects a
watchdog IP instance index with a maximum value of 5, rather than a register
offset.

Could this description mislead device tree authors into providing a raw
register offset instead of an index, leading to schema validation failures?

> +                minItems: 2
> +                deprecated: true
> =20
>  additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702123112.1611=
60-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D5

