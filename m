Return-Path: <devicetree+bounces-324144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FCSVIacMUGpasgIAu9opvQ
	(envelope-from <devicetree+bounces-324144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 23:03:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9F9735B74
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 23:03:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oEqo80XE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324144-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324144-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28A693074DE4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 20:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5883D3337;
	Thu,  9 Jul 2026 20:54:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0773E0223
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 20:54:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783630481; cv=none; b=SpkOuBDDxgd/RlLXHrMbnKzdDhflC0p5aL0aK56d3H2cjQTjN2ommke++zJVV4UQ/+GYVnL3oKSqHmw0nAW+AK681Ix5aAzqVMKDVpwf9vtg69LYvxZJiFDO0JVL92iVbnzHTn2lSox+5WX4pPbKErwkmks2RJau8OGy/tiKdg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783630481; c=relaxed/simple;
	bh=9W3m7962wCOhhdY0t+mcNcXFs20kNyMdTPAlzlwaoY4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hRL9fe/zIzrplJjbkHBIh4YozPH0buWWoCgjU2W6ZTSNZlnNDA7vZz428/Alh7JJsl+y3W0kGBrKJ/Jc6ibmls3ItJ7MsXcWKGnbxmBVoH8RdxOMjxMioi5uFFDiEsPzgSCM5YatFVX46mDUlDyrk3Z+r9Tt8L+4kjjmmL+J1BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEqo80XE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E1B81F00A3A;
	Thu,  9 Jul 2026 20:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783630479;
	bh=Xyy6jUQw9D/qbLIAfobBXyxN8flSFgPS2V71KRrg0Ic=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oEqo80XEFvWJpzCt+rjMwOH3ONK9Oyc8WhucechZM63JBmDWHUGYPqogW+R5+nq3g
	 37PjZ59REWXr9tIOhRyppovtmjP9kNZybJD33aRfSwmCsmsXNGyuQHNPNk34SOI0WX
	 4ksLqxY13KvFAhU1HEqpPGMhcunL2EF6GYYMY6ujhnkkKsNvn4zKZuvLZe7lpEAHEC
	 Qi6OMh/OjsI40nvy5R3vMk/EhtKRlfzEU5wYJEno5IcEMiw66SYFJ0Q67EMRzdZtmy
	 fGtRiT6tbmcNzkFsW/xYt2OhJc/n42C1LAvWbw1ASZns8npwZAcu/sk3i32BIy2tOQ
	 yd1xDkRUilz7g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/19] crypto: cmh - add DRBG hwrng
Reply-To: sashiko-reviews@lists.linux.dev
To: "Saravanakrishnan Krishnamoorthy" <skrishnamoorthy@rambus.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709203037.1884436-12-skrishnamoorthy@rambus.com>
References: <20260709203037.1884436-1-skrishnamoorthy@rambus.com>
 <20260709203037.1884436-12-skrishnamoorthy@rambus.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 20:54:39 +0000
Message-Id: <20260709205439.4E1B81F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324144-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:skrishnamoorthy@rambus.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,rambus.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DB9F9735B74

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The `hwrng_quality` module parameter defaults to 0, which is docum=
ented as disabling CRNG seeding, but unintentionally grants full trust to t=
he DRBG due to core framework fallback.
- [High] Lockless TOCTOU race on the g_cmh_dev singleton pointer allows con=
current probes to corrupt global device state.
- [Medium] Generated DRBG entropy is left uncleared in freed heap memory on=
 the success and synchronous error paths.
- [Medium] Returning -EAGAIN on blocking reads violates POSIX semantics.
--

--- Patch [11]: [PATCH v2 11/19] crypto: cmh - add DRBG hwrng ---
commit 2408e2e670d0040cbc567d97d33eb49067cbda6f
Author: Alex Ousherovitch <aousherovitch@rambus.com>

crypto: cmh - add DRBG hwrng
   =20
Register the CMH DRBG core (core ID 0x0f) as an hwrng provider.
The hardware implements a NIST SP 800-90A compliant DRBG with
automatic self-seeding.

> diff --git a/drivers/crypto/cmh/cmh_main.c b/drivers/crypto/cmh/cmh_main.c
> index e5b2a86c3149b..40440e2b73b43 100644
> --- a/drivers/crypto/cmh/cmh_main.c
> +++ b/drivers/crypto/cmh/cmh_main.c
> @@ -230,6 +231,11 @@ static int cmh_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_sm3_register;
> =20
> +	/* Register hwrng backed by DRBG core */
> +	ret =3D cmh_rng_register(pdev);
> +	if (ret)
> +		goto err_rng_register;
> +

