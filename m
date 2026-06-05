Return-Path: <devicetree+bounces-307345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T7lyLAywImqocAEAu9opvQ
	(envelope-from <devicetree+bounces-307345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:16:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 070DC647A7C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:16:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hV38Prtg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307345-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307345-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B26FD3003EC2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 11:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A6544BC91;
	Fri,  5 Jun 2026 11:08:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D29C3BBFBD
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 11:08:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780657684; cv=none; b=YW9nsfYpV7qxbAnB1kNkQbipDhj7PW/dll0A8VlotabxYYw3ecRCdgryN8CejRdqpzdhsWXONtzBEDABrOclwlpJQsT3Gow3bzjvctp+p2kH5v50vqT8KPiEDeQ5mehaO8F//Mpj/Z8/7MWUQrN/uLyFnmhyVz9tMFw+OVaCIms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780657684; c=relaxed/simple;
	bh=Muzsu+T59mOzDxN096JAYL7X41JurDuHtBYl7qgdBrw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=g1fRgPZyfrZOtV5RibG6nW1SzS4+kU7cg+OPqT6B44+l/GesAKZ+JgGaR4SxhyTeiJYs1Uy4m5POL8+C9AGfpMI339iyTuR5EC2d0Nk1e6NABbY8hqvStqy0ritxVIXKhsu7yeiAudv4Ei3GkuP16pmtuFvsjRAdMTow6vFhNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV38Prtg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B701F00893;
	Fri,  5 Jun 2026 11:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780657682;
	bh=7nh03nRRFFCQ1es08bJH9BgzjRow6lNV3xCfO28/S+Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hV38Prtg8fT9RHYT6rMEPsZznv5ZtHaUfeQbPZesDclaxftN4yQidKCF1GLriu5Oy
	 m7bdCu2Fc1t7XI1YZ7Z7q/1jwWyPj/lNsltebJjBTnYk1U0qCjPMnwoJGRj7vlXv/B
	 ipsZ2XAsEEV6tqgEc1BA2aroPKS0UycO+lDWcRssiEZpCeewWT3hb/zHFQrGUBwMf1
	 Ro71CQ4bbIiGoPaXfS4S/eVno88ieZZq6HGn+fo6jtpXSHZVU9rJf8RMY9n34RFz3I
	 cwDoAu7M7+hEJCC2/jzMXEod5T0FPAs0T+TofMWb2N51cz8OZKn22jS/gCgwJCh9OW
	 wU5zaBy4ZRKkA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] iio: temperature: tmp117: add TI TMP119 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Romain Gantois" <romain.gantois@bootlin.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605-tmp119-v1-2-349f45f17d12@bootlin.com>
References: <20260605-tmp119-v1-2-349f45f17d12@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 11:08:02 +0000
Message-Id: <20260605110802.74B701F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307345-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:romain.gantois@bootlin.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,keysight.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 070DC647A7C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The IIO device name for the TMP119 sensor is incorrectly reporte=
d as 'tmp117' to userspace.
--

commit 3bc7597d636b9eb1df1b77ad9bb9ab2ab8c85398
Author: Wil Stark <wil_stark@keysight.com>

iio: temperature: tmp117: add TI TMP119 support

This commit adds support for the TMP119 temperature sensor to the tmp117
driver. It maps the TMP119 device ID and compatible string to the existing
tmp117 match data.

> diff --git a/drivers/iio/temperature/tmp117.c b/drivers/iio/temperature/t=
mp117.c
> index 8972083d903a2..8e9621171c516 100644
> --- a/drivers/iio/temperature/tmp117.c
> +++ b/drivers/iio/temperature/tmp117.c
[ ... ]
> @@ -170,6 +171,7 @@ static int tmp117_probe(struct i2c_client *client)
>  		match_data =3D &tmp116_channels_info;
>  		break;
>  	case TMP117_DEVICE_ID:
> +	case TMP119_DEVICE_ID:
>  		match_data =3D &tmp117_channels_info;
>  		break;

[Severity: Medium]
Will this cause the IIO device name exposed to userspace to be incorrectly
reported as "tmp117" for TMP119 devices?

Since TMP119 maps directly to tmp117_channels_info:

static const struct tmp11x_info tmp117_channels_info =3D {
        .name =3D "tmp117",
        ...
};

And indio_dev->name is assigned from match_data->name later in tmp117_probe=
():

        indio_dev->name =3D match_data->name;

Does this break userspace applications or udev rules that rely on reading
the correct sensor part name ("tmp119") from sysfs?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-tmp119-v1-=
0-349f45f17d12@bootlin.com?part=3D2

