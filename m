Return-Path: <devicetree+bounces-312844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LcSJErhWMmpKywUAu9opvQ
	(envelope-from <devicetree+bounces-312844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:11:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D605469773A
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:11:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=keYoykJI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312844-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312844-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 26D5330087DB
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBE93B38AD;
	Wed, 17 Jun 2026 08:11:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435003B3C15
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 08:11:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781683893; cv=none; b=HPh2z8Elh+BHxLwSCExkxwSG2BS5ihnmKkfmKMx48IETXL6YQsu4ndMP+5JuJVh9d2e0YdPspaR3M/DtORrlf2Nkrg5AuF2x7jdxYXt/UTR1XcCrlqapKwniyTLAFy5nEJQOrdIyBO/chjjPXi3pPXhwC8NOpfTdXIvflQN/SgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781683893; c=relaxed/simple;
	bh=clmtvH0eGeQxS0G7U8hVQilo3vOZ4+YAU57i9dR3RQc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p0cMppammz7+c+mcKl6kDbeJC5OHoLVry3Ue2P9TTVbnb2HdQ5fOF+ZQAvwlfASjHFz/0ewg+zOWihgR5oeNrD36TLP/rePLdai8Myb+TZ50KM6DC9UzjwFunX43U0FeBWpv0SrXBoqFgo3pvEQoeLGxseh4aJNcmNFRccZ+NF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keYoykJI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0CD41F000E9;
	Wed, 17 Jun 2026 08:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781683891;
	bh=DGyTkWofSz/FPfY2ZGkAAhsr14BRhfEZM+zZ+Pxo9xM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=keYoykJId3a1bOCp5KcblSpX1qdL8vt1e5z02K120PuU6Vl/Chw1yM1WZBIyV8PPb
	 wIyTeY2q8qz6vnvX3T6RnEadxsDYWHNwpjWrjzCdEvOdgCMvz5Wgietpd/cgYySr0e
	 vxQtPO8Fskc1zCmJ9HTxOp8dT3juV2gHVMkHKrSORl7IWM2BBPVoiLQ2jo/Bn/bLvc
	 66T4OeRj48fmUTavmbr7XYTHrZrJR/U/GHB+Citm7B3BU6ZRNt8UUsQx9ddOSdKFoA
	 CtwpkBfpEGZO/087W2qOvtm1mDTIsEtXzCP1k2AZyZ17Tjq+E3SBTYkwRSd/Nwr3al
	 +fcfmW5+rop9A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 07/14] mfd: lm3533: Use dev_groups in struct
 device_driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260617080031.99156-8-clamor95@gmail.com>
References: <20260617080031.99156-1-clamor95@gmail.com>
 <20260617080031.99156-8-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 08:11:31 +0000
Message-Id: <20260617081131.A0CD41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312844-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D605469773A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unintentional user-space ABI breakage by moving custom sysfs attri=
butes from the backlight class device to the platform device.
--

commit b4eaddced56809e9f87ffe143724f151f0e7013e
Author: Svyatoslav Ryhel <clamor95@gmail.com>

mfd: lm3533: Use dev_groups in struct device_driver

Instead of creating and removing the device sysfs attributes directly
during probe and remove of the driver, respectively, use dev_groups in
struct device_driver to point to the attribute definitions and let the
core take care of creating and removing them.

No intentional functional impact.

> diff --git a/drivers/video/backlight/lm3533_bl.c b/drivers/video/backligh=
t/lm3533_bl.c
> index 4d6f680334802..9ef171d3aaeab 100644
> --- a/drivers/video/backlight/lm3533_bl.c
> +++ b/drivers/video/backlight/lm3533_bl.c
[ ... ]
> @@ -304,28 +309,17 @@ static int lm3533_bl_probe(struct platform_device *=
pdev)
> =20
>  	platform_set_drvdata(pdev, bl);
> =20
> -	ret =3D sysfs_create_group(&bd->dev.kobj, &lm3533_bl_attribute_group);
> -	if (ret < 0) {
> -		dev_err(&pdev->dev, "failed to create sysfs attributes\n");
> -		return ret;
> -	}
> -
>  	backlight_update_status(bd);
[ ... ]
> @@ -377,6 +370,7 @@ static struct platform_driver lm3533_bl_driver =3D {
>  	.driver =3D {
>  		.name	=3D "lm3533-backlight",
>  		.pm	=3D &lm3533_bl_pm_ops,
> +		.dev_groups =3D lm3533_bl_attribute_groups,

[Severity: High]
Does moving these attributes to the platform driver break the userspace ABI?

The old code explicitly created custom sysfs attributes on the backlight
device's kobject (&bd->dev.kobj), placing them in the backlight class
directory, for example under /sys/class/backlight/<name>/.

By attaching the attribute groups to the platform driver via .dev_groups, t=
he
driver core will now create these attributes on the parent platform device
instead.

Since the commit message states there is no intentional functional impact,
could this path change accidentally break userspace tools or udev rules
that expect to find these custom attributes inside the backlight class
directory?

>  	},
>  	.probe		=3D lm3533_bl_probe,
>  	.remove		=3D lm3533_bl_remove,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617080031.9915=
6-1-clamor95@gmail.com?part=3D7

