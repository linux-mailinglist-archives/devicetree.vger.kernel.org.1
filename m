Return-Path: <devicetree+bounces-312695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XKxtGeqyMWoxpQUAu9opvQ
	(envelope-from <devicetree+bounces-312695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 22:32:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4476953D8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 22:32:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kD0wh4JY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312695-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312695-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E9531199A4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA25637F755;
	Tue, 16 Jun 2026 20:32:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC3C386C05
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 20:32:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781641942; cv=none; b=ggZvnxDKOBlA2NZ6rfA/N/bCYoltgYDGX6A4PrMP3VX2L+rDOSuSygwutejlRilb1icTQSjO2a8XrY/nKqhyamBHU+AsydF3CFEzAN44un8yZpUvuTzYo4a81PKlGu2SqHeEpKIh2m9fmcdrBZQYSJn8HHYfVtpw4fzEmIQ4hrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781641942; c=relaxed/simple;
	bh=jN9WVE3qrJ+cXWrAZsJ1rKwX9Zx7uQW7k5MADNOwPPs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LPaLMHE1E+/Zh27rQs0sl8Ni3cuXqAQCOZSYhKW9WWlptYyZqCH626vRIGlPVuUdVCa6Wql+Pmf58MGKSG/Gn6oKUri6i6fCoHYO8lH2iavmd5wXZCoOc3HAe9L2Oy8e6x3ZUf8yCE8gkVJdqznswCebaXWXkmUT8zjPCZMF6Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kD0wh4JY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEF5A1F000E9;
	Tue, 16 Jun 2026 20:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781641941;
	bh=vIO52RBmSXn+gYt3hA75Gjd+eciUJmUxRK/V0jAy1d8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kD0wh4JYMx/IhZJBOoC/VkeUvLThhqjx09onCwgWMrdiYL9xx0Lza4Xqj/MTK+fNT
	 9pxw2AYZAUx5+c8ZrXPKoNIDeQecdbJaypRuk3bYSQAB3R5X8G/aYaT0cmsAlRq7w7
	 fkujOc583U2PNaGzPYifKz0ew9yiP2Qh3ksWBWDeRspiAG3QWqgoEJFrpe0/Ee089B
	 4/Mjpi+wgArsSlRjs9HF7glrAVjEoS9H/8nPgIcCVgzFihg8K9JsPk+ubDwi38LOTy
	 NUdFq8QvxDiqiwsunuWCqVHaPk77JyeETm+EsdPhcII1D6gs2PqlHLOiDdtmypPD3X
	 HnBrnKVbpBXRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v4 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-zx29clk-v4-1-ca994bd22e9d@gmail.com>
References: <20260616-zx29clk-v4-1-ca994bd22e9d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 20:32:20 +0000
Message-Id: <20260616203220.EEF5A1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312695-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,infradead.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE4476953D8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added file pattern in MAINTAINERS does not match the crea=
ted dt-bindings file path.
--

commit ab1e6a61e65e8f9fc9215bf930c7a45ed74a798a
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

dt-bindings: clk: zte: Add zx297520v3 top clock and reset bindings

This commit introduces the device tree bindings and clock definitions for
the ZTE zx297520v3 SoC top clock and reset controller. It details the
hardware separation of clocks, PLLs, and documents the available clocks.

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 069b4aa6b523c..96a5f3bcfc06a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3869,8 +3869,10 @@ L:	linux-arm-kernel@lists.infradead.org (moderated=
 for non-subscribers)
>  S:	Odd fixes
>  F:	Documentation/arch/arm/zte/
>  F:	Documentation/devicetree/bindings/arm/zte.yaml
> +F:	Documentation/devicetree/zte,zx297520v3-*

[Severity: Low]
Does this MAINTAINERS pattern accurately match the new binding?

The newly added file pattern is missing the bindings/clock/ directory
components, so it will not match the created file at
Documentation/devicetree/bindings/clock/zte,zx297520v3-topclk.yaml.

>  F:	arch/arm/boot/dts/zte/
>  F:	arch/arm/mach-zte/
> +F:	include/dt-bindings/clock/zte,zx297520v3-clk.h

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-zx29clk-v4=
-0-ca994bd22e9d@gmail.com?part=3D1

