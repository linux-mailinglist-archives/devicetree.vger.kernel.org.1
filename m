Return-Path: <devicetree+bounces-307590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P9zBK16rI2pXwwEAu9opvQ
	(envelope-from <devicetree+bounces-307590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:08:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1132A64C828
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:08:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="L/EWXQ3R";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307590-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307590-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FE753020D75
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 05:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E67169AD2;
	Sat,  6 Jun 2026 05:08:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B858618FDDE
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 05:08:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780722520; cv=none; b=gAU/gB1qWUT3xW4PHo5mFjfpatQzAh2xhWWLTFqEDV9HwbGBeymAFVQtJ910yC4xdA/lceTdQVxcJq5hPZ7zDxenZWuYtzc76B0SlbEdntrokBCicJlM0rAgnX7DqD9RFBh5pPGBiylU1O8NYHag+dbj7BUsbFpIN4M/+utctWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780722520; c=relaxed/simple;
	bh=Qgha8HSTZZM+g7lqTk/ZMKwiJV9fWEYgSuJP8zsERuY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WFwXVvjmX7rZLPZtUIEc/mKJMZmcpuszXbrDpH87UlIDWdULn3Q51QCEwB7+9VP6b3yMMJ9nDOuRr1bdFk7v62BXytyoAg6ufpUfgHoAHAnQVYxFylty/nwdMG9UL37cyHOrG+Jzw7C5mjn/9kxDdZMXQcqSnULySIdu3xA2rIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/EWXQ3R; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1278C1F00893;
	Sat,  6 Jun 2026 05:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780722519;
	bh=zfrpr2ZwbwsXzpaIjP4ZAyy37/spCmP0osyV0BEpaMY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L/EWXQ3Re/Uiv1l0a2xm+pAeQtziVLMCDQAUsyD3yq+DxiOR4hvUuS1EMKgGxiTD3
	 5n0zCOMmnz9E2khCPvzMkv/MuGt50gwv43Cxxx2nA+gddBF9CfriMQCg/EgKDLu92v
	 6391AKXdDxzRJamPALXkX1UNtM6m5mo+7gSaFcEH70uSIOCEbcnI9R7CyrBAcXcQ6c
	 Fia+dYRNhY0HXMO3Kdb62KFXoPkzAY+3p80mEpTWLxQiCxycG3d6Gx4trskjgQ853C
	 /rF3P3P3e2Fzv1LHuEeNqxqeOSNMqRZdicDYL76zUjy0fDZM95euR8tVFsvlqGdCQB
	 NgtQjGIu8WrTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 10/14] mfd: lm3533: Set DMA mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260606045738.21050-11-clamor95@gmail.com>
References: <20260606045738.21050-11-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 05:08:38 +0000
Message-Id: <20260606050839.1278C1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307590-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1132A64C828

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] This problem wasn't introduced by this patch, but an out-of-bounds=
 array write occurs in `lm3533_device_init` when a child node contains mult=
iple matching compatible strings.
--

commit 5fa77e39c45bca237d41fbd7e2b8b8b97be664ec
Author: Svyatoslav Ryhel <clamor95@gmail.com>

mfd: lm3533: Set DMA mask

This commit sets the DMA mask to zero to prevent a warning in dmesg about
the DMA mask not being set for the platform device. It applies to both
the coherent and regular DMA mask, as neither the core nor the cells
utilize DMA.

> diff --git a/drivers/mfd/lm3533-core.c b/drivers/mfd/lm3533-core.c
> index 500cec3ccebad..5d17da1d998b5 100644
> --- a/drivers/mfd/lm3533-core.c
> +++ b/drivers/mfd/lm3533-core.c
[ ... ]
> @@ -489,6 +489,10 @@ static int lm3533_i2c_probe(struct i2c_client *i2c)
>  				   LM3533_BOOST_FREQ_MAX);
>  	lm3533->boost_freq =3D lm3533->boost_freq / (500 * KILO) - 1;
> =20
> +	/* LM3533 and child devices do not use DMA */
> +	i2c->dev.coherent_dma_mask =3D 0;
> +	i2c->dev.dma_mask =3D &i2c->dev.coherent_dma_mask;
> +
>  	return lm3533_device_init(lm3533);
>  }

[Severity: High]
This is a pre-existing issue, but can the device initialization in
lm3533_device_init() write past the bounds of the lm3533_devices array?

The array is allocated based on the total number of child nodes:

lm3533_devices =3D devm_kcalloc(dev, nchilds, sizeof(*lm3533_devices),
                              GFP_KERNEL);

However, inside the device_for_each_child_node_scoped() loop, the
compatibility checks are independent if statements without an else if or
continue:

if (fwnode_device_is_compatible(child, "ti,lm3533-als")) {
        lm3533_devices[count].name =3D "lm3533-als";
        ...
        count++;
}

if (fwnode_device_is_compatible(child, "ti,lm3533-backlight")) {
        ...
        count++;
}

If a single child node contains multiple matching compatible strings,
such as "ti,lm3533-als" and "ti,lm3533-backlight", count will be
incremented multiple times during a single loop iteration.

Since the bounds check if (count >=3D nchilds) break; only happens at the
start of the loop, this sequence would allow count to exceed nchilds,
writing out of bounds on the lm3533_devices array.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606045738.2105=
0-1-clamor95@gmail.com?part=3D10

