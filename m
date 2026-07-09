Return-Path: <devicetree+bounces-323847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p8XxOvSuT2remgIAu9opvQ
	(envelope-from <devicetree+bounces-323847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:23:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 495367322E2
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:23:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BAcrR2vh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323847-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323847-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EE0C302DF50
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 14:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9740D42379B;
	Thu,  9 Jul 2026 13:59:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0D14252A7
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:59:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783605558; cv=none; b=RKZzwcWf4LmjbMfoUyTWJAlCt5dQU6hKvTP83qkAEheEv2i1C91OtaP0mBBnrX5qra4cFVqoY9xJOqs+WAy8RlCtPzRQFA6VfMkBfLIh42h4Q6mQ95+G9aK2t949uuU36ZMrm3QYP6XTD0SKBH0SpONNn4WbhEKxBrBMYYOuemI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783605558; c=relaxed/simple;
	bh=vNeUOF+rMpNDYclUpAAIfvGZIqj26dEN/PMb5akAJrc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cXKgbFKcCZEfFtp8u44hOumCwdSK72HhDxMKvuu2t492vRHHN7kAkZAHX3vdXcl2G1NZl61U66S9EEIN1s/+Y0/1/0gFDgx138gc5+SnMPLl1kuhpowX891pt8zMzu2ZeTDBsy6F107+pYZjhXY+DcrkBWN5g/6LppSspZhAipc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAcrR2vh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99FF41F00A3D;
	Thu,  9 Jul 2026 13:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783605556;
	bh=yzKaDOxPlvmguQtLCE6MoVtpsA5Kh3NlID5p451Sico=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BAcrR2vh1J2qCgJ16NqVlE1fvGiVjXr+LW8mbgivsgMxSOO86ShOcMbOfFtsuOn3o
	 3MpMOwkwMBYTGrwj357hMRh31NqXFI8hc+6X+jiNWChExT+sVzg2ajYIOFqkUjAdhm
	 PwNxRW4yJ/ToHpZ5UA9UZ9hXQOz381DsTZonzGVeGhOsUkVxgHFTozGk4//QSnjYUn
	 4C2Or93zdYEmY7TDPaHDQX7oU+FM8JwV8WqaYNNLU1RDBTmUs+153YngfidifXs4zG
	 b45LKsxwLBDRsD3nUivvH9muwqUBgRLcJBQm0cM9T+bKKrQm9ZdUGupVzf0ZOkJlco
	 RvexRHRMtiUQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 09/18] media: iris: Add platform flag for
 instantaneous bandwidth voting
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709-iris-ar50lt-v7-9-76af9dd4d1f6@oss.qualcomm.com>
References: <20260709-iris-ar50lt-v7-0-76af9dd4d1f6@oss.qualcomm.com>
 <20260709-iris-ar50lt-v7-9-76af9dd4d1f6@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 13:59:16 +0000
Message-Id: <20260709135916.99FF41F00A3D@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323847-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 495367322E2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] This problem wasn't introduced by this patch, but the `iris_co=
re` structure is allocated with `devm_kzalloc`, leading to a Use-After-Free=
 during device unbind because the video device and delayed work outlive the=
 device-managed allocation.
--

--- Patch [9]: [PATCH v7 09/18] media: iris: Add platform flag for instanta=
neous bandwidth voting ---
commit 5567f5c1da418821cf2cb0c55e4585a7cba76a62
Author: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

media: iris: Add platform flag for instantaneous bandwidth voting

This commit introduces a platform-configurable instantaneous bandwidth (IB)
multiplier and enables IB voting for all SoCs. It prepares for AR50LT core
support, which requires explicit IB voting in addition to average bandwidth
(AB) for interconnect QoS. Existing platforms will default to an equal IB
and AB, whereas AR50LT will require 2x peak bandwidth.

> diff --git a/drivers/media/platform/qcom/iris/iris_resources.c b/drivers/=
media/platform/qcom/iris/iris_resources.c
> index 773f6548370a2..caeaf199cef74 100644
> --- a/drivers/media/platform/qcom/iris/iris_resources.c
> +++ b/drivers/media/platform/qcom/iris/iris_resources.c
> @@ -18,6 +18,7 @@
> =20
>  int iris_set_icc_bw(struct iris_core *core, unsigned long icc_bw)
>  {
> +	u32 icc_ib_multiplier =3D core->iris_platform_data->icc_ib_multiplier;
>  	unsigned long bw_kbps =3D 0, bw_prev =3D 0;
>  	const struct icc_info *icc_tbl;
>  	int ret =3D 0, i;

[Severity: Critical]
This is a pre-existing issue, but the iris_core structure is allocated with
devm_kzalloc, which can lead to a use-after-free regression during device
unbind. The video device and delayed work appear to outlive the
device-managed allocation.

In drivers/media/platform/qcom/iris/iris_probe.c:iris_probe():

    core =3D devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);

The unbind path fails to explicitly cancel the delayed work and exits,
triggering devm to free the core structure while V4L2 file descriptors may
still be open:

drivers/media/platform/qcom/iris/iris_probe.c:iris_remove() {
        struct iris_core *core;
       =20
        core =3D platform_get_drvdata(pdev);
        if (!core)
            return;
           =20
        iris_core_deinit(core);
       =20
        video_unregister_device(core->vdev_dec);
        video_unregister_device(core->vdev_enc);
       =20
        v4l2_device_unregister(&core->v4l2_dev);
       =20
        mutex_destroy(&core->lock);
}

When a lingering file descriptor is eventually closed, iris_close() invokes
iris_remove_session(), which dereferences the freed core structure and its
destroyed lock:

drivers/media/platform/qcom/iris/iris_vidc.c:iris_remove_session() {
    struct iris_core *core =3D inst->core;
   =20
    mutex_lock(&core->lock);
    ...
}

Can this corrupt memory if the driver is unbound while the video node is in
use, or while the error handling delayed work is active?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-iris-ar50l=
t-v7-0-76af9dd4d1f6@oss.qualcomm.com?part=3D9

