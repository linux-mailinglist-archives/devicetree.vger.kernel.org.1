Return-Path: <devicetree+bounces-324150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VDdLOMMLUGqcsQIAu9opvQ
	(envelope-from <devicetree+bounces-324150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:59:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F14CA7359FA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:59:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=i11XDHku;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324150-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324150-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41781306AA3B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 20:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 620883E1216;
	Thu,  9 Jul 2026 20:57:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC798396573
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 20:57:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783630652; cv=none; b=QB3iGJDG+DMA5Bii64O+KVxM53Lw5ja7e970IitG3slhMbFroepqmma+CvDOmsd/0T2PbJYW7dxKZbKF/aUHQmnaywlb3GEqTv3wnhXTnUH596pF8djXGwurMKLFT7MPw1/LUb96TP0yy6EqxWqPCPv20fk3K0WMogfUg1whh7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783630652; c=relaxed/simple;
	bh=aBgsfNlc64jzIW9vvYnfYy4yvveSaZFxfJClDbBjiuo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ePSB3clVgBLTAOEZAdb8ClepBQU5EkVofGiIGN0arvr+PSsto60jFtVNzJ3l3GpsGBBqJBT0pOUPd7xhO4IFHiCXe4Nu+/29vl9kbrqlJ5kPTVzGXqV0+Nuw7UhwS/8PwFzIwjIiAQYYsneF6sWersl2h5eOjCP5okPgy1HMfMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i11XDHku; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2DC1F00A3A;
	Thu,  9 Jul 2026 20:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783630650;
	bh=y5oZQnZCf/FszHvHAAIyUu2S9TGEJvThTtBHKOdgOOY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i11XDHkuWbppyNUa1+h8Ns1WsIxkgN1XtUrTVZv4m5SgIFsZGDBeMWVT/u5j7OyV/
	 CdmNHEPCYFq7QC0Odo5GKbq2LRaeN2y+YXIGxWme3xgLCpq5eC92HCXHIU6hC4xg0S
	 VVr9QT0CWO5Vl4LjFMUmdWo2Pl7mxH+NKSrma61CNYVKYRRwv0lHgaFvIawXTmcW5M
	 YkA/N3LK0qROplzRupf7nddQ8Ny1yp5NlANEgkShJ+jpXPUpzZOFNR/jEp2H3t72S8
	 vBdJvdY3C4jJAOWz5RtRyQNfOvIucl4W1T3BCA9leoZsXB7R8FTZevaR+l4/ERT+c3
	 g2hDjXn95ikkA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 12/19] crypto: cmh - add RSA akcipher
Reply-To: sashiko-reviews@lists.linux.dev
To: "Saravanakrishnan Krishnamoorthy" <skrishnamoorthy@rambus.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709203037.1884436-13-skrishnamoorthy@rambus.com>
References: <20260709203037.1884436-1-skrishnamoorthy@rambus.com>
 <20260709203037.1884436-13-skrishnamoorthy@rambus.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 20:57:29 +0000
Message-Id: <20260709205730.2D2DC1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324150-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:skrishnamoorthy@rambus.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,rambus.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F14CA7359FA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] `cmh_rsa_set_pub_key()` fails to clear an existing private key, le=
ading to decoupled key sizes and potential hardware out-of-bounds reads.
- [High] The driver does not validate the size of the RSA public exponent (=
`rsa.e_sz`), leading to potential hardware buffer overflows.
- [Medium] The RSA encrypt and decrypt functions return `-EINVAL` instead o=
f `-EOVERFLOW` when the destination buffer is too small.
--

--- Patch [12]: [PATCH v2 12/19] crypto: cmh - add RSA akcipher ---
commit 47806773e523d39d4934a94df67997dcea3ac88f
Author: Alex Ousherovitch <aousherovitch@rambus.com>

crypto: cmh - add RSA akcipher

This commit registers the RSA akcipher algorithm using the CMH PKE core.
It supports encrypt, decrypt, sign, and verify operations with multiple
key sizes, utilizing common PKE helpers shared across subsequent patches.

> diff --git a/drivers/crypto/cmh/cmh_pke_rsa.c b/drivers/crypto/cmh/cmh_pk=
e_rsa.c
> --- /dev/null
> +++ b/drivers/crypto/cmh/cmh_pke_rsa.c

[ ... ]

