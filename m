Return-Path: <devicetree+bounces-319977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FXY4Kh+FR2oHaAAAu9opvQ
	(envelope-from <devicetree+bounces-319977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:47:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0852700CA5
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:47:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NnXQjGcZ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319977-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319977-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E702D300463B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4370C3ADB98;
	Fri,  3 Jul 2026 09:43:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E61037A83B
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 09:43:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783071795; cv=none; b=EAGx/Jwv1uJ0+AY7a88DzkJ3bydhR/YRMDZxcOIbAIMYIpc8FPyIyJznEgdF67HYKoECujI6VhyuQ4Bi7luDHTxUAPox+YNaSApE6AFfedADTOlXptqzBy3jPH1OYMG3WHZByrvGX3lwjXU5AbWfJxR4MoTWBHbVtU9wHUwUovU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783071795; c=relaxed/simple;
	bh=WsD+BMes8vmT+EMga4jtnQFW2H+Tvv0aWhnNXQETMKE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=P88OJwZgkaoGIC0R5HTLUZSHunYe2u4+0ECdNmuCLM0XDOc+V/iT+xkXqmUovS1/QjlYRXR14D2MaL/OA6bUvVZrE9viiyhgQEVNLAfCHgfkTBCP6gD1TyYK9b1gaUr23PWRwmba90OyjGEZ9TGgPwCEGwcbGuK4be4hTm/5koA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnXQjGcZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF191F000E9;
	Fri,  3 Jul 2026 09:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783071793;
	bh=eHgoyxrcRfkFo8H884rdPb8k0DID9NE9xe5arkIdte8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NnXQjGcZ4WoxSu/DC7HzFz3lUEerVzSPK4hYlqvgx7jJVMjNgvgrYge/0iaEzR7C6
	 IPa6oNn1w3PvXfkQDaUyI6gmdO8APdNQPlQoOHMzNWEYBHQCwJXNwDDSg9k5q1tv7J
	 DCr9K6gE3Q14fKOPQuvCPc0EaHDct7wlBRnlB0seDv5PJcJ2R7vyOf4LO9goUqjjvE
	 vDqdb9JSLeuy2TEhAOIdKf5+x4k6AnhrjgpnEOmBS0fyuU0suEK7erS+xKthlitWs1
	 1KMZ2xaAlgQgtbbq7L2HTwCQTgAM2D7C9CI+HZb7KQyDBzJFm1ReXjnJ2sZTq6Rdgy
	 LHyrlOz3a66xA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/3] dt-bindings: pwm: dwc: Document optional resets
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xuyang Dong" <dongxuyang@eswincomputing.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260703093351.540-1-dongxuyang@eswincomputing.com>
References: <20260703093308.482-1-dongxuyang@eswincomputing.com>
 <20260703093351.540-1-dongxuyang@eswincomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 09:43:13 +0000
Message-Id: <20260703094313.8EF191F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319977-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dongxuyang@eswincomputing.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,eswincomputing.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0852700CA5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing matching updates for related bindings in the same IP fam=
ily.
--

commit 05dd50c982c598b86944765d91f297a8c37b303e
Author: Xuyang Dong <dongxuyang@eswincomputing.com>

dt-bindings: pwm: dwc: Document optional resets property

This commit updates the DesignWare PWM binding to document two active-low
reset inputs: presetn and timer_N_resetn. It adds the resets property with
two items to describe the function of each reset line.

> diff --git a/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm=
2.yaml b/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
> --- a/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
> +++ b/Documentation/devicetree/bindings/pwm/snps,dw-apb-timers-pwm2.yaml
> @@ -43,6 +43,11 @@ properties:
>        - const: bus
>        - const: timer
> =20
> +  resets:
> +    items:
> +      - description: Interface bus (presetn) reset
> +      - description: PWM timer logic (timer_N_resetn) reset
> +

[Severity: Medium]
The subsystem guidelines note that when a binding has multiple YAML files f=
or
different device types in the same family, related files may need matching
updates. Since the DesignWare APB timer IP is described by both this PWM
binding and the timer binding, does the timer binding also need an update?

Currently, the timer binding restricts the resets property to a single item:

Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml:properties:r=
esets
  resets:
    maxItems: 1

Defining both hardware resets for the snps,dw-apb-timer compatible will
cause dt_binding_check to fail due to this inconsistency.

>    snps,pwm-number:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description: The number of PWM channels configured for this instance

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703093308.482-=
1-dongxuyang@eswincomputing.com?part=3D1

