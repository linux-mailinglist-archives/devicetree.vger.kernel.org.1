Return-Path: <devicetree+bounces-317521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nyYxN1OLQ2rJawoAu9opvQ
	(envelope-from <devicetree+bounces-317521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 662A46E21C6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P4iBgxtQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317521-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317521-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D132306340E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005C3383318;
	Tue, 30 Jun 2026 09:18:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D312D3612FE;
	Tue, 30 Jun 2026 09:18:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811120; cv=none; b=utrfUqc5ab+annVPJqbRwb+Z5+E+Bkv/G3K5+CVokU/fzQSLQ2h7ypRjjP//j0GPUkeLKA2vCQgFFrREsEP5V3TDfN8TDIPHzvsW33cnrIYGHUtt36O7JNJ+qolV8rolvz5n6fAID5BaRvgkAwW/H1wGz2sAL9Odot3t8+4y91s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811120; c=relaxed/simple;
	bh=R5MLtxLY9usscieQ4SlHjsKCiVP/ouRFrV2IeQNdKNo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VZotCia9gM4jVLpPLcYUKZolxcFS5y8g1KW3XXc9hLYEFRUUOKVDurpkxLlPUxuU7D93nHFz81IGX26Nfi8H+QcW7caoQm3adp1s1SnkYN9nf+ByFrBKKgOau2jcsiTMcN770K7EPchHt1PbIPn9aOe/pBkzcIwJCrvzro9mAYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4iBgxtQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 106FB1F000E9;
	Tue, 30 Jun 2026 09:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811119;
	bh=4xdsDrROvnoB1hsweI9GIEXn8OFofnQBlAQ/qK9EJtU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P4iBgxtQIyk70pcwtTQD3yrgV4F74UF+KdjS3RqmemklapAx3vqgbSUy49EwNnDaN
	 DRdttMszWatJrqnkaM1Ob/en8suuLR2nVMbuT1g4sTwghtyzAMr1oAdeSnWBiSP+gQ
	 hjgyzAMS2EKs19znQAKbA0owk2trZtgjgTtZnv3+hjo3fY4kEUIdA+PgxOZb4tzPEt
	 rfk0N+7Umn/sH+j6c3OX6xaeMl2FkjNflnrMcdPfGxjmW2KIOEmZCZOG7NmkOk+8k8
	 /BLA/c8k2BRl7XGkZXB/IskONcDkNCa6iA26gPUGCOurvaDGwhG8dzWBG5wOXbKoWU
	 PlU/qGmKuy8dA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/19] driver core: platform: provide
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, dri-devel@lists.freedesktop.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260629-pdev-fwnode-ref-v2-2-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-2-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:37 +0000
Message-Id: <20260630091839.106FB1F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317521-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 662A46E21C6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Incomplete migration to `platform_device_set_fwnode()` / `platform=
_device_set_of_node()` causes OF node reference and memory leaks for un-mig=
rated callers.
--

commit b1122010b53f4c5f66f9be91e300a372e6dce282
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

driver core: platform: provide platform_device_set_of_node()

This commit encapsulates the reference counting logic for OF nodes assigned
to platform devices into a new helper function. It prepares the driver core
to switch to counting references of the device's firmware nodes rather than
just the OF nodes.

> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index fb9120b0bcfe0..3188d5aba5f90 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c

[ ... ]

> @@ -693,6 +693,24 @@ int platform_device_add_data(struct platform_device =
*pdev, const void *data,
>  }
>  EXPORT_SYMBOL_GPL(platform_device_add_data);
> =20
> +/**
> + * platform_device_set_of_node - assign an OF node to device
> + * @pdev: platform device to add the node for
> + * @np: new device node
> + *
> + * Assign an OF node to this platform device. Internally keep track of t=
he
> + * reference count. Devices created with platform_device_alloc() must us=
e this
> + * function instead of assigning the node manually.
> + */
> +void platform_device_set_of_node(struct platform_device *pdev,
> +				 struct device_node *np)
> +{
> +	of_node_put(pdev->dev.of_node);
> +	pdev->dev.of_node =3D of_node_get(np);
> +	pdev->dev.fwnode =3D of_fwnode_handle(np);
> +}
> +EXPORT_SYMBOL_GPL(platform_device_set_of_node);

[Severity: High]
Will the transition to this new helper cause OF node reference leaks for
existing drivers that haven't been migrated yet?

For example, looking at max8997_battery_probe() in
drivers/power/supply/max8997_charger.c, the driver currently manually
assigns an acquired OF node without setting fwnode:

drivers/power/supply/max8997_charger.c:max8997_battery_probe() {
    ...
    np =3D of_get_child_by_name(iodev->dev->of_node, "charger");
    ...
    pdev->dev.of_node =3D np;
    ...
}

If the driver core teardown is changed later in this patch series to
only release fwnode in platform_device_release(), won't these
un-migrated callers leak their OF node references when the device is
released?

Are there other drivers that need to be migrated to use
platform_device_set_of_node() before making the core change?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D2