> +static int cmh_rsa_enc(struct akcipher_request *req)
> +{
> +	struct crypto_akcipher *tfm =3D crypto_akcipher_reqtfm(req);
> +	struct cmh_rsa_tfm_ctx *ctx =3D cmh_rsa_ctx(tfm);
> +	struct cmh_rsa_reqctx *rctx =3D akcipher_request_ctx(req);
> +	u32 key_bytes =3D ctx->bits / 8;
> +	u32 e_padded =3D ALIGN(ctx->e_sz, 4);
> +	struct core_dispatch d =3D cmh_core_select_instance(CMH_CORE_PKE);
> +	struct vcq_cmd vcq[PKE_VCQ_CMDS_MIN];
> +	int ret, nents;
> +	gfp_t gfp;
> +
> +	if (!ctx->n || !ctx->e)
> +		return -EINVAL;
> +	if (req->src_len > key_bytes || req->dst_len < key_bytes)
> +		return -EINVAL;

[Severity: Medium]
Does this violate the akcipher API contract by returning -EINVAL instead of
-EOVERFLOW? If the provided destination buffer is too small (req->dst_len <
key_bytes), returning -EOVERFLOW and updating req->dst_len to the required
size allows callers like af_alg to dynamically reallocate memory and retry.

[ ... ]

> +static int cmh_rsa_dec(struct akcipher_request *req)
> +{
> +	struct crypto_akcipher *tfm =3D crypto_akcipher_reqtfm(req);
> +	struct cmh_rsa_tfm_ctx *ctx =3D cmh_rsa_ctx(tfm);
> +	struct cmh_rsa_reqctx *rctx =3D akcipher_request_ctx(req);
> +	u32 key_bytes =3D ctx->bits / 8;
> +	u32 e_padded =3D ALIGN(ctx->e_sz, 4);
> +	struct vcq_cmd vcq[PKE_VCQ_CMDS_MAX];
> +	struct core_dispatch dd;
> +	int ret, idx, nents;
> +	gfp_t gfp;
> +
> +	if (ctx->key.mode !=3D CMH_KEY_RAW)
> +		return -EINVAL;
> +	if (!ctx->n || !ctx->e)
> +		return -EINVAL;
> +	if (req->src_len > key_bytes || req->dst_len < key_bytes)
> +		return -EINVAL;

[Severity: Medium]
Similarly, should this decryption path return -EOVERFLOW and update
req->dst_len when the buffer is insufficient, allowing userspace applicatio=
ns
to properly query the required buffer size?

[ ... ]

> +static int cmh_rsa_set_pub_key(struct crypto_akcipher *tfm,
> +			       const void *key, unsigned int keylen)
> +{
> +	struct cmh_rsa_tfm_ctx *ctx =3D cmh_rsa_ctx(tfm);
> +	struct rsa_key rsa =3D {};
> +	int ret;
> +
> +	ret =3D rsa_parse_pub_key(&rsa, key, keylen);
> +	if (ret)
> +		return ret;
> +
> +	/* Strip ASN.1 leading zero padding from modulus */
> +	while (rsa.n_sz > 0 && rsa.n[0] =3D=3D 0) {
> +		rsa.n++;
> +		rsa.n_sz--;
> +	}
> +
> +	ctx->bits =3D cmh_rsa_key_bits(rsa.n_sz);
> +	if (!ctx->bits)
> +		return -EINVAL;
> +
> +	kfree(ctx->n);
> +	kfree(ctx->e);
> +	ctx->n =3D NULL;
> +	ctx->e =3D NULL;
> +	ctx->n_sz =3D 0;
> +	ctx->e_sz =3D 0;

[Severity: High]
Could this lead to a state mismatch by failing to clear an existing private
key? If a small private key is loaded followed by a large public key,
cmh_rsa_dec() might later write a short private key into SYS_REF_TEMP while
issuing PKE_CMD_RSA_DEC configured for a much larger key size. Would calling
cmh_key_destroy(&ctx->key) here prevent this potential out-of-bounds read by
the hardware?

> +
> +	ctx->n =3D kmemdup(rsa.n, rsa.n_sz, GFP_KERNEL);
> +	ctx->e =3D kmemdup(rsa.e, rsa.e_sz, GFP_KERNEL);

[Severity: High]
Is there a missing upper bound check for the RSA public exponent size
(rsa.e_sz) here? An attacker could supply an oversized exponent in the ASN.1
key blob, causing the driver to allocate a large buffer and pass its length
to the hardware command queue in cmh_rsa_enc(). Could this trigger a buffer
overflow in the hardware crypto core's SRAM?

[ ... ]

> +static int cmh_rsa_set_priv_key(struct crypto_akcipher *tfm,
> +				const void *key, unsigned int keylen)
> +{
> +	struct cmh_rsa_tfm_ctx *ctx =3D cmh_rsa_ctx(tfm);
> +	struct rsa_key rsa =3D {};
> +	u32 key_bytes;
> +	u8 *d_padded;
> +	int ret;
> +
> +	ret =3D rsa_parse_priv_key(&rsa, key, keylen);
> +	if (ret)
> +		return ret;
> +
[ ... ]
> +	kfree(ctx->n);
> +	kfree(ctx->e);
> +	ctx->n =3D NULL;
> +	ctx->e =3D NULL;
> +	ctx->n_sz =3D 0;
> +	ctx->e_sz =3D 0;
> +
> +	ctx->n =3D kmemdup(rsa.n, rsa.n_sz, GFP_KERNEL);
> +	ctx->e =3D kmemdup(rsa.e, rsa.e_sz, GFP_KERNEL);

[Severity: High]
As in cmh_rsa_set_pub_key(), does this unvalidated copy of rsa.e_sz risk
crashing the hardware if a malformed private key with a massive public
exponent is provided?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709203037.1884=
436-1-skrishnamoorthy@rambus.com?part=3D12

