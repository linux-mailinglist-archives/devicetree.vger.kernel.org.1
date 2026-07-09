Return-Path: <devicetree+bounces-323390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wvztHiRUT2pAegIAu9opvQ
	(envelope-from <devicetree+bounces-323390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:56:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 799F072DFBF
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:56:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cQPcTkEc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323390-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323390-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9C6D8304519B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667EC3E3148;
	Thu,  9 Jul 2026 07:44:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A92B43933F;
	Thu,  9 Jul 2026 07:44:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783583060; cv=none; b=tirLSe/KlIPZyELApoH1wfolcp6ZD3k5f4qdNF3OIsVPMVGHHC4aal2Qvt6QgymD+Za/TXYn4rXc5Sexk1kj9tlc+bGCNGVq6W3W69IUSwPxHK/BmNiqC9MU/Y0JsM8M9AnAp0rOJIaWgH/5/JEF3yyDYP4dBO//5IwboQXx89I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783583060; c=relaxed/simple;
	bh=zjaVX1nh9jUyOYhnWPmq81TKk7/d5DznNgwkuXAw/uA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XI15FD+q1alKSxbsa2R4eemE00kBZxJRmc1IPm68enBXwTMaX2pPwmbSQAKBMloi29uFgeAGr3TPDHKR9TaPid03M5VBBYI5rfTMYOj6tJbk7psGGosMX0V6hLZcg694Ln5VQqHOHUDr+yNCGbyITVaHmOEqrd2GgUdu0wwP6r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQPcTkEc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8D9D1F000E9;
	Thu,  9 Jul 2026 07:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783583059;
	bh=oh8xQoOOgY4Sfb3BAb0eeQpNdISArl5kdH4cYEwLLjA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cQPcTkEcFQU0AjohYO7kGiE53gIrFeOdxhIWgVqUFhGeelsBnjJiKyAlKITR+hppe
	 tWJepTqFj0fAaoXTkllOAKOFR1YjgWfhtfsfJeRSHJcskVt1f7rWmFTaXhB1LM1tN1
	 IJQ3rq2HKJC8XEa/XK1fTKDudNtv9XScVmmU30s1hQFHmVt22XFW0c7qgZeDHkvGRy
	 fNlZtQbzQe6IIP60oXDqYLwC2SIuylmEpcR8VpMIj+JGiJgXSTV4kOnxv+WRYBc2id
	 Wp9YsK4LXWR+smJiduzIIgdIO3TApeyrWrW7HJQLeACWc44ZCAlA1KQsCGPvZAPeV3
	 g++NPNgJtkdog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/11] dt-bindings: arm: apple: apple,pmgr: Add t6030
 and t6031 compatibles
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janne Grunau" <j@jannau.net>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-watchdog@vger.kernel.org
In-Reply-To: <20260709-apple-t603x-initial-devices-v1-4-55b305833123@jannau.net>
References: <20260709-apple-t603x-initial-devices-v1-0-55b305833123@jannau.net>
 <20260709-apple-t603x-initial-devices-v1-4-55b305833123@jannau.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 07:44:18 +0000
Message-Id: <20260709074418.A8D9D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323390-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,jannau.net:email,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 799F072DFBF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing corresponding power state compatible strings in the chil=
d node binding `apple,pmgr-pwrstate.yaml`.
--

--- Patch [4]: [PATCH 04/11] dt-bindings: arm: apple: apple,pmgr: Add t6030=
 and t6031 compatibles ---
commit 70fb3d6202b1ab439abc072cacf0b78492449f42
Author: Janne Grunau <j@jannau.net>

dt-bindings: arm: apple: apple,pmgr: Add t6030 and t6031 compatibles

This commit adds per-SoC compatible strings for the Apple M3 Pro, Max, and
Ultra PMGR blocks to the apple,pmgr binding schema.

> diff --git a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml =
b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
> index c67b67ba065af..1d2001836eb48 100644
> --- a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
> +++ b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
> @@ -38,6 +38,8 @@ properties:
>        - items:
>            - enum:
>                - apple,t6020-pmgr
> +              - apple,t6030-pmgr
> +              - apple,t6031-pmgr

[Severity: Medium]
Since these new compatibles are being added here, do we also need to add
corresponding power state compatible strings to the child node binding?

Looking at Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
under properties:compatible:oneOf:items:enum, it lists:

      - items:
          - enum:
              - apple,t6020-pmgr-pwrstate
              - apple,t8122-pmgr-pwrstate
          - const: apple,t8103-pmgr-pwrstate

Will device tree schema validation fail for M3 Pro, Max, or Ultra device
trees that define power domain child nodes if apple,t6030-pmgr-pwrstate and
apple,t6031-pmgr-pwrstate are omitted from that enum?

>                - apple,t8122-pmgr
>            - const: apple,t8103-pmgr
>            - const: syscon

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-apple-t603=
x-initial-devices-v1-0-55b305833123@jannau.net?part=3D4

