Return-Path: <devicetree+bounces-326810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fux+OZFSV2oZJQEAu9opvQ
	(envelope-from <devicetree+bounces-326810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:27:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 556B575C7AF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:27:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WVvisbWf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326810-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326810-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA336308564C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F244219E9;
	Wed, 15 Jul 2026 09:19:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6273542255D;
	Wed, 15 Jul 2026 09:19:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784107197; cv=none; b=cRXK5zEUe52ItYYoVicPCVduGJlgFV0QwIh5e6ui6EhVI4XAwbHgpY6kQ8CtSH4z2YqEikAGLGRl5xX2NKrACANPdV9fJtUzeU11GCg8wjK0NtVCjN9ASu2TZtrC5bgof3HoW9+BDhycQvkQdvN3v5xmCXW/BVvfFI+piEELIzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784107197; c=relaxed/simple;
	bh=yUQDqV+FQ1s5JVNL7DFRbgVaPUcsxAPa5AzTH0bG4YY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qd9yFL6t0eINHSzLQbDk2zh5f2lrM2UDuBMfxlG8rHyVUkzyYdLTGAvgYuF+kVs7/G0kgIJkxNbIwXYAUPV5xRVvuIPm80c1BK7krHCJpwDU6+f+2cn0ObGczVcK/9ofRcmPLe5oz1EBC5/4LDRUnoM6ascqzgsyCDxUmhy/nUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVvisbWf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A2C41F000E9;
	Wed, 15 Jul 2026 09:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784107195;
	bh=wCTgYzO14X4SFLDPj3xDd79Y338nL/5IDEphj+CWQxE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WVvisbWfxywznMzQU4SEuhH4QdbGIktBDBMCfO5E5owsg0IcwFeG7/tgWkAL3wdMr
	 y69/e3I3pVpnIPrV1WdQ64zCUogK4iKs0WHoPNYNG/pDoo1VPgoybFwYxdPKCXNE1I
	 AW7kPrCOPqlBPt0UEIfwXr+2mbeymLp/N8CxZ8fpfDU4VKzAitWAhG0p+UwPXYbQbj
	 8uQUHs9MZ30AHqfmgrVGGdFG+LU50CIdaNUPKYVsWDPVGsAmxBcQdMJ3ofaMPQyDgt
	 C2zwaZZAO6x1GvcsgQKb2LH9Bq3qFWvrdjX98bnnhN0lrkxS0GJgUA2Sdzc0SlUnKU
	 yEjNRv/qcvdlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/10] dt-bindings: arm: apple: apple,pmgr: Add t6030
 and t6031 compatibles
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janne Grunau" <j@jannau.net>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-watchdog@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-apple-t603x-initial-devices-v2-4-df65b2485710@jannau.net>
References: <20260715-apple-t603x-initial-devices-v2-0-df65b2485710@jannau.net>
 <20260715-apple-t603x-initial-devices-v2-4-df65b2485710@jannau.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 09:19:55 +0000
Message-Id: <20260715091955.9A2C41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326810-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,jannau.net:email,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 556B575C7AF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incomplete binding schema update: missing 'apple,t6030-pmgr-pwrstat=
e' and 'apple,t6031-pmgr-pwrstate' in companion schema 'apple,pmgr-pwrstate=
.yaml'.
--

--- Patch [4]: [PATCH v2 04/10] dt-bindings: arm: apple: apple,pmgr: Add t6=
030 and t6031 compatibles ---
commit 8f34f4075b928942fd23fe22c7c37b31b25aa7ec
Author: Janne Grunau <j@jannau.net>

dt-bindings: arm: apple: apple,pmgr: Add t6030 and t6031 compatibles

This commit adds per-SoC compatibles for M3 Pro, Max, and Ultra to the
Apple PMGR block binding.

> diff --git a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml =
b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
> --- a/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
> +++ b/Documentation/devicetree/bindings/arm/apple/apple,pmgr.yaml
> @@ -38,6 +38,8 @@ properties:
>        - items:
>            - enum:
>                - apple,t6020-pmgr
> +              - apple,t6030-pmgr
> +              - apple,t6031-pmgr

[Severity: Low]
Should the companion schema Documentation/devicetree/bindings/power/apple,p=
mgr-pwrstate.yaml
also be updated to include apple,t6030-pmgr-pwrstate and apple,t6031-pmgr-p=
wrstate?

While this commit adds the parent PMGR compatibles, missing the correspondi=
ng
strings in the companion schema might cause make dtbs_check to be incomplete
or fail for power domain subnodes in upcoming device trees for these SoCs.

For example, looking at the companion schema:

Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml:
      - items:
          - enum:
              - apple,t6020-pmgr-pwrstate
              - apple,t8122-pmgr-pwrstate
          - const: apple,t8103-pmgr-pwrstate

Could the t6030 and t6031 generation strings be added to this enum alongside
t6020 so that power-controller subnodes validate properly?

>                - apple,t8122-pmgr
>            - const: apple,t8103-pmgr
>            - const: syscon

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-apple-t603=
x-initial-devices-v2-0-df65b2485710@jannau.net?part=3D4

