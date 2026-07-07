Return-Path: <devicetree+bounces-322156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pggHGUcSTWpnugEAu9opvQ
	(envelope-from <devicetree+bounces-322156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:50:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B937871CD85
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:50:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WB2bxRuw;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322156-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322156-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 08774300669E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA06D349CD6;
	Tue,  7 Jul 2026 14:50:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCEF33E35B
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:50:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783435844; cv=none; b=R8tGBQ1GHH7S4BuRhoAEIUAjQeBq7yckxdMDhHlD0VemSDml5clbN2/Nc7j6TA9/xjJBBxvilwJCDyDDREfKWuS13rvAIyKn1bkmfTafGAHkJDwoSpew5w0XnDWqwT9WZJwtQ83mZ5xMKdJ6YZ1mCcffxw1EC1ZMhoIctu83vqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783435844; c=relaxed/simple;
	bh=x+1qIlBFikKWRHhDzWJyAvnu4xmQrPsa6d5ulW5uxhk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BXXfgwdg5dALFxA8wk+loo0qbrS5wwkU9R4RBGSjYpQw/kkIXCtS8Eg8MWuL5hO8n6Z7t2swQIrugMjDglMBWBAwHkUyjJ6afoaWoOhY1jB1wGB/RWVMTE/O7lFW7fdCrrDS5KRMW4w5tdTceZ5YsHE4W3IjaOjDqWUNmSXKuOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB2bxRuw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D53651F000E9;
	Tue,  7 Jul 2026 14:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783435841;
	bh=TZDSXl4Eu3jdqqFM2dGAz8i5ZW4R5W1usqLm3TrcK7c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WB2bxRuwue30h123XkqbtFNBeCz30XkQxhm2xuTfdmCmXQJs1wBXjxvZ1wC24wM9K
	 lpuqZT6s+/F2otn9lwPtJSVo1NpUewUWeLFKR1VK+tvQZcmhVSi0aHxVLhJvP3bYDE
	 3GJpAQy8jUzIcGGo09EIlEEYhAGuyc6YGBA5OP5P4up9aH1ZQOF3jphkX1NZ3czP1M
	 DP76WdBcoUMSJz384dAVn2JWY0MFZYpoVyoTXs17tBcSdCqEkYarmqmsqy75WVRcUZ
	 zVIzpCHIDEMmYVLg0rS57CCNoh3kozuFgXyYd3vGyr/oDHwr8Orpfom0Q2nrsLX23S
	 ysZxjTMS1RTwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: pinctrl: microchip,pic32mzda-pinctrl:
 Convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Udaya Kiran Challa" <challauday369@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707144223.120417-1-challauday369@gmail.com>
References: <20260707144223.120417-1-challauday369@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:50:40 +0000
Message-Id: <20260707145040.D53651F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322156-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:challauday369@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B937871CD85

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The regular expressions used for matching pin configuration nodes =
are fundamentally flawed, intercepting standard devicetree properties and i=
mproperly restricting valid node names.
--

--- Patch [1]: [PATCH v2] dt-bindings: pinctrl: microchip,pic32mzda-pinctrl=
: Convert to DT schema ---
commit 016f4a5779d5338a039594d73c69d1421ff3e20f
Author: Udaya Kiran Challa <challauday369@gmail.com>

dt-bindings: pinctrl: microchip,pic32mzda-pinctrl: Convert to DT schema
   =20
Convert Microchip PIC32 Pin Controller devicetree binding from legacy
text format to DT schema.

Link: https://lore.kernel.org/all/20260705132521.159522-1-challauday369@gma=
il.com/

> diff --git a/Documentation/devicetree/bindings/pinctrl/microchip,pic32mzd=
a-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/microchip,pic32m=
zda-pinctrl.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/microchip,pic32mzda-pinct=
rl.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: microchip,pic32mzda-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1

[Severity: High]
Are these properties usable given the regex constraints on child nodes?=20

Since the patternProperties regexes below forbid the '@' symbol, it doesn't
appear possible to create child nodes with unit addresses to utilize this
address space mapping.

> +patternProperties:
> +  '^[a-z0-9]+[_-][a-z0-9_-]*$':
> +    type: object

[Severity: High]
Could this regex unintentionally intercept standard properties?

In JSON schema, patternProperties evaluates against every key in the object,
including property names. Because this regex matches any string with a dash=
 or
underscore, standard properties like "pinctrl-names" or "gpio-controller" w=
ill
match it and be forced to validate as an object. This will cause
dt_binding_check to fail when they are used.

Additionally, does this pattern inadvertently prevent the use of standard
generic node names that don't contain dashes (like "uart" or "tx")? Since
additionalProperties is false, names without dashes will be rejected.

> +    description: |
> +      Pin configuration node with pin muxing and configuration propertie=
s.
> +      Can be either a direct pin configuration node or a container node
> +      with child pin configuration nodes.

[ ... ]

> +    patternProperties:
> +      '^(?!bias-|input-|output-)[a-z0-9]+[_-][a-z0-9_-]*$':
> +        type: object

[Severity: High]
Similar to the parent node pattern, will this regex incorrectly intercept
standard devicetree properties that contain dashes, and reject standard gen=
eric
node names without dashes?

Also, does this negative lookahead incorrectly reject valid devicetree node
names just because they happen to start with "bias-", "input-", or "output-=
"?

> +        description: |
> +          Child pin configuration node.
> +
> +        properties:
> +          pins:
> +            items:

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707144223.1204=
17-1-challauday369@gmail.com?part=3D1

