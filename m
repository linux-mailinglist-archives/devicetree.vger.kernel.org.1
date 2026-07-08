Return-Path: <devicetree+bounces-322906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d1GBAiplTmqALwIAu9opvQ
	(envelope-from <devicetree+bounces-322906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:56:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B5D727A80
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:56:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dLSogh8T;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322906-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322906-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CD2130315F0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 14:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80098478E51;
	Wed,  8 Jul 2026 14:44:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2156F382281;
	Wed,  8 Jul 2026 14:44:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783521883; cv=none; b=YoYKQF7inUq93AMgD3VDJBfizPOE85Wfgec9huaZ+9NK7SPqrlsEklujhpDPadxJ7f2e9ggUc1hXx6zFPurDUK801MRqIjbwlgVdTcXvKlqIT4upxHWCoXkJqsHbqdG+523wZBtDUZP3U8Cl9fva8KNXTUVMQzRj/mtlTUCK2LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783521883; c=relaxed/simple;
	bh=tZGlQTHztjrbBzj5twIHuqR5lt3ln0gSokU0xsME/jg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XDVwSELrieI8apdBiXanHtF7zVLOTxQa+7uP8ytMCdxswXlKDk8P6uD1fcYfFLwHU1IaWhh2LLm49HV5CifM05sC4lS+NCwQaHUhx1yjmlTaNBDKZ7/MEOx/GOE7ykfzK+FR9+YisiXcXDgw0qEGKHLPyhTHAcSqMYp43oaiJRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLSogh8T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E1181F000E9;
	Wed,  8 Jul 2026 14:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783521881;
	bh=GtpXwSjHZn0ECMelxkMi2Pf5qud76w5Ow4gq26wJqXw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dLSogh8TsG1j5i58dvEj42DvIDZXfLPQc1jJUGe7cD84eqFz9cTldfq9Uqz+OzAgC
	 wTseG0QwUNQMmTe49S5vcQK5jdISPXeaG8FyPmctMciFXJp3CGGIHVscYK1IzfJBxm
	 wpYxTbVufk8kIatFOhv8RDOHxe1RxILNrObS05TwkGvAlp7Do0MpCD4BRdN1oTNlrW
	 kxe6uRnUk+lRzNM7UojXiIjhDGgdkb8QPDKw8MptV4WvU4eRLgaQdtgWyrPjraca40
	 melMfnuJqBvVqTbpNNoWji5wiZcsZHwXogufgix8Sgo+uBMPuJNkd8r2nIqb6Hpfx5
	 R/FgII9mwPDmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 08/10] ACPI: APEI: share GHES CPER helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, linux-cxl@vger.kernel.org
In-Reply-To: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-8-8b3a85216cef@arm.com>
References: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com>
 <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-8-8b3a85216cef@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 14:44:41 +0000
Message-Id: <20260708144441.6E1181F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-322906-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arm.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:linux-cxl@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 51B5D727A80

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Out-of-bounds read when copying AER capability registers due to si=
ze mismatch.
- [High] Use-After-Free of `twcb` in `memory_failure_cb()`.
- [High] Missing ACPI payload length checks for CPER_SEC_PCIE and CPER_SEC_=
PLATFORM_MEM.
- [Medium] Time-of-check to time-of-use (TOCTOU) race conditions in CXL CPE=
R registration allows overwriting work pointers.
- [Medium] FRU ID and FRU Text state leaks across CPER sections.
--

--- Patch [8]: [PATCH v7 08/10] ACPI: APEI: share GHES CPER helpers ---
commit b197b806e546fd072c8420ae76e7be2f42261acb
Author: Ahmed Tiba <ahmed.tiba@arm.com>

ACPI: APEI: share GHES CPER helpers

Wire GHES up to the helper routines in ghes_cper.c and remove the local
copies from ghes.c. This keeps the control flow identical while letting
the helpers be shared with other firmware-first providers.

Serialize ghes_estatus_pool_init() and allow later users to extend the
shared pool instead of racing a second initialization or silently
reusing a pool sized only for the first user.

> diff --git a/drivers/acpi/apei/ghes_cper.c b/drivers/acpi/apei/ghes_cper.c
> index b59e3ed3eab36..ec8881ada97ef 100644
> --- a/drivers/acpi/apei/ghes_cper.c
> +++ b/drivers/acpi/apei/ghes_cper.c

[ ... ]

