Return-Path: <devicetree+bounces-310709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X71mBAOrK2qeBgQAu9opvQ
	(envelope-from <devicetree+bounces-310709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:45:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F8B67702A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:45:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IvsEKtxw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310709-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310709-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F655304F414
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 06:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEACE39A05F;
	Fri, 12 Jun 2026 06:45:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55D1395ADC
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:45:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781246720; cv=none; b=Pdz5wIVHwWhVW/JbCFF05yiQgOsYN4ViVsctIYCj4ss4nfhEPLf19JrLwdi9odXMCDdi/ietAvETVL73oz867U+OeMPEjuDm9F9kD2AIdOToxOopP8K0RMOWRUxbGEfGcWssgt1fQXpD8EmG6TdsRrMtUnUkHG1OCzuohllQC/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781246720; c=relaxed/simple;
	bh=aHmJFdNwRdkqK4xfeyuVcRtUivGMFo5h5x/Bt+hRnhg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=a3edqG8rsqF2EZem4ffYvB/dhRA8Dk1Tt+DCrueP5FD/aInvVc39vZUAvPhcTja+UKh0m/o01obY2sayaRSZILS2Zp+tojNuNGDPCs+ggLVVaIrm1s1qvnxurRFiiaKQEh7+KsoQ0kXLd7JlwsizZljbz9jEyRupH3XfEqf0fdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvsEKtxw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20DBE1F000E9;
	Fri, 12 Jun 2026 06:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781246719;
	bh=+5IpYshApii4IKiGZyWZ+dz3SHGPGdPyQdxJvvkBw0A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IvsEKtxwmYHcH5fF6WtIO3D9noEUvd7vPkM4Cp5Y9X6da4Lp0Jocb+qDd9fQ3IxIe
	 5TqCqYohvOH01H35QCEtCsTJmHr6NqTopyBVempxnsLO5Z3LCCc/sS7CouV1mwhwGX
	 MF5yVL4+wHu8fNbcFQPuEX9tRLagQqVR/yp2BpaRj7soWj9NsPQgCM8ucx/MkYbKLd
	 ZZh8HCAGrYENnJKFgiT/v2KhNMzcXLeKkV61csRjRM9Q8EZ/WRk3W8hvibJk7p2Xdz
	 EJR5JuQpGnnucSApFV4Vu9ucO1miyPz+1sZFN6xccJeloYnTJUnSU5dQPba0tXdht6
	 k6XyCllVVgZlg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] gpu: host1x: Correctly parse linear ranges of
 context devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikko Perttunen" <mperttunen@nvidia.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612-t264-host1x-v1-3-8d934987de67@nvidia.com>
References: <20260612-t264-host1x-v1-3-8d934987de67@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 06:45:18 +0000
Message-Id: <20260612064519.20DBE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310709-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,nvidia.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 74F8B67702A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The driver synchronously frees the dynamically allocated `cdl->dev=
s` array immediately after calling `device_unregister()`, while using an em=
pty `.release()` callback. This violates the Linux device model and leads t=
o a Use-After-Free.
--

commit 46b291569da04e8306d82ff644615dfc60ee956f
Author: Mikko Perttunen <mperttunen@nvidia.com>

gpu: host1x: Correctly parse linear ranges of context devices

The commit updates the parsing of the iommu-map property to support
linear ranges of context devices instead of assuming each device has
a one-length entry.

> diff --git a/drivers/gpu/host1x/context.c b/drivers/gpu/host1x/context.c
> --- a/drivers/gpu/host1x/context.c
> +++ b/drivers/gpu/host1x/context.c
[ ... ]
> @@ -34,7 +34,16 @@ int host1x_memory_context_list_init(struct host1x *hos=
t1x)
>  	if (err < 0)
>  		return 0;
> =20
> -	cdl->len =3D err / 4;
> +	devs =3D 0;
> +
> +	for (i =3D 0; i < err / 4; i++) {
> +		u32 length;
> +
> +		of_property_read_u32_index(node, "iommu-map", i * 4 + 3, &length);
> +		devs +=3D length;
> +	}
> +
> +	cdl->len =3D devs;
>  	cdl->devs =3D kzalloc_objs(*cdl->devs, cdl->len);

[Severity: High]
This isn't a bug introduced by this patch, but there is a pre-existing
issue with how the cdl->devs array is managed during cleanup.

In host1x_memory_context_list_init(), if an error occurs later in the
initialization, the unreg_devices error path unregisters the devices and
immediately frees the array:

host1x_memory_context_list_init() {
    ...
unreg_devices:
    while (i--)
        device_unregister(&cdl->devs[i].dev);
       =20
    kfree(cdl->devs);
    ...
}

The same pattern appears in host1x_memory_context_list_free() during
normal teardown.

The driver also provides a dummy release callback:

static void host1x_memory_context_release(struct device *dev)
{
    /* context device is freed in host1x_memory_context_list_free() */
}

Could this lead to a use-after-free? When device_unregister() is called,
it drops the initial device reference, but sysfs or userspace might still
hold elevated references to the embedded kobjects.

Since kfree(cdl->devs) is called synchronously while references could
still exist, would userspace interaction with the sysfs attributes for
these devices during teardown end up accessing freed memory?

>  	if (!cdl->devs)
>  		return -ENOMEM;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-t264-host1=
x-v1-0-8d934987de67@nvidia.com?part=3D3

