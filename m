Return-Path: <devicetree+bounces-319381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TeQxFhtdRmoJRwsAu9opvQ
	(envelope-from <devicetree+bounces-319381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:44:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1356F7CE8
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:44:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D4VvO+bu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319381-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319381-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8AFF30D5C57
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198E647DFB2;
	Thu,  2 Jul 2026 12:38:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F128144D01C;
	Thu,  2 Jul 2026 12:38:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995930; cv=none; b=eWLX/GksoJ37UE7WeNHoQNxkFr3hXxmWpV7lpztvAAdDZqN1OOXZ8gVW/tKcEVX6W2kAP/iKTHczGn9R2zUsxgv8jK0XL7UA4fIEoHhlXb6TmkgjWXIRqNyVDUtf5jfxYNLgF9SGanzi5K87xh63/SDOjiQqakFbrTx1QiUtCEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995930; c=relaxed/simple;
	bh=pe4AjgrNTgU67uz/DluoSflor6Whs8b3VLS36oW8oXI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LhPlTIbnPEQ+TfYlypyJq68Gw4u+2rHlaxvAg6Lnb3QWTqMuUCt3pfJQ5pPVb1cN2ww3J0TEHjUOMnGJlom5ygON8UYvXUtvgdPA5XKpa27C6JXDpqDEgf3WQdyW2xXg72QDnSH7dDLJgEWlZgUX8swFLTz91GZYacf/JPbNdcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4VvO+bu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 492E11F000E9;
	Thu,  2 Jul 2026 12:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782995928;
	bh=mI1qUVMZsC+FmBpSthJ14f0t3sQvQog6X6PTmR57t24=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D4VvO+bu+h9WJXFucazMG+BZOsvynwynTBJghyvnPvxKlKU0LYT/D/uoyZaSI9A5p
	 03aUZNGAe7OzsfxHYtzABw3jBS0zM0eV4TDnjygcqqweRbei7gav6RMSh8F4J1Uj0r
	 3zk5zt8rSLma33hajRkmPNbaH6l+l0CwIOOUkOg02QAj4m6s4ru4tp9E96ABG+PdKK
	 6H8qCuVail6NHBKHI8LkrvY1pUI7/kdsFggfZIo9rfidRO3yO/JOXX42YLhI4UYYVK
	 7P6HBqsPIArlhKwfIYuAY+ZkbSnmxuf8IuPw2lJZPSLLgjV1i8wJ6JEG0Ul0WJk9Q/
	 JC8+MwZjQI+vA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v2 1/9] dt-bindings: clock: renesas,cpg-mssr:
 Support RZ/T2H system controllers
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-watchdog@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260702123112.161160-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260702123112.161160-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 12:38:47 +0000
Message-Id: <20260702123848.492E11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-319381-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:linux-watchdog@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD1356F7CE8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `ranges` property is not disabled for older SoCs in the cond=
itional `else` block, breaking schema strictness.
--

commit 8928eeb31cda815a1d3749583aab3a96187dea08
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

dt-bindings: clock: renesas,cpg-mssr: Support RZ/T2H system controllers

This commit updates the CPG/MSSR binding to support child system
controllers for RZ/T2H and RZ/N2H SoCs. It adds #address-cells,
#size-cells, and ranges properties, and restricts them to these
specific SoCs to prevent affecting existing bindings.

> diff --git a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yam=
l b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml
> --- a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml
> +++ b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml
[ ... ]
> @@ -126,6 +161,10 @@ allOf:
>        properties:
>          reg:
>            maxItems: 1
> +        '#address-cells': false
> +        '#size-cells': false

[Severity: Medium]
Should ranges also be set to false here?

Since ranges was added globally in the properties block, omitting
ranges: false in this else block allows older SoCs to erroneously
include a ranges property and still silently pass schema validation.
Adding it alongside #address-cells and #size-cells would fully restrict
the newly introduced properties for other Renesas SoCs.

> +      patternProperties:
> +        "^system-controller@[0-9a-f]+$": false
>    - if:
>        not:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702123112.1611=
60-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D1

