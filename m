Return-Path: <devicetree+bounces-320598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iTv+HCcxSmr5/AAAu9opvQ
	(envelope-from <devicetree+bounces-320598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 12:25:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B88B2709BF7
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 12:25:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ijinZH8w;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320598-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320598-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 846FC3007E34
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 10:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D71CE373BF4;
	Sun,  5 Jul 2026 10:25:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFD3275AEB
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 10:25:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783247140; cv=none; b=nnFQWmA0CAKT2YdixgHTBXaNURjBil//AFrlqbEqLkv3YSgwFTJGVgI1Kd/h6ul1KYF8frfmXXbljnGQ+FcKSCQxdh+AZ+pnwaFgX3kS6GSznYDOMvmlk5xzQSrkkJQoPJ6GzvSop/IsqEat2iOYVUeV+4IFSPLon1a0jFgE3+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783247140; c=relaxed/simple;
	bh=gNxJwQ9OFWcd5xQiW8ZABYs8bvaxshzvCv2zDTRjdmU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J1OXrdENsWswubClJgY32iXH00/hTSfAy5/kzP/qMtrWJGqsQaZHg6D58ZquZNnKB0dxQRsl0z912A9O7G4VtNgl0oXixVqJOCywzWcdmap2+YDRZoB3KyG9fvK2oM+Y8ZJGU4ECIVELrlndLoceAMI34zAt25P6pqu5AIjimDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijinZH8w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 389D51F000E9;
	Sun,  5 Jul 2026 10:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783247138;
	bh=OhJSu0Gwa5npuT3cmnAROjbyn4QYnc4/K/e7zDhudU0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ijinZH8w5R0uirLNgjs2DnmN2MpvMIYqUZ/V8kyCsJNwUdC1vke5CO3I1pTV5T+UB
	 4SKTpWV1pUjiZkjMmGU16oiRGduWbD4sz08jDYFoW9EvzBmWP/A41MXo32bpcwpVUO
	 zBt14I2LnGY+88t2+WQj8Q0V7//9g8IBwRJimk0oHP2xnL6B2lbkwZHjXiRWhTg5sd
	 nf/RWZGApFIcXzcyw6hgcw+fVpmWGYaFyp4ORrqLrUhkeZkjLNRG3x0vhlI3ruAb3o
	 rsCknx1VPQdmz2OGGT4BV5NKlW+8fUXHB8aLV3Da4lMqwIXOQmMQwfU50IUmWIgn55
	 Ipa6kjOmIZuJQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] phy: cpcap-usb: add extcon support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260705101105.1798069-5-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-5-ivo.g.dimitrov.75@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 10:25:37 +0000
Message-Id: <20260705102538.389D51F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320598-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ivo.g.dimitrov.75@gmail.com,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:robh@kernel.org,m:ivogdimitrov75@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,vger.kernel.org,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B88B2709BF7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] Missing reset of extcon state on driver removal, leading to stal=
e connection states for consumers.

Pre-existing issues:
- [High] Pre-existing UAF race condition during device removal between the =
IRQ thread and remove() leading to delayed work executing after device data=
 is freed.
--

commit a6baa41684450d481944fb6077e8db95e4f80e2e
Author: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>

phy: cpcap-usb: add extcon support

Register an Extcon device and report the detected cable state. The driver
already determines the type of cable attached during USB cable detection.
Export the detected state through the Extcon framework so other drivers can
consume it using a standard kernel interface.

> diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/=
phy-cpcap-usb.c
> index 78bb1773e5379..ba36d110df419 100644
> --- a/drivers/phy/motorola/phy-cpcap-usb.c
> +++ b/drivers/phy/motorola/phy-cpcap-usb.c

[ ... ]

> @@ -777,7 +835,18 @@ static int cpcap_usb_phy_probe(struct platform_devic=
e *pdev)
>  	if (!otg)
>  		return -ENOMEM;
> =20
> +	ddata->edev =3D devm_extcon_dev_allocate(&pdev->dev, cpcap_extcon_cable=
s);
> +	if (IS_ERR(ddata->edev)) {
> +		return dev_err_probe(&pdev->dev, PTR_ERR(ddata->edev),
> +				     "failed to allocate extcon device\n");
> +	}
> +
> +	error =3D devm_extcon_dev_register(&pdev->dev, ddata->edev);
> +	if (error < 0)
> +		return error;
> +

[Severity: Medium]
When the module is removed or unbound, devres will automatically unregister
the extcon device. However, since there are no corresponding updates to
cpcap_usb_phy_remove() in phy-cpcap-usb.c, the extcon cable states are not
explicitly reset to EXTCON_NONE before the device goes away.

Will consumers of this extcon device (e.g. charger drivers) retain stale
connection states because of missed disconnect notifications during removal?

>  	ddata->mode =3D CPCAP_UNKNOWN;
> +	ddata->cable =3D EXTCON_NONE;
>  	ddata->dev =3D &pdev->dev;
>  	ddata->phy.dev =3D ddata->dev;
>  	ddata->phy.label =3D "cpcap_usb_phy";

[Severity: High]
This isn't a bug introduced by this patch, but is there a pre-existing
use-after-free race condition during device removal between
cpcap_phy_irq_thread() and cpcap_usb_phy_remove() in phy-cpcap-usb.c?

Looking at cpcap_usb_phy_remove(), it cancels the work:

cpcap_usb_phy_remove() {
    ...
    atomic_set(&ddata->active, 0);
    cancel_delayed_work_sync(&ddata->detect_work);
    ...
}

However, if cpcap_phy_irq_thread() is preempted right after checking the
active flag:

cpcap_phy_irq_thread() {
    ...
    if (!atomic_read(&ddata->active))
        return IRQ_NONE;

    /* preempted here */
    schedule_delayed_work(&ddata->detect_work, msecs_to_jiffies(1));
    ...
}

Could this sequence occur during unbind/removal:

1. IRQ thread reads active =3D=3D 1, gets preempted.
2. cpcap_usb_phy_remove() sets active =3D 0, calls cancel_delayed_work_sync=
()
   (which does nothing since the work isn't queued yet).
3. Devres frees the IRQ, waiting for the IRQ thread to finish.
4. IRQ thread resumes and queues the delayed work.
5. Devres frees the ddata structure.
6. The delayed work timer expires and accesses the freed memory?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705101105.1798=
069-1-ivo.g.dimitrov.75@gmail.com?part=3D4

