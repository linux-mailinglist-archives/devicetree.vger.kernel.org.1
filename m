Return-Path: <devicetree+bounces-317525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U8OdDv+JQ2rlagoAu9opvQ
	(envelope-from <devicetree+bounces-317525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:18:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EE26E20B9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nDN4GIX1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317525-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317525-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7668B3030770
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7107937FF6A;
	Tue, 30 Jun 2026 09:18:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A433537F9;
	Tue, 30 Jun 2026 09:18:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811124; cv=none; b=htVplP+SaRKP6HTS+61Kxh+tzjpiaG0G8RJnZxjEZggslG6/Xsf7wC5+yhItbg+4H5qwBEovIMA0v8SfxFNp7MHsRmVaYKnOUF7PanavjExHaJKLj37dmRoLO5gC3hPLjsuqBUW5VbYClLlN34s5H+mItwZSM8Bg7BZIGsSOwqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811124; c=relaxed/simple;
	bh=yzGKDmVGP3AUw9LwpdPjleo/babIFsWUcOySeTLhklM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Qv5e+bmXcedYoXgR7cGM2Z6WJsld/xoki4DHNoJehOuApq8txVLlnku8edh2TxnkIx+jkO7xQXVoCrx/tZFoi8JqN7Nj/tBn2J6x1giUSZ1nkxkGpqqs5xIfyyVFCDIoMMhkP06UxBEnvyzzVnkMK3Ah/PPyvG7ejJY77VFnBT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDN4GIX1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCE2F1F00A3D;
	Tue, 30 Jun 2026 09:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811123;
	bh=9OH3q4zyN12p0WjlOzyD0rZl+9v/3ZiPP5Jehec6diA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nDN4GIX1F8Ob8rJfntIJzBUXdUCidFseMnZzWe1UROIM5t3UT7nvTjlmbJjc7OQTS
	 93CtTLqvn3ZliBHtch3PXjK4+jGUdQU8ggMQnVAz/W2Kk9JkCYzrvUKIu1XuP6BV66
	 MoPPDwSFyzhZTymBdQjenZhBqg9zfEGsh2capCVE6hyjiGU3emFVUWYnAFcT85fa4S
	 aX8Xc/oqlUoF1i/EK7/uUtRT8SbbPHnJExYnxaJP4upobPORw4NY21GnaAPmUHpKD2
	 eG1oTyZqlQaC5p35ANR9+8vQipvIyIs3h/tpgufOhtaz1MIRL5ctKi2IW1MgbBGU+0
	 ZUEXbUHfzDPrw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 19/19] driver core: platform: count references to all
 kinds of firmware nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, imx@lists.linux.dev
In-Reply-To: <20260629-pdev-fwnode-ref-v2-19-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-19-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:42 +0000
Message-Id: <20260630091842.BCE2F1F00A3D@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317525-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email,pdev.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7EE26E20B9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Memory leak of `of_node` references in platform device release
- [High] Refcount underflow and use-after-free of software nodes on platfor=
m device release
--

commit f2aa250a52f31d368fee3251e58597913170101a
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

driver core: platform: count references to all kinds of firmware nodes
   =20
This patch switches to counting references for all kinds of firmware nodes =
by
replacing the of_node_put with fwnode_handle_put in platform device release.
It also updates platform device setup helpers to properly acquire fwnode
references.

> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index f24a5f406746b..bb5f5bddd047d 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -599,7 +599,7 @@ static void platform_device_release(struct device *de=
v)
>  	struct platform_object *pa =3D container_of(dev, struct platform_object,
>  						  pdev.dev);
> =20
> -	of_node_put(pa->pdev.dev.of_node);
> +	fwnode_handle_put(pa->pdev.dev.fwnode);

[Severity: High]
Does replacing of_node_put() here cause a memory leak of of_node references?

Many drivers and core APIs manually acquire an of_node reference and assign
it directly to pdev->dev.of_node without setting pdev->dev.fwnode. For
example, in drivers/base/core.c:device_set_of_node_from_dev():

	of_node_put(dev->of_node);
	dev->of_node =3D of_node_get(dev2->of_node);

When a platform device set up this way is released, fwnode_handle_put() will
operate on a NULL or unrelated fwnode, failing to drop the of_node referenc=
e.

[Severity: High]
Can this fwnode_handle_put() cause a refcount underflow for software nodes?

Platform drivers often inherit their parent's fwnode without taking an
additional reference. For example, in drivers/gpio/gpio-arizona.c:

	device_set_node(&pdev->dev, dev_fwnode(pdev->dev.parent));

Before this patch, calling of_node_put(dev->of_node) on a software node was
a safe no-op (as of_node was NULL). Unconditionally calling
fwnode_handle_put() here will now invoke software_node_put() and decrement
the unacquired reference, potentially leading to a use-after-free when the
device is unregistered.

>  	kfree(pa->pdev.dev.platform_data);
>  	kfree(pa->pdev.mfd_cell);
>  	kfree(pa->pdev.resource);

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D19

