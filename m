Return-Path: <devicetree+bounces-309971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O7NyE52aKWobagMAu9opvQ
	(envelope-from <devicetree+bounces-309971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 19:10:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE1F66BE1F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 19:10:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=T4tZFeht;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309971-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309971-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4942E30D93F5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22AF6349AE6;
	Wed, 10 Jun 2026 16:54:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1C3344DBB
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:54:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781110455; cv=none; b=NhICkb3xzr5RDBZBAwdbNNkEUO51dzlDQc5BIb+kfZWAekZQI8AzLjmzqIP/IlqoyuT/NUToHUq0Cw0j9lDvhxOidgffuNtrpFgg4YrPLwao8eTKLBgu8wOi/SRonq/1ME+GPBkJRx3Re8MkzI+qPi0V6+YZELnDG/3CVwS6Ock=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781110455; c=relaxed/simple;
	bh=CDEbs87qhymATKzQ2lkKVCIvGw+evCCTq9N79cQEPUk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QzPZP4Fz60puD+l9HwF+IhpbgsiaNBmtdTo6ryVuHWhOr+hex+utikzhl9GNxu0vRGG7RwGHTtfmnwZiILDO8hpej9brSO0t++mZODJrIfQsAx+whLP+bS/f1txGggHTymRJ0ozKHOrymVIELTHHAZNkxpnQjtG+LxuJ982oTJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4tZFeht; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE8A1F00893;
	Wed, 10 Jun 2026 16:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781110452;
	bh=ZvZIX8lmkcHbCHcb7V6Ou7kKGR1t8AdqXfXbDIXt2Ss=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T4tZFehtlEkYpUEBX6v2+ysc7Artr8i/PaXy8FSfEA04RFLXI29Ag6mHDj436zu9x
	 Ed19oObVSpO4j9sNvfntL3a5JEQolQE/YHuwqIsh/ZslTkA94mdrIVKOVFkrVaaaai
	 2CH4wBfa7oHOhNUqv+XmFg6D85cV8WZuCxciZmjtJnxH9ij1S9uIgqfh5lfLM4x5ec
	 Jz6oyTPcC6cUdIBQIYop55Dlfhhh710MKmrqgGm+8fOf6h6P0sT2pFhqEEMgBP09Pq
	 SmjnjlXk4E2ofpj+icoQ4Z8vVJK6fNUbYgxqivECh++2eHgnAjWCVysbFrziX1Dy0+
	 HITqakeb0e44Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: Add Solomon SSD1351 OLED
 controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Amit Barzilai" <amit.barzilai22@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260610164428.180091-2-amit.barzilai22@gmail.com>
References: <20260610164428.180091-2-amit.barzilai22@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 16:54:12 +0000
Message-Id: <20260610165412.8EE8A1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309971-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:amit.barzilai22@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:amitbarzilai22@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2CE1F66BE1F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing type and value constraints for `rotation` property in devic=
e tree binding.
--

commit 4e4bbc4176c7e781dd970cf6e2d43e667642bddd
Author: Amit Barzilai <amit.barzilai22@gmail.com>

dt-bindings: display: Add Solomon SSD1351 OLED controller
   =20
This commit adds a new device tree binding for the Solomon SSD1351 OLED
display controller. It defines the standard properties and builds upon
the shared solomon,ssd-common.yaml schema.

> diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1351.ya=
ml b/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
> new file mode 100644
> index 0000000000000..a7d77132faa63
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
[ ... ]
> +properties:
> +  compatible:
> +    enum:
> +      - solomon,ssd1351
> +
> +  solomon,width:
> +    default: 128
> +
> +  solomon,height:
> +    default: 128
> +
> +  rotation: true

[Severity: Low]
Does this permit the rotation property without enforcing type validation?

Without including a reference to panel/panel-common.yaml# (or a direct type
definition), dt_binding_check will not enforce that rotation is a uint32 or
restricted to valid degrees (0, 90, 180, 270). This could allow incorrectly
typed device tree entries to pass schema validation but fail at runtime
when the driver attempts to call device_property_read_u32.

> +
> +required:
> +  - compatible
> +  - reg

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610164428.1800=
91-1-amit.barzilai22@gmail.com?part=3D1

