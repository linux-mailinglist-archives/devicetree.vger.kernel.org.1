Return-Path: <devicetree+bounces-325514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eRphKLfgVGotgQAAu9opvQ
	(envelope-from <devicetree+bounces-325514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 14:57:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CF174B2AE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 14:57:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WbOvPafB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325514-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325514-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 30F25300D762
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E7340D56A;
	Mon, 13 Jul 2026 12:57:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D193E7BB6
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 12:57:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783947442; cv=none; b=NOyg0M43Xnem5HtLUUfzzkASmUQquX3nV7pOLP98YEiO/8Yhn9oFYLq7YloDEkQd+LpPENI1SgQP+FEpW9w2tijdfoInM5rEarCxrwYAMqkxTEhURlQDQlfBgobMMtINkrxLtezFzG6r+I6jXrJdylEl1SaNxY3ZxzC6n90pRj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783947442; c=relaxed/simple;
	bh=YOiXvMCucobhwj3Rj2D5DNezoxKilfQPKbTsYG+faj0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GJ4tvHRokIRWy1giK3+FNXduFiTkeFW70foZrY9597YjfeFJLtFmYr1qrqprCt/W7uX5tMPrcHsiLorp0ui32GLhz8K894wuRTdxxaGxw/BVo/aANuvHsasmC9yDqWWTV5MZhacS24bvxnhW6AqH3HtZmulbY8r15TWkuv59jdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbOvPafB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E22D1F00A3A;
	Mon, 13 Jul 2026 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783947441;
	bh=Auuw8MfqBH9cYQU4s+GcamNQRKXsZhL+vsU2xpoK9ks=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WbOvPafB6pNUW9A2v2nGTfln+6saAGSFTZwknRFo56c/d81T9QZscOl9EiO3/nNYe
	 GIMVptHEFl+tibY+1DegIzoRaHn4VDwN7T48f3LCff7PkAqtfeuYgogL5zzMtcSVto
	 nmqJlaQTZ54CHcL5eY48kdKTA7oBOdYnVBUJVSgKQjQ6AZNjAVPZeZAS6m1on1zkKG
	 pCNng+43Ew8msPOVis5IcMokwWcB2jTintelwrwVE1j8Xw9dBbRTYgmbeuNAtMNA9W
	 oGqjT0PgNihwu/zomEhrJ8UX3JlzhblKmmpsCa7y70hVajWrF8T7JPmIvePaSGeXU4
	 eF2L9YDQuLuGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: pinctrl: ti,dra7-iodelay: Convert to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260713-ti-iodelay-v1-1-5f06d36c4aac@gmail.com>
References: <20260713-ti-iodelay-v1-1-5f06d36c4aac@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 12:57:20 +0000
Message-Id: <20260713125721.2E22D1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325514-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j.bhargav.u@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jbhargavu@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40CF174B2AE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The child node regex `^mmc.*_conf$` arbitrarily restricts I/O de=
lay configuration nodes to those starting with 'mmc', even though the contr=
oller is generic.
- [Medium] The `pinctrl-pin-array` property is not marked as required withi=
n the child node schema.
--

--- Patch [1]: [PATCH] dt-bindings: pinctrl: ti,dra7-iodelay: Convert to DT=
 schema ---
commit 59d5959fa2ce86d89ce637daf5f846ce2bedcb0d
Author: Bhargav Joshi <j.bhargav.u@gmail.com>

dt-bindings: pinctrl: ti,dra7-iodelay: Convert to DT schema

This commit converts the TI IODELAY controller bindings from plain text
to DT schema. It also adds documentation for child properties missing
from the original text bindings.

> diff --git a/Documentation/devicetree/bindings/pinctrl/ti,dra7-iodelay.ya=
ml b/Documentation/devicetree/bindings/pinctrl/ti,dra7-iodelay.yaml
> new file mode 100644
> index 0000000000000..a399946ae8172
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/ti,dra7-iodelay.yaml

[ ... ]

> +patternProperties:
> +  ^mmc.*_conf$:

[Severity: Medium]
Looking at the patternProperties definition, does this regression arbitrari=
ly
restrict delay configuration nodes to only those starting with mmc?

The commit message mentions that mmc pins are just an example of pins
needing dynamic configuration. If a device tree dynamically configures delay
for other pins, will this reject them as invalid?

Would it be better to use a more generic pattern?

> +    type: object
> +    additionalProperties: false
> +    properties:
> +      pinctrl-pin-array:
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        description: |
> +          An array of 32-bit integers defining the pin delay configurati=
on.

[Severity: Medium]
Could this regression allow incomplete configuration nodes to pass schema
validation?

Since pinctrl-pin-array is not marked as required, an empty child node would
pass dt_binding_check, but the driver expects this property to be present
to initialize the mapping. Should it be added to a required list within the
patternProperties block?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-ti-iodelay=
-v1-1-5f06d36c4aac@gmail.com?part=3D1

