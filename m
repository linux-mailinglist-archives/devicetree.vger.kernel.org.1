Return-Path: <devicetree+bounces-321125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XkUGDJKbS2pNWwEAu9opvQ
	(envelope-from <devicetree+bounces-321125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:12:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4EF710588
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:12:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VDM2kOqn;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321125-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-321125-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 99A1D3018615
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B64422555;
	Mon,  6 Jul 2026 12:00:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81533FC5C4
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 11:59:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783339200; cv=none; b=RmBFk3YXwhcsjv/XyHrcgU4WRBiy4ooDxlm8oU1F6An2pApDVVnqmdIzsR3BZK8I6BnicfSZh0Qd8KsF4pFyrc4oJVDrFwxkaK6uD+I2WjdyxFlIpmZ0DXiUD4YHd70oTGPoYvWlRjBbcFWqTQZTy8SPEx18HYY4g9fcSelLSCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783339200; c=relaxed/simple;
	bh=9XM89p3PPS3p2mFjd53wnyQOiW/X1oyLEFsCw2qC+p0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UQLtOd7JHg8BOlgiEfGrO4uW/e0VG6wUwcyrT1IJpwLoSfBEos+baLy+DPcizUljq8cDqH/bq8aE3nBl8mbbbOxt7VJoZtrbgvzTI4UZJghK7lC7Xkd6/IW/FtK/gr5XLj4UTbknmkU+xD2WXxv7C5erUOU0LhOAaN61Gy6A73A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDM2kOqn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2119B1F000E9;
	Mon,  6 Jul 2026 11:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783339199;
	bh=PAKR3gv1rnUDCiInQJ4E+iEHfOvht+4pDMLgvdEwiJI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VDM2kOqnhyYbF/8fX2hGjQ2+vKVdtawA3tbsRCxM3UBJq4sJRUQYctuaqUCIihBkh
	 uJJLpON6EobOMnw6hAwAyrcMDSMHpRAvorBkmo72V+BRL2oOCTIWuUpxXdkdSlLawB
	 tN22IL6yDfCTDTl/Ohg+VEyAOaRjlliWdYwOgutRV0OZX5XfI9NLq5rmEu0YqkqjzL
	 pgUkpLthXA80xUaDSWmJWTihY/uoJqtZkZuV9hRFm2iBukvRfQB1KOO4uXgAweTBqf
	 botv73p0K7iGElsMS4h5WlslOeG1cE3BfZXjguTlt6wCbFY2urAR44/KHF5EmOlZAi
	 RFWUQS0PMuCPg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] of/address: Fix NULL bus dereference in
 of_pci_range_parser_one()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Carlo Caione" <ccaione@baylibre.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260706114731.57353-1-ccaione@baylibre.com>
References: <20260706114731.57353-1-ccaione@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 11:59:58 +0000
Message-Id: <20260706115959.2119B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321125-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ccaione@baylibre.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C4EF710588

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing upper bound validation for `#size-cells` (`ns`) allows `np=
` to overflow to a negative value, bypassing range bounds checks and causin=
g an infinite out-of-bounds read loop.
--

commit 36a316bab0beafdbab73667fca4e9ad8ca56a5a3
Author: Carlo Caione <ccaione@baylibre.com>

of/address: Fix NULL bus dereference in of_pci_range_parser_one()

This commit rejects nodes with ranges/dma-ranges but no local
#address-cells in parser_init() to fix a NULL bus dereference. It also
keeps the DMA limit walk guarded by a non-empty dma-ranges property.

> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index cf4aab11e9b1f..fd2468b89579f 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -761,12 +762,20 @@ static int parser_init(struct of_pci_range_parser *=
parser,

[ ... ]

> -	parser->range =3D of_get_property(node, name, &rlen);
> -	if (parser->range =3D=3D NULL)
> +	range =3D of_get_property(node, name, &rlen);
> +	if (!range)
>  		return -ENOENT;
> =20
> -	parser->end =3D parser->range + rlen / sizeof(__be32);
> +	if (!parser->bus ||
> +	    !OF_CHECK_COUNTS(parser->na, parser->ns) ||

[Severity: High]
This is a pre-existing issue, but does OF_CHECK_COUNTS() need to validate an
upper bound for 'ns' (#size-cells)?

Currently, OF_CHECK_COUNTS() in drivers/of/of_private.h only validates that
'ns' is greater than 0, but unlike 'na', it does not enforce an upper limit:

#define OF_CHECK_COUNTS(na, ns) (OF_CHECK_ADDR_COUNT(na) && (ns) > 0)

If a malformed device tree provides a very large '#size-cells' value
(e.g., 0x7FFFFFFF), could this cause 'np' to overflow to a negative value in
of_pci_range_parser_one()?

drivers/of/address.c:of_pci_range_parser_one() {
    ...
    int np =3D parser->pna + na + ns;
    ...
    if (!parser->range || parser->range + np > parser->end)
        return NULL;
    ...
    size =3D of_read_number(parser->range + parser->pna + na, ns);

A negative 'np' would bypass the bounds check since subtracting from the po=
inter
evaluates to a smaller address. This would result in an out-of-bounds read
across memory when of_read_number() is called with the massive 'ns' value.

> +	    !OF_CHECK_ADDR_COUNT(parser->pna))
> +		return -EINVAL;
> +
> +	parser->range =3D range;
> +	parser->end =3D range + rlen / sizeof(__be32);
> =20
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706114731.5735=
3-1-ccaione@baylibre.com?part=3D1