> +static void memory_failure_cb(struct callback_head *twork)
> +{
> +	struct ghes_task_work *twcb =3D container_of(twork, struct ghes_task_wo=
rk, twork);
> +	int ret;
> +
> +	ret =3D memory_failure(twcb->pfn, twcb->flags);
> +	gen_pool_free(ghes_estatus_pool, (unsigned long)twcb, sizeof(*twcb));
> +
> +	if (!ret || ret =3D=3D -EHWPOISON || ret =3D=3D -EOPNOTSUPP)
> +		return;
> +
> +	pr_err("%#llx: Sending SIGBUS to %s:%d due to hardware memory corruptio=
n\n",
> +			twcb->pfn, current->comm, task_pid_nr(current));

[Severity: High]
This is a pre-existing issue, but can we dereference a freed pointer here?

When handling a hardware memory error asynchronously via memory_failure_cb(=
),
the task work struct twcb is freed back to ghes_estatus_pool:

    gen_pool_free(ghes_estatus_pool, (unsigned long)twcb, sizeof(*twcb));

If memory_failure() returns an unhandled error code, the subsequent pr_err()
attempts to read twcb->pfn:

    pr_err("%#llx: Sending SIGBUS ...", twcb->pfn, ...);

Could this Use-After-Free result in printing garbage data or cause a panic?

[ ... ]

> +void ghes_handle_aer(struct acpi_hest_generic_data *gdata)
> +{
> +#ifdef CONFIG_ACPI_APEI_PCIEAER
> +	struct cper_sec_pcie *pcie_err =3D acpi_hest_get_payload(gdata);
> +
> +	if (pcie_err->validation_bits & CPER_PCIE_VALID_DEVICE_ID &&

[Severity: High]
This is a pre-existing issue, but is it possible for the firmware to provide
a payload smaller than expected?

The pcie_err payload is cast from gdata and accessed directly. If the
firmware submits an error record where gdata->error_data_length is smaller
than the size of struct cper_sec_pcie, does this result in an out-of-bounds
read?

> +	    pcie_err->validation_bits & CPER_PCIE_VALID_AER_INFO) {
> +		unsigned int devfn;
> +		int aer_severity;
> +		u8 *aer_info;

[ ... ]

> +		aer_info =3D (void *)gen_pool_alloc(ghes_estatus_pool,
> +						  sizeof(struct aer_capability_regs));
> +		if (!aer_info)
> +			return;
> +		memcpy(aer_info, pcie_err->aer_info, sizeof(struct aer_capability_regs=
));

[Severity: High]
This is a pre-existing issue, but does this memcpy() read past the end of
the array?

The size of struct aer_capability_regs is 100 bytes, but the aer_info field
in struct cper_sec_pcie is a fixed 96-byte array:

    u8 aer_info[96];

Does copying sizeof(struct aer_capability_regs) bytes from pcie_err->aer_in=
fo
cause an out-of-bounds read of up to 4 bytes past the section structure?

[ ... ]

> +void ghes_cper_handle_status(struct device *dev,
> +			     const struct acpi_hest_generic *generic,
> +			     const struct acpi_hest_generic_status *estatus,
> +			     bool sync)
> +{
> +	int sev, sec_sev;
> +	struct acpi_hest_generic_data *gdata;
> +	guid_t *sec_type;
> +	const guid_t *fru_id =3D &guid_null;
> +	char *fru_text =3D "";
> +	bool queued =3D false;
> +
> +	sev =3D ghes_severity(estatus->error_severity);
> +	apei_estatus_for_each_section(estatus, gdata) {
> +		sec_type =3D (guid_t *)gdata->section_type;
> +		sec_sev =3D ghes_severity(gdata->error_severity);
> +		if (gdata->validation_bits & CPER_SEC_VALID_FRU_ID)
> +			fru_id =3D (guid_t *)gdata->fru_id;
> +
> +		if (gdata->validation_bits & CPER_SEC_VALID_FRU_TEXT)
> +			fru_text =3D gdata->fru_text;

[Severity: Medium]
This is a pre-existing issue, but do we leak FRU ID and Text state across
sections in this loop?

If an APEI estatus contains multiple sections, and the first section contai=
ns
a valid FRU ID and Text, fru_id and fru_text are updated. If a subsequent
section does not have these validation bits set, the variables are not reset
to &guid_null and "".

Does this cause subsequent sections to incorrectly inherit the previous
section's FRU strings?

> +
> +		ghes_log_hwerr(sev, sec_type);
> +		if (guid_equal(sec_type, &CPER_SEC_PLATFORM_MEM)) {
> +			struct cper_sec_mem_err *mem_err =3D acpi_hest_get_payload(gdata);
> +
> +			atomic_notifier_call_chain(&ghes_report_chain, sev, mem_err);

[Severity: High]
This is a pre-existing issue, but similar to the AER handling above, do we
need to validate the payload length here?

The code unconditionally casts the payload and passes it along. Unlike the
ARM sections which explicitly validate gdata->error_data_length, could a
malformed firmware record smaller than struct cper_sec_mem_err cause=20
out-of-bounds reads when accessed in the notifier chain?

[ ... ]

Additionally, while reviewing ghes_cper.c, I noticed another pre-existing=20
issue in cxl_cper_register_work() which is not modified by this patch:

[Severity: Medium]
Is there a race condition when checking cxl_cper_work?

In cxl_cper_register_work():

    if (cxl_cper_work)
        return -EINVAL;

    guard(spinlock_irqsave)(&cxl_cper_work_lock);
    cxl_cper_work =3D work;

The check against cxl_cper_work happens outside the lock. If two threads
concurrently call this API, both could see cxl_cper_work as NULL, sequentia=
lly
acquire the lock, and assign their pointers. Could this silently overwrite
a registered work struct pointer?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-topics-ahm=
tib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com?part=3D8

