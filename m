Return-Path: <devicetree+bounces-313046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GOprBemrMmrl3QUAu9opvQ
	(envelope-from <devicetree+bounces-313046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:15:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 764E069A74F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:15:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H0X4jx7K;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313046-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313046-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC091307BFC1
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6758421F17;
	Wed, 17 Jun 2026 14:14:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE53E37F735;
	Wed, 17 Jun 2026 14:14:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781705686; cv=none; b=dCXkWj5RPTaEwPe1AJvNwOcvrZPTf5P4r0AeBNkFC3sjLszlcaxi7FR1x18pGSNjflHZnPbsTBAwsQADS+nY8Os3VOKUVv8xKGC/WRjoEFCSQ7Me9xP36aKa/sG1Dep5nTUrQGajlG/tYQZ1/DfbX/IxxyCSWJDxqquIGi+VLkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781705686; c=relaxed/simple;
	bh=bDKA5uVnGOhKpvgaV78zmV5TCN7LOJw1yhiqRK5NNRg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=otDtabmGOJBNGKI8EyqN8X0U2CIe3ABmBKV23SQ7LHgHN6TxJ/V31DLZYqiJKzUrv5qf4aKSnY0l7tWsE9HWASK6LFvJ5BjEMMNSVD76s6fg7li1YzH9RBQ9iRpxlThdSAH/5Blkitlmko65YROl2mYhNxKzrQHCGB3Is3mA4Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0X4jx7K; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 386901F000E9;
	Wed, 17 Jun 2026 14:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781705685;
	bh=3BL1znwxwyF+/w91p1vW3R6pP3XesgLUhUfFfV7/vrs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H0X4jx7Keg2AA8bvmRknDU24m3M1F3lvtTdPecrGAeySPgufTJUHZVF/HYHzdx+rT
	 D8YYW8PQEgpLb9D8kLK2MYV/cgGe+pgYT6HZ5kUE+2yX7GM8n92mrfy8uPnlRt/ewh
	 YV/msCTia3/o+7Z+fiSr+Phgp44+blhGdPOBBWYiD/RpeK5/TyCJveu32LAfecP6LF
	 XybR76u5N8Bic0rfF5RthkvWFrjOTuJgM85MXLH6BzsuxUeDJsscb+YqkzQueF73rO
	 qisbmwminu8Ak1hKjZ30sYDL//jBU7dDfmzkoendVaO7z8Cd6zMkqH0czXjnTAm9f0
	 Eu5ETF0uPaHgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 06/10] ACPI: APEI: GHES: move CXL CPER helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-cxl@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-6-91f725174aa0@arm.com>
References: <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-0-91f725174aa0@arm.com>
 <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-6-91f725174aa0@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 14:14:44 +0000
Message-Id: <20260617141445.386901F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313046-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,arm.com:email,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-cxl@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 764E069A74F

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Inconsistent spinlock usage between process context and interrupt =
context for `cxl_cper_work_lock` and `cxl_cper_prot_err_work_lock` causes a=
 potential deadlock.
- [High] Unconditional fixed-size copy leads to out-of-bounds read if the A=
CPI payload is short.
- [High] Lack of bounds checking for DVSEC length leads to out-of-bounds re=
ad in CXL protocol error handling.
--

commit bb34e6b6044e94825caae9bb7ad029942aef5c28
Author: Ahmed Tiba <ahmed.tiba@arm.com>

ACPI: APEI: GHES: move CXL CPER helpers

Move the CXL CPER handling paths out of ghes.c and into ghes_cper.c so the
helpers can be reused. The code is moved as-is, with the public
prototypes updated so GHES keeps calling into the new translation unit.

> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
[ ... ]
> diff --git a/drivers/acpi/apei/ghes_cper.c b/drivers/acpi/apei/ghes_cper.c
> index b26943eafd792..66bf1af4db00b 100644
> --- a/drivers/acpi/apei/ghes_cper.c
> +++ b/drivers/acpi/apei/ghes_cper.c
[ ... ]
> @@ -336,6 +339,138 @@ void ghes_defer_non_standard_event(struct acpi_hest=
_generic_data *gdata,
[ ... ]
> +void cxl_cper_post_prot_err(struct cxl_cper_sec_prot_err *prot_err,
> +			    int severity)
> +{
> +#ifdef CONFIG_ACPI_APEI_PCIEAER
> +	struct cxl_cper_prot_err_work_data wd;
> +
> +	if (cxl_cper_sec_prot_err_valid(prot_err))
> +		return;
> +
> +	guard(spinlock_irqsave)(&cxl_cper_prot_err_work_lock);
> +
> +	if (!cxl_cper_prot_err_work)
> +		return;
> +
> +	if (cxl_cper_setup_prot_err_work_data(&wd, prot_err, severity))

[Severity: High]
This is a pre-existing issue, but could this setup step read out of bounds?

The cxl_cper_setup_prot_err_work_data() function uses the firmware-provided
dvsec_len to compute a pointer for copying the RAS capability registers:

ghes_helpers.c:cxl_cper_setup_prot_err_work_data() {
        ...
        cap_start =3D dvsec_start + prot_err->dvsec_len;
        memcpy(&wd->ras_cap, cap_start, sizeof(wd->ras_cap));

Since cxl_cper_post_prot_err() and its callers do not validate that
dvsec_len falls within the maximum bounds of the ACPI payload
(gdata->error_data_length), could a malformed firmware record cause cap_sta=
rt
to point beyond the valid buffer?

> +		return;
> +
> +	if (!kfifo_put(&cxl_cper_prot_err_fifo, wd)) {
> +		pr_err_ratelimited("CXL CPER kfifo overflow\n");
> +		return;
> +	}
> +
> +	schedule_work(cxl_cper_prot_err_work);
> +#endif
> +}
> +
> +int cxl_cper_register_prot_err_work(struct work_struct *work)
> +{
> +	if (cxl_cper_prot_err_work)
> +		return -EINVAL;
> +
> +	guard(spinlock)(&cxl_cper_prot_err_work_lock);

[Severity: High]
This isn't a bug introduced by this patch, but is there a potential deadlock
between process context and interrupt context here?

The registration function acquires the lock with guard(spinlock), leaving
local interrupts enabled.

If a hardware interrupt occurs while this lock is held, and the interrupt
handler calls cxl_cper_post_prot_err() which attempts to acquire the same
lock using guard(spinlock_irqsave):

cxl_cper_post_prot_err() {
        ...
        guard(spinlock_irqsave)(&cxl_cper_prot_err_work_lock);

Could this cause the interrupt handler to spin forever on the local CPU?

> +	cxl_cper_prot_err_work =3D work;
> +	return 0;
> +}
[ ... ]
> +void cxl_cper_post_event(enum cxl_event_type event_type,
> +			 struct cxl_cper_event_rec *rec)
> +{
> +	struct cxl_cper_work_data wd;
> +
> +	if (rec->hdr.length <=3D sizeof(rec->hdr) ||
> +	    rec->hdr.length > sizeof(*rec)) {
> +		pr_err(FW_WARN "CXL CPER Invalid section length (%u)\n",
> +		       rec->hdr.length);
> +		return;
> +	}
> +
> +	if (!(rec->hdr.validation_bits & CPER_CXL_COMP_EVENT_LOG_VALID)) {
> +		pr_err(FW_WARN "CXL CPER invalid event\n");
> +		return;
> +	}
> +
> +	guard(spinlock_irqsave)(&cxl_cper_work_lock);
> +
> +	if (!cxl_cper_work)
> +		return;
> +
> +	wd.event_type =3D event_type;
> +	memcpy(&wd.rec, rec, sizeof(wd.rec));

[Severity: High]
This is a pre-existing issue, but can this copy read out of bounds if the
ACPI payload is unexpectedly short?

The memcpy unconditionally copies sizeof(wd.rec) bytes from the
firmware-provided payload.

Since gdata->error_data_length is never verified to be at least the size
of the record before being passed to this function by
ghes_cper_handle_status(), would a malformed payload smaller than the
struct cause an uncontrolled read of kernel memory?

> +
> +	if (!kfifo_put(&cxl_cper_fifo, wd)) {
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-topics-ahm=
tib01-ras_ffh_arm_internal_review-v6-0-91f725174aa0@arm.com?part=3D6