[Severity: High]
While reviewing the new registration in cmh_probe(), I noticed a potential
issue with the global singleton g_cmh_dev.

At the start of cmh_probe(), there is a lockless check:

if (g_cmh_dev)
	return -EBUSY;

But g_cmh_dev is only assigned at the very end of the function:

g_cmh_dev =3D dev;

Does this allow a time-of-check to time-of-use race where concurrent probes
could both see g_cmh_dev as NULL and proceed to register global algorithms,
potentially corrupting the crypto api lists and subsystem state?

[ ... ]
> diff --git a/drivers/crypto/cmh/cmh_rng.c b/drivers/crypto/cmh/cmh_rng.c
> new file mode 100644
> index 0000000000000..c9693f6cc3609
> --- /dev/null
> +++ b/drivers/crypto/cmh/cmh_rng.c
> @@ -0,0 +1,316 @@
[ ... ]
> +static int hwrng_quality;
> +module_param(hwrng_quality, int, 0444);
> +MODULE_PARM_DESC(hwrng_quality,
> +		 "hwrng quality (0=3Dno CRNG seeding, 1-1024=3Denable; default: 0)");
[ ... ]
> +int cmh_rng_register(struct platform_device *pdev)
> +{
> +	int ret;
> +
> +	cmh_hwrng.quality =3D hwrng_quality;

[Severity: High]
The module parameter documentation indicates that a default value of 0 means
"no CRNG seeding".

If hwrng_quality is 0, this assigns 0 to cmh_hwrng.quality. The hwrng core
framework treats 0 as uninitialized and applies fallback logic:

rng->quality =3D min3(default_quality, 1024, rng->quality ?: 1024);

Does this fallback logic evaluate to 1024 when rng->quality is 0, silently
elevating the hardware rng to a fully trusted entropy source by default
and violating the documented security intent?

[ ... ]
> +static int cmh_rng_read(struct hwrng *rng, void *data, size_t max, bool =
wait)
> +{
[ ... ]
> +	ret =3D cmh_tm_submit_sync_noabort(vcq, DRBG_READ_VCQ_CMDS, 1,
> +					 msecs_to_jiffies(drbg_timeout_ms),
> +					 cmh_dma_orphan_free, orphan);
> +	if (ret =3D=3D -EINPROGRESS) {
> +		/* Orphan callback owns dmabuf -- will free on VCQ completion */
> +		return -EAGAIN;
> +	}

[Severity: Medium]
When wait is true, cmh_rng_read() is being called for a blocking read.

If a transient error like -EINPROGRESS is returned, propagating -EAGAIN back
to the hwrng core causes it to return -EAGAIN to userspace on a blocking
file descriptor.

Could returning -EAGAIN on a blocking read violate posix semantics for
blocking file descriptors?

> +
> +	/* Normal path or cancelled-from-queue: caller owns DMA */
> +	cmh_dma_unmap_single(dma_addr, nbytes, DMA_FROM_DEVICE);
> +	kfree(orphan);
> +
> +	if (ret) {
[ ... ]
> +		case -ENODEV:
> +			dev_dbg_ratelimited(cmh_dev(),
> +					    "rng: transient DRBG failure (rc=3D%d)\n",
> +					    ret);
> +			kfree(dmabuf);
> +			return -EAGAIN;

[Severity: Medium]
Similar to the -EINPROGRESS check above, this path returns -EAGAIN without
checking the wait parameter, which can leak non-blocking error codes to a
blocking read.

Additionally, dmabuf is freed here using a standard kfree(). Since dmabuf
might contain sensitive pseudo-random material from a partially completed
or failed operation, would it be safer to use kfree_sensitive() to ensure
the buffer is zeroized?

> +		default:
> +			dev_err_ratelimited(cmh_dev(),
> +					    "rng: DRBG generate failed (rc=3D%d)\n",
> +					    ret);
> +			kfree(dmabuf);

[Severity: Medium]
Does this error path also need kfree_sensitive() to clear potentially
sensitive entropy data left in dmabuf?

> +			return ret;
> +		}
> +	}
> +
> +	memcpy(data, dmabuf, nbytes);
> +	kfree(dmabuf);

[Severity: Medium]
After successfully copying the generated entropy to the caller's buffer,
dmabuf is freed with kfree().

Could this leave uncleared generated entropy in the kernel heap, and should
kfree_sensitive() be used here instead?

> +
> +	return nbytes;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709203037.1884=
436-1-skrishnamoorthy@rambus.com?part=3D11

