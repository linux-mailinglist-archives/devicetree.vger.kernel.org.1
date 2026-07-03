Return-Path: <devicetree+bounces-320082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dS3wK+ikR2pMcwAAu9opvQ
	(envelope-from <devicetree+bounces-320082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:02:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8BD702246
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:02:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ETzd7Vpy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320082-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320082-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2AB430098B4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFF02AD37;
	Fri,  3 Jul 2026 12:02:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396DD3CBE7E
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:02:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080165; cv=none; b=Hk13ELEiOh/ebh93xxD4x16xgp2PMgFBicQw32e4qruY/G3OUEZmiPdlpXPJIws1D9szKdOt6zVH6r0gmThz6QWEdzJsMIrJz6DTJWXva2b9zcdJ/9L+pyZcaVbIXMiK/vDVMHm2oD0iCaUazi6BMn6285qn79/kM7pOJUO3Qnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080165; c=relaxed/simple;
	bh=uxa2kxCe42mgERWaS3kosu706hmAE8BApZZ9MY69QXg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RLFma9OryPYojO2P88id9k6tO31xfQoNYLB1cA6A/bRd/35zjguXd0ywVdE2Etadji1uL+FblWWf07k10h8ovxEWA0NnRABUi7LNT+Gs6z0Aagy1EqCxB3RKwLfZvb3UhKzs4obL3Dkn20CBkmnQvyCiuiaH8GKZuF7Ev9OgB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETzd7Vpy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0DAB1F00A3E;
	Fri,  3 Jul 2026 12:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080164;
	bh=fwjG7Ufaa41nImmKQ0Yng040IzFjrHu1EhJsqbaDKDQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ETzd7VpywGNUoCx6KiC+h6+X5783FmoIdvyL8VNP6AjDy8lw7rv1NQZyZulSsOBpZ
	 SKkF2frjwWE50oJ0CKOGY2tulpOK6i1Uy/5USX2SRHiIQ64GyNsoOC7/xer/bgqhr6
	 QxetzIv9s4Gvzeh5dyZfip8o8krrfe8OfdupKmeZRg6Bm9BhWLR11OWeXNA1jXVuOT
	 70Z13GT24PH9yBbyxJucm9jybx0oA4j2UpoCCKmgwSc0o1w6v7kaHLZ7vKHHwYLpRa
	 i6p6jRYWGByMK3XD/hN4WBYbIgiDXXnqcPO4fWkhp7FiJrKc5Gap1tKb5OrdiRG88b
	 hp5VrC8I+8bJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 05/14] remoteproc: qcom_q6v5_mss: Switch to generic
 PAS TZ APIs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sumit Garg" <sumit.garg@kernel.org>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702115835.167602-6-sumit.garg@kernel.org>
References: <20260702115835.167602-1-sumit.garg@kernel.org>
 <20260702115835.167602-6-sumit.garg@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:02:43 +0000
Message-Id: <20260703120243.E0DAB1F00A3E@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320082-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.garg@kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D8BD702246

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Replacing the SCM availability check with a generic PAS check duri=
ng probe breaks the strict SCM dependency for memory protection, leading to=
 a NULL pointer dereference in `qcom_scm_assign_mem()`.
- [High] Missing module reference counting in the generic PAS API exposes c=
lient drivers to a TOCTOU race and use-after-free if the backend module is =
unloaded.
--

commit f9f49708d56de20022405acdb58867dd0cffe7bb
Author: Sumit Garg <sumit.garg@oss.qualcomm.com>

remoteproc: qcom_q6v5_mss: Switch to generic PAS TZ APIs

Switch qcom_q6v5_mss client driver over to generic PAS TZ APIs. Generic PAS
TZ service allows to support multiple TZ implementation backends like QTEE
based SCM PAS service, OP-TEE based PAS service and any further future TZ
backend service.

> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom=
_q6v5_mss.c
> index ae78f5c7c1b69..96888007faa88 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c

[ ... ]

> @@ -1480,7 +1481,7 @@ static int q6v5_mpss_load(struct q6v5 *qproc)
>  	}
> =20
>  	if (qproc->need_pas_mem_setup) {
> -		ret =3D qcom_scm_pas_mem_setup(MPSS_PAS_ID, qproc->mpss_phys, qproc->m=
pss_size);
> +		ret =3D qcom_pas_mem_setup(MPSS_PAS_ID, qproc->mpss_phys, qproc->mpss_=
size);

[Severity: High]
Is there a time-of-check to time-of-use race in the generic PAS API that co=
uld
lead to a use-after-free or NULL pointer dereference?

The client driver switches to using the newly introduced generic PAS API
without any mechanism to prevent backend unloads.

Looking at qcom_pas_mem_setup() in drivers/firmware/qcom/qcom_pas.c, the API
locklessly dereferences ops_ptr after checking it, without holding a module
reference or synchronization:

drivers/firmware/qcom/qcom_pas.c:qcom_pas_mem_setup() {
    if (!ops_ptr)
        return -ENODEV;

    return ops_ptr->mem_setup(ops_ptr->dev, pas_id, addr, size);
}

If a privileged user unloads the backend module (like qcom_pas_tee)
concurrently with the client driver starting the remoteproc, ops_ptr could =
be
set to NULL between the check and the dereference.

Does the generic PAS API need module reference counting (like try_module_ge=
t())
or device links to prevent the backend module from being unloaded while in =
use?

>  		if (ret) {
>  			dev_err(qproc->dev,
>  				"setting up mpss memory failed: %d\n", ret);

[ ... ]

> @@ -2077,7 +2078,7 @@ static int q6v5_probe(struct platform_device *pdev)
>  	if (!desc)
>  		return -EINVAL;
> =20
> -	if (desc->need_mem_protection && !qcom_scm_is_available())
> +	if (desc->need_mem_protection && !qcom_pas_is_available())

[Severity: High]
Does this change break the memory protection dependency on the SCM driver?

If desc->need_mem_protection is true, but the SCM driver is not available
(for example, if the OP-TEE PAS backend probes first, or if SCM fails to
probe), q6v5_probe() will now observe qcom_pas_is_available() as true and
incorrectly succeed without deferring probe for SCM.

When the remoteproc is later started, q6v5_xfer_mem_ownership()
unconditionally calls qcom_scm_assign_mem(), which directly dereferences
the uninitialized __scm pointer:

drivers/firmware/qcom/qcom_scm.c:qcom_scm_assign_mem() {
...
    void *ptr __free(qcom_tzmem) =3D qcom_tzmem_alloc(__scm->mempool,
                                                    ptr_sz, GFP_KERNEL);
...
}

Could this lead to a NULL pointer dereference in qcom_scm_assign_mem() on
configurations that use OP-TEE PAS or have SCM probe delayed?

>  		return -EPROBE_DEFER;
> =20
>  	mba_image =3D desc->hexagon_mba_image;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702115835.1676=
02-1-sumit.garg@kernel.org?part=3D5

