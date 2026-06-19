Return-Path: <devicetree+bounces-313839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ty6vLVpbNWqetwYAu9opvQ
	(envelope-from <devicetree+bounces-313839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:08:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1452B6A6993
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:08:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KFzmLfAW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313839-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313839-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCB993002B6A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F50E282F2E;
	Fri, 19 Jun 2026 15:06:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CBC285CAE
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 15:06:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781881580; cv=none; b=JEwNP727ANVkdCiUIoW7OoJ1u153YYFSWqBwdXJ6pnfh1gOtakBOHllCvwpTa6kx+cHEsrCj773dBzyXx37PiMWs7nvcNiogI65RNkjGPYlNuDuHBYHQ6axsYn/Z19bEK/cIuWJKiduNChogCXuiEuxCMtPgWNWakQJTYF4VYQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781881580; c=relaxed/simple;
	bh=NMhZl6yzZoPaPFC2r9TvSTe5OyQpJXA02ZqRNou92qA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=g74JOqKL01ZRrY1FIB9mKaXgC3k+LJxTmTob1FlaC8WSsZijKEn4JYi3kms9yY43tcHrr/8A153F29LF5DqvoOJfkhslGvFPlX9g+ca5vUmuVqv2tJvSaNUbckVMBe8D04MexK+lmrk2wTqTpQSFvzL4bBE8KkPdFw3c0TMe6Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFzmLfAW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE42E1F000E9;
	Fri, 19 Jun 2026 15:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781881579;
	bh=aGmF5dkkuzfieo3opwwh+/44lapJmysqRFe154qDPZs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KFzmLfAW/HeSjtuzvkmi9VG/8jrASSFO8UI3x8zvivnpasO0jzALKYxtMiEU7P6o7
	 0mAu7lKwYjvn+mVnR8/OU59GeTbDqN4DaS0/jfjgwh1dnzGr/WTTgOooVYTZ7h+U4r
	 BXyFD13Hb8sSAQVAErdG9rVSgfqPorgA3a2unEd5VC6mCKOC+6kt3ml/k/3Yp0SG8l
	 YahXBu5uQkdA2uKlnjNZRtN+7ECxsiwdzz34QeiBJ1p+WiIOUZD3h+2swLPzUmj8Gv
	 lvy4iXIR5XmiyGBb03a2q9tM7RATfELX5qIPxd/vduiIGQVWZAego2oyae0+VKG4Kw
	 pvPAx00RmeHaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 3/4] crypto: spacc - Add SPAcc AUTODETECT Support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pavitrakumar Managutte" <pavitrakumarm@vayavyalabs.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260619144558.1868995-4-pavitrakumarm@vayavyalabs.com>
References: <20260619144558.1868995-1-pavitrakumarm@vayavyalabs.com>
 <20260619144558.1868995-4-pavitrakumarm@vayavyalabs.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 15:06:18 +0000
Message-Id: <20260619150618.CE42E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313839-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pavitrakumarm@vayavyalabs.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,vayavyalabs.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1452B6A6993

Thank you for your contribution! Sashiko AI review found 8 potential issue(=
s) to consider:

New issues:
- [Critical] Missing algorithm size adjustment causes integer underflow and=
 massive out-of-bounds stack read for SM4_XCBC.
- [High] `spacc_autodetect()` silently masks failures from `spacc_check_mod=
es()`, leaving untested algorithms fully enabled.
- [High] Algorithms unsupported by older hardware are incorrectly left full=
y enabled.
- [High] Hardware jobs are not aborted on timeout or signal interruption du=
ring autodetect, causing DMA and stack Use-After-Free.
- [High] Autodetect enqueues zero-length MAC/ICV jobs and sends fake keys t=
o raw hash modes, risking hardware hangs.

Pre-existing issues:
- [High] Stale entries in the `job_lookup` array cause cross-talk and prema=
ture wakeups when jobs time out.
- [High] Autodetect key size validation is completely bypassed for all hash=
 algorithms.
- [High] Hardware jobs are not aborted on signal interruption during XCBC k=
ey setup, causing Use-After-Free.
--

commit e6db4de2a591df230531fe22f63687d19f34dfb0
Author: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>

crypto: spacc - Add SPAcc AUTODETECT Support

SPAcc is configurable and it supports the below modes:
1. AUTODETECT configuration - Autodetects the supported algos.
2. Static configuration - The algo support is defined statically.

