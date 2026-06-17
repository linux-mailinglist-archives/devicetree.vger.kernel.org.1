Return-Path: <devicetree+bounces-313175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id swabB1EMM2py8wUAu9opvQ
	(envelope-from <devicetree+bounces-313175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 23:06:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 109BB69C769
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 23:06:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ilx57rp+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313175-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313175-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 10A5D300B2B8
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 21:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92FCA3C4143;
	Wed, 17 Jun 2026 21:06:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B99338D40A;
	Wed, 17 Jun 2026 21:06:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781730379; cv=none; b=t/aDYsr+qarl4IBLlrXWoelZrf/A/pgky6dEN3Xqf7/G7qfw3fLBECysZL6xtXGNObHFIEKq+uWO0UKOydCXxVzARv4dw+DdlQEUdyPK5r7T2kdkFdSeSazUBY6v57dy2YgA0xzwHDM6nmE9mIZnUGY9k3Ha3Y5u6UWUPwInsDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781730379; c=relaxed/simple;
	bh=t4QC2ihSDEVFk+Lb1Srzy62X3QttL6pmentr90YtsuI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PFH0fN3STvvx2lCF7vdUyhW2ypNgaGBCxs6ptdtxVVlRo9LBlcL40jH3+o7rvctKJOvC9qFNIY2vHUwNRNxhruph+giQAY69K45UiFxS6miEMq3xL2tijYDLZy097XIK/Xh5826oI/yPg7i86bMX2eyfxiFJrtnc7z3kEtJxse4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilx57rp+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F232B1F000E9;
	Wed, 17 Jun 2026 21:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781730378;
	bh=qH11nDHRe1xfZzYyEXpXl+pnPve9QlY8A4Ri3/gD4cc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ilx57rp+SVQUqvr93GrgpQJSMeXpjrXeyGUwuyC+iTSB6RlqSAJ1dvBvhJEeiy19b
	 70PBIAHwFvjU68uO3rRI3ul/Krk8QK0jAX0WxqSn9snmRnuG+E8WavkIoIZbUpzZ8O
	 obLAsuvfrmjY9du0RLK0Vkj55X5nc9STBUHK/Icb3lep3+SLNhOQ2dyEVmEEtRimN3
	 YE0wUhMXrbhNyV/uYXdQx2LZVPev2Spber9LmEqkS5n/3RY7BEGsO37V6opg57Z7H6
	 H/t3wQ+08sa0yitGyRAT4fc0xM95jK4gIgj36iwNsq4E4oQICdUjejSZK7nlLoXTvE
	 JaDkXcFotQADg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/8] media: v4l2-fwnode: Add common helper library
 for 1-to-1 subdev registration
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617-imx8qxp_pcam-v5-2-7fa6c8e7fba7@nxp.com>
References: <20260617-imx8qxp_pcam-v5-0-7fa6c8e7fba7@nxp.com>
 <20260617-imx8qxp_pcam-v5-2-7fa6c8e7fba7@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 21:06:17 +0000
Message-Id: <20260617210617.F232B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313175-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 109BB69C769

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Redundant cleanup and misguided teardown of `sd->subdev_notifier`.
--

commit ebb79cbbc440da4b8d1a35f25ce9168deff7467d
Author: Frank Li <Frank.Li@nxp.com>

media: v4l2-fwnode: Add common helper library for 1-to-1 subdev registration

This commit introduces a common helper library to encapsulate registration,
media entity initialization, and cleanup for 1-to-1 V4L2 subdevices,
reducing boilerplate in simple bridge and converter drivers.

> diff --git a/drivers/media/v4l2-core/v4l2-1to1.c b/drivers/media/v4l2-cor=
e/v4l2-1to1.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/media/v4l2-core/v4l2-1to1.c

[ ... ]

> +void media_async_subdev_1to1_cleanup(struct v4l2_subdev_1to1 *sd_1to1)
> +{
> +	struct v4l2_subdev *sd =3D &sd_1to1->sd;
> +
> +	v4l2_async_unregister_subdev(sd);
> +	v4l2_subdev_cleanup(sd);
> +	media_entity_cleanup(&sd->entity);
> +	v4l2_async_nf_unregister(sd->subdev_notifier);
> +	v4l2_async_nf_cleanup(sd->subdev_notifier);
> +
> +	kfree(sd->subdev_notifier);

[Severity: Low]
Does this code perform redundant cleanups?

Looking at v4l2_async_unregister_subdev(), it already handles unregistering,
cleaning up, freeing, and setting sd->subdev_notifier to NULL:

v4l2_async_unregister_subdev(struct v4l2_subdev *sd) {
    ...
    __v4l2_async_nf_unregister(sd->subdev_notifier);
    __v4l2_async_nf_cleanup(sd->subdev_notifier);
    kfree(sd->subdev_notifier);
    sd->subdev_notifier =3D NULL;
    ...
}

Since sd->subdev_notifier is NULL after v4l2_async_unregister_subdev()
returns, are the subsequent calls to v4l2_async_nf_unregister(),
v4l2_async_nf_cleanup(), and kfree() necessary here in
media_async_subdev_1to1_cleanup()?

> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-imx8qxp_pc=
am-v5-0-7fa6c8e7fba7@nxp.com?part=3D2

