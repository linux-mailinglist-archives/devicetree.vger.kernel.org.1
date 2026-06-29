Return-Path: <devicetree+bounces-317010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y0cWJWJnQmrF6QkAu9opvQ
	(envelope-from <devicetree+bounces-317010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:38:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 097E06DA5D0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:38:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MECYJnE+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317010-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317010-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C4E530FD25F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124D9405C48;
	Mon, 29 Jun 2026 12:30:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF30C4028E8
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 12:30:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782736249; cv=none; b=TySesmADAxDvw0CVd/UqXtTz0FQqTFFb9JvpyaDIa3XqP6+mqlkx3WkdQ2EASLUjMNIqGvcg/b6gKaWuACi6zL6wjLgGY1M5dNt++HZqeQeS9mNEaHpEZZ1hFopRsQv/yLilGvrA643WHOOve9IV68ZxSoCslegL3Mt9eDKGM/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782736249; c=relaxed/simple;
	bh=vvoMUrhB2Dj2N96mVX1nRauZI34ueEVl2v6xJ5km2QE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d/beJf2pxKMBkKh8UDko9z9NGzKwFQHlvFtv8QfARDRqg41Nnr27Y74EzxeIsVWol9fD8nMC49vTV8b4s8uqDlHkUyXVN1YLYePx0B78KyETflnJ3nLi3qCU5k32ZKfteY0dWive6Vx9eA3uoLyvg/RgiRJ03d5fEovGcA1ZUEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MECYJnE+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FCA91F000E9;
	Mon, 29 Jun 2026 12:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782736247;
	bh=Zyox5SSv1DXb7rJMlycwShkV0vzIA2Z+JVfFatNugPE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MECYJnE+WOVaSevLLPzSqJ/FHYu92vkNTvE+PCGItGblbnkfNJzgk+snnIv7lsBOq
	 lMYysWFdgu90Z1ViEa7pQbi1oHy+5cmeavVwmlmA5nTGaIioVsI5sNPnIIoRB9exE9
	 dL/4Dapr91vTTBmH9UdUicKt/28lrd+cILf96zAmIFg98j5DJKdTOBOqXVnU5QleY/
	 D7xpMtnsd5aLww5Oo4LAD4iHeldKcvxJ+4AJXGcEpICVqAMkVnwPljWrmlnVBpeKHn
	 gIx1q6DH4rQCdIIusvRkstSMCNfz08Uv2DTVuKL6Y+k7LF7RdjV2kYCE2Xv137xBha
	 J4Xx/nY0yXTwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] media: qcom: camss: populate child platform
 devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atanas Filipov" <atanas.filipov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629121750.3469292-2-atanas.filipov@oss.qualcomm.com>
References: <20260629121750.3469292-1-atanas.filipov@oss.qualcomm.com>
 <20260629121750.3469292-2-atanas.filipov@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 12:30:46 +0000
Message-Id: <20260629123047.0FCA91F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317010-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atanas.filipov@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linuxtv.org:url,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 097E06DA5D0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Pre-existing use-after-free vulnerability due to mixing `devm_kzal=
loc` with asynchronous V4L2 video device lifecycle.
--

commit 9fa1d355926fe655802b3d013baabb22bd939e3e
Author: Atanas Filipov <atanas.filipov@oss.qualcomm.com>

media: qcom: camss: populate child platform devices

Call of_platform_populate() at the end of camss_probe() so that child
nodes of the CAMSS DT node are registered as platform devices and
probed via their own platform_driver.

Call of_platform_depopulate() at the start of camss_remove() to tear
down child devices before the parent unwinds its own resources.

Link: https://patchwork.linuxtv.org/project/linux-media/patch/20260326-b4-l=
inux-next-25-03-13-dtsi-x1e80100-camss-v11-4-5b93415be6dd@linaro.org/

> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/pl=
atform/qcom/camss/camss.c
> index 2123f6388e3d7..d2ecc79d5269f 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c

[ ... ]

> @@ -5497,6 +5500,7 @@ static void camss_remove(struct platform_device *pd=
ev)
>  {
>  	struct camss *camss =3D platform_get_drvdata(pdev);
> =20
> +	of_platform_depopulate(&pdev->dev);
>  	v4l2_async_nf_unregister(&camss->notifier);
>  	v4l2_async_nf_cleanup(&camss->notifier);
>  	camss_unregister_entities(camss);

[Severity: High]
This is a pre-existing issue, but does camss_remove() lead to a use-after-f=
ree
if a userspace process holds the V4L2 video node open during unbind?

In camss_probe(), the camss structure and its sub-structures are allocated
using devm_kzalloc() and devm_kcalloc():

camss_probe() {
    ...
    camss =3D devm_kzalloc(dev, sizeof(*camss), GFP_KERNEL);
    ...
    camss->vfe =3D devm_kcalloc(dev, camss->res->vfe_num,
                              sizeof(*camss->vfe), GFP_KERNEL);
    ...
}

If the device is unbound while the video device is kept open by userspace,
camss_remove() checks atomic_read(&camss->ref_count). If the count is great=
er
than zero, it skips camss_delete() but still returns. The driver core then
automatically frees the devres-managed memory for the camss structure.

Later, when userspace closes the file descriptor, the V4L2 core invokes the
deferred msm_video_release() callback:

drivers/media/platform/qcom/camss/camss-video.c:msm_video_release() {
    struct camss_video *video =3D video_get_drvdata(vdev);

    media_entity_cleanup(&vdev->entity);

    mutex_destroy(&video->q_lock);
    mutex_destroy(&video->lock);

    if (atomic_dec_and_test(&video->camss->ref_count))
        camss_delete(video->camss);
}

Will this asynchronous callback access the already-freed video and
video->camss structures when trying to destroy the mutexes and decrement
the reference count?

Is it safe to use devm allocators for structures embedding V4L2 video devic=
es,
or should their lifetimes be strictly tied to the V4L2 release callback?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629121750.3469=
292-1-atanas.filipov@oss.qualcomm.com?part=3D1