> diff --git a/drivers/crypto/dwc-spacc/spacc_core.c b/drivers/crypto/dwc-s=
pacc/spacc_core.c
> index bfbd6624e9268..f95059ba00377 100644
> --- a/drivers/crypto/dwc-spacc/spacc_core.c
> +++ b/drivers/crypto/dwc-spacc/spacc_core.c
> @@ -201,6 +201,909 @@ static const unsigned char template[] =3D {
>  	[CRYPTO_MODE_MAC_SM4_CMAC]      =3D 242,
>  };
> =20
> +#if IS_ENABLED(CONFIG_CRYPTO_DEV_SPACC_AUTODETECT)
> +static const struct {
> +	unsigned int min_version;
> +	struct {
> +		int outlen;
> +		unsigned char data[64];
> +	} test[7];
> +} testdata[CRYPTO_MODE_LAST] =3D {
[ ... ]
> +	[CRYPTO_MODE_HASH_MD5] =3D {
> +		.min_version =3D 0x65,
> +		.test[1].outlen =3D 16, .test[1].data =3D { 0x70, 0xbc, 0x8f, 0x4b,
> +			0x72, 0xa8, 0x69, 0x21, 0x46, 0x8b, 0xf8, 0xe8, 0x44,
> +			0x1d, 0xce, 0x51,  }
> +	},

[Severity: High]
Does assigning bitmask 242 in the template array to raw hash modes like
MD5 cause issues here?

It appears that autodetect will test four non-existent key sizes for these
raw hashes. For unpopulated tests where testdata.test[y].outlen is 0,
could passing 0 to spacc_set_operation() as icvsz and sending dummy
128-byte keys to the hardware lock up the cryptographic accelerator?

[ ... ]
> +		spacc_write_context(spacc, rc, SPACC_HASH_OPERATION,
> +				hash_key, keysizes[1][keysz_idx] +
> +				(algo_mode =3D=3D CRYPTO_MODE_MAC_XCBC ? 32 : 0),
> +				hash_key, 16);

[Severity: Critical]
Is the + 32 size adjustment missing for CRYPTO_MODE_MAC_SM4_XCBC here?

When CRYPTO_MODE_MAC_SM4_XCBC is used, keysize appears to be passed as 16
instead of 48. Later in spacc_write_context(), both XCBC modes compute
ksz - 32, which would underflow to -16. Since spacc_write_to_buf()
evaluates length as a signed integer, would this trigger an out-of-bounds
stack read and leak uninitialized kernel memory to the hardware?

[ ... ]
> +	if (err =3D=3D 0) {
> +		long ret;
> +
> +		ret =3D wait_event_interruptible_timeout(job->waitq,
> +				job->job_done, msecs_to_jiffies(500));
> +		if (ret =3D=3D 0) {
> +			spacc->config.modes[algo_mode] &=3D ~(1 << keysz_idx);
> +			spacc_close(spacc, rc);
> +			return -ETIMEDOUT;
> +		} else if (ret =3D=3D -ERESTARTSYS) {
> +			spacc->config.modes[algo_mode] &=3D ~(1 << keysz_idx);
> +			spacc_close(spacc, rc);
> +			return -EINTR;
> +		}

[Severity: High]
When a timeout or signal occurs, does the hardware operation continue runni=
ng?

If the software job slot is closed and spacc_autodetect() frees the DMA
memory, could the ongoing hardware operation asynchronously write crypto
results to the freed memory and dereference the destroyed ddt stack
pointer?

[Severity: High]
This is a pre-existing issue, but when spacc_close() calls
spacc_job_release(), does it leave a stale entry in the job_lookup array?

If spacc_job_release() frees the job_idx for reuse but fails to clear
spacc->job_lookup[job->job_swid], could a subsequent job receive the same
job_idx and be incorrectly woken up when the timed-out hardware job
finally completes?

[Severity: High]
This isn't a bug introduced by this patch, but spacc_compute_xcbc_key()
seems to have a similar issue with wait_event_interruptible().

If interrupted by a signal, it jumps to the error path and frees the DMA
buffer and ddt structure without aborting the hardware DMA transaction.
Can this lead to a Use-After-Free if the hardware continues executing?

[ ... ]
> +int spacc_autodetect(struct spacc_device *spacc)
> +{
[ ... ]
> +	for (x =3D 0; x < ARRAY_SIZE(template); x++) {
> +		spacc->config.modes[x] =3D template[x];
> +		if (template[x] && spacc->config.version >=3D
> +				testdata[x].min_version) {

[Severity: High]
If the hardware version is older than testdata[x].min_version, does the
unsupported algorithm remain fully enabled in spacc->config.modes?

Since the bitmask is initialized to its default template value and never
cleared if the test loop is bypassed, would the driver attempt to use
unsupported algorithms on older hardware?

[Severity: High]
This is a pre-existing issue, but does spacc_is_mode_keysize_supported()
unconditionally bypass validation for all hash algorithms?

Because the template array initializes all hashes with bit 128 set, and
autodetect only clears bits 0-6, bit 128 is never cleared. Would this allow
invalid key sizes to pass validation and cause hardware errors?

> +			for (y =3D 0; y < (ARRAY_SIZE(keysizes[0])); y++) {
> +				if (spacc_check_modes(spacc, x, y, virt, key,
> +							&ddt) < 0)
> +					goto out_free_dma;
> +			}
> +		}
> +	}
> +
> +out_free_dma:
> +	pdu_ddt_free(&ddt);
> +	dma_free_coherent(get_ddt_device(),
> +			SPACC_TEST_DMA_BUFF_SIZE, virt, dma);
> +	spacc->autodetect =3D false;
> +
> +	return 0;
> +}

[Severity: High]
If spacc_check_modes() fails, is the negative error code swallowed here?

By jumping to out_free_dma and returning 0, the driver appears to succeed
the probe while bypassing the remaining capability checks. Could this leave
untested algorithms enabled and lead to system instability when the crypto
API attempts to use them?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619144558.1868=
995-1-pavitrakumarm@vayavyalabs.com?part=3D3

