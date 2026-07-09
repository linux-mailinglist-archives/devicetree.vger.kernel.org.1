Return-Path: <devicetree+bounces-323347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 38O0KwlFT2rgdAIAu9opvQ
	(envelope-from <devicetree+bounces-323347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 08:51:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 988F272D5B6
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 08:51:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kUQOWc9p;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323347-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323347-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 884F2300104B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 06:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F00386C0C;
	Thu,  9 Jul 2026 06:51:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA68434040C
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 06:51:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783579907; cv=none; b=u0Klq8ms6V2ASPrAg3aiKd4OBINCq4N0ibf6hfk8uVEOd0OnvRpihmwSsltKZjSukVfPJ1pCVq0psG+PdD26uzwtnlgQeAuWDfG4ftC0/o4KEp9aiSMp4Yvg0sBBt1tYABAnCzuZHcHSzBmx3IFKAHB4333HDNg83eZl38ix7Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783579907; c=relaxed/simple;
	bh=cCfcyo8DMez1At2eh29rbrWFoZP20pC8QgEbvO/JpJA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pNeieYzVvQPhFMi02mdtTLTLg7IHTf4qbuZ1CEadmZsrZm5fkoZTbOgUUdPuwe3R2q03E7wR5E7UxcAGu6Dkw7l7vSQqfSJNwot4rC3L4uCZU/0fZHggCmj5+RpR39bAqIkA4AlE71z+ygAff4+L6IW+UERFLD2tNzynswcWfec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUQOWc9p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DB071F000E9;
	Thu,  9 Jul 2026 06:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783579905;
	bh=LNVt8YTxltb1B1r72Z1892Yki1h+g80BO93Q9GACIgU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kUQOWc9pS9w2rE8jcScJVrAIPPyaVxwjfUqFoGOBJ6hwe5OvOdaE5sU+V3W7fdBEj
	 de+cFteoe4frcJldwRlMYzXAkJXZs0YsIxmYyP5+5WCpdBwOjmBG6kKpo3StiyHP9d
	 QOXy1kGLrv4mmF5IpYtGF1Gz3UbMIszxgAJ30B4SPpG2/szE53301jNT8XuY17LAHJ
	 NhOCay0hTyAPGmyuig0PJ/F4u+pPIY+PNjagjUcE4nJYaqcQ9VF85Zk8RPloXPITvz
	 C0sEyCwvHNsvckxVXmPiWNXMcX5J/xE/+7xF5pBcJXskuY18M1ho2L93Hq6GPakGSF
	 sXb/qQeHvCQMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/2] dt-bindings: i3c: Add AMD I3C master controller
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shubham Patil" <shubhamsanjay.patil@amd.com>
Cc: devicetree@vger.kernel.org, "Alexandre Belloni" <alexandre.belloni@bootlin.com>, robh@kernel.org, Frank.Li@kernel.org, linux-i3c@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260709064233.1451482-2-shubhamsanjay.patil@amd.com>
References: <20260709064233.1451482-1-shubhamsanjay.patil@amd.com>
 <20260709064233.1451482-2-shubhamsanjay.patil@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 06:51:44 +0000
Message-Id: <20260709065145.6DB071F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323347-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shubhamsanjay.patil@amd.com,m:devicetree@vger.kernel.org,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:linux-i3c@lists.infradead.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,amd.com:email,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 988F272D5B6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `interrupts` property is missing from the `required` list in=
 the binding schema.
--

--- Patch [1]: [PATCH v10 1/2] dt-bindings: i3c: Add AMD I3C master control=
ler support ---
commit dfcd0f962dd67901f67582456a8fe5271491789d
Author: Manikanta Guntupalli <manikanta.guntupalli@amd.com>

dt-bindings: i3c: Add AMD I3C master controller support

This commit adds device tree binding documentation for the AMD I3C master
controller version 1.0.

> diff --git a/Documentation/devicetree/bindings/i3c/xlnx,axi-i3c-1.0.yaml =
b/Documentation/devicetree/bindings/i3c/xlnx,axi-i3c-1.0.yaml
> new file mode 100644
> index 0000000000000..2caa245a86568
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/xlnx,axi-i3c-1.0.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: xlnx,axi-i3c-1.0
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks

[Severity: Medium]
Should the interrupts property be included in this required list?

Since I3C master controllers fundamentally rely on interrupts for handling
asynchronous bus events like In-Band Interrupts (IBIs) and Dynamic Address
Assignment (DAA), a missing requirement allows incomplete device tree nodes
to pass YAML schema validation. Will this lead to driver probe or runtime
failures when the software attempts to acquire the missing IRQ?

> +
> +allOf:
> +  - $ref: i3c.yaml#

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709064233.1451=
482-1-shubhamsanjay.patil@amd.com?part=3D1

