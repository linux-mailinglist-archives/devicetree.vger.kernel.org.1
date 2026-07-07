Return-Path: <devicetree+bounces-322048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ioOVFrf/TGoJtQEAu9opvQ
	(envelope-from <devicetree+bounces-322048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:31:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E407B71BEF4
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:31:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=f0qNtlev;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322048-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322048-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0104A3162802
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4392941A798;
	Tue,  7 Jul 2026 13:25:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB54341A780;
	Tue,  7 Jul 2026 13:25:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430702; cv=none; b=CNJ8HSx1Bc/ECii+41K2Hf1KLQj82wBtKmBpRBUME6mjeeQYjZjkHf3tm3Ut3wyImoKwhbgE8Q/G+1VNnOErcIZXDoC9G8TEhIdUfEF8ueSkfmIQXrCcmsjJ74Vwz9BttytAm8Ou8BOf+h2ge+RyAhRbv77X8AERwKnY+0jBTEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430702; c=relaxed/simple;
	bh=603jh6tkUuRe0PvaIZh455aJBK78BRPfx9VziufotAw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l5I/f3GppO26TiPvao2JsT1/jdfArQsdnRNvVjMHo5qTMvknoshvSU2ytx1HG5loJmIYg5qY7EgnSyfw33KTRJPbzb/owspY4CrcxBlUGI1UuAft4LyneQNmjZnrh50PTzJCz/cAVQt8fV72JSeRM0k7lhB8GyNr5iZWNwChZvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0qNtlev; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CEAD1F000E9;
	Tue,  7 Jul 2026 13:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783430700;
	bh=YR7OVTOka+yAGIFejWErZW21aVeNFMmNHnyc0lNA9gM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f0qNtlevUwAYzZhgdYvX3EbEt+Hzwb42I4TktDLWhSA9egp8hdj0N/q1JMzYo8Edv
	 zpvDzI4Q940ukozD7I4KJYtBCX7KIwauWZZT4b8sUtMqc0v45p/YZJvNf4p75wbMpy
	 32MVSX0i90QZgah72/D4KfTwQ+07AZ5gac94JFgjBqeqUws1/Q7cgUDwBhFDWdexpv
	 lHSvZlwnuaiuKCGcjVM1xOeGWEYwOPnwT/PSeSNaZRFuIX0VxPUgK4ZNI/S5QO4wX8
	 HX7Gk04ScB7ZfPGKTloWKCa4PZ9l33OTvrxzgslizbVo7rmQumiA7VLDPzZifqnfVa
	 k9A8cKm8k6akA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 12/20] mfd: tps6586: use
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, conor+dt@kernel.org, imx@lists.linux.dev, lee@kernel.org, robh@kernel.org, mfd@lists.linux.dev, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706-pdev-fwnode-ref-v3-12-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
 <20260706-pdev-fwnode-ref-v3-12-1ff028e33779@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 13:24:59 +0000
Message-Id: <20260707132459.6CEAD1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322048-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:lee@kernel.org,m:robh@kernel.org,m:mfd@lists.linux.dev,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E407B71BEF4

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Subdevice cleanup unconditionally unregisters all children, premat=
urely removing MFD cell devices and bypassing `mfd_remove_devices_fn()`.
- [Medium] Manual assignment of `pdev->dev.platform_data` leads to invalid =
`kfree()`.
- [Medium] Missing IRQ domain and IRQ descriptors cleanup on teardown and e=
rror paths.
--

commit 0df04ec4b22ac2adb3b77bf67e6a1339f5fd4523
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
mfd: tps6586: use platform_device_set_of_node()

This commit encapsulates the assignment of the OF node for dynamically
allocated platform devices by using the platform_device_set_of_node() helpe=
r.
This change prepares for reworking the reference counting logic for platform
devices.

> diff --git a/drivers/mfd/tps6586x.c b/drivers/mfd/tps6586x.c
> index f5f8054466033..3cfd2f02b62f3 100644
> --- a/drivers/mfd/tps6586x.c
> +++ b/drivers/mfd/tps6586x.c
> @@ -397,7 +397,7 @@ static int tps6586x_add_subdevs(struct tps6586x *tps6=
586x,
> =20
>  		pdev->dev.parent =3D tps6586x->dev;
>  		pdev->dev.platform_data =3D subdev->platform_data;

[Severity: Medium]
This is a pre-existing issue, but does this manual assignment of
platform_data at line 399 in tps6586x_add_subdevs() cause problems during
device release?

When the platform device is unregistered, platform_device_release()
unconditionally calls kfree(pdev->dev.platform_data).

If subdev->platform_data was statically allocated or part of devm_kzalloc
memory, could this corrupt the heap?

> -		pdev->dev.of_node =3D of_node_get(subdev->of_node);
> +		platform_device_set_of_node(pdev, subdev->of_node);
> =20
>  		ret =3D platform_device_add(pdev);
>  		if (ret) {

[Severity: High]
This isn't a bug introduced by this patch, but does the cleanup in
tps6586x_remove_subdevs() interfere with MFD core cleanup?

drivers/mfd/tps6586x.c:tps6586x_remove_subdevs() {
    ...
    return device_for_each_child(tps6586x->dev, NULL, __remove_subdev);
}

drivers/mfd/tps6586x.c:__remove_subdev() {
    ...
    platform_device_unregister(to_platform_device(dev));
}

Since MFD cells added by mfd_add_devices() are children of tps6586x->dev,
this unconditional unregistering of all children appears to bypass
mfd_remove_devices_fn().

Could blindly casting dev to struct platform_device also be unsafe if any
child is not a platform device?

[Severity: Medium]
This is a pre-existing issue, but does the driver leak IRQ descriptors and
the IRQ domain during removal or on error paths?

In the removal path, tps6586x_i2c_remove() in drivers/mfd/tps6586x.c cleans
up other resources but misses IRQ cleanup:

drivers/mfd/tps6586x.c:tps6586x_i2c_remove() {
    struct tps6586x *tps6586x =3D i2c_get_clientdata(client);

    tps6586x_remove_subdevs(tps6586x);
    mfd_remove_devices(tps6586x->dev);
}

Additionally, if irq_domain_create_simple() or request_threaded_irq() fail
in tps6586x_irq_init():

drivers/mfd/tps6586x.c:tps6586x_irq_init() {
    ...
    if (!tps6586x->irq_domain) {
        dev_err(tps6586x->dev, "Failed to create IRQ domain\n");
        return -ENOMEM;
    }
    ...
}

The error paths exit without freeing the previously allocated descriptors or
domain. Can this cause resource leakage on cold paths?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-pdev-fwnod=
e-ref-v3-0-1ff028e33779@oss.qualcomm.com?part=3D12

