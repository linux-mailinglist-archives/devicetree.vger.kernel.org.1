Return-Path: <devicetree+bounces-309175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +es+NYQ9KGpmAwMAu9opvQ
	(envelope-from <devicetree+bounces-309175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:21:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5226624D1
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:21:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XPkW049w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309175-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309175-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF967300A610
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78751481248;
	Tue,  9 Jun 2026 15:49:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5EE48C3FF
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:49:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781020153; cv=none; b=I/QPh8JYk2eaKMvoncTWkL5HsGvgyzJcA3k1aJ8nu7wbEqEteKjnLpc97TH/6uPxx5DPmpqGCxwzSyQIoCn1bUpS9+e6pjLi3n0ThL/anbjbnWFJ6eArtatL99GLtmTQ2EHGVoUsh+NhiqV5zeHEFdMutsXd27NXgXVLvFdUqdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781020153; c=relaxed/simple;
	bh=JBq3K/MWvvgyvyOoFDQQwf4Mpc3cRGnIz8Xj+LrukZk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t/0r3Z9kVLPFcJCP+6lUATAWgQ6RGlMHQKUKDwe0pd4dgHePEi4eE82flHAkl/g6Ur/+JHUhTdOFvR110CxrAoYR10lmB7VKn8Xggvg6rlMjpxmLZFTqZQZ1iLhx0F7jIfyIuDXsla7XwblKxgKt4Upbc54W1hMwrKZahUwxp0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPkW049w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A311F00893;
	Tue,  9 Jun 2026 15:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781020152;
	bh=MGI8fUqBeQ7sOKjLmQQV0hOM28APMdNnnkceYnxitMg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XPkW049wLMDeyBBHEVuTORvFfwHbDtzuPBMCDAV1mLXfZj2CBs+LeQ2ir8hr+d2nY
	 0Uet0/96aOF//n/mWt1qpLo1KOA8XuCOC/e4Bf8mYbsJDoZqrYegSDJIkad11NjZ/5
	 0LED9P9/3UAkyz+HWfUMcgCYhKaAXbOHwWExOrnp+Yj1P4FrjDt2m0TEU+DbQEPCHO
	 L5Wvn3Hp0/RNywBzsKaBHWPdTND2X3fEn5HEW4EoEpnFiRsRZScqy1kEeKtRQhav1E
	 s1iT/P33SyzGM/HNcl6Yw/KRqwZeU5UvdHgRLa/X/PU3Ynfwc84SZYxyw8HYgsOaBG
	 NvPHlMKEtn+mw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: usb: Add Rockchip RK3568 compatible
 for EHCI and OHCI
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jonas Karlman" <jonas@kwiboo.se>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609154124.445182-2-jonas@kwiboo.se>
References: <20260609154124.445182-2-jonas@kwiboo.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 15:49:11 +0000
Message-Id: <20260609154912.12A311F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309175-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jonas@kwiboo.se,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,kwiboo.se:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F5226624D1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The conditional blocks enforcing the four-clock constraint for t=
he Rockchip RK3568 compatibles do not add the `clocks` property to the `req=
uired` list.
--

commit 8a014eea3faedb9781ac7a8ab3c2e305d28df2a3
Author: Jonas Karlman <jonas@kwiboo.se>

dt-bindings: usb: Add Rockchip RK3568 compatible for EHCI and OHCI

This commit adds Rockchip RK3568 compatible strings for the EHCI and OHCI
controllers. It introduces a four-clock constraint to ensure the required
clocks are enabled to prevent system freezes.

> diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Do=
cumentation/devicetree/bindings/usb/generic-ehci.yaml
> index 55a5aa7d7a54e..c49a1bbc8cfdb 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml

[ ... ]

> @@ -186,6 +187,15 @@ allOf:
>        required:
>          - clocks
>          - clock-names
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-ehci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4

[Severity: Medium]
Should the clocks property be added to the required list in this block?

Since property constraints like minItems are only evaluated if the property
is actually present in the device tree node, a node that completely omits
the clocks property will silently pass validation without enforcing the
four-clock constraint.

Given the commit message mentions these clocks are required to prevent
system freezes, it seems important to enforce their presence by adding
a required list here.

> diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Do=
cumentation/devicetree/bindings/usb/generic-ohci.yaml
> index d42f448fa2044..5f1b4d2bff891 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml

[ ... ]

> @@ -198,7 +199,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: rockchip,rk3588-ohci
> +            enum:
> +              - rockchip,rk3568-ohci
> +              - rockchip,rk3588-ohci
>      then:
>        properties:
>          clocks:
>            minItems: 4

[Severity: Medium]
Similarly here, should clocks be explicitly required for the OHCI
controllers?=20

Without adding it to the required list, device trees missing the clocks
property entirely will bypass this constraint and pass schema validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609154124.4451=
82-1-jonas@kwiboo.se?part=3D1

