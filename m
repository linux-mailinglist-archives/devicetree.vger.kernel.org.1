Return-Path: <devicetree+bounces-322880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IpbxA9xeTmq7LQIAu9opvQ
	(envelope-from <devicetree+bounces-322880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:29:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C78A7275A7
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 16:29:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B4jFqrHm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322880-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322880-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6094E30BDECD
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 14:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9199478E41;
	Wed,  8 Jul 2026 14:19:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A035847D920;
	Wed,  8 Jul 2026 14:19:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783520380; cv=none; b=kqdKIsvAmQxCw4bT596edrzLzekxSAIthxT3m/4umZFHSyQqt4WxXEqfg1OPEfuOQZNq61x/y5HRLr5dkvb1c5p7SbKR9OzmdpFbkbARPS+nvmwPBBVnufom9aRN/8OPABGia8yqh0LHkSKPAm9XwVRwLNnAVrcwxLpflkOHCBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783520380; c=relaxed/simple;
	bh=hi1COVShy8CmEk4KXz+iPhjpDxv27EyzPdzQNq5vYwA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mlGPmd7gWW9SjvDrqvfE092SfyJl9Pi6mAejWNsywFqyDFpCxvnks3DHw/o4zHyFovNT5qWp5uJ+fFYD1OAv5FxZHNRvs9JQdlJxRP176uldCzmX7OR5G3yIjgW7Z/E2Sd9MIblfWPXxAn/uU/+rMAsOxXvzwTxifKVu7TfNkyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4jFqrHm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0DE71F00A3A;
	Wed,  8 Jul 2026 14:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783520379;
	bh=HqBSkGuC3iESCa7R9QMmbcf6/8gWTk6ewdxGeIaLSys=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B4jFqrHmLZOhXWJfa0Os++NeWe8OYmMdpR8edqnFioJGXg6Vski+5VDUNWsA0Ga0Y
	 c3lHTEbIntPWgGlx6X2K7dwvNFTLMYoGxV4nkA8Ph4tn1hsnKonvxp9BQ2TiEheZ8M
	 PlgWUwVJZjjfPyoJEod4uDKWfaTpKPuSbjoVEmIg5ph9YD0J6jwKQnyvaCpB8YVyb6
	 w+OBQZqoURu8izD1g43RO3vwC4DX/YbRmYKTgcaInHbJpHreby+Jd6gc3RZsSKGmxF
	 PFEzprY0a9hirFL4Ysq9MnU2pOPyuKsiL5pLYyoQBxDMOBiaG0JJb/ElmDF+yPty68
	 QFshv8UbffoUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 06/10] ACPI: APEI: GHES: move CXL CPER helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: devicetree@vger.kernel.org, linux-cxl@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-6-8b3a85216cef@arm.com>
References: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com>
 <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-6-8b3a85216cef@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 14:19:37 +0000
Message-Id: <20260708141938.E0DE71F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322880-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:devicetree@vger.kernel.org,m:linux-cxl@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C78A7275A7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unsafe out-of-bounds dereference of `rec->hdr.length` in error rep=
orting when the CXL CPER payload is smaller than expected.
--

--- Patch [6]: [PATCH v7 06/10] ACPI: APEI: GHES: move CXL CPER helpers ---
commit ee2f071640d051dd6e9cf685ba55c5b9e8dbf870
Author: Ahmed Tiba <ahmed.tiba@arm.com>

ACPI: APEI: GHES: move CXL CPER helpers

This patch moves the CXL CPER handling code out of ghes.c and into
ghes_cper.c to allow for code reuse. It also adds new CXL CPER section
length checks and uses spinlock_irqsave() in the CXL register/unregister
paths for locking consistency.

> diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
> index 07e4001ea8d77..2a83d326e692b 100644
> --- a/drivers/acpi/apei/ghes.c
> +++ b/drivers/acpi/apei/ghes.c

[ ... ]

> @@ -549,6 +417,42 @@ static void ghes_log_hwerr(int sev, guid_t *sec_type)
>  	hwerr_log_error_type(HWERR_RECOV_OTHERS);
>  }
> =20
> +static bool ghes_cxl_event_len_valid(struct acpi_hest_generic_data *gdat=
a,
> +				     struct cxl_cper_event_rec *rec)
> +{
> +	if (gdata->error_data_length < sizeof(*rec) ||
> +	    rec->hdr.length <=3D sizeof(rec->hdr) ||
> +	    rec->hdr.length > gdata->error_data_length ||
> +	    rec->hdr.length > sizeof(*rec)) {
> +		pr_err(FW_WARN "CXL CPER Invalid section length (%u)\n",
> +		       rec->hdr.length);

[Severity: High]
This isn't a bug introduced by this patch, but if the first condition
(gdata->error_data_length < sizeof(*rec)) is true, won't evaluating
rec->hdr.length in this error message cause an out-of-bounds memory read?

If the firmware provides an empty or severely truncated CXL CPER payload,
reading past the end of the estatus buffer could trigger a KASAN splat or a
kernel panic.

> +		return false;
> +	}
> +
> +	return true;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-topics-ahm=
tib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com?part=3D6

