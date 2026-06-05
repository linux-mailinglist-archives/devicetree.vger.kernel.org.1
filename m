Return-Path: <devicetree+bounces-307161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gC0SFipEImrvUQEAu9opvQ
	(envelope-from <devicetree+bounces-307161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:36:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AA6644E73
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:36:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kijS6+rk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307161-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307161-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D7E53041482
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 03:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC752285CB3;
	Fri,  5 Jun 2026 03:33:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E799413A3ED
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 03:33:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780630391; cv=none; b=EZNLL4rTv6I+nCLF9m80B74TR73hYK6HzB0jxK/pogxaxmxmFTfPAqD1+9Y6me6oG8KClfDtGy5QMP7+prI2CliLWhTA7YFKDFTZBs6uLJAIukrKLgc1YR05ATO/zr1AYnd+snmGqIzntGR3mc1zKTfN3GRgLaAGn19xZbNXitE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780630391; c=relaxed/simple;
	bh=sDhrPXamW6tZ1DpXYg8ekk8PO9NA+0lC1HJOGF7KJHk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hbaEQW/5TUcpYAKgUqTiflwSciKICQWAjyT/V5zUYTjzihWGWfCKseovMBu1oIXT7ejfYob7fHZSFmp4GXNZICF58ciNNoEE4Tl0MHBy+R8CJb6K/vorlh7YXnDs35prXkjDGWmtKKWEZpweAJAoJVrR/72eBMQOIu/gBFbWifk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kijS6+rk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51D8C1F00893;
	Fri,  5 Jun 2026 03:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780630390;
	bh=vyp69Uv5CknarUEnJeuEziC7p8C7eb4mlumIZSyyvIA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kijS6+rkorL815wO+hQZDc1Ao2y2q9bQrK/CWbhDVL84vBF6UYZeauZWQtTmTwXF0
	 p0SduV2xkeGN3yKdAGRBHJvAGQnNpRZjY/opc14VI/OC77rKatcWHaERWtWS8VJO02
	 ry08Yh4Na4BMKXCSnyGzmdWmvyISunorU6rM5w/pcbaOHc72VDfyF4XnMPAF1NGwCy
	 xs6YVkFlv1IPwn57DvALPurlLHVNBRDpPaGbtxSLRXJlPFXCRQEDuxw49nJEMmygpi
	 ejCXIvLnF9BAmgj8O2aCvYlWLWb5g5bn6/hXkocbWKFCPAg4O8HN9mUfvRaw4IEE//
	 hpagagE4NmwHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] dt-bindings: clock: cix,sky1-audss-clock: add
 audss clock controller
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605032225.523669-4-joakim.zhang@cixtech.com>
References: <20260605032225.523669-4-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 03:33:09 +0000
Message-Id: <20260605033310.51D8C1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-307161-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,cixtech.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 99AA6644E73

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `clock-controller` child node in `cix,sky1-system-control.ya=
ml` is not restricted to the `cix,sky1-audss-system-control` compatible str=
ing via an `if-then` conditional block.
--

commit f3ed58f974f3ca4d534c723c42d7c1e7eefe2139
Author: Joakim Zhang <joakim.zhang@cixtech.com>

dt-bindings: soc: cix,sky1-system-control: add audss system control

This commit adds the cix,sky1-audss-system-control compatible string to the
Sky1 system control binding. It exposes the software reset lines and adds t=
he
clock-controller property for the AUDSS block.

> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-co=
ntrol.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-cont=
rol.yaml
> index a01a515222c6d..3b243b02a7e8c 100644
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
> +

[Severity: Medium]
In Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml,
since this property is defined at the top level without being restricted by
compatible strings, will dtbs_check incorrectly allow the clock-controller
child node on other variants like cix,sky1-system-control and
cix,sky1-s5-system-control?

Should this be wrapped in an allOf -> if-then block targeting only the
cix,sky1-audss-system-control compatible string to ensure schema validation
fails on incompatible variants?

>  required:
>    - compatible
>    - reg

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605032225.5236=
69-1-joakim.zhang@cixtech.com?part=3D3

