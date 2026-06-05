Return-Path: <devicetree+bounces-307160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4l4YAS1DImq2UQEAu9opvQ
	(envelope-from <devicetree+bounces-307160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:31:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 475ED644DF9
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:31:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kmQAksFW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307160-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307160-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A872D300A105
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 03:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A278D23D7E6;
	Fri,  5 Jun 2026 03:31:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C883CFF55
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 03:30:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780630262; cv=none; b=h9Bo8n+DZR8N7sRvHfNmEQYr5iXfEv8Dgfia50MZTJX+PhglH6nBJ5s/hKVjKZg3nVexeOmyuVu9G6n9GOHBcMgiQT8LTBOu6IzeRq9ZwiIIMPhmZGfGU33JT+B7tFsDRTmO++7IInmlUhJWjjlKd2EcAgLkD7gw83HqMiy351w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780630262; c=relaxed/simple;
	bh=uiHibS1pQoc6+A+9hWVOQgQg6WRS1BPXFf8B8BuiolA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XELqNiMS+8uF4kctKi/DcVxkHRaotvFVw2V0XeVysQ0ZsXqfNDECQTUzKZnnM6kV07qNymyUK89hpockETUuOm4JUGXZFtXsPDCzGQd7RNTnUic9pb4c3u7bjVEbla2cwpFQXbFKws2mq3jw/8SpG0n4bm5eb4HnsE6tGO5Qpqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmQAksFW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C36B1F00893;
	Fri,  5 Jun 2026 03:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780630259;
	bh=q4Gmuz43ihMkQiTP6aRq50hjg++NkAmTXpU39LhUklI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kmQAksFWgsc/x0D7Cig9wUOIIG6jYu6sy0ZYK17bD0HqWtBzGjvV0/mPf/9WfMkgk
	 e8LmDHCiOvGZG10kXC3VcEiZ9tMPzn/Q4Gm59Cwyz86Q1f18/gHGWXL8N13MrmzxmJ
	 fOLB8NYQOMea21EIu314e+Czzt4Iy+mEbmkFIyRoQp9fNsnhnB7XprIRCpHI0XpLtJ
	 U0AarZsBIkcUDM2lFmgVY5En2z1dIh5hruCtNe2tuNWMS0uxmuImrYcx74Lx0t/Y78
	 n77L4DoB+QESwVIv+QFAjudUAlosBESquA7jyPLVkFBKOvH0mRgTSLqpRDcAK4S/mK
	 1w1zNBrh8U4cA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: soc: cix,sky1-system-control: add
 audss system control
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605032225.523669-2-joakim.zhang@cixtech.com>
References: <20260605032225.523669-2-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 03:30:58 +0000
Message-Id: <20260605033059.1C36B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307160-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 475ED644DF9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `clock-controller` child node is unconditionally permitted f=
or all compatible strings, instead of being restricted to the AUDSS variant.
--

commit f3ed58f974f3ca4d534c723c42d7c1e7eefe2139
Author: Joakim Zhang <joakim.zhang@cixtech.com>

dt-bindings: soc: cix,sky1-system-control: add audss system control

This commit adds the Cix Sky1 Audio Subsystem (AUDSS) syscon compatible str=
ing.
It introduces AUDSS software reset indices and adds an AUDSS internal clock
provider property.

> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-co=
ntrol.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-cont=
rol.yaml
> --- a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml
> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml
[ ... ]
> @@ -27,6 +32,11 @@ properties:
>    '#reset-cells':
>      const: 1
> =20
> +  clock-controller:
> +    $ref: /schemas/clock/cix,sky1-audss-clock.yaml#
> +    description:
> +      AUDSS internal clock provider (cix,sky1-audss-system-control only).

[Severity: Medium]
Is this clock-controller child node unconditionally permitted for all
compatible strings in this binding?

Because it is introduced in the global properties block without an allOf
and if-then constraint to restrict its usage, does this allow device tree
nodes using the unrelated cix,sky1-system-control or
cix,sky1-s5-system-control compatibles to incorrectly declare a
clock-controller child node and silently pass schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605032225.5236=
69-1-joakim.zhang@cixtech.com?part=3D1

