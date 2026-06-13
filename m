Return-Path: <devicetree+bounces-311238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Oi2lLZ0ELWqQZAQAu9opvQ
	(envelope-from <devicetree+bounces-311238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:19:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BD767DF83
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:19:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gfGt1ZoN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311238-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311238-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C994D30D64AC
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 07:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA6A3D3D1C;
	Sat, 13 Jun 2026 07:12:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9193612EC
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 07:12:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781334726; cv=none; b=jgN274XOJ+0fIaLWb4PkkS4RWeHARY9FJDsLCws1LrU8iNiStyYL/DGNAyz+aArU/Ugi7hIM16JDjEuqflSjG84VWRK0vvYEBhl9gQqPYnvqD1cr8H6JzSM2Iruwkz6ymQ54DDiQ6n9ERCiHxBlshXoOsUqv+x74FeAnBPovo48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781334726; c=relaxed/simple;
	bh=eqWkc8p7xFNxHwiHxjkEuOHEzIWfb+DJ6EWdvpUBv+8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=u1cy9ACBlOeu31vBCzqopDbX0r5+ZEAq+amqE1TKOvtf89nk5oJF3taiPTH/wTuDx+A9WOEW5l8Fhvn+My0W+1SvBSczekxrByj4C+uGt4RcXJyokoIlvAb5OT5iD2W/D9OeqcqZVsd+W1YwdbZXSqHfZp80ARBD1Xpbft5HHlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfGt1ZoN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C64E11F000E9;
	Sat, 13 Jun 2026 07:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781334722;
	bh=D8QLZ5/N89EajPkUtrsVvhE6tHx3KQ1d+xbiJ+CAkwo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gfGt1ZoNE8bekdSd/t/JkADVSk3Iem+vayTuLUjSIYBWZ11HMx1ogfh0EJg1gRFmM
	 P11uk8D0x63mHRHSq1Nt+K3y4vlmz8KLA5KQMBjEXwtkUSQyCtiX9bKpUsxnWBCYKn
	 aXESDPTXWqaPuSZQeX1P1Nw5t08UYSvfEPNbMVYg3OWb53wP6k8IlbGFJADQhJe7f8
	 HZT4jLDFpzIBMAWdRjFS8vgOXMGM4hMhYPJmw6LbGJevVNXyipRNHHYoXY23oLvBu8
	 TQs2A8nGP6CCXBHsIKhYMSHVakRnjX5LzrO+jfKEL0YqbYEUUl2FgFSJlfeh/5yoGl
	 N4i7uDKl1zpqA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH v4 5/9] accel: rocket: Keep the IOMMU domain
 attached across jobs
Reply-To: sashiko-reviews@lists.linux.dev
To: MidG971 <midgy971@gmail.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260613070116.438906-6-midgy971@gmail.com>
References: <20260613070116.438906-6-midgy971@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 07:12:01 +0000
Message-Id: <20260613071201.C64E11F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311238-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 25BD767DF83

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] rocket_core_fini() tears down the IOMMU domain without quiescing t=
he hardware, causing IOMMU faults and wedged hardware.

Pre-existing issues:
- [High] Error paths in rocket_job_run() leak the PM runtime usage counter =
and return an unsignaled fence, causing permanent power drain and spurious =
timeouts.
- [High] Job timeout recovery leaves the NPU permanently powered on due to =
pm_runtime_put_noidle().
--

commit 629253998abe2060bd2b43f469323132b5743d36
Author: Midgy BALON <midgy971@gmail.com>
Subject: accel: rocket: Keep the IOMMU domain attached across jobs

This commit attaches the IOMMU domain once per context instead of toggling
it on every job to avoid hardware stall timeouts. The domain is released on
context swap, core reset, or core teardown.

> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/ro=
cket_core.c
> index 779e951596a15..6c128f585cff4 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c
[ ... ]
> @@ -112,9 +113,20 @@ void rocket_core_fini(struct rocket_core *core)
>  {
>  	pm_runtime_dont_use_autosuspend(core->dev);
>  	pm_runtime_disable(core->dev);
> +
> +	/*
> +	 * Stop the scheduler before tearing down the IOMMU so an in-flight
> +	 * job can no longer touch the (about to be detached) domain.
> +	 */
> +	rocket_job_fini(core);
> +
> +	if (core->attached_domain) {
> +		iommu_detach_group(NULL, core->iommu_group);

[Severity: High]
Does this detach the IOMMU page tables while the hardware is still active?

Calling drm_sched_fini() inside rocket_job_fini() only stops the software
scheduling thread, but it doesn't wait for the currently executing job on
the hardware to complete or reset the AXI master. Detaching the group while
the NPU is still executing could cause memory translation faults and wedge
the hardware.

Should the hardware be explicitly quiesced, for example by calling
rocket_core_reset(), before the IOMMU is detached here?

> +		rocket_iommu_domain_put(core->attached_domain);
> +		core->attached_domain =3D NULL;
> +	}
>  	iommu_group_put(core->iommu_group);
>  	core->iommu_group =3D NULL;
> -	rocket_job_fini(core);
>  }
> =20
>  void rocket_core_reset(struct rocket_core *core)
> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/roc=
ket_job.c
> index e25234261536b..368b2ebead1b3 100644
> --- a/drivers/accel/rocket/rocket_job.c
> +++ b/drivers/accel/rocket/rocket_job.c
[ ... ]
> @@ -314,9 +315,26 @@ static struct dma_fence *rocket_job_run(struct drm_s=
ched_job *sched_job)
>  	if (ret < 0)
>  		return fence;
> =20
> -	ret =3D iommu_attach_group(job->domain->domain, core->iommu_group);
> -	if (ret < 0)
> -		return fence;

[Severity: High]
This isn't a bug introduced by this patch, but does the pm_runtime_get_sync
error path just above this leak the PM runtime usage counter?=20

In rocket_job_run(), the code does:

	ret =3D pm_runtime_get_sync(core->dev);
	if (ret < 0)
		return fence;

If pm_runtime_get_sync() fails, returning without calling
pm_runtime_put_noidle() leaves the counter elevated.

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
This is a pre-existing issue, but does this error path leak the PM runtime
reference acquired earlier in this function?=20

Since the in_flight_job isn't set yet when returning the fence here, the
subsequent timeout handler won't clean this up, preventing the device from
ever entering low power states.

> +
> +		kref_get(&job->domain->kref);
> +		core->attached_domain =3D job->domain;
> +	}
> =20
>  	scoped_guard(mutex, &core->job_lock) {
>  		core->in_flight_job =3D job;
[ ... ]
> @@ -376,7 +393,15 @@ rocket_reset(struct rocket_core *core, struct drm_sc=
hed_job *bad)

[Severity: High]
This isn't a bug introduced by this patch, but does job timeout recovery
leave the NPU permanently powered on?

Earlier in rocket_reset(), the usage counter is decremented:

	scoped_guard(mutex, &core->job_lock) {
		if (core->in_flight_job)
			pm_runtime_put_noidle(core->dev);

		core->in_flight_job =3D NULL;
	}

Because pm_runtime_put_noidle() does not invoke an idle check or queue an
auto-suspend, doesn't the device remain in the RPM_ACTIVE state and stay
physically powered on indefinitely? Should pm_runtime_put_autosuspend() be
used here instead?

>  	 */
>  	rocket_core_reset(core);
> =20
> -	iommu_detach_group(NULL, core->iommu_group);
> +	/*
> +	 * The reset wipes the IOMMU page-table base, so drop the attached
> +	 * domain to force the next job to re-attach and reprogram it.
> +	 */
> +	if (core->attached_domain) {
> +		iommu_detach_group(NULL, core->iommu_group);
> +		rocket_iommu_domain_put(core->attached_domain);
> +		core->attached_domain =3D NULL;
> +	}
> =20
>  	/* NPU has been reset, we can clear the reset pending bit. */
>  	atomic_set(&core->reset.pending, 0);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613070116.4389=
06-1-midgy971@gmail.com?part=3D5

