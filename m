Return-Path: <devicetree+bounces-306880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hxbZK/aJIWqtIQEAu9opvQ
	(envelope-from <devicetree+bounces-306880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:21:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10975640CB0
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:21:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="F06pW/gF";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306880-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306880-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E58AC30A1ABC
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70698480328;
	Thu,  4 Jun 2026 14:08:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D83A47F2CC
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 14:08:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780582087; cv=none; b=FznKMXjDo9eArwjDBhACE5VMvKoSfg6nTwfcPZpHzV2qd0Dkz3v6Mdl2BUI5LTjSicTv6pUoPaHC3NuP6yGqELDmnFF7+Id0DyodzfANJpOPAiMPcr2JxqTHxYD8wVdbEwXSaOaGk2slrKOJafPwGWqal4701X1G9ve0xL1ZkNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780582087; c=relaxed/simple;
	bh=F2htR4fUnvZfa3J+iuEOOOOBqg08HBdVNIiR6dZzubU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CmKJoJzz4gt4c5G4o2JWcqOOuQIGC2e9udFf/YsY6zLhvUzlaJ5+KoeRlhL3vUX8KDEhEs7T4UpcrvPi0+IVuCDW+Sq0rGJv8w8VBG79alO46Jj5aHE08FHQIFKmdqvFpUfa1/dwWpFvL3rSB4WGez7yHWtbLsyZkvKPrjMxuZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F06pW/gF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 150401F00893;
	Thu,  4 Jun 2026 14:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780582083;
	bh=ai2vU5ZZQc4CjGiZqG1UoNnOvnzkN/44XBU6cbJTIFM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F06pW/gF2nMGSZO4Cy4fx5RaWBFCS8pdVL0ditpQMJNu+No6KFOjHK6Ymy74EU075
	 DZVkhYrSaVqzn7GoqRb7L9Em3kNPdMbpj3YUIaxHGAAXHB5U5+R84ZrgqT9JV27tMG
	 U3cIMaKDuqoMjNiW7V87ZCmdsaMFKsZa15Mu3nEZ0mCANl6FRPGKXofqCF7PcSxOP8
	 AXCOBOexIuBjO0Iozb4wG/vxlW3rA3Bzxnf1NbpQEUUXxnU8dr7Vy8d0UC2CYPWZQW
	 Y/E3dFRKztOSmSh8VI+89dSzEcWNjB+lrjjnhZYt7Lii4CEpwo7Hds8Y6WvuGRDwc+
	 IXguPAq2T3dBg==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH v3 5/9] accel: rocket: Keep the IOMMU domain
 attached across jobs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Midgy BALON" <midgy971@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260604135255.62682-6-midgy971@gmail.com>
References: <20260604135255.62682-6-midgy971@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 14:08:02 +0000
Message-Id: <20260604140803.150401F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306880-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 10975640CB0

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] The IOMMU hardware registers are left uninitialized after a job ti=
meout and hardware reset, causing subsequent jobs to immediately fault.

Pre-existing issues:
- [High] Incorrect teardown ordering in `rocket_core_fini()` destroys IOMMU=
 and PM resources before stopping the DRM scheduler, leading to data races,=
 use-after-free, and potential hardware faults.
- [High] PM runtime usage counts and unsignaled fences are leaked on error =
paths in `rocket_job_run()`.
--

commit 49c877f1ba7baae4a28268850b55e2ac3ab4a8cc
Author: Midgy BALON <midgy971@gmail.com>

accel: rocket: Keep the IOMMU domain attached across jobs
   =20
rocket attached the job's IOMMU domain in rocket_job_run() and
detached it again on every completion and reset. Each attach/detach
toggles the rk_iommu stall/force-reset/paging handshake, and on
RK3568 the NPU MMU is idle between jobs, so that handshake times out
and logs a burst of "stall/paging request timed out" errors for
every job.

Attach the per-context domain once and keep it: track the attached
domain in the core, swap it only when a job from a different context
runs, and detach it at core teardown. A reference on the attached
domain is held so it outlives the job that first attached it and is
released on swap/teardown.

> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/ro=
cket_core.c
> index a8de876365873..634f78dfe2887 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c

[ ... ]

