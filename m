Return-Path: <devicetree+bounces-326081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ftaYKoIUVmqbywAAu9opvQ
	(envelope-from <devicetree+bounces-326081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:50:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5BD753964
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:50:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ItrD2uGa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326081-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326081-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49BF930FB8E8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7BC314A84;
	Tue, 14 Jul 2026 10:47:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE1913AD1C
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 10:47:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784026034; cv=none; b=S6DIb+g0Sd1+ZX6Crl6K1YIOnNeJkHtxhvnGD2BqR3BEgiLYm+HEuiQMihW5RW5+DV0vm4MnPUAT4qzcO/D2kjRopvyJOqVodtnXatgi7SdLJfj0m7nEBGYPkDSx3qgUcQOZbKOnf0XvV4OwE1BXZIsm0/d0t+6WeXhrKya2nvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784026034; c=relaxed/simple;
	bh=JVa/BVAZYTy4W/96VLsXZTb6AVQ89neXUyQjZ4UgTMg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e/8ZhicRJhsTR+wT4UDOd1AJhF//otp5csr6LCKRek6myQ/pMKQ8YlKevrVSKNskRjSC6Vm6dvAYqXwHELXW+LwnjlFko4hQYTHk1jKuBIxNoMjIT8o2aBoT7ke8MojkeYfjrVzkNDpKwI7GS3pV0JtXj/32lP2bIqC2Qr6P0Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItrD2uGa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBBCD1F000E9;
	Tue, 14 Jul 2026 10:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784026033;
	bh=TFIf2sErBZkBkTP7wZ/PflsiUQ8bxGAbyrmoHzwNd9k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ItrD2uGaoxQ0ZW0ZJkYkoxgfvHcZrcSDNTdMYDG9dyL5tmye2BV4Mst4WiRZnu5Wd
	 tfW2huk5o4EjlzHRYEZkmwc+4/tdVFlW1pbu7hCM5bbk+PSoYUnb7gFDuxNY4eq7ey
	 xQ4pYYFHRZme1Flsvh0w9ZshQOd+q5CVaaf4YzLFf40p1eArn3y4DlZ90eQw3p0gwg
	 FSYLDrwldvkgIEKyfxhzp8OczGaMbeqZcY0/hb9N6WDTNQFQnSys0iMlgeWRrxcBoa
	 or+W26SVlzThgNZ3J/TSCkLya8gAGY3hpZWboV0KVXzL4OKxZMSmt6yJdn3NQro0hs
	 H935t5NoeuP5A==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 3/3] NOT FOR MERGE: drm/glanda: Add x86 platform
 test device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Leander Kieweg" <kieweg.leander@gmail.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714101146.200416-4-kieweg.leander@gmail.com>
References: <20260714101146.200416-1-kieweg.leander@gmail.com>
 <20260714101146.200416-4-kieweg.leander@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 10:47:12 +0000
Message-Id: <20260714104712.EBBCD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326081-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kieweg.leander@gmail.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:kiewegleander@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C5BD753964

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing DRM unplug protection in IOCTL handlers allows Use-After-U=
nmap of MMIO resources.
- [High] The plane atomic update callback calls multiple sleeping functions=
 while executing in atomic context.
- [High] Premature shared IRQ registration causes a NULL pointer dereferenc=
e if the interrupt fires before CRTC initialization.
--

--- Patch [3]: [RFC PATCH 3/3] NOT FOR MERGE: drm/glanda: Add x86 platform =
test device ---
commit 6108d4cd0cea176f9e750373bc9ba705d3d2a6c7
Author: Leander Kieweg <kieweg.leander@gmail.com>

NOT FOR MERGE: drm/glanda: Add x86 platform test device

Register a mock platform device on x86 architectures to allow
testing the GlandaGPU driver inside QEMU without cross-compiling.

> diff --git a/drivers/gpu/drm/tiny/glandagpu.c b/drivers/gpu/drm/tiny/glan=
dagpu.c
> index 8f87ae096a2e3..c1e9370f2a4b1 100644
> --- a/drivers/gpu/drm/tiny/glandagpu.c
> +++ b/drivers/gpu/drm/tiny/glandagpu.c

[Severity: High]
This is a pre-existing issue, but is it possible for a concurrent ioctl to
access unmapped MMIO memory during device removal?

Looking at glandagpu_remove(), it wakes up blocked ioctls:

drivers/gpu/drm/tiny/glandagpu.c:glandagpu_remove() {
    ...
	gdev->cmd_done =3D true;
	wake_up_interruptible(&gdev->cmd_wq);
    ...
}

However, it lacks drm_dev_unplug() and drm_dev_enter()/drm_dev_exit()
synchronization. When glandagpu_remove() returns, the devres framework
automatically unmaps gdev->mmio_base. The forcibly awakened ioctl could
then resume and write directly to the unmapped MMIO memory:

drivers/gpu/drm/tiny/glandagpu.c:glanda_hw_clear() {
    ...
	writel(color, gdev->mmio_base + REG_COLOR);
    ...
}

Could this cause a kernel panic due to a use-after-unmap page fault?

[Severity: High]
This isn't a bug introduced by this patch, but does the plane atomic update
callback sleep while in atomic context?

Userspace can initiate a non-blocking DRM atomic commit, which executes
glanda_plane_atomic_update() in an atomic context. However, it appears to
call multiple sleeping functions:

drivers/gpu/drm/tiny/glandagpu.c:glanda_plane_atomic_update() {
    ...
	dma_resv_lock(shmem->base.resv, NULL);
	ret =3D drm_gem_shmem_vmap_locked(shmem, &map);
    ...
	mutex_lock(&gdev->lock);

	ret =3D glanda_wait_idle(gdev);
    ...
}

Since glanda_wait_idle() internally uses wait_event_interruptible_timeout(),
could these calls cause system instability, scheduling-while-atomic warning=
s,
or deadlocks in the DRM commit worker?

[Severity: High]
This is a pre-existing issue, but could premature shared IRQ registration
cause a NULL pointer dereference during probe?

In glandagpu_probe(), devm_request_irq() is called with IRQF_SHARED before
the DRM CRTC is initialized by drm_crtc_init_with_planes():

drivers/gpu/drm/tiny/glandagpu.c:glandagpu_probe() {
    ...
		ret =3D devm_request_irq(&pdev->dev, gdev->irq, glanda_irq_handler,
				       IRQF_SHARED, "glandagpu", gdev);
    ...
	ret =3D drm_crtc_init_with_planes(&gdev->drm, &gdev->crtc,
    ...
}

If another device on the same shared line triggers an interrupt immediately,
the handler reads the raw REG_ISR without masking it against the interrupt
enable register (REG_IER). If the INT_VSYNC bit is set, it proceeds to
handle the vblank:

drivers/gpu/drm/tiny/glandagpu.c:glanda_irq_handler() {
    ...
	if (isr & INT_VSYNC)
		drm_crtc_handle_vblank(&gdev->crtc);
    ...
}

Since gdev->crtc is still zero-initialized at this point, could this
dereference a NULL crtc->dev pointer and lead to a kernel panic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714101146.2004=
16-1-kieweg.leander@gmail.com?part=3D3

