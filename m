Return-Path: <devicetree+bounces-309622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VS8ZK+wsKWrzRwMAu9opvQ
	(envelope-from <devicetree+bounces-309622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:22:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 062A3667C7C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:22:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FJCiro86;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309622-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309622-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F0EA30A2D53
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0812C3749F6;
	Wed, 10 Jun 2026 09:04:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20C03B14B6
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:04:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082263; cv=none; b=j3l+DeSo/IYwYNEfajcH1n2OY108mBgM6yKmIkdm99PlH87FVn94HqACjCtgp0c6JghmEf46jcpmdCcOMoiBPClAcOMIOsoD7xZyI1gjxp5PzQEkxO869qbKoiFrRx+kEViyiLteAo7YtM0hyWTGexvSQKLKnXJCC42dA2vbQPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082263; c=relaxed/simple;
	bh=tTTOndh4D08JXaZvPVr60eC/y/mfd2EnUoe3P41dS1A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gZd86GXjqBBMk+TfX+dzIB0JfIJsAaKCohop1SUFBAdjCz+cfb0IiAT489JNwPUrJbtyKnNs+vsbxQiofNp8pSugnVqDh6puUEarLB4uzzrLtBA0a8/YDZ0bvKGfTjslMiluoEIK+icID8fSbwPW16cbIMOPYiK0TZXdJnr0SXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJCiro86; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C27F1F00893;
	Wed, 10 Jun 2026 09:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082262;
	bh=Bp+tfDicKRtu+JgLOkbZiy4LW4b5a/E6W5d7SSJZqWU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FJCiro86sd5i+nJKY/yw56XOPLuo1IQp8YzMByjdQL+fvaMt32+H3A0dAoRvKeomy
	 lxMQbOm5ZwUtzBMnXQyTfoz6TWUoOrTBER7lcesQWrGv9nBm9pdZwF+oV5PF82arQC
	 Lv1tjk0LEVpvNL2xgKJYaOJWFDSb4i9TKZ6p7ZzMO85U9N5m7R118cdgwZyQ/8zFBE
	 lu2T8ZBfOMT3rp5/+mIzhxIxKOhH2jE7Go9HUcb0uoo/qgTVgUS9R+KgF++DhZPRLz
	 ulkj6ih1BVSSZuLeO/lPlyfUnEx3V2eA6TmJEw9ckzmUS23LrBHSeIpgy6MKbNIM6b
	 xliAv9ftDiLEw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v7 4/9] PM / devfreq: Add new target_freq attribute
 flag for governors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pragnesh Papaniya" <pragnesh.papaniya@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-rfc_v7_scmi_memlat-v7-4-f3f68c608f25@oss.qualcomm.com>
References: <20260610-rfc_v7_scmi_memlat-v7-4-f3f68c608f25@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 09:04:21 +0000
Message-Id: <20260610090421.8C27F1F00893@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309622-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pragnesh.papaniya@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 062A3667C7C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Pre-existing ABBA deadlock between sysfs read/store operations on =
governor attributes and governor_store().
- [High] Pre-existing Use-After-Free vulnerabilities due to lockless access=
es to df->governor in governor_show() and devfreq_remove_device().
--

commit 362eb55beaf9c6e36069d42a3c923196961acbd8
Author: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

PM / devfreq: Add new target_freq attribute flag for governors

The target_freq sysfs attribute exposes a governor's predicted next target
frequency. This commit introduces DEVFREQ_GOV_ATTR_TARGET_FREQ to allow
governors to opt in to exposing their target_freq via sysfs, and updates
target_freq_show to gate the read on this flag.

> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index f08fc6966eaee..2f27a239e34a6 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -1530,6 +1530,12 @@ static ssize_t target_freq_show(struct device *dev,

[Severity: High]
This is a pre-existing issue, but there appears to be an ABBA deadlock
between sysfs read/store operations on governor attributes and governor_sto=
re().

When userspace reads or writes attributes in gov_attr_group (like
polling_interval or timer), the sysfs core acquires an active reference
(kn->active) on the kernfs node before calling the sysfs handler
(e.g., polling_interval_show()). The handler then acquires devfreq_list_loc=
k:

    guard(mutex)(&devfreq_list_lock);

Concurrently, if another thread writes to the governor attribute,
governor_store() acquires devfreq_list_lock and calls
sysfs_update_group(&df->dev.kobj, &gov_attr_group):

    mutex_lock(&devfreq_list_lock);
    ...
    ret =3D sysfs_update_group(&df->dev.kobj, &gov_attr_group);

This function synchronously removes the existing files in the group via
kernfs_remove_by_name(), which waits indefinitely for all active
references on those files to drain.

Because the reader thread holds the active reference and waits for the
lock, and the writer thread holds the lock and waits for the active
reference, a permanent ABBA deadlock occurs.=20

(Note that target_freq_show modified in this patch is not affected since it
resides in devfreq_group, not gov_attr_group).

Is there a way to safely restructure the locking here to avoid this deadloc=
k?

[Severity: High]
This isn't a bug introduced by this patch, but there are Use-After-Free
vulnerabilities due to lockless accesses to df->governor in
governor_show() and devfreq_remove_device().

In governor_show() and devfreq_remove_device(), df->governor is
accessed without holding devfreq_list_lock:

drivers/devfreq/devfreq.c:governor_show() {
    ...
    if (!df->governor)
        return -ENOENT;

    return sprintf(buf, "%s\n", df->governor->name);
}

drivers/devfreq/devfreq.c:devfreq_remove_device() {
    ...
    if (devfreq->governor)
        devfreq->governor->event_handler(devfreq, DEVFREQ_GOV_STOP, NULL);
    ...
}

If the active governor is removed concurrently (e.g., via module
unload), devfreq_remove_governor() takes devfreq_list_lock, stops the
governor, sets df->governor =3D NULL, and drops the lock before the
module is unloaded.

Since the unprotected functions do not acquire devfreq_list_lock to
serialize with governor removal, they can read a valid pointer to the
governor, get preempted while the module is unloaded, and dereference
freed module memory or execute unloaded function pointers when they
resume.

Could devfreq_list_lock be used in these functions to prevent this race?

>  {
>  	struct devfreq *df =3D to_devfreq(dev);
> =20
> +	guard(mutex)(&devfreq_list_lock);
> +
> +	if (!df->profile || !df->governor ||
> +	    !IS_SUPPORTED_ATTR(df->governor->attrs, TARGET_FREQ))
> +		return -EINVAL;
> +
>  	return sprintf(buf, "%lu\n", df->previous_freq);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-rfc_v7_scm=
i_memlat-v7-0-f3f68c608f25@oss.qualcomm.com?part=3D4

