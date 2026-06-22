Return-Path: <devicetree+bounces-314242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gWqAFy/gOGoHjgcAu9opvQ
	(envelope-from <devicetree+bounces-314242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:11:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2D36AD27E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:11:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cAN1trb6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314242-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314242-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9CD713022F75
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69732361DDE;
	Mon, 22 Jun 2026 07:11:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4914E360ED5
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 07:11:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782112275; cv=none; b=H+e0YME6iyTctPhg2/vUB/A3qCSUY5HtnqH2AkEnH0oKhY2kG9qkuL2aAH/wRu9TY4SoeVry3qgv2yl/S5E7BIBbcBffUv6qc/dgXoQrVRHsmyeZ1e9KGiRlb/nlzOfbobEmGvXOZgMREL2BuqB+oB9kI3BoWfSqhmOY12Wva7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782112275; c=relaxed/simple;
	bh=Yk55AEy6k+YvFrqdMZ1QqYS+yHgT0dWoHHUQRshoB5s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XK1MCXlAMuVFPHJaAMItG9ZBbNFUihio5ojz2RzNzB2UXZUolrCXX5Ub689SMB5Rt3Gfes+Mxi+Q5j+fX3J2nVJJs+cV25/JJOA7gy6Rak+ezbGF+8Y8eBJNPyy8msj7eeo0I24wn9Bc9b3qycBmCruNCOFxUShDeD4agXjZZ5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAN1trb6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2A4C1F00A3A;
	Mon, 22 Jun 2026 07:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782112274;
	bh=nxPx5JrA5c4tH2FjQ4armtKIAHePyOu7Xj/y/kwrX4w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cAN1trb6+BqvFcgrgAPhymk/WJseyv1cWh2PVBBoGerhJXmZLCp0Fozkt7+BXPUbr
	 AydjZRD/GjL5nb6VjSenEddAR+UWfOTCkzX4bdd1xf7zm9p2vTl02BoNuIySJWO0il
	 Ga3oKJ4/NShmUh3ZH9bEPVMVjPmci2kNsU7mSB/3vc/0OGHUpMYZ336eRFH8Wur1tB
	 b0A8X4yFPPkBC5Lcctb9MtaSAynyBvrirngUeuwxKSivOGFOr3HZWhGOyA3Ha8fYm6
	 LF4qQY6ndXCJow0rHBrqmjtuKMGRQgiX2zW0UPKX/KJULNuseXmGozJ382Q7eLrf+h
	 sz+0LApoZlj+A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/7] drm/tegra: vic: Add Tegra264 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikko Perttunen" <mperttunen@nvidia.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260622-t264-host1x-v2-6-ff7364d9ff7b@nvidia.com>
References: <20260622-t264-host1x-v2-0-ff7364d9ff7b@nvidia.com>
 <20260622-t264-host1x-v2-6-ff7364d9ff7b@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 07:11:13 +0000
Message-Id: <20260622071113.D2A4C1F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314242-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC2D36AD27E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Error paths in vic_load_firmware leave a dangling pointer in v=
ic->falcon.firmware.virt, causing Use-After-Free and Double Free.
--

commit c58aa87e57c2ab3ec5383df99d29ec8f6a79e162
Author: Mikko Perttunen <mperttunen@nvidia.com>
Subject: drm/tegra: vic: Add Tegra264 support

Add support for VIC on Tegra264. The Tegra264 VIC uses a RISC-V based
Falcon microcontroller instead of the traditional Falcon previously,
and has the TRANSCFG register in a different place.

> diff --git a/drivers/gpu/drm/tegra/vic.c b/drivers/gpu/drm/tegra/vic.c
> index 332c9b563d3f4..46c7e00de3473 100644
> --- a/drivers/gpu/drm/tegra/vic.c
> +++ b/drivers/gpu/drm/tegra/vic.c

[ ... ]

> @@ -302,7 +330,6 @@ static int vic_load_firmware(struct vic *vic)
>  	return err;
>  }
> =20

[Severity: Critical]
This is a pre-existing issue, but I noticed a potential use-after-free and
double-free in the error handling of vic_load_firmware().

When memory allocation succeeds, the pointers are assigned:

	vic->falcon.firmware.virt =3D virt;
	vic->falcon.firmware.iova =3D iova;

If a subsequent step fails (such as falcon_load_firmware() or
dma_map_single()), the code jumps to the cleanup label, frees the memory,
but does not clear the pointer:

cleanup:
	if (!client->group)
		dma_free_coherent(vic->dev, size, virt, iova);
	else
		tegra_drm_free(tegra, size, virt, iova);

	mutex_unlock(&lock);
	return err;

If vic_load_firmware() is called again (for example, during the next PM run=
time
resume), it sees the non-NULL pointer, assumes the firmware is loaded, and
returns 0.

Will this cause the driver to program the hardware to DMA from the freed me=
mory?

Furthermore, when the device is unbound, will the teardown path uncondition=
ally
free vic->falcon.firmware.virt again causing a double-free?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-t264-host1=
x-v2-0-ff7364d9ff7b@nvidia.com?part=3D6