> @@ -112,6 +113,11 @@ void rocket_core_fini(struct rocket_core *core)
>  {
>  	pm_runtime_dont_use_autosuspend(core->dev);
>  	pm_runtime_disable(core->dev);
> +	if (core->attached_domain) {
> +		iommu_detach_group(NULL, core->iommu_group);
> +		rocket_iommu_domain_put(core->attached_domain);
> +		core->attached_domain =3D NULL;
> +	}
>  	iommu_group_put(core->iommu_group);
>  	core->iommu_group =3D NULL;

[Severity: High]
This is a pre-existing issue, but IOMMU resources are being torn down before
the DRM scheduler is stopped in rocket_job_fini(core).

Because the scheduler might still be active, couldn't an in-flight job be
executing concurrently? This could lead to a data race on core->attached_do=
main,
the IOMMU domain being forcefully unmapped from a running job causing
AXI bus faults, or a use-after-free when rocket_job_run() accesses
core->iommu_group.

Should rocket_job_fini(core) be called before tearing down the IOMMU state =
to
ensure the hardware is idle and the scheduler is stopped?

>  	rocket_job_fini(core);
>  }

[ ... ]

> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/roc=
ket_job.c
> index e25234261536b..b248371be8a1e 100644
> --- a/drivers/accel/rocket/rocket_job.c
> +++ b/drivers/accel/rocket/rocket_job.c

[ ... ]

> @@ -314,9 +315,26 @@ static struct dma_fence *rocket_job_run(struct drm_s=
ched_job *sched_job)
>  	if (ret < 0)
>  		return fence;

[Severity: High]
This isn't a bug introduced by this patch, but if pm_runtime_get_sync()
fails, it returns a negative error code but still increments the PM usage c=
ounter.

The error path returns without calling pm_runtime_put_noidle() or signaling
the fence, which leaks the PM counter and causes the scheduler to wait inde=
finitely.

> -	ret =3D iommu_attach_group(job->domain->domain, core->iommu_group);
> -	if (ret < 0)
> -		return fence;
> +	/*
> +	 * Attach the job's IOMMU domain only when it differs from the one
> +	 * already attached. Re-attaching per job toggles the rk_iommu
> +	 * stall/reset handshake on an idle NPU MMU, which is slow and
> +	 * noisy; keep the domain attached across jobs instead.
> +	 */
> +	if (core->attached_domain !=3D job->domain) {
> +		if (core->attached_domain) {
> +			iommu_detach_group(NULL, core->iommu_group);
> +			rocket_iommu_domain_put(core->attached_domain);
> +			core->attached_domain =3D NULL;
> +		}
> +
> +		ret =3D iommu_attach_group(job->domain->domain, core->iommu_group);
> +		if (ret < 0)
> +			return fence;

[Severity: High]
Also a pre-existing issue, but if iommu_attach_group() fails, it returns
the fence early without dropping the successfully acquired PM reference.
Should this path include a pm_runtime_put_noidle() call to avoid leaking
the reference?

> +
> +		kref_get(&job->domain->kref);
> +		core->attached_domain =3D job->domain;
> +	}
> =20
>  	scoped_guard(mutex, &core->job_lock) {
>  		core->in_flight_job =3D job;

[ ... ]

> @@ -376,8 +393,6 @@ rocket_reset(struct rocket_core *core, struct drm_sch=
ed_job *bad)
>  	 */
>  	rocket_core_reset(core);
> =20
> -	iommu_detach_group(NULL, core->iommu_group);
> -
>  	/* NPU has been reset, we can clear the reset pending bit. */
>  	atomic_set(&core->reset.pending, 0);

[Severity: High]
When the NPU is hard-reset by rocket_core_reset(), the IOMMU's hardware reg=
isters
(like page table base addresses) are wiped.

Since core->attached_domain is not cleared here, when the scheduler restarts
and executes the next job, rocket_job_run() will see core->attached_domain
matches the job's domain and skip calling iommu_attach_group().

Will this leave the IOMMU hardware unconfigured and cause subsequent jobs to
immediately throw DMA faults? Should core->attached_domain be cleared here
to force a re-attach and reprogramming of the IOMMU?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604135255.6268=
2-1-midgy971@gmail.com?part=3D5

