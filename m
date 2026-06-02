Return-Path: <devicetree+bounces-305659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 10DmAqfXHmpkVwAAu9opvQ
	(envelope-from <devicetree+bounces-305659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:16:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFD162E64A
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:16:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S9aNYTRp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305659-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305659-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B35CF301E6EB
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD222F691D;
	Tue,  2 Jun 2026 13:09:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD1D33A711
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 13:09:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780405793; cv=none; b=CY0tMv74PHGUCsrzJU4JTE/LfHXj1qZol0s7hwQfj93NrP3c/AWOm2pRWXA/SqL+sqDdjjpltEBAkSJgoicBe9L4soY9B3IZ0jxfB9qNGILRTo4b7di4/a9arB5PSbGvktQf2hxGdq/hfx+FY/EBvvQfCe5pcukbztU2Qft3es4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780405793; c=relaxed/simple;
	bh=RrqOdGjuK225n29xnQdvDZ9DvEtMnIuzAS2MPCYJg6c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CBQhuKdBXKV66SLvE3rKpe7RIh5zBmX2E+7O7HUz85PX82Ff5Lk/dbGSx1EosuNk3AqU9Amgkuj/gU3LOTM9MuRfcGqJypNY5BW72Rzsrw5DQoO9l2RpUax6DYm8OeM9oH4L7V0j+6aHNfDLYptdPNbOGBm/ooaqnU/4XdJm0+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9aNYTRp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22F591F00893;
	Tue,  2 Jun 2026 13:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780405792;
	bh=iYM9slZv5+ZxZNwOBtELKn3zPUo63nUoOWYG1hMRfvk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S9aNYTRpQ84chQum05CMpdBrquLxVYAV+DM2xQZrZVrXJ8rInVc817evExblfeLen
	 lpeFtJitJb16X3kCaIUr//RV2sXldoU4O2Tses+zABZUUq28aHb2Eg1zfUMDBPGl+I
	 KX5xS0UrX0NkEKBuonQIAUizYBZz2bwg6I13LN5C/b544MHQrgIAuDAwh71vRKb9hp
	 2xfI1kq56Yr6/MkJlGfcLRj0swHHRsRhGGnsWiO68bf2Z2d+qsPOUv9OI3u2RFTuWn
	 xO+ookiR1Js9wmi8BX+Y4STnMujXLPwNkeMnfHtQTkXTZkhRJdh5Gj9p8jqN+RcjH7
	 Lq2t0onyEPSXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] ASoC: rockchip: rockchip_pdm: Handle runtime PM
 resume failures in set_fmt
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260602101608.45137-6-phucduc.bui@gmail.com>
References: <20260602101608.45137-6-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 13:09:51 +0000
Message-Id: <20260602130952.22F591F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305659-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:phucducbui@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DFD162E64A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unbalanced clock disable in `rockchip_pdm_remove` for `pdm->clk` c=
auses an enable count underflow, leading to a kernel warning.
--

commit ecd4c53ebd06077db2d8eab0ef6ff0fdc098c863
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: rockchip: rockchip_pdm: Handle runtime PM resume failures in set_fmt

This patch replaces pm_runtime_get_sync() with pm_runtime_resume_and_get()
in rockchip_pdm_set_fmt() and adds an early return on failure. This ensures
register accesses are not performed when the device state is undefined.

Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260522110302.349421F000E9@smtp.kernel=
.org/
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>

> diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockc=
hip_pdm.c
> index 8f78f7bc1806c..115e90d3bbfe0 100644
> --- a/sound/soc/rockchip/rockchip_pdm.c
> +++ b/sound/soc/rockchip/rockchip_pdm.c

[ ... ]

> static void rockchip_pdm_remove(struct platform_device *pdev)
> {
> 	struct rk_pdm_dev *pdm =3D dev_get_drvdata(&pdev->dev);
>=20
> 	pm_runtime_disable(&pdev->dev);
> 	if (!pm_runtime_status_suspended(&pdev->dev))
> 		rockchip_pdm_runtime_suspend(&pdev->dev);
>=20
> 	clk_disable_unprepare(pdm->clk);

[Severity: High]
This is a pre-existing issue, but does this unconditional disable cause an
enable count underflow for pdm->clk?

In rockchip_pdm_probe(), pdm->clk is acquired but not enabled. It appears to
only be enabled dynamically via rockchip_pdm_runtime_resume(). During
rockchip_pdm_remove(), the driver correctly calls rockchip_pdm_runtime_susp=
end()
if the device is active, which disables the clock and drops its reference c=
ount
to 0.

However, calling clk_disable_unprepare() again immediately after would push
the reference count below zero, triggering a Common Clock Framework warning
in clk_core_disable(). Could this be repeatedly triggered via sysfs driver
unbind to cause a denial of service if panic_on_warn is set?

> 	clk_disable_unprepare(pdm->hclk);
> }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602101608.4513=
7-1-phucduc.bui@gmail.com?part=3D5

