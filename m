Return-Path: <devicetree+bounces-324076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J7uWN5f3T2oTrQIAu9opvQ
	(envelope-from <devicetree+bounces-324076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:33:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CBE735092
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:33:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WAOfCKF2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324076-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324076-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 547023001F99
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69AE3B42CE;
	Thu,  9 Jul 2026 19:31:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10FE3B71B8
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:31:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625485; cv=none; b=SPoMItUu9QcYlVttW9buuuSdqg+jxLWpPMRzfzzA8YAQewJYA9VXtg8+b9zaFQ6eZXt52jnpsDaZ0+HRS7/4L3jSj8b9Naal/mDIL1DLj3jGe8DjkVu1k0fhesDlkaTVisu7pue4khH35FbkulTH+192SBFRvPtigtgELK6jTZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625485; c=relaxed/simple;
	bh=tKLE0foum07Ja0U895S8r+WevTsrTL079P+6XA6GXeY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DziU/HvVMW+YKdPwnfBlcNkXLoHIqtEt+CWeYAHNjpEEs0YzBdL/ZAzCe62IJClNV7Olnwuk+quf9D+31OWA8WKJB8eyGdHmPbIcBZL4QbkrMXBmmw59CBZu9p4SHIIUty/hSh+Ufu98payL8N4cghgW+iMptqEGqnSMsg13QrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAOfCKF2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD09D1F000E9;
	Thu,  9 Jul 2026 19:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625484;
	bh=3Ls4+41419D22kbbInJE2a79Lesp0aJ51xYR879H7I0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WAOfCKF2+JAMOkC+JT1TZlFm3IkaF+zBS/lnFkunlD08Rw15RPPhhnKULtYVa+Nk/
	 1gkxt9yO81V5m+3OTtt1t5E2NzvR8TBeUZ0Vvzh0IYAPt9Yx3y5sKiA7oPp4breH/D
	 nUyHA58C6qlTWALyHtTHEvYz6zQEUiMd2B6jkxzF6/uxwo3Plt94lNGwLjQohDyBBb
	 zI2xRV3ggtEpYKeRDiY8Y5es47hmBboKgOpz7t5r5SwL+BhXaHepmvHysVDxy+B8/5
	 /JOvnrL5toNSv6kVfmO7lfFRNSJ6G6SgxafttWMTjy2nN1N6EBUGg3/tBFIVtqD/bU
	 27/OP0aIDP56w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 29/36] phy: core: add notifier infrastructure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-29-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-29-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:31:23 +0000
Message-Id: <20260709193123.AD09D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324076-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,kernel.org,linaro.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,collabora.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5CBE735092

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Potential self-deadlock or AB-BA deadlock between `phy->mutex` a=
nd `phy->notifier.rwsem` when consumers handle reset notifications.
--

--- Patch [29]: [PATCH v11 29/36] phy: core: add notifier infrastructure ---
commit 205cc0767ab713005453a3401f261c9b0a0289ce
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: core: add notifier infrastructure

This commit introduces a new PHY notifier API to allow consumer drivers to
handle reset events coming from a PHY device. It adds functions to register
and unregister notifiers, and to trigger reset notifications.

> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
[ ... ]
> +int phy_notify_reset(struct phy *phy, enum phy_notification event)
> +{
> +	int ret;
> +
> +	if (!phy)
> +		return 0;
> +
> +	ret =3D blocking_notifier_call_chain(&phy->notifier, event, phy);

[Severity: Medium]
Could this lead to a self-deadlock or an AB-BA deadlock between phy->mutex
and the notifier rwsem?

If a PHY provider calls phy_notify_reset() from within a PHY operation
callback that executes with phy->mutex held, the notifier chain takes a
read lock on phy->notifier.rwsem. If a consumer callback then attempts to
quiesce its hardware by calling a PHY framework API like phy_power_off(),
it will try to acquire phy->mutex again, resulting in a self-deadlock:

phy_set_mode()
  mutex_lock(&phy->mutex);
  provider_ops->set_mode()
    phy_notify_reset()
      blocking_notifier_call_chain()  // takes rwsem read lock
        consumer_callback()
          phy_power_off()
            mutex_lock(&phy->mutex);  // self-deadlock

Conversely, if phy_notify_reset() is called outside of phy->mutex, but the
consumer calls back into the PHY framework, it establishes a lock dependency
from the notifier rwsem to phy->mutex. A concurrent PHY operation that holds
phy->mutex and registers a notifier could create a classic AB-BA deadlock if
a writer is pending on the rwsem.

Should the documentation warn consumers to defer PHY API calls to a
workqueue when handling these notifications, or should the lock hierarchy
be explicitly defined?

> +	return notifier_to_errno(ret);
> +}
> +EXPORT_SYMBOL_GPL(phy_notify_reset);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D29

