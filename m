Return-Path: <devicetree+bounces-312600-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZtfcBJVfMWrpiAUAu9opvQ
	(envelope-from <devicetree+bounces-312600-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:37:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6DA690908
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:37:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OBe2MO18;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312600-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312600-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F4B6302EF77
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8597836C0C8;
	Tue, 16 Jun 2026 14:32:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDD62868B5
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:32:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781620343; cv=none; b=jnghUN6pNPy7zn1i2tLHhc2FCSgj1J8Pcv1P7lmovBvh6BYlPu3k9+ropfMYknhaSlAPuPqOs5TtCyZ5ii4KGVLaP46/LwpA7BrZyZ7P1ysXBJBR7FhGrW0yJDnwmiOOuoOTnVlSrcHrbRzFHQPKtZ3dXcX1H6SBEEzjC8jnFbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781620343; c=relaxed/simple;
	bh=JbVV8ts52KJmTF73lZh+x79HKH2bU7jcTE/C4dm1DC4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Sg/IdlqEXkoYxDrqVQjyirYOkL2V2Bn0YrxOsc/qNifLZbMBRjwac69wSlFUmLGv3OeFVZPSKwVz9NgL98TLFK137LEVnnrWR/z17HoMR2McTwRznAlhuzTDP3ew8KjGNsu62Cix/CtK7/dRvpTStZqS//nLp9rwoPBy3+EB/CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBe2MO18; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7C761F000E9;
	Tue, 16 Jun 2026 14:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781620342;
	bh=1SA8Mm2FuDLjwdmZxsK19MPPGykWFb+cehwkKiT7dNs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OBe2MO18f3pA6N4fWdG9pBQbW0P6h7japgw2TTLiNpldOtLXeCJZOetsQJFnecn6M
	 iaLFOaaillhxc5/a90FCZL53D0KzXEddMriNGamdsrlTo70UO8vJwe4Y140cKHaruj
	 iJ6B32Bp+JP30VexYXuQJrvA1UCdYWWEBz/B7EL26K+SDlV96qA8aPn3XHryo5bIaB
	 9aN6oTfrWfGihJT6OPbeDD79RPU/cdE1+3gjaxaajXmrZBmP4ieXwJTfNUT2yJbu0L
	 p6rtieKypeZUAL1kC6bzMPgJ3VeTCov8x8hd5Gy2sN1PM1Szrm7KUF3Pn+EfVYBQve
	 MLc4hSD1IbxPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 04/12] net: pcs: implement Firmware node
 support for PCS driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615122950.22281-5-ansuelsmth@gmail.com>
References: <20260615122950.22281-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 14:32:21 +0000
Message-Id: <20260616143221.C7C761F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312600-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A6DA690908

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Type mismatch in `fwnode_parse_pcsspec()` where a negative error=
 code is assigned to an unsigned integer, making the error check dead code.
- [Medium] `fwnode_phylink_pcs_parse()` incorrectly aborts on out-of-bounds=
 instead of returning the parsed count, violating its 'up to num_pcs' contr=
act.
- [Low] The fallback stub for `fwnode_pcs_get()` uses an incorrect paramete=
r type.
--

commit 5e32951da9dab6acca331c331c1e41d55a580883
Author: Christian Marangi <ansuelsmth@gmail.com>

net: pcs: implement Firmware node support for PCS driver

This commit implements the foundation of Firmware node support for PCS
drivers. It introduces a simple Provider API where a PCS driver can expose
multiple PCS and consumers can access them using fwnode_pcs_get().

> diff --git a/drivers/net/pcs/pcs.c b/drivers/net/pcs/pcs.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/net/pcs/pcs.c

[ ... ]

> +static int fwnode_parse_pcsspec(const struct fwnode_handle *fwnode,
> +				unsigned int index, const char *name,
> +				struct fwnode_reference_args *out_args)
> +{
> +	int ret;
> +
> +	if (!fwnode)
> +		return -EINVAL;
> +
> +	if (name) {
> +		index =3D fwnode_property_match_string(fwnode, "pcs-names",
> +						     name);
> +		if (index < 0)
> +			return index;

[Severity: Medium]
Does this error check work as intended? fwnode_property_match_string()
returns negative error codes like -ENODATA, but it is assigned to index
which is an unsigned int. The check for index < 0 will be dead code,
potentially leading to an out-of-bounds query that returns -ENOENT.

> +	}
> +
> +	ret =3D fwnode_property_get_reference_args(fwnode, "pcs-handle",
> +						 "#pcs-cells",
> +						 -1, index, out_args);

[ ... ]

> +int fwnode_phylink_pcs_parse(struct fwnode_handle *fwnode,
> +			     struct phylink_pcs **available_pcs,
> +			     unsigned int num_pcs)
> +{
> +	unsigned int i, found =3D 0;
> +
> +	if (!available_pcs)
> +		return -EINVAL;
> +
> +	if (!fwnode_property_present(fwnode, "pcs-handle"))
> +		return -ENODEV;
> +
> +	for (i =3D 0; i < num_pcs; i++) {
> +		struct phylink_pcs *pcs;
> +
> +		pcs =3D fwnode_pcs_get(fwnode, i);
> +		if (IS_ERR(pcs)) {
> +			/*
> +			 * Ignore -ENODEV error for PCS that still
> +			 * needs to probe.
> +			 */
> +			if (PTR_ERR(pcs) =3D=3D -ENODEV)
> +				continue;
> +
> +			return PTR_ERR(pcs);

[Severity: Medium]
If the firmware node contains fewer pcs-handle properties than num_pcs,
won't fwnode_pcs_get() eventually return -ENOENT? Since this loop only
ignores -ENODEV, does this cause the function to abort entirely and return
an error instead of returning the successfully parsed count?

> +		}
> +
> +		available_pcs[found] =3D pcs;
> +		found++;
> +	}
> +
> +	return found;
> +}
> +EXPORT_SYMBOL_GPL(fwnode_phylink_pcs_parse);

[ ... ]

> diff --git a/include/linux/pcs/pcs.h b/include/linux/pcs/pcs.h
> new file mode 100644
> --- /dev/null
> +++ b/include/linux/pcs/pcs.h

[ ... ]

> +#else
> +static inline struct phylink_pcs *fwnode_pcs_get(struct fwnode_handle *f=
wnode,
> +						 int index)

[Severity: Low]
Is this intentional? The fallback stub for fwnode_pcs_get() uses int index,
but the active declaration and implementation use unsigned int index.

> +{
> +	return ERR_PTR(-ENOENT);
> +}

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615122950.2228=
1-1-ansuelsmth@gmail.com?part=3D4

