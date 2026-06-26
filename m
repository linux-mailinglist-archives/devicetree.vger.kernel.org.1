Return-Path: <devicetree+bounces-315970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aJv+MZotPmrIAwkAu9opvQ
	(envelope-from <devicetree+bounces-315970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:43:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF0D6CB07B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:43:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jwkNbc8f;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315970-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315970-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52AFB3016026
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468113E3148;
	Fri, 26 Jun 2026 07:43:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9E73E1233
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 07:43:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782459799; cv=none; b=lwTQbS+hKP4Spnut+dNVkABC5IuZjN2AwGDTg1sP5Vz6NUxvX9C2OYzgkUfpiaazgpKK2ORw+J1kCzqmdQw3kajaWBdZKRRDbs9wpJt+RgQ2quvtcRm2Eq6pnrqObGKqycfg3ZKvnlaxJtqJuOitHd41rXAW/TRoBEQQAlJY89c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782459799; c=relaxed/simple;
	bh=tmreJTTSXAS3Iu1jqusxPe2nT8YWD6b4b4TCa7X0Pko=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=imejeTi/OrFOEFUj+9VgYYitVg3FVqQ35eSIbL/hCZcLp8AiZxSB+ce+aHOfLAEt100f9hXG5702udNSRbwC/73ueLVVMhik+gWJJ3LYoUOHv76WJnZVgRYmCcAr97RhZqGAl1fQsfSHvGILU4L0vF3OLaRwIYFRCmct48cRduc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwkNbc8f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16CC91F000E9;
	Fri, 26 Jun 2026 07:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782459797;
	bh=BZikA+Kv7qRc0LnyRjcDrtyySovdKv5Gmd0EGa8Me5c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jwkNbc8f+VGPR71HTuf6BeKzn0kFAV3cPQo45HNra1BX2pBG1q+mUbI5mmd+TkMUf
	 45rRLiZKlZ2EQ66ZElDqdjcNYxITFXoIRqLmFvHiruX0wVlb4oL0qK0N+MZcxrysj4
	 mji3rXXYGQIUJ34fxxSKDaY21CeH3C+Akhl2QVbJf3oVULKvnph89jSF+VYlxNJx5f
	 w4j06HuQPtZfn8lFQ1tz+xxEx1/V0wl+rIr22xtRRG5VYD1bLSxKrpc01VY9ocADVr
	 onRhHlYShPMQBUWFRb6PdcekxA62T3DbrNlQEX41CrIJag8HqzdPO91sbUMCBxlLKa
	 SKuGMpg1N5ASA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: raspberrypi,bcm2835-firmware: Include
 'reboot-mode.yaml'
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gregor Herburger" <gregor.herburger@linutronix.de>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260626-rpi-tryboot-v1-2-490b1c4c4970@linutronix.de>
References: <20260626-rpi-tryboot-v1-0-490b1c4c4970@linutronix.de>
 <20260626-rpi-tryboot-v1-2-490b1c4c4970@linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 07:43:16 +0000
Message-Id: <20260626074317.16CC91F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315970-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregor.herburger@linutronix.de,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,linutronix.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FF0D6CB07B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing Device Tree Schema Restriction for reboot mode pattern prop=
erties
--

commit d367af481cae3dea3dd1bb270d9e4466fb383031
Author: Gregor Herburger <gregor.herburger@linutronix.de>

dt-bindings: raspberrypi,bcm2835-firmware: Include 'reboot-mode.yaml'

This commit updates the Raspberry Pi firmware binding to reference the
reboot-mode schema. This allows reboot mode properties to be used to set
reboot modes like tryboot.

> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm283=
5-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm=
2835-firmware.yaml
> index 983ea80eaec97..30b490e0d9fb3 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmw=
are.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmw=
are.yaml
> @@ -133,11 +133,14 @@ properties:
>      required:
>        - compatible
> =20
> +allOf:
> +  - $ref: /schemas/power/reset/reboot-mode.yaml#

[Severity: Low]
Should this schema restrict the reboot mode pattern properties to a single
item?

The generic reboot-mode.yaml schema defines ^mode-.*$ as a uint32-array
without a length restriction. Because this binding doesn't override it with
maxItems: 1, the device tree schema will accept arrays of arbitrary length,
for example:

mode-tryboot =3D <1 2>;

Since the reboot-mode.c driver only evaluates a single 32-bit value using
of_property_read_u32(), this could lead to silent truncation of multi-cell
properties without any validation errors. Does it make sense to add a
patternProperties block here to restrict maxItems to 1?

> +
>  required:
>    - compatible
>    - mboxes
> =20
> -additionalProperties: false
> +unevaluatedProperties: false
> =20
>  examples:
>    - |

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rpi-tryboo=
t-v1-0-490b1c4c4970@linutronix.de?part=3D2

